import TenantName from "./TenantName";
import Nav from "./Nav";
import React from "react";
import TicketsLayoutClient from "./TicketsLayoutClient";

export default async function TicketsLayout(pageProps) {
    const { tenant } = await pageProps.params;
    return (
        <>
            <section style={{ borderBottom: "1px solid gray" }}>
                <TenantName tenant={tenant} />
                <Nav tenant={tenant} />
            </section>
            <section>
                <TicketsLayoutClient tenant={tenant}>{pageProps.children}</TicketsLayoutClient>
            </section>
        </>
    );
}