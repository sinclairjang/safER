"use client";

import { TenantProvider } from "./TenantContext";


export default function TicketsLayoutClient({ tenant, children }) {
    return (
        <TenantProvider tenant={tenant}>
            <section>{children}</section>
        </TenantProvider>
    );
}
