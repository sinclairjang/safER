import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";

export default async function TenantName( {tenant} ) {
    let tenantName = "Unknown";
    const supabase = await getSupabaseCookiesUtilClient();
    const selection = await supabase
                        .from("tenants")
                        .select("name")
                        .eq("id", tenant)
                        .single();
    const { data, error } = selection;
    console.log({
        tenant,
        data,
        error,
    });

    tenantName = data?.name ?? tenantName;
    const logoUrl = "/rescuer_logo.png";
    return (
        <header style={{ textAlign: "center" }}>
            {/* Logo Section */}
            {logoUrl && (
                <img
                    src={logoUrl}
                    alt={`${tenantName} logo`}
                    style={{
                        width: "150px", // Increased size for larger display
                        height: "150px",
                        marginBottom: "10px", // Space between logo and tenant name
                        objectFit: "contain",
                    }}
                />
            )}
            {/* Tenant Name Section */}
            <div
                style={{
                    //borderLeft: "4px solid orange",
                    //borderRight: "4px solid orange",
                    display: "block",
                    padding: "10px 15px",
                    fontSize: "1.2em",
                    marginTop: "10px", // Space between logo and name section
                }}
            >
                <strong
                    style={{
                        marginLeft: "1ex",
                        display: "inline-block",
                        position: "relative", // Needed for pseudo-element
                    }}
                >
                    {tenantName}
                    <span
                        style={{
                            position: "absolute",
                            bottom: "-5px", // Position the underline below the text
                            left: "-40%", // Adjust to control the starting point
                            width: "180%", // Adjust to control underline length
                            height: "3px",
                            backgroundColor: "green",
                            content: '""', // Pseudo-element styling
                        }}
                    ></span>
                </strong>
            </div>
        </header>
    );
}