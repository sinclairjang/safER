"use client";

import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";
import { AppBar, Toolbar, Avatar, Menu, MenuItem, IconButton, Typography, Divider, Box } from "@mui/material";
import LogoutIcon from "@mui/icons-material/Logout";
import AccountCircleIcon from "@mui/icons-material/AccountCircle";
import SettingsIcon from "@mui/icons-material/Settings";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faHospital } from "@fortawesome/free-solid-svg-icons";

export default function Header() {
    const supabase = getSupabaseBrowserClient();
    const router = useRouter();
    const [userEmail, setUserEmail] = useState(null);
    const [anchorEl, setAnchorEl] = useState(null);

    useEffect(() => {
        const fetchUser = async () => {
            const { data: { user } } = await supabase.auth.getUser();
            if (user) setUserEmail(user.email);
        };
        fetchUser();

        const { data: { subscription } } = supabase.auth.onAuthStateChange((event) => {
            if (event === "SIGNED_OUT") {
                router.push(`/`);
            }
        });
        return () => subscription.unsubscribe();
    }, []);

    // Handle menu open/close
    const handleMenuOpen = (event) => setAnchorEl(event.currentTarget);
    const handleMenuClose = () => setAnchorEl(null);

    // Handle logout
    const handleLogout = async () => {
        await supabase.auth.signOut();
        handleMenuClose();
    };

    return (
        <AppBar position="sticky" sx={{ backgroundColor: "#10191f", color: "black", boxShadow: 2 }}>
            <Toolbar sx={{ display: "flex", justifyContent: "space-between", padding: "0 20px" }}>
                {/* Tenant Logo or Name (Can be modified) */}
                <Typography variant="h6" color="darkgray" sx={{ display: "flex", alignItems: "center" }}>
                    {/* Hospital Icon */}
                    <Box component="span" sx={{ display: "inline-flex", alignItems: "center", marginRight: "8px" }}>
                        <FontAwesomeIcon icon={faHospital} size="lg" color="darkgray" />
                    </Box>
                    {/* Logo Text */}
                    safER
                </Typography>

                {/* User Avatar with Menu */}
                <Box>
                    <IconButton onClick={handleMenuOpen}>
                        <Avatar>{userEmail ? userEmail[0].toUpperCase() : <AccountCircleIcon />}</Avatar>
                    </IconButton>

                    <Menu
                        anchorEl={anchorEl}
                        open={Boolean(anchorEl)}
                        onClose={handleMenuClose}
                        slotProps={{
                            paper: {
                                sx: { minWidth: "200px", padding: "10px", borderRadius: "10px", boxShadow: 3 },
                            },
                        }}
                    >
                        {userEmail && (
                            <Typography sx={{ padding: "10px", fontSize: "14px", textAlign: "center" }}>
                                {userEmail}
                            </Typography>
                        )}
                        <Divider />
                        <MenuItem onClick={handleMenuClose}>
                            <SettingsIcon sx={{ marginRight: "10px" }} />
                            설정
                        </MenuItem>
                        <MenuItem onClick={handleLogout}>
                            <LogoutIcon sx={{ marginRight: "10px" }} />
                            로그아웃
                        </MenuItem>
                    </Menu>
                </Box>
            </Toolbar>
        </AppBar>
    );
}
