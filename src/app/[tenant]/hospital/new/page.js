import RequestReservation from "./RequestReservation";

export default async function RequestReservationPage({ params }) {
    const { tenant } = await params;
   
    return <RequestReservation tenant={tenant} />;
}
