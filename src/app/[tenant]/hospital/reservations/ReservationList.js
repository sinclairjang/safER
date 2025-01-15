import { urlPath } from "@/utils/url-helpers";
import Link from "next/link";

export function ReservationList({ reservationReqs, tenant }) {
    
    return (
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th></th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                {reservationReqs.map((reservationReq) => (
                    <tr key={reservationReq.id}>
                        <td>{reservationReq.id}</td>
                        <td>
                            <Link href={urlPath(`/hospital/reservations/${reservationReq.id}`, tenant)}>
                                {reservationReq.title}
                            </Link>
                        </td>
                        <td>{reservationReq.status}</td>
                    </tr>
                ))}
            </tbody>
        </table>
    );
}