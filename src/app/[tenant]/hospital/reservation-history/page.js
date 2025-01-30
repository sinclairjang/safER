import { ReservationHistory } from "./ReservationHistory";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { notFound } from "next/navigation";

export default async function ReservationHistoryPage({ params }) {
    const supabase = await getSupabaseCookiesUtilClient();
    const { tenant } = await params;

    // Call the RPC function to fetch processed reservations with remaining beds
    const { data: reservations, error } = await supabase
        .rpc('fetch_processed_reservations_with_beds');

    if (error) {
        console.error("Error fetching reservation history:", error);
        return notFound();
    }   

    return (
        <> 
            <ReservationHistory reservationHistory={reservations} tenant={tenant} />
        </>
    );
}
