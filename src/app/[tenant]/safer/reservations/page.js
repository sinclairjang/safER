import { ReservationList } from "./ReservationList";

export default async function ReservationReqListPage( {params} ) {
    const { tenant } = await params;
    
    const mockReservationReqs = [
        {
            id: 1,
            title: "Ideation",
            status: "Done",
            author: "Young92",
        },
        {
            id: 2,
            title: "Organize AI-generated answers",
            status: "In progress",
            author: "CH1004",
        },
        {
            id:3,
            title: "Make tutorials",
            status: "Not started",
            author: "Young92"
        },
    ];
    
    return (
        <>
            <h2>예약 신청 목록</h2>    
            <ReservationList reservationReqs={mockReservationReqs} tenant={tenant} />
        </>
    );
}