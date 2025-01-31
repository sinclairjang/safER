import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";

export default async function TenantName({ tenant }) {
    let tenantName = "Unknown";
    const supabase = await getSupabaseCookiesUtilClient();
    const selection = await supabase
        .from("tenants")
        .select("name") // Fetch logo_url if available
        .eq("id", tenant)
        .single();
    const { data, error } = selection;

    console.log({ tenant, data, error });

    tenantName = data?.name ?? tenantName;
    
    // Use the tenant's logo if available, otherwise use a generated placeholder
    const logoUrl = data?.logo_url 
        ? data.logo_url 
        : `https://api.dicebear.com/7.x/identicon/svg?seed=${encodeURIComponent(tenantName)}`;

    return (
        <header style={{ marginBottom: "20px", textAlign: "center" }}>
            {/* Logo Section */}
            <img
                src={logoUrl}
                alt={`${tenantName} logo`}
                style={{
                    width: "150px",
                    height: "150px",
                    marginBottom: "10px",
                    objectFit: "contain",
                    borderRadius: "10px", // Optional: rounded corners for a better look
                }}
            />
            {/* Tenant Name Section */}
            <div
                style={{
                    display: "block",
                    padding: "10px 15px",
                    fontSize: "1.2em",
                    marginTop: "10px",
                }}
            >
                <strong
                    style={{
                        marginLeft: "1ex",
                        display: "inline-block",
                        position: "relative",
                    }}
                >
                    {tenantName}
                    <span
                        style={{
                            position: "absolute",
                            bottom: "-5px",
                            left: "-25%",
                            width: "150%",
                            height: "3px",
                            backgroundColor: "green",
                            content: '""',
                        }}
                    ></span>
                </strong>
            </div>
        </header>
    );
}
