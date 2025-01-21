"use client";

import { useEffect, useState } from "react";
import "@/styles/naver-map.css";
import EmergencyFilterPanel from "./EmergencyFilterPanel";
import TransferFilterPanel from "./TransferFilterPanel"
import { ToggleButton, ToggleButtonGroup, Radio, FormControlLabel, RadioGroup, Typography } from "@mui/material";

export default function ReservationPage() {
  const [map, setMap] = useState(null);        // Reference to the Naver map
  const [userLocation, setUserLocation] = useState(null);
  const [markers, setMarkers] = useState([]);  // Track markers to remove or update
  const [filters, setFilters] = useState({});  // Filter states (e.g., parking, 24hrs)

  const [mode, setMode] = useState(null);

  const handleModeChange = (event) => {
    setMode(event.target.value);
  };

  /**
   * Initialize the map (once) if it's not created yet and naver.maps is available.
   */
  useEffect(() => {
    if (!map && window?.naver?.maps) {
      const mapOptions = {
        center: new naver.maps.LatLng(37.5665, 126.978), // Seoul
        zoom: 17,
        mapTypeId: naver.maps.MapTypeId.HYBRID,
      };
      const newMap = new naver.maps.Map("map", mapOptions);
      setMap(newMap);

      // Attach our logo control after creating the map
      addLogoControl(newMap);

      // Attach our custom control
      addCustomControl(newMap);

      trackUserPosition(newMap);
    }
  }, [map]);

  /**
   * Continuously track and update the user's position on the map. 
   */
  const trackUserPosition = (map) => {
    if (navigator.geolocation) {
      navigator.geolocation.watchPosition(
        (position) => {
          const { latitude, longitude } = position.coords;
          const userLantLng = { lat: latitude, lng: longitude };

          setUserLocation(userLantLng);

          map.setCenter(new naver.maps.LatLng(latitude, longitude));
        },
        (error) => {
          alert("실제 사용자 위치를 수신하기 위해서는 HTTPS 프로토콜을 사용해야합니다.");
          // Mocked user location
          const mockLocation = { latitude: 37.487340, longitude: 127.015288 };
          console.log("Mocked user location:", mockLocation);
          setUserLocation(mockLocation);
          
          // Use mocked location
          const userLatLng = new naver.maps.LatLng(mockLocation.latitude, mockLocation.longitude);
          map.setCenter(userLatLng); // Update the map center
        },
        {
          enableHighAccuracy: true, // Use GPS if available
          maximumAge: 0,            // Prevent caching
          timeout: 10000,           // Timeout after 10 seconds
        }
      );
    } else {
      alert("Geoloation is not supported by this browser.");
    }
  };

  /**
  * Perform a proximity query whenever the user's location changes.
  */
  useEffect(() => {
    if (userLocation) {
      console.log("User's current location:", userLocation);

      // Replace this with your proximity query logic
      sendProximityQuery(userLocation.latitude, userLocation.longitude, filters);
    }
  }, [userLocation, filters]); // Trigger when user's location or filters change

   /**
   * Simulate sending a proximity query to an API.
   */
   const sendProximityQuery = (lat, lng, filters) => {
    // Example query payload
    const query = {
      lat,
      lng,
      filters,
    };

    console.log("Sending proximity query:", query);

    // // Replace with your actual API call
    // fetch("/api/proximity-query", {
    //   method: "POST",
    //   headers: {
    //     "Content-Type": "application/json",
    //   },
    //   body: JSON.stringify(query),
    // })
    //   .then((response) => response.json())
    //   .then((data) => {
    //     console.log("Proximity query result:", data);
    //     // You can update markers here based on API response
    //   })
    //   .catch((error) => {
    //     console.error("Error sending proximity query:", error);
    //   });
  };


  /**
   * Creates and attaches a custom control (HTML button).
   * This one sets the center to NAVER Green Factory when clicked.
   */
  const addLogoControl = (map) => {
    // Inline HTML for our control (an anchor tag styled like a button)
    const locationBtnHtml = `
      <a class="fa fa-hospital"
        style="
          display: inline-block;
          padding: 8px 12px;
          background-color: white;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-shadow: 0 2px 4px rgba(0,0,0,0.2);
          font-size: 14px;
          text-decoration: none;
          color: black;
        ">
        safER
      </a>
    `;

    // Create the custom control with our HTML
    const logoControl = new naver.maps.CustomControl(locationBtnHtml, {
      position: naver.maps.Position.TOP_RIGHT, // You can change to TOP_LEFT, etc.
    });

    // Wait until the map is initialized before attaching
    naver.maps.Event.once(map, "init", () => {
      logoControl.setMap(map);

      // Add a click event to the control element
      naver.maps.Event.addDOMListener(logoControl.getElement(), "click", () => {
        setShowModal(true);
      });
    });
  };

   /**
   * Add a custom filter button to the map.
   */
   const addCustomControl = (map) => {
    const filterBtnHtml = `
      <a
        style="
          display: inline-block;
          padding: 10px 15px;
          background-color: #fff;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
          font-size: 14px;
          text-decoration: none;
          color: black;
          cursor: pointer;
        "
      >
        필터
      </a>
    `;

    const filterControl = new naver.maps.CustomControl(filterBtnHtml, {
      position: naver.maps.Position.BOTTOM_CENTER, // Adjust position on the map
    });

    // Wait until the map is initialized before attaching
    naver.maps.Event.once(map, "init", () => {
      filterControl.setMap(map);

      // Add a click event to the control element
      naver.maps.Event.addDOMListener(filterControl.getElement(), "click", () => {
        setShowModal(true);
      });
    });
  };

  /**
   * Load or reload hospital markers whenever the map or filters change.
   */
  useEffect(() => {
    if (map) {
      loadHospitalMarkers();
    }
  }, [map, filters]);

  /**
   * Clears existing markers and creates new ones for the filtered hospital data.
   */
  const loadHospitalMarkers = () => {
    // Clear existing markers
    markers.forEach((m) => m.setMap(null));
    setMarkers([]);

    // Example hospital data
    const hospitalData = [
      {
        name: "서울병원",
        lat: 37.5663,
        lng: 126.9779,
        parking: true,
        twentyFourHours: false,
      },
      {
        name: "서초병원",
        lat: 37.5652,
        lng: 126.9785,
        parking: false,
        twentyFourHours: true,
      },
      // Add more data as needed...
    ];

    // Apply filters
    const filteredData = hospitalData.filter((hospital) => {
      if (filters.parking && !hospital.parking) return false;
      if (filters.twentyFourHours && !hospital.twentyFourHours) return false;
      return true;
    });

    // Create new markers
    const newMarkers = filteredData.map((hospital) => {
      const marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(hospital.lat, hospital.lng),
        map: map,
      });
      return marker;
    });

    setMarkers(newMarkers);
  };

  /**
   * Called when user applies filters in the modal.
   */
  const handleApplyFilters = (selectedFilters) => {
    setFilters(selectedFilters);
  };

  return (
    <div className="naver-map-page" style={{ display: 'flex', height: '90vh', position: 'relative' }}>
      
      {/* Left side: FilterPanel */}
      {mode === "emergency" && <EmergencyFilterPanel />}
      {mode === "tranfer" && <TransferFilterPanel />}
        
      {/* Right side: The Map */}
      <div className="naver-map-container" style={{ flexGrow: 1, position: 'relative' }}>
        {/* Header or Intro Section */}
        <div className="naver-map-centered">
          <h1 className="naver-map-title">병상 예약</h1>
          <p className="naver-map-subtitle">조건에 맞는 근처 병원을 보여드릴게요.</p>
        </div>

        {/* The Map Element */}
        <div id="map" className="naver-map" />
      </div>


    </div>
  );
}
