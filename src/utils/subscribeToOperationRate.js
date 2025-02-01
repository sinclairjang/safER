import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { getHospitalByTenant } from "./getHospitalByTenant";

export async function subscribeToOperationRate(tenant, callback) {
    const hpid = await getHospitalByTenant(tenant)
    if (!hpid) {
        console.log("다음 작업을 위해서는 hpid가 필요합니다.");
        return null;
    }
    const supabase = getSupabaseBrowserClient();

    return supabase
        .channel("hospital_bed_updates")
        .on(
            "postgres_changes",
            { 
                event: "*", 
                schema: "public", 
                table: "hospital_bed_operation_rate",
                filter: `hpid=eq.${hpid}` 
            },
            (payload) => {
                console.log(`Realtime update for hospital operation rate of ${hpid}:`, payload);
                callback(payload);
            }
        )
        .subscribe();
}
