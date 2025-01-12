import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { buildUrl } from "@/utils/url-helpers";
import { NextResponse } from "next/server";
import nodemailer from "nodemailer";

export async function POST(request, { params }) {
    const formData = await request.formData();
    const { tenant } = await params;
    const email = formData.get("email");
    const supabaseAdmin = await getSupabaseAdminClient();
    const type = formData.get("type") === "recovery" ? "recovery" : "magiclink";
    
    const { data: linkData, error } = await supabaseAdmin.auth.admin.generateLink({
        email,
        type,
    });
    
    const user = linkData.user;
    if (
        error || !user.app_metadata?.tenants.includes(tenant) 
    ) {
        console.log(error);
        return NextResponse.redirect(
            buildUrl("/error?type=magiclink", tenant, request),
            302
        );
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

    const initialSentence = 
        type === "recovery"
            ? "Hi there, you requested a password change!"
            : "Hi there, this is a custom magic link email";
    const secondSentenceEnding = type === "recovery" ? "change it" : "log in";

    await transporter.sendMail({
        from: "Your Company <your@mail.whatever>",
        to: email,
        subject: "Magic Link",
        html: `
            <h1>${initialSentence}</h1>
            <p>Click <a href="${constructedLink.toString()}"here</a> to ${secondSentenceEnding}</p>
        `,
    });
    
    const thanksUrl = buildUrl(`/magic-thanks?type=${type}`, tenant, request);
    return NextResponse.redirect(thanksUrl, 302);
}
