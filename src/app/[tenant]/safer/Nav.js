"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { useRouter } from "next/navigation";
import { useEffect } from "react";
import { urlPath } from "@/utils/url-helpers";

export default function Nav( {tenant} ) {
    const pathname = usePathname();
    const activeProps = { className: "contrast" };
    const inactiveProps = { className: "secondary outline" };
    const supabase = getSupabaseBrowserClient();
    const router = useRouter();

    useEffect(() => {
        const {
            data: { subscription },
        } = supabase.auth.onAuthStateChange((event, session) => {
            if (event === "SIGNED_OUT") {
                router.push(`/`);
            }
        });
        return () => subscription.unsubscribe();
    }, []);

    return (
        <nav>
            <ul>
            </ul>
            <ul>
                <li>
                    <Link
                        role="button"
                        href={urlPath("/logout", tenant)}
                        prefetch={false}
                        className="secondary"
                        onClick={(event) => {
                            console.log(event);
                            event.preventDefault();
                            supabase.auth.signOut();
                        }}>
                            나가기
                    </Link>
                </li>
            </ul>
        </nav>
    );
}