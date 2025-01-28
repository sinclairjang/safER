import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { buildUrl } from "@/utils/url-helpers";
import { NextResponse } from "next/server";
import nodemailer from "nodemailer";

export async function sendOTPLink(email, type, tenant, request) {
    const supabaseAdmin = getSupabaseAdminClient();
    const { data: linkData, error } = await
        supabaseAdmin.auth.admin.generateLink(
            {
                email,
                type,
            },
        );
    const user = linkData.user;
    console.log("linkData.user", user);
    if (error || !user.app_metadata?.tenants.includes(tenant)) {
        return false;
    }
    // one-time token with a limited time of validity and it's bound to the user(email)
    const { hashed_token } = linkData.properties;
    const constructedLink = buildUrl(
        `/auth/verify?hashed_token=${hashed_token}&type=${type}`,
        tenant,
        request
    );
    const transporter = nodemailer.createTransport({
        host: "192.168.0.63",
        port: 54325,
    });
    let mailSubject = "";
    let initialSentence = "";
    let sentenceEnding = "";
    if (type === "signup") {
        mailSubject = "계정을 사용하려면 활성화 해주세요.";
        initialSentence = "안녕하세요? 당신의 응급 네비게이터 세이퍼(safER)입니다.";
        sentenceEnding = "safER 가입을 진심으로 환영합니다.";
    } else if (type === "recovery") {
        mailSubject = "신규 비밀번호 요청";
        initialSentence = "안녕하세요? 당신의 응급 네비게이터 세이퍼(safER)입니다.";
        sentenceEnding = "safER 계정 비밀번호를 변경합니다.";
    } else {
        mailSubject = "일회용 접근 요청";
        initialSentence = "안녕하세요? 당신의 응급 네비게이터 세이퍼(safER)입니다.";
        sentenceEnding = "일회용 비밀번호 (OTP)를 발급받습니다.";
    }
    await transporter.sendMail({
        from: "safER <customer-service@safer.com>",
        to: email,
        subject: mailSubject,
        html: `
            <h1>${initialSentence}</h1>
            <p>
                ${sentenceEnding}
                <a href="${constructedLink.toString()}">
                    [클릭]
                </a>
            </p>
        `,
    });
    return true;
}
