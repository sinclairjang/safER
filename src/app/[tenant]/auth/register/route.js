import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { buildUrl } from "@/utils/url-helpers";
import { NextResponse } from "next/server";
import { z } from "zod";

const signupSchema = z.object({
    name: z
        .string()
        .min(1, { message: "이름을 입력해주세요" })
        .regex(/^[\p{L}\s'-]+$/u, { message: "이름에는 특수 문자가 포함될 수 없습니다." }),    
    email: z
        .string()
        .email({ message: "유효한 이메일 주소를 입력해주세요." })
        .trim(),    
    password: z
        .string()
        .min(7, { message: "패스워드는 7자리 이상이어야 합니다." })
        .regex(/(?=.*[!@#$%^&*(),.?":{}|<>])/, { message: "반드시 한 개 이상의 특수문자를 포함시켜주세요."}),
});

export async function POST(request, { params }) {
    try {
        const formData = await request.formData();
        const data = {
            name: formData.get("name"),
            email: formData.get("email"),
            password: formData.get("password"),
        };

        const validatedData = signupSchema.parse(data);
        const { name, email, password } = validatedData;
        const { tenant } = params;

        const [ , emailHost] = email.split("@");
        const supabaseAdmin = getSupabaseAdminClient();

        // Check if tenant exists and matches domain
        const { data: tenantData, error: tenantError } = await supabaseAdmin
            .from("tenants")
            .select("*")
            .eq("id", tenant)
            .eq("domain", emailHost)
            .single();

        const safeEmailString = encodeURIComponent(email);
        if (tenantError) {
            return NextResponse.redirect(
                buildUrl(`/error?type=register_mail_mismatch&email=${safeEmailString}`, tenant, request),
                302
            );
        }

        // 🟢 Step 1: Use Supabase's built-in sign-up
        const { data: signUpData, error: signUpError } = await supabaseAdmin.auth.signUp({
            email,
            password,
            options: {
                emailRedirectTo: `https://${tenant}.saf-er.com`, // 👈 Set correct subdomain!
            },
        });

        if (signUpError) {
            console.log(signUpError);
            const userExists = signUpError.message.includes("already been registered");
            return NextResponse.redirect(
                buildUrl(
                    userExists
                        ? `/error?type=register_mail_exists&email=${safeEmailString}`
                        : "/error?type=register_unknown",
                    tenant,
                    request
                ),
                302
            );
        }

        const userId = signUpData.user?.id;
        if (!userId) {
            return NextResponse.redirect(buildUrl("/error?type=signup_failed", tenant, request), 302);
        }

        // 🟢 Step 2: Explicitly update app_metadata.tenants using admin API
        const { error: updateError } = await supabaseAdmin.auth.admin.updateUserById(userId, {
            app_metadata: {
                tenants: [tenant, "safer"],
            },
        });

        if (updateError) {
            return NextResponse.redirect(buildUrl("/error?type=metadata_update_failed", tenant, request), 302);
        }

        // 🟢 Step 3: Add user to `service_users`
        const { data: serviceUser, error: serviceUserError } = await supabaseAdmin
            .from("service_users")
            .insert({
                full_name: name,
                supabase_user: userId,
            })
            .select()
            .single();

        if (serviceUserError) {
            return NextResponse.redirect(buildUrl("/error", tenant, request), 302);
        }

        // 🟢 Step 4: Assign tenant permissions
        const { error: tpError } = await supabaseAdmin
            .from("tenant_permissions")
            .insert({
                tenant,
                service_user: serviceUser.id,
            });

        if (tpError) {
            return NextResponse.redirect(buildUrl("/error", tenant, request), 302);
        }

        // ✅ Supabase automatically sends a confirmation email, so no need for `sendOTPLink`
        return NextResponse.redirect(
            buildUrl(`/registration-success?email=${safeEmailString}`, tenant, request),
            302
        );

    } catch (error) {
        if (error instanceof z.ZodError) {
            return new Response(
                JSON.stringify({ errors: error.errors.map(err => ({ field: err.path[0], message: err.message })) }),
                { status: 400, headers: { "Content-Type": "application/json" } }
            );
        }

        console.error("Unexpected error:", error);
        return new Response(
            JSON.stringify({ error: "Internal Server Error" }),
            { status: 500, headers: { "Content-Type": "application/json" } }
        );
    }
}
