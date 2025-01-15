import { urlPath } from "@/utils/url-helpers";
import Link from "next/link";

export function ReservationHistory({ reservationHistory, tenant }) {
    
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
                {reservationHistory.map((reservation) => (
                    <tr key={reservation.id}>
                        <td>{reservation.id}</td>
                        <td>
                        <Link href={urlPath(`/hospital/reservation-history/${reservation.id}`, tenant)}>
                                {reservation.title}
                            </Link>
                        </td>
                        <td>{reservation.status}</td>
                    </tr>
                ))}
            </tbody>
        </table>
    );
}