import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";

const supabase = getSupabaseBrowserClient();

// Fetch the **single** `hpid` for a tenant
export async function getHospitalByTenant(tenant) {
    const { data, error } = await supabase
        .from("hospitals")
        .select("hpid")
        .eq("tenant_id", tenant)
        .single(); // Since there's only one hospital per tenant

    if (error) {
        console.error("Error fetching hospital:", error);
        return null;
    }

    return data.hpid; // Return the **single** hospital ID
}
