// ReservationHistory.js
"use client";

import "@/styles/reservation-list.css";
import { useState, useEffect } from "react";
import { FaTrash } from "react-icons/fa";
import { urlPath } from "@/utils/url-helpers";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";

export function ReservationHistory({ reservationHistory, tenant }) {
    const [reservations, setReservations] = useState(reservationHistory);

    const supabase = getSupabaseBrowserClient();
    useEffect(() => {
        const fetchReservations = async () => {
            try {
                const { data, error } = await supabase.rpc("fetch_processed_reservations_with_beds");
    
                if (error) {
                    console.error("Error fetching processed reservations:", error);
                } else {
                    setReservations(data);
                }
            } catch (err) {
                console.error("Unexpected error fetching processed reservations:", err);
            }
        };
    
        // Initial fetch when component mounts
        fetchReservations();
    
        // Subscribe to Realtime changes on reservations (only for processed reservations)
        const reservationSubscription = supabase
            .channel("realtime-reservations-history")
            .on(
                "postgres_changes",
                {
                    event: "*", // Listen for INSERT, UPDATE, DELETE
                    schema: "public",
                    table: "reservations",
                    filter: "status=neq.pending" // Only non-pending reservations
                },
                async (payload) => {
                    console.log("Processed reservation change detected:", payload);
    
                    // Always re-fetch from RPC to ensure accurate remaining_beds & requester_name
                    await fetchReservations();
                }
            )
            .subscribe();
    
        // Subscribe to Realtime changes on hospital_bed_availability (if needed)
        const bedAvailabilitySubscription = supabase
            .channel("realtime-bed-availability-history")
            .on(
                "postgres_changes",
                {
                    event: "UPDATE",
                    schema: "public",
                    table: "hospital_bed_availability"
                },
                async (payload) => {
                    console.log("Bed availability change detected in history:", payload);
    
                    // Always re-fetch from RPC to ensure accurate historical remaining_beds
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
            const response = await fetch(urlPath(`/hospital/reservation-history/${id}/${action}`, tenant), {
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
                        <th>잔여 병상 수</th>
                        <th>신청자</th>
                        <th>처리 날짜</th>
                        <th>처리 결과</th>
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
                                    {new Date(reservation.updated_at).toLocaleString()}
                                </td>
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
                            <td colSpan="8" style={{ textAlign: "center", padding: "1rem" }}>
                                현재 예약 내역이 없습니다.
                            </td>
                        </tr>
                    )}
                </tbody>
            </table>
        </div>
    );
}
