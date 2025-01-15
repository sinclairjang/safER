import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { buildUrl } from "@/utils/url-helpers";
import { NextResponse } from "next/server";

export async function GET(request, { params }) {
    const { searchParams } = new URL(request.url);
    const { tenant } = await params; 
    const hashed_token = searchParams.get("hashed_token");
    const isRecovery = searchParams.get("type") === "recovery";
    
    const supabase = await getSupabaseCookiesUtilClient();
    
    let verifyType = "magiclink";
    if (isRecovery) verifyType = "recovery";
    
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
                buildUrl("/safer/change-password", tenant, request)
            );
        } else {
            return NextResponse.redirect(
                buildUrl("/safer", tenant, request)
            );
        }
    }
}
