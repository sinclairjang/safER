"use client";

import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { useRef, useState } from "react";

export default function RequestReservation({ tenant }) {
    const supabase = getSupabaseBrowserClient();
    
    const hospitalIdRef = useRef(null);
    const departmentRef = useRef(null);
    const reservedByRef = useRef(null);
    const reservedBedsRef = useRef(null);
    const [status, setStatus] = useState("pending"); // Default status
    const [isLoading, setIsLoading] = useState(false);

    const validateInput = () => {
        const errors = {};

        // Validate hospital_id
        const hospitalId = hospitalIdRef.current.value;
        if (!hospitalId || isNaN(hospitalId)) {
            errors.hospitalId = "Hospital ID is required and must be a number.";
        }

        // Validate department
        const department = departmentRef.current.value;
        if (!department || department.trim() === "") {
            errors.department = "Department is required and cannot be empty.";
        }

        // Validate reserved_by
        const reservedBy = reservedByRef.current.value;
        if (!reservedBy || reservedBy.trim() === "") {
            errors.reservedBy = "Reserved By is required and cannot be empty.";
        }

        // Validate reserved_beds
        const reservedBeds = reservedBedsRef.current.value;
        if (!reservedBeds || isNaN(reservedBeds) || reservedBeds <= 0) {
            errors.reservedBeds = "Reserved Beds is required and must be a positive number.";
        }

        return errors;
    };

    const handleSubmit = async (event) => {
        event.preventDefault();

        const errors = validateInput();
        if (Object.keys(errors).length > 0) {
            alert(`Validation Errors:\n${Object.values(errors).join("\n")}`);
            return;
        }

        // Extract values
        const hospitalId = hospitalIdRef.current.value;
        const department = departmentRef.current.value;
        const reservedBy = reservedByRef.current.value;
        const reservedBeds = reservedBedsRef.current.value;

        const reservationData = {
            hospital_id: parseInt(hospitalId),
            department,
            reserved_by: reservedBy,
            reserved_beds: parseInt(reservedBeds),
            status,
        };

        setIsLoading(true);

        const { data, error } = await supabase
            .from("reservations")
            .insert([reservationData]);
        
        if (error) {
            console.error("Error inserting reservation:", error.message);
            alert(`Failed to create reservation: ${error.message}`);
            setIsLoading(false);
            return;
        }

        console.log("Reservation created:", data);
        alert(`Reservation requested successfully for:\n
        Hospital ID: ${hospitalId}\n
        Department: ${department}\n
        Reserved By: ${reservedBy}\n
        Reserved Beds: ${reservedBeds}\n
        Status: ${status}`);

        // Clear form after submission
        hospitalIdRef.current.value = "";
        departmentRef.current.value = "";
        reservedByRef.current.value = "";
        reservedBedsRef.current.value = "";

        setIsLoading(false);
    };

    return (
        <article>
            <h3>병상 예약을 위해 아래 항목들을 채워주세요.</h3>
            <form onSubmit={handleSubmit}>
                <input
                    ref={hospitalIdRef}
                    placeholder="Hospital ID (e.g., 1)"
                    type="number"
                    disabled={isLoading}
                    required
                />
                <input
                    ref={departmentRef}
                    placeholder="Department (e.g., ICU)"
                    type="text"
                    disabled={isLoading}
                    required
                />
                <input
                    ref={reservedByRef}
                    placeholder="Your Name"
                    type="text"
                    disabled={isLoading}
                    required
                />
                <input
                    ref={reservedBedsRef}
                    placeholder="Number of Beds"
                    type="number"
                    min="1"
                    disabled={isLoading}
                    required
                />
                <select
                    value={status}
                    onChange={(e) => setStatus(e.target.value)}
                    disabled={isLoading}
                >
                    <option value="pending">pending</option>
                    <option value="approved">approved</option>
                    <option value="rejected">rejected</option>
                    <option value="cancelled">cancelled</option>
                </select>
                <button type="submit" aria-busy={isLoading}>예약 신청</button>
            </form>
        </article>
    );
}
