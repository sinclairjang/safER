import React, { useState } from "react";
import { Typography, Button, Card, Box, CardActions, Snackbar, Alert } from "@mui/material";
import { v4 as uuidv4 } from "uuid";
import { bedCodeMap } from "@/bedcode-map";

export default function InfoWindowContent({
  dutyname,
  dutyaddr,
  dutytel3,
  distance_km,
  image,
  marker,
  availabilityUnits,
  hospitalData,
}) {
  const [selectedAvailabilityUnit, setSelectedAvailabilityUnit] = useState(null);
  const [snackbarOpen, setSnackbarOpen] = useState(false);
  const [snackbarMessage, setSnackbarMessage] = useState("");

  const handleCancel = () => {
    if (marker) {
      naver.maps.Event.trigger(marker, "click"); // Trigger the "click" event on the marker
    }
  };

  const handleUnitSelect = (unit) => {
    setSelectedAvailabilityUnit(unit); // Set the selected unit
  };

  const handleReservation = () => {
    if (selectedAvailabilityUnit) {
      const event = new CustomEvent("reservation-click", {
        detail: {
          hospitalId: hospitalData.hpid,
          bedCode: selectedAvailabilityUnit,
          reservationId: uuidv4(), // Generate unique reservation ID
          numberOfBeds: 1,
        },
      });
      window.dispatchEvent(event);
    } else {
      setSnackbarMessage("병상 코드를 선택해주세요.");
      setSnackbarOpen(true);
    }
  };

  return (
    <>
      <Card
        sx={{
          display: "flex",
          flexDirection: "column",
          alignItems: "stretch",
          width: "50vw",
          maxWidth: "600px",
          minWidth: "300px",
          borderRadius: 2,
          boxShadow: 3,
          overflow: "hidden",
          overflowX: "auto",
          whiteSpace: "nowrap",
          scrollbarWidth: "thin",
          "&::-webkit-scrollbar": { width: "8px", height: "6px" },
          "&::-webkit-scrollbar-thumb": { backgroundColor: "#888", borderRadius: "10px" },
          "&::-webkit-scrollbar-thumb:hover": { backgroundColor: "#555" },
          "&::-webkit-scrollbar-track": { backgroundColor: "#6495ED" },
        }}
      >
        {/* Top Section with Image and Content */}
        <Box sx={{ display: "flex", flexDirection: "row", alignItems: "flex-start" }}>
          {/* Image Section */}
          {image && (
            <Box
              component="img"
              src={image}
              alt={`${dutyname} image`}
              sx={{ width: 120, height: 120, objectFit: "cover" }}
            />
          )}

          {/* Content Section */}
          <Box sx={{ flex: 1, padding: 2, borderLeft: "1px solid #ddd" }}>
            <Typography variant="h6" sx={{ fontWeight: "bold", mb: 1 }}>{dutyname}</Typography>
            <Typography variant="body2" color="text.secondary" sx={{ mb: 1 }}>{dutyaddr}</Typography>
            <Typography variant="body2" color="text.secondary" sx={{ mb: 1 }}>
              연락처: {dutytel3 || "N/A"}
            </Typography>
            <Typography variant="body2" color="text.secondary">
              거리: {distance_km.toFixed(2)} km
            </Typography>

            {/* Availability Unit Selection */}
            {availabilityUnits && availabilityUnits.length > 0 && (
              <Box sx={{ mt: 2 }}>
                <Typography variant="body2" sx={{ fontWeight: "bold", mb: 1 }}>병상 및 장비 현황:</Typography>
                <Box sx={{ display: "flex", flexWrap: "wrap", gap: 1 }}>
                  {availabilityUnits.map((unit) => (
                    <Button
                        key={unit}
                        variant="text" // Use "text" variant to remove borders
                        size="small"
                        sx={{
                            minWidth: "auto", // 🔥 Allows button width to adjust to text content
                            maxWidth: "280px", // Prevents it from exceeding container width
                            fontSize: "0.8rem",
                            padding: "5px 10px",
                            display: "inline-flex", // 🔥 Ensures button width is based on text
                            overflow: "scroll",
                            justifyContent: "center", // Centers text properly
                            alignItems: "center",
                            transition: "background-color 0.3s ease, transform 0.2s ease",
                            color: selectedAvailabilityUnit === unit ? "white" : "inherit",
                            backgroundColor: selectedAvailabilityUnit === unit ? "#1976d2" : "transparent",
                            "&:hover": {
                              backgroundColor: selectedAvailabilityUnit === unit ? "#1976d2" : "#d1e0ff",
                              transform: "scale(1.05)",
                            },
                          }}
                        onClick={() => handleUnitSelect(unit)}
                      >
                        {bedCodeMap[unit] 
                            ? `${bedCodeMap[unit]}: ${typeof hospitalData[unit] === "boolean"
                                ? (hospitalData[unit] ? "가능" : "불가능")
                                :  `${hospitalData[unit]} 병상`}`
                            : `${unit}: ${typeof hospitalData[unit] === "boolean"
                                ? (hospitalData[unit] ? "가능" : "불가능")
                                : `${hospitalData[unit]} 병상`}`}
                    </Button>
                  ))}
                </Box>
              </Box>
            )}
          </Box>
        </Box>

            {/* Bottom Section with Buttons */}
            <CardActions sx={{ justifyContent: "center", padding: 2 }}>
            <Button variant="contained" size="small" color="primary" sx={{ mx: 1 }} onClick={handleReservation}>
                예약 신청
            </Button>
            <Button variant="outlined" size="small" color="secondary" sx={{ mx: 1 }} onClick={handleCancel}>
                취소
            </Button>
            </CardActions>
        </Card>

        {/* Snackbar for validation messages */}
        <Snackbar 
            open={snackbarOpen} 
            autoHideDuration={6000} 
            onClose={() => setSnackbarOpen(false)}
            anchorOrigin={{ vertical: "bottom", horizontal: "center" }}
            sx={{ position: "fixed", zIndex: 9999 }} // 🔥 Ensures Snackbar is on top
        >
            <Alert onClose={() => setSnackbarOpen(false)} severity="warning" sx={{ width: "100%" }}>
                {snackbarMessage}
            </Alert>
        </Snackbar>
    </>
  );
}
