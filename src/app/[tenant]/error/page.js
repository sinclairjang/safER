import Link from "next/link";
import { urlPath } from "@/utils/url-helpers";

export default async function ErrorPage({ searchParams, params }) {
    const { type } = await searchParams;
    const knownErrors = ["login-failed", "magiclink"];

    return (
        <div style={{ textAlign: "center" }}>
            <h1>Ooops!</h1>
            {type === "login-failed" && (
                <strong>Login was not successful, sorry.</strong>
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
            <Link role="button" href={urlPath('/', params.tenant)}>
                Go back.
            </Link>
        </div>
    );
}