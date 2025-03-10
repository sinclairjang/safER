import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { buildUrl } from "@/utils/url-helpers";
import { NextResponse } from "next/server";

export async function GET(request, { params }) {
    const { searchParams } = new URL(request.url);
    const { tenant } = await params; 
    const hashed_token = searchParams.get("hashed_token");
    const isRecovery = searchParams.get("type") === "recovery";
    const isSignUp = searchParams.get("type") === "signup";
    const supabase = await getSupabaseCookiesUtilClient();
    
    let verifyType = "magiclink";
    if (isRecovery) verifyType = "recovery";
    else if (isSignUp) verifyType = "signup";
    
    const { error } = await supabase.auth.verifyOtp({
        type: verifyType,
        token_hash: hashed_token,
    });

    if (error) {
        return NextResponse.redirect(
            buildUrl("/error?type=invalid_magiclink", tenant, request)
        );
    } else {
        if (isRecovery) {
            return NextResponse.redirect(
                (tenant === "safer" ? buildUrl("/safer/change-password", tenant, request) : 
                    buildUrl("/hospital/change-password", tenant, request))
            );
        } else {
            return NextResponse.redirect(
                (tenant === "safer" ? buildUrl("/safer", tenant, request) : buildUrl("/hospital", tenant, request))
            );
        }
    }
}
