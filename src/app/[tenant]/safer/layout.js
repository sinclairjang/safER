import TenantName from "./TenantName";
import Nav from "./Nav";

export default async function SaferLayout(pageProps) {
    const { tenant } = await pageProps.params;
    return (
        <>
            <section style={{ borderBottom: "1px solid gray", marginBottom: "0px"}}>
                <TenantName tenant={tenant} />
                <Nav tenant={tenant} />
            </section>
            <section style={{ marginBottom: "0px" }}>{pageProps.children}</section>
        </>
    );
}