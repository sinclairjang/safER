import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { sendOTPLink } from "@/utils/sendOTPLink";
import { buildUrl } from "@/utils/url-helpers";
import { NextResponse } from "next/server";
import nodemailer from "nodemailer";

export async function POST(request, { params }) {
    const formData = await request.formData();
    const { tenant } = await params;
    const email = formData.get("email");
    const [ , emailHost] = email.split("@");
    const supabaseAdmin =  getSupabaseAdminClient();
    const type = formData.get("type") === "recovery" ? "recovery" : "magiclink";
    
    const safeEmailString = encodeURIComponent(email);
    const notExistUrl = buildUrl(
        `/error?type=${"email_not_exist"}&email=${safeEmailString}`,
        tenant,
        request,
    );
    const errorUrl = buildUrl(
        `/error?type=${type}`,
        tenant,
        request,
    );
    const thanksUrl = buildUrl(
        `/magic-thanks?type=${type}`,
        tenant,
        request,
    );

    const { data, error } = await supabaseAdmin
                            .from("tenants")
                            .select("*")
                            .eq("id", tenant)
                            .eq("domain", emailHost)
                            .single();
    if (error) {
        return NextResponse.redirect(notExistUrl, 302);
    }

    const otpSuccess = await sendOTPLink(
        email,
        type,
        tenant,
        request,
    );
    if (!otpSuccess) {
        return NextResponse.redirect(errorUrl, 302);
    } else {
        return NextResponse.redirect(thanksUrl, 302);
    }
}
