import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { ReservationList } from "./ReservationList";
import { notFound } from "next/navigation";

export default async function ReservationReqListPage({ params }) {
    const supabase = await getSupabaseCookiesUtilClient();
    const { tenant } = await params;

    // Call the RPC function
    const { data: reservations, error } = await supabase
        .rpc('fetch_pending_reservations_with_beds');

    if (error) {
        console.error("Error fetching reservations:", error);
        return notFound();
    }

    return (
        <>   
            <ReservationList reservationReqs={reservations} tenant={tenant} />
        </>
    );
}
