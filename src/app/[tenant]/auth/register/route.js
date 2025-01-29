import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { sendOTPLink } from "@/utils/sendOTPLink";
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
        .regex(/(?=.*[!@#$%^&*(),.?":{}|<>])/, { message: "반드시 한 개 이상의 특수문자를 포함시켜주세요,"}),
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
        const { tenant } = await params;
        const [ , emailHost] = email.split("@");
        
        const supabaseAdmin = getSupabaseAdminClient();
        const { tenantData, error } = await supabaseAdmin
            .from("tenants")
            .select("*")
            .eq("id", tenant)
            .eq("domain", emailHost)
            .single();

        const safeEmailString = encodeURIComponent(email);
        if (error) {
            return NextResponse.redirect(
                buildUrl(
                    `/error?type=register_mail_mismatch&email=${safeEmailString}`,
                    tenant,
                    request,
                ),
                302,
            );
        }
        const { data: userData, error: userError } =
            await supabaseAdmin.auth.admin.createUser({
                email,
                password,
                app_metadata: {
                    tenants: [tenant, "safer"],
                },
            });
        if (userError) {
            const userExists = 
                userError.message.includes("already been registered");
            if (userExists) {
                return NextResponse.redirect(
                    buildUrl(
                        `/error?type=register_mail_exists&email=${safeEmailString}`,
                        tenant,
                        request,
                    ),
                    302,
                );
            } else {
                return NextResponse.redirect(
                    buildUrl("/error?type=register_unknown", tenant, request),
                    302,
                );
            }    
        }
        const { data: serviceUser } = await supabaseAdmin
            .from("service_users")
            .insert({
                full_name: name,
                supabase_user: userData.user.id,
            })
            .select()
            .single();

        const {error: tpError} =
            await supabaseAdmin.from("tenant_permissions").insert({
                tenant,
                service_user: serviceUser?.id,
            });    

        if (tpError) {
            await supabaseAdmin.auth.admin.deleteUser(userData.user.id);
            return NextResponse.redirect(
                buildUrl("/error", tenant, request), 302
            );
        }
        await sendOTPLink(email, "signup", tenant, request);
        return NextResponse.redirect(
            buildUrl(
                `/registration-success?email=${safeEmailString}`,
                tenant,
                request
            ),
            302
        );
    } catch (error) {
        if (error instanceof z.ZodError) {
            const validationErrors = error.errors.map(err => ({
                field: err.path[0],
                message: err.message,
            }));
            
            return new Response(
                JSON.stringify({ errors: validationErrors }),
                { status: 400, headers: { 'Content-Type': 'application/json' } }
              );
        }

        // Handle other types of errors (e.g., server errors)
        console.error('Unexpected error:', error);
        return new Response(
          JSON.stringify({ error: 'Internal Server Error' }),
          { status: 500, headers: { 'Content-Type': 'application/json' } }
        );
    }
}