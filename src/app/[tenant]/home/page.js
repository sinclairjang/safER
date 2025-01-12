import { TicketList } from "./TicketList";

export default async function TicketListPage( {params} ) {
    const { tenant } = await params;
    
    const dummyTickets = [
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
            <h2>병상 목록</h2>    
            <TicketList tickets={dummyTickets} tenant={tenant} />
        </>
    );
}