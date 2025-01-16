"use client";

import "@/styles/reservation-list.css";
import { useState } from "react";
import { FaCheckCircle, FaTimesCircle, FaTrash } from "react-icons/fa";
import { urlPath } from "@/utils/url-helpers";

export function ReservationHistory({ reservationHistory, tenant }) {
    const [reservations, setReservations] = useState(
        reservationHistory.filter((reservation) => reservation.status !== "pending")
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
                <h1 className="reservation-list-title">예약 내역</h1>
                <p className="reservation-list-subtitle">현재까지 처리된 예약 내역을 보여드립니다.</p>
            </div>
            <table className="reservation-table">
                <thead>
                    <tr>
                        <th>예약 코드</th>
                        <th>요청 병실</th>
                        <th>요청 병상 개수</th>
                        <th>처리 날짜</th>
                        <th>처리 결과</th>
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
                                <td className="reservation-row">{new Date(reservation.updated_at).toLocaleString()}</td>
                                <td className={`reservation-row status-${reservation.status.toLowerCase()}`}>
                                    {reservation.status}     
                                </td>
                                <td>
                                    <div className="action-icons">
                                        <FaTrash
                                            className="delete-icon"
                                            onClick={() => handleAction(reservation.id, "delete")}
                                        />
                                    </div>
                                </td>
                            </tr>
                        ))
                    ) : (
                        <tr>
                            <td colSpan="6" style={{ textAlign: "center", padding: "1rem" }}>
                                현재 예약 내역이 없습니다.
                            </td>
                        </tr>
                    )}
                </tbody>
            </table>
        </div>
    );
}