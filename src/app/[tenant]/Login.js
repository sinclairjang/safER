"use client";

import Link from "next/link";
import { useRef } from "react";
import { getSupabaseBrowserClient } from "../../supabase-utils/browserClient";
import { useRouter } from "next/navigation";
import { useEffect } from "react";
import { FORM_TYPES } from "../formTypes";
import { urlPath } from "@/utils/url-helpers";

export const Login = ({ tenant, formType = "pw-login", tenantName }) => {
    const emailInputRef = useRef(null);
    const passwordInputRef = useRef(null);
    const supabase = getSupabaseBrowserClient();
    const router = useRouter();

    const isPasswordRecovery = formType === FORM_TYPES.PASSWORD_RECOVERY;
    const isPasswordLogin = formType === FORM_TYPES.PASSWORD_LOGIN;
    const isMagicLinkLogin = formType === FORM_TYPES.MAGIC_LINK;

    const formAction = isPasswordLogin ? urlPath('/auth/pw-login', tenant) : urlPath('/auth/magic-link', tenant);

    useEffect(() => {
        const {
            data: { subscription },
        } = supabase.auth.onAuthStateChange((event, session) => {
            if (event === "SIGNED_IN") {
                if (session.user.app_metadata.tenants?.includes(tenant)) {
                    if (tenant === "/safer") {
                        router.push(urlPath("/safer", tenant));
                    } else {
                        router.push(urlPath("/hospital", tenant));
                    }
                } else {
                    supabase.auth.signOut();
                    alert("Could not sign in, tenant does not match.");
                }
            }
        });
        return () => subscription.unsubscribe();
    }, []);

    return (
        <form 
            method="POST"
            action={formAction}
            onSubmit={(event) => {
                isPasswordLogin && event.preventDefault();

                if (isPasswordLogin) {
                    supabase.auth.signInWithPassword({
                        email: emailInputRef.current.value,
                        password: passwordInputRef.current.value,
                    }).then((result) => {
                        !result.data?.user && alert("Could not sign in");
                    });
                } else {
                    //alert("User wants to login with magic link");
                }
            }}
        >
            {isPasswordRecovery && (
                <input type="hidden" name="type" value="recovery" />
            )}

            <article style={{ maxWidth: "420px", margin: "auto" }}>
                
                <header>
                    {isPasswordRecovery && <strong>Request new password</strong>}
                    {!isPasswordRecovery && <strong>Login</strong>}
                    <div style={{ display: "block", fontSize: "1em" }}>
                        {tenantName}
                    </div>
                </header>
                
                <fieldset>
                    <label htmlFor="email">
                        Email{" "}
                        <input
                            ref={emailInputRef}
                            type="email"
                            id="email"
                            name="email"
                            required
                        />
                    </label>
                    
                    {isPasswordLogin && (
                    <label htmlFor="password" style={{ marginTop: "20px" }}>
                        Password
                        <input
                            ref={passwordInputRef}
                            type="password"
                            id="password"
                            name="password"
                        />
                    </label>
                    )}
                </fieldset>

                <button type="submit">
                    {isPasswordLogin && "로그인"}
                    {isPasswordRecovery && "새 비밀번호 요청"}
                    {isMagicLinkLogin && "일회용 번호 발급"}
                </button>

                <div
                    style={{
                        display: "flex",
                        justifyContent: "space-between",
                        flexDirection: "column",
                        gap: "6px",
                        marginBottom: "20px",
                    }}
                >
                    {!isPasswordLogin && (
                        <Link
                            role="button"
                            className="contrast"
                            href={{
                                pathname: urlPath('/', tenant),
                                query: { magicLink: "no" },
                            }}
                        >
                            ID/비밀번호 로그인
                        </Link>
                    )}
                    {!isMagicLinkLogin && (
                        <Link
                            role="button"
                            className="contrast"
                            href={{
                                pathname: urlPath('/', tenant),
                                query: { magicLink: "yes" },
                            }}
                        >
                            일회용 로그인
                        </Link>
                    )}
                </div>

                {!isPasswordRecovery && (
                    <Link
                        href={{
                            pathname: urlPath('/', tenant),
                            query: { passwordRecovery: "yes" },
                        }}
                        style={{
                            textAlign: "center",
                            display: "block",
                        }}
                    >
                        비밀번호를 잊어버리셨나요?
                    </Link>
                )}
            </article>
        </form>
    );
};