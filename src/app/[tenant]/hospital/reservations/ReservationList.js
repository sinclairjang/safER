// ReservationList.js
"use client";

import "@/styles/reservation-list.css";
import { useState, useEffect } from "react";
import { FaCheckCircle, FaTimesCircle } from "react-icons/fa";
import { urlPath } from "@/utils/url-helpers";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";

export function ReservationList({ reservationReqs, tenant }) {
    const [reservations, setReservations] = useState(reservationReqs);

    const supabase = getSupabaseBrowserClient();

    useEffect(() => {
        const fetchReservations = async () => {
            try {
                const { data, error } = await supabase.rpc("fetch_pending_reservations_with_beds");
    
                if (error) {
                    console.error("Error fetching pending reservations:", error);
                } else {
                    setReservations(data);
                }
            } catch (err) {
                console.error("Unexpected error fetching reservations:", err);
            }
        };
    
        // Initial fetch when component mounts
        fetchReservations();
    
        // Subscribe to Realtime changes on reservations (filtered for status = 'pending')
        const reservationSubscription = supabase
            .channel("realtime-reservations")
            .on(
                "postgres_changes",
                {
                    event: "*", // Listen for INSERT, UPDATE, DELETE
                    schema: "public",
                    table: "reservations",
                    filter: "status=eq.pending"
                },
                async (payload) => {
                    console.log("Reservation change detected:", payload);
    
                    // Always re-fetch from RPC to ensure accurate remaining_beds & requester_name
                    await fetchReservations();
                }
            )
            .subscribe();
    
        // Subscribe to Realtime changes on hospital_bed_availability
        const bedAvailabilitySubscription = supabase
            .channel("realtime-bed-availability")
            .on(
                "postgres_changes",
                {
                    event: "UPDATE",
                    schema: "public",
                    table: "hospital_bed_availability"
                },
                async (payload) => {
                    console.log("Bed availability change detected:", payload);
    
                    // Always re-fetch from RPC to ensure accurate remaining_beds
                    await fetchReservations();
                }
            )
            .subscribe();
    
        // Cleanup subscriptions on unmount
        return () => {
            supabase.removeChannel(reservationSubscription);
            supabase.removeChannel(bedAvailabilitySubscription);
        };
    }, []);
    

    const handleAction = async (id, action) => {
        try {
            const response = await fetch(urlPath(`/hospital/reservations/${id}/${action}`, tenant), {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
            });

            if (response.ok) {
                setReservations(prev => prev.filter(reservation => reservation.id !== id));
            } else {
                console.error("Failed to update reservation:", response.statusText);
            }
        } catch (error) {
            console.error("Error handling action:", error);
        }
    };

    const calculateElapsedTime = (requestedAt) => {
        const now = new Date();
        const requestedTime = new Date(requestedAt);
        const diffInMinutes = Math.floor((now - requestedTime) / (1000 * 60));

        if (diffInMinutes < 60) {
            return `${diffInMinutes}분 전`;
        } else {
            const diffInHours = Math.floor(diffInMinutes / 60);
            return `${diffInHours}시간 전`;
        }
    };

    return (
        <div className="reservation-list-container">
            <div className="reservation-list-header">
                <h1 className="reservation-list-title">예약 신청 현황</h1>
                <p className="reservation-list-subtitle">현재 접수된 예약 신청을 보여드립니다.</p>
            </div>
            <table className="reservation-table">
                <thead>
                    <tr>
                        <th>예약 코드</th>
                        <th>요청 병실</th>
                        <th>요청 병상 개수</th>
                        <th>잔여 병상 수</th>
                        <th>신청자</th>
                        <th>대기 시간</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    {reservations.length > 0 ? (
                        reservations.map((reservation) => (
                            <tr key={reservation.id}>
                                <td className="reservation-row">{reservation.id}</td>
                                <td className="reservation-row">{reservation.bed_code}</td>
                                <td className="reservation-row">{reservation.reserved_beds}</td>
                                <td className="reservation-row">
                                    {reservation.remaining_beds ?? "N/A"}
                                </td>
                                <td className="reservation-row">
                                    {reservation.requester_name ?? "Unknown"}
                                </td>
                                <td className="reservation-row">
                                    {calculateElapsedTime(reservation.requested_at)}
                                </td>
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
                            <td colSpan="7" style={{ textAlign: "center", padding: "1rem" }}>
                                모든 예약이 처리되었습니다.
                            </td>
                        </tr>
                    )}
                </tbody>
            </table>
        </div>
    );
}
