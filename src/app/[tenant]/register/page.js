import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { urlPath } from "@/utils/url-helpers";
import Link from "next/link";
import { notFound } from "next/navigation";
import TenantName from "../hospital/TenantName";

export default async function Registration({ params }) {
    const { tenant } = await params;
    const supabaseAdmin = getSupabaseAdminClient();
    const { data, error } = await supabaseAdmin
        .from("tenants")
        .select("*")
        .eq("id", tenant)
        .single();
    if (error) notFound();
    const { name: tenantName } = data;

    return (
        <form method="POST" action={urlPath("/auth/register", tenant)}>
            <article style={{ maxWidth: "420px", margin: "50px auto", paddingTop: "50px", paddingBottom: "30px" }}>
                <header style={{ marginBottom: "10px"}}>
                    <strong>계정 만들기</strong>
                    <div style={{ display: "block", fontSize: "1em" }}>
                        {tenantName}
                    </div>
                </header>
                <fieldset>
                    <label htmlFor="name" style={{ marginTop: "10px" }}> 
                        이름 <input type="text" id="name" name="name" required />
                    </label>
                    <label htmlFor="email" style={{ marginTop: "10px" }}>
                        Email <input type="email" id="email" name="email" required />
                    </label>
                    <label htmlFor="password" style={{ marginTop: "10px" }}>
                        비밀번호 설정{" "}
                        <input type="password" style={{ marginTop: "10px" }} required />
                    </label>
                </fieldset>
                <button type="submit">계정 생성</button>
                <Link
                    href={urlPath("/", tenant)}
                    style={{
                        textAlign: "center",
                        display: "block",
                        marginTop: "1em",
                    }}
                >
                    돌아가기
                </Link>
            </article>
        </form>
    );
}