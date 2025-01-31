import { NextResponse } from "next/server";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { buildUrl } from "@/utils/url-helpers";

export async function POST(request, {params} ) {
    const { tenant } = params;
    const formData = await request.formData();
    const email = formData.get("email");
    const password = formData.get("password");
    const supabase = await getSupabaseCookiesUtilClient();
    const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password,
    });
    const userData = data?.user;
    if (error || 
        !userData ||
        !userData.app_metadata?.tenants.includes(tenant)
    ) {
        await supabase.auth.signOut();
        return NextResponse.redirect(
            buildUrl("/error?type=login-failed", tenant, request),
            { status: 302 }
        );
    }
    return NextResponse.redirect(
        (tenant === "safer" ? buildUrl("/safer", tenant, request) : buildUrl("/hospital", tenant, request)),
        { status: 302,}
    );
}