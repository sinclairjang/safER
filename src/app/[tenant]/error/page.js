import Link from "next/link";
import { urlPath } from "@/utils/url-helpers";

export default async function ErrorPage({ searchParams, params }) {
    const { type, email } = await searchParams;
    const { tenant } = await params;
    const knownErrors = [
        "login-failed", 
        "magiclink",
        "invalid_magiclink",
        "register_mail_mismatch",
        "register_mail_exists",
        "register_unknown",
        "email_not_exist",
    ];

    return (
        <div style={{ textAlign: "center", margin: "50px" }}>
            <h1>Ooops!</h1>
            {type === "login-failed" && (
                <strong>Login was not successful, sorry.</strong>
            )}
            {type === "register_mail_mismatch" && (
                <strong>
                    등록되지 않은 도메인입니다. <br />
                    문의: TEL. 02-598-3327. FAX. 02-598-3329.
                </strong>
            )}
            {type === "register_mail_exists" && (
                <strong>
                    이미 등록된 이메일입니다. &nbsp;
                    <u>{email}</u>
                </strong>
            )}
            {type === "email_not_exist" && (
                <strong>
                    등록되지 않은 이메일입니다. &nbsp;
                    <u>{email}</u>
                </strong>
            )}
            {type === "register_unknown" && (
                <strong>
                    계정 생성 중 오류가 발생했습니다. <br />
                    문의: TEL. 02-598-3327. FAX. 02-598-3329.
                </strong>
            )}
            {type === "magiclink" && (
                <strong>
                    Could not send a magic link. Maybe you had a type in your email?
                </strong>
            )}
            {type === "invalid_magiclink" && (
                <strong>
                    The magic link was invalid. Maybe it expired? Please request a new one.
                </strong>
            )}
            {!knownErrors.includes(type) && (
                <strong>
                    Something went wrong. Please try again or contact support.
                </strong>
            )}
            <br /><br />
            <Link role="button" href={urlPath('/', tenant)}>
                돌아가기
            </Link>
        </div>
    );
}