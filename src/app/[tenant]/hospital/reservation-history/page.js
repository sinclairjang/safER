import { ReservationHistory } from "./ReservationHistory";

export default async function ReservationHistoryPage( {params} ) {
    const { tenant } = await params;
    
    const mockReservationHistory = [
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
            <h2>예약 내역</h2>    
            <ReservationHistory reservationHistory={mockReservationHistory} tenant={tenant} />
        </>
    );
}