import { ReservationHistory } from "./ReservationHistory";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";

export default async function ReservationHistoryPage( {params} ) {
    const supabase = await getSupabaseCookiesUtilClient();
        const { tenant } = await params;
        const { data: reservations, error } = await supabase
            .from("reservations")
            .select("*");
        
        if (error) {
            console.error("Error fetching reservations:", error);
            return notFound();
        }   
    
    return (
        <> 
            <ReservationHistory reservationHistory={reservations} tenant={tenant} />
        </>
    );
}