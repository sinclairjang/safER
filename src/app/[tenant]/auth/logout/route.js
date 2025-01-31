import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { buildUrl } from "@/utils/url-helpers";
import { NextResponse } from "next/server";

export async function GET(request, { params }) {
    const supabase = await getSupabaseCookiesUtilClient();
    const { tenant } = await params;
    await supabase.auth.signOut();
    return NextResponse.redirect(
        buildUrl('/', tenant, request)    
    );
}