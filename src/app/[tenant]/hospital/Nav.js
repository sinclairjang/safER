"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";
import { urlPath } from "@/utils/url-helpers";
import { BottomNavigation, BottomNavigationAction, Paper } from "@mui/material";
import { Hotel, History, Event, ExitToApp } from "@mui/icons-material";

export default function Nav({ tenant }) {
    const pathname = usePathname();
    const supabase = getSupabaseBrowserClient();
    const router = useRouter();
    const [value, setValue] = useState(pathname);

    useEffect(() => {
        const { data: { subscription } } = supabase.auth.onAuthStateChange((event) => {
            if (event === "SIGNED_OUT") {
                router.push(`/`);
            }
        });
        return () => subscription.unsubscribe();
    }, []);

    return (
        <Paper sx={{ position: "fixed", bottom: 0, left: 0, right: 0, zIndex: 1000 }} elevation={3}>
            <BottomNavigation
                value={value}
                onChange={(_, newValue) => setValue(newValue)}
                showLabels
            >
                <BottomNavigationAction
                    label="병상 가동 현황"
                    icon={<Hotel />}
                    component={Link}
                    href={urlPath("/hospital", tenant)}
                    value={urlPath("/hospital", tenant)}
                />
                <BottomNavigationAction
                    label="예약 신청 현황"
                    icon={<Event />}
                    component={Link}
                    href={urlPath("/hospital/reservations", tenant)}
                    value={urlPath("/hospital/reservations", tenant)}
                />
                <BottomNavigationAction
                    label="예약 내역"
                    icon={<History />}
                    component={Link}
                    href={urlPath("/hospital/reservation-history", tenant)}
                    value={urlPath("/hospital/reservation-history", tenant)}
                />
                <BottomNavigationAction
                    label="나가기"
                    icon={<ExitToApp />}
                    onClick={(event) => {
                        event.preventDefault();
                        supabase.auth.signOut();
                    }}
                />
            </BottomNavigation>
        </Paper>
    );
}
