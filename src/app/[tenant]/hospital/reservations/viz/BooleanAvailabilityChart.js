"use client";

import { Box, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Paper, Typography } from "@mui/material";
import CheckCircleIcon from "@mui/icons-material/CheckCircle";
import CancelIcon from "@mui/icons-material/Cancel";

// Define boolean fields for hospital equipment availability
const booleanFields = [
    { key: "hvctayn", label: "CT Scanner" },
    { key: "hvmriayn", label: "MRI Machine" },
    { key: "hvangioayn", label: "Angiography" },
    { key: "hvventiayn", label: "Ventilator" },
    { key: "hvventisoayn", label: "Isolation Ventilator" },
    { key: "hvincuayn", label: "Incubator" },
    { key: "hvcrrtayn", label: "CRRT Machine" },
    { key: "hvecmoayn", label: "ECMO Machine" },
    { key: "hvoxyayn", label: "Oxygen Supply" },
    { key: "hvhypoayn", label: "Hypothermia Machine" },
    { key: "hvamyn", label: "Ambulance Service" },
];

export default function BooleanAvailabilityChart({ data }) {
    if (!data) return <Typography>Loading equipment availability...</Typography>;

    return (
        <Box sx={{ display: "flex", justifyContent: "center", marginTop: "20px" }}>
            <TableContainer component={Paper} sx={{ maxWidth: 600 }}>
                <Table>
                    <TableHead>
                        <TableRow>
                            <TableCell sx={{ fontWeight: "bold" }}>Equipment</TableCell>
                            <TableCell sx={{ fontWeight: "bold", textAlign: "center" }}>Availability</TableCell>
                        </TableRow>
                    </TableHead>
                    <TableBody>
                        {booleanFields.map(({ key, label }) => (
                            <TableRow key={key}>
                                <TableCell>{label}</TableCell>
                                <TableCell align="center">
                                    {data[key] ? (
                                        <CheckCircleIcon sx={{ color: "green" }} />
                                    ) : (
                                        <CancelIcon sx={{ color: "red" }} />
                                    )}
                                </TableCell>
                            </TableRow>
                        ))}
                    </TableBody>
                </Table>
            </TableContainer>
        </Box>
    );
}
