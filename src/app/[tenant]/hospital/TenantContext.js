import { createContext, useContext } from "react";

// Create Tenant Context
const TenantContext = createContext(null);

// Custom hook for easy access
export function useTenant() {
    return useContext(TenantContext);
}

export function TenantProvider({ tenant, children }) {
    return <TenantContext.Provider value={tenant}>{children}</TenantContext.Provider>;
}
