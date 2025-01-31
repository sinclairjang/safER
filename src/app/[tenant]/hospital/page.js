"use client";

import { useEffect, useState } from "react";
import { getHospitalByTenant } from "@/utils/getHospitalByTenant";
import { subscribeToOperationRate } from "@/utils/subscribeToOperationRate";
import { Box, CircularProgress, Typography } from "@mui/material";
import PieChartBeds from "./reservations/viz/PieChartBeds";
import BooleanAvailabilityChart from "./reservations/viz/BooleanAvailabilityChart";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { useTenant } from "./TenantContext";

export default function BedStatusPage() {
    const tenant = useTenant();
    console.log(tenant);
    const [bedData, setBedData] = useState(null);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);

    useEffect(() => {
        async function fetchData() {
            try {
                const supabase = getSupabaseBrowserClient();
                
                // Fetch the hospital ID for the tenant
                const hpid = await getHospitalByTenant(tenant);
                if (!hpid) throw new Error("Hospital not found for this tenant.");

                // Fetch initial data
                const { data, error } = await supabase
                    .from("hospital_bed_operation_rate")
                    .select("*")
                    .eq("hpid", hpid)
                    .single(); // Since each tenant has only one hospital
                
                if (error) throw error;

                setBedData(data);
                setLoading(false);

                // Subscribe to real-time updates
                const subscription = subscribeToOperationRate(tenant, (update) => {
                    setBedData(update.new);
                });

                return () => {
                    if (subscription) subscription.unsubscribe();
                };
            } catch (err) {
                console.error("Error:", err);
                setError(err.message);
                setLoading(false);
            }
        }

        fetchData();
    }, []);

    if (loading) {
        return (
            <Box sx={{ display: "flex", justifyContent: "center", alignItems: "center", height: "80vh" }}>
                <CircularProgress />
            </Box>
        );
    }

    if (error) {
        return (
            <Box sx={{ textAlign: "center", padding: "20px" }}>
                <Typography variant="h6" color="error">⚠️ {error}</Typography>
            </Box>
        );
    }

    return (
        <Box sx={{ padding: "20px", textAlign: "center" }}>
            <Typography variant="h6">병상 가동 현황</Typography>
            <Box sx={{ marginTop: "40px", marginBottom: "40px" }}>
                <Typography variant="h6"></Typography>
                <PieChartBeds data={bedData} />
            </Box>
            <Box>
                <Typography variant="h6">장비 보유 현황</Typography>
                <BooleanAvailabilityChart data={bedData} />
            </Box>
        </Box>
    );
}
