"use client";

import "@/styles/reservation-list.css";
import { useState } from "react";
import { FaCheckCircle, FaTimesCircle } from "react-icons/fa";
import { urlPath } from "@/utils/url-helpers";

export function ReservationList({ reservationReqs, tenant }) {
    const [reservations, setReservations] = useState(
        reservationReqs.filter((reservation) => reservation.status === "pending")
    );
    
    const handleAction = async (id, action) => {
        try {
            const response = await fetch(urlPath(`/hospital/reservations/${id}/${action}`, tenant), {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
            });
        
            if (response.ok) {
                setReservations((prev) =>
                    prev.filter((reservation) => reservation.id !== id)
                );
            } else {
                console.error("Failed to update reservation:", response.statusText);
            }
        } catch (error) {
            console.error("Error handling action:", error);
        }
    };
    
    
    return (
        <div className="reservation-list-container">
            <div className="reservation-list-header">
                <h1 className="reservation-list-title">예약 신청 현황</h1>
                <p className="reservation-list-subtitle">현재 접수된 예약 신청을 보여드립니다. </p>
            </div>
            <table className="reservation-table">
                <thead>
                    <tr>
                        <th>예약 코드</th>
                        <th>요청 병실</th>
                        <th>요청 병상 개수</th>
                        <th>잔여 병상 수</th>
                        <th>신청 날짜</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    {reservations.length > 0 ? (
                        reservations.map((reservation) => (
                            <tr key={reservation.id} >
                                <td className="reservation-row">{reservation.id}</td>
                                <td className="reservation-row">{reservation.department}</td>
                                <td className="reservation-row">{reservation.reserved_beds}</td>
                                <td className="reservation-row">00</td>
                                <td className="reservation-row">{new Date(reservation.requested_at).toLocaleString()}</td>
                                <td>
                                    <div className="action-icons">
                                        <FaCheckCircle
                                            className="accept-icon"
                                            onClick={() => handleAction(reservation.id, "approve")}
                                        />
                                        <FaTimesCircle
                                            className="reject-icon"
                                            onClick={() => handleAction(reservation.id, "reject")}
                                        />
                                    </div>
                                </td>
                            </tr>
                        ))
                    ) : (
                        <tr>
                            <td colSpan="6" style={{ textAlign: "center", padding: "1rem" }}>
                            모든 예약이 처리되었습니다.
                            </td>
                        </tr>
                    )}
                </tbody>
            </table>
        </div>
    );
}
