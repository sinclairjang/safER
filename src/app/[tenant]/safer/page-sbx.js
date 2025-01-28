"use client";

import React, { useEffect, useState } from "react";
import ReactDOM from "react-dom";
import InfoWindowContent from "./widgets/InfoWindowContent";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";

const supabase = getSupabaseBrowserClient();

export default function ReservationPage() {
    const [locations, setLocations] = useState([]);
    const [operationRate, setOperationRate] = useState(null);

    useEffect(() => {
        const fetchOperationRate = async () => {
            const { data, error } = await supabase
                .from("hospital_bed_operation_rate")
                .select()
        }
    }, []);

    useEffect(() => {
        const fetchLocations = async () => {
            const { data, error } = await supabase
                .from("hospital_location_info")
                .select("*")
            if (!error) {
                setLocations(data);
            }
        };
        fetchLocations();

        const subscription = supabase
            .channel("oprate")
            .on(
                "postgres_changes",
                {
                    event: "UPDATE",
                    schema: "public",
                    table: "locations",
                },
                (payload) => {
                    if (payload.eventType === "UPDATE") {
                        setLocations((prevLocations) => 
                            prevLocations.map((loc) => 
                                loc.id === payload.new.id ? { ...loc, ...payload.new } : loc
                            )
                        );
                    } else if (payload.eventType === "INSERT") {
                        setLocations((prevLocations) => [...prevLocations, payload.new]);
                    } else if (payload.eventType === "DELETE") {
                        setLocations((prevLocations) => 
                            prevLocations.filter((loc) => loc.id !== payload.old.id)
                        );
                    }
                }
            )
            .subscribe();
        
        return () => {
            subscription.unsubscribe();
        };
    }, []);

    useEffect(() => {
        const map = new naver.maps.Map("map", {
            center: new naver.maps.LatLng(37.5665, 126.9784),
            zoom: 12,
        });

        locations.forEach((location) => {
            const marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(location.position.lat, location.position.lng),
                map: map,
            });

            const InfoWindowContainer = document.createElement("div");

            ReactDOM.render(
                <InfoWindowContent
                    name={location.name}
                    description={location.description}
                    image={location.image}
                    link={location.link}
                />,
                infoWindowContainer  
            );

            const infoWindow = new naver.maps.InfoWindow({
                content: infoWindowContainer,
                maxWidth: 300,
                backgroundColor: "#fff",
                borderColor: "#ccc",
                borderWidth: 2,
            });

            naver.maps.Event.addListener(marker, "click", function () {
                if (infoWindow.getMap()) {
                    infoWindow.close();
                } else {
                    infoWindow.open(map, marker);
                }
            });
        });
    }, [locations]);

    return <div id="map" style={{ width: "100%", height: "500px"}}></div>
}


