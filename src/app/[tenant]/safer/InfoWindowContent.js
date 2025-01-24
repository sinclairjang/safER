import React from "react";
import { Typography, Button, Card, CardMedia, CardContent } from "@mui/material";

export default function InfoWindowContent({ name, description, image, link }) {
    return (
        <Card sx={{ maxWidth: 250 }}>
            <CardMedia component="img" height="140" image={image} alt={name} />
            <CardContent>
                <Typography variant="h6" component="div">
                    {name}
                </Typography>
                <Typography variant="h6" component="div">
                    {name}
                </Typography>
                <Typography variant="body2" color="text.secondary">
                    {description}
                </Typography>
                <Button
                href={link}
                target="_blank"
                >
                    Visit Website
                </Button>
            </CardContent>
        </Card>    
    );
};