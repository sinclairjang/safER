import React from "react";
import { Typography, Button, Card, Box, CardActions } from "@mui/material";

export default function InfoWindowContent({
  dutyname,
  dutyaddr,
  dutytel3,
  distance_km,
  link,
  image,
  marker,
}) {
    const handleCancel = () => {
            if (marker) {
                naver.maps.Event.trigger(marker, "click"); // Trigger the "click" event on the marker
            }
    };

    return (
        <Card
            sx={{
                display: "flex", // Use flexbox to align image and text side by side
                flexDirection: "column", // Stack elements vertically
                alignItems: "stretch",
                width: "50vw",
                maxWidth: "600px", // Set a reasonable max width for the card
                minWidth: "300px",
                borderRadius: 2,
                boxShadow: 3,
                overflow: "hidden",

                overflowX: "auto", // Enable horizontal scrolling
                whiteSpace: "nowrap", // Prevent wrapping
                scrollbarWidth: "thin", // Adjust scrollbar width (for Firefox)
                "&::-webkit-scrollbar": {
                    width: "8px", // Vertical scrollbar width
                    height: "6px", // Horizontal scrollbar height
                  },
                  "&::-webkit-scrollbar-thumb": {
                    backgroundColor: "#888", // Color of the scrollbar "thumb"
                    borderRadius: "10px", // Rounded corners for the thumb
                  },
                  "&::-webkit-scrollbar-thumb:hover": {
                    backgroundColor: "#555", // Darker thumb on hover
                  },
                  "&::-webkit-scrollbar-track": {
                    backgroundColor: "#6495ED", // Background of the scrollbar track
                  },
            }}
        >
        {/* Top Section with Image and Content */}
        <Box
            sx={{
            display: "flex",
            flexDirection: "row",
            alignItems: "flex-start",
            }}
        >
            {/* Image Section */}
            {image && (
            <Box
                component="img"
                src={image}
                alt={`${dutyname} image`}
                sx={{
                width: 120, // Fixed width for the image
                height: 120, // Fixed height to make it square
                objectFit: "cover", // Maintain aspect ratio and fill the box
                }}
            />
            )}

            {/* Content Section */}
            <Box
            sx={{
                flex: 1, // Take up the remaining space
                padding: 2, // Add padding around the content
                display: "flex",
                flexDirection: "column",
                justifyContent: "space-between",
                borderLeft: "1px solid #ddd",
            }}
            >
            <Box>
                <Typography
                    variant="h6"
                    component="div"
                    sx={{ fontWeight: "bold", mb: 1 }}
                >
                    {dutyname}
                </Typography>
                <Typography 
                    variant="body2" 
                    color="text.secondary" 
                    sx={{ mb: 1 }}>
                    {dutyaddr}
                </Typography>
                <Typography 
                    variant="body2" 
                    color="text.secondary" 
                    sx={{ mb: 1 }}>
                    연락처: {dutytel3 || "N/A"}
                </Typography>
                <Typography 
                    variant="body2" 
                    color="text.secondary">
                    거리: {distance_km.toFixed(2)} km
                </Typography>
            </Box>
                {link && (
                    <Button
                        href={link}
                        target="_blank"
                        variant="contained"
                        size="small"
                        sx={{ mt: 2 }}
                    >
                        웹 사이트:
                    </Button>
                )}
            </Box>
        </Box>

        {/* Bottom Section with Buttons */}
        <CardActions sx={{ justifyContent: "center", padding: 2 }}>
            <Button
                variant="contained"
                size="small"
                color="primary"
                sx={{ mx: 1 }}
                onClick={() => {
                    window.dispatchEvent(new Event("reservation-click"));
                }}
            >
                예약 신청
            </Button>
            <Button
                variant="outlined"
                size="small"
                color="secondary"
                sx={{ mx: 1 }}
                onClick={handleCancel}
            >
                취소
            </Button>
        </CardActions>
        </Card>
    );
}
