import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { ReservationList } from "./ReservationList";
import { notFound } from "next/navigation";

export default async function ReservationReqListPage( { params } ) {
    const supabase = await getSupabaseCookiesUtilClient();
    const { tenant } = await params;
    const { data: reservations, error } = await supabase
        .from("reservations")
        .select("*")
        .eq("status", "pending");
    
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