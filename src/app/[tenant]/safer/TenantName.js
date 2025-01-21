import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";

export default async function TenantName({ tenant }) {
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
      <header
        style={{
          textAlign: "center",
          padding: "10px 0", // Reduce padding inside the header
          height: "auto", // Allow the header height to adjust dynamically
        }}
      >
        {/* Logo Section */}
        {logoUrl && (
          <img
            src={logoUrl}
            alt={`${tenantName} logo`}
            style={{
              width: "100px", // Reduced size for smaller display
              height: "100px",
              marginBottom: "5px", // Less space between logo and tenant name
              objectFit: "contain",
            }}
          />
        )}
        {/* Tenant Name Section */}
        <div
          style={{
            display: "block",
            padding: "5px 10px", // Reduce padding around the tenant name
            fontSize: "1em", // Slightly smaller font size
            marginTop: "5px", // Reduce space between logo and name section
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
                bottom: "-3px", // Adjust underline position
                left: "-20%", // Adjust starting point
                width: "140%", // Shorten underline length
                height: "2px", // Thin underline
                backgroundColor: "green",
                content: '""',
              }}
            ></span>
          </strong>
        </div>
      </header>
    );
  }
  