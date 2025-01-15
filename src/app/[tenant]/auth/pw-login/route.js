import { NextResponse } from "next/server";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { buildUrl } from "@/utils/url-helpers";

export async function POST(request, {params} ) {
    // Step 1:
    const formData = await request.formData();
    const email = formData.get("email");
    const password = formData.get("password");
    // Step 2:
    const supabase = await getSupabaseCookiesUtilClient();
    // Step 3:
    const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password,
    });
    // Step 4:
    const userData = data?.user;
    if (error || 
        !userData ||
        !userData.app_metadata?.tenants.includes(params.tenant)
    ) {
        await supabase.auth.signOut();
        return NextResponse.redirect(
            buildUrl("/error?type=login-failed", params.tenant, request),
            { status: 302 }
        );
    }
    return NextResponse.redirect(
        buildUrl("/safer", params.tenant, request),
        { status: 302,}
    );
}