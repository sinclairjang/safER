import { urlPath } from "@/utils/url-helpers";
import Link from "next/link";

export default async function RegistrationSuccessPage({
    searchParams,
    params,
}) {
    const { email } = await searchParams;
    const { tenant } = await params;

    return (
        <div style={{ textAlign: "center", margin: "50px"}}>
            <h1>계정이 생성되었습니다.</h1>
            <p>{email}로 활성화 링크를 보내드렸습니다.</p>
        </div>    
    )
}