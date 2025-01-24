"use client";

import React from "react";
import { useEffect, useState } from "react";
import "@/styles/naver-map.css";
import DiagnosisModal from "./DiagnosisModal";
import EmergencyModal from "./EmergencyModal";
import TransferFilterPanel from "./TransferFilterPanel"
import SearchModeModal from "./SearchModeModal";

export default function ReservationPage() {
  const [map, setMap] = useState(null);        // Reference to the Naver map
  const [userLocation, setUserLocation] = useState(null);
  const [markers, setMarkers] = useState([]);  // Track markers to remove or update
  const [filters, setFilters] = useState({});
  const [showSearchModeModal, setShowSearchModeModal] = useState(false);
  const [emergencyModalOpen, setEmergencyModalOpen] = React.useState(false); 
  const [showTransferFilterPanel, setShowTransferFilterPanel] = React.useState(false);

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
      
      // Attach our modal control
      addModalControl(newMap);
      // Attach our logo control after creating the map
      addLogoControl(newMap);

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
          background-color: rgba(255, 255, 255, 0);
          border: 1px tranparent #ccc;
          border-radius: 4px;
          box-shadow: 0 2px 4px rgba(0,0,0,0.2);
          font-size: 17px;
          text-decoration: none;
          color: rgb(255, 255, 255);
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
    });
  };

   /**
   * Add a custom filter button to the map.
   */
   const addModalControl = (map) => {
    const filterBtnHtml = `
      <div
        style="
          display: inline-flex;
          align-items: center;
          justify-content: center;
          gap: 5px;
          padding: 10px 12px;
          background-color: #f9f9f9;
          border: 1px solid #ddd;
          border-radius: 8px;
          box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
          text-decoration: none;
          color: #333;
          cursor: pointer;
          font-size: 14px;
          font-family: 'Noto Sans KR', sans-serif; /* Modern Korean font */
          transition: background-color 0.3s ease, box-shadow 0.3s ease;
        "
        onmouseover="this.style.backgroundColor='#eaeaea'; this.style.boxShadow='0px 6px 8px rgba(0, 0, 0, 0.15)';"
        onmouseout="this.style.backgroundColor='#f9f9f9'; this.style.boxShadow='0px 4px 6px rgba(0, 0, 0, 0.1)';"
      >
        <i class="fas fa-search" style="font-size: 16px;"></i>
        <strong>조건 검색</strong>
      </div>
    `;

    const ModalControl = new naver.maps.CustomControl(filterBtnHtml, {
      position: naver.maps.Position.BOTTOM_CENTER, // Adjust position on the map
    });

    // Wait until the map is initialized before attaching
    naver.maps.Event.once(map, "init", () => {
      ModalControl.setMap(map);

      // Add a click event to the control element
      naver.maps.Event.addDOMListener(ModalControl.getElement(), "click", () => {
        setShowSearchModeModal(true);
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
      
      { showTransferFilterPanel && <TransferFilterPanel map={map}/> }
      
      <div className="naver-map-container" style={{ flexGrow: 1, position: 'relative' }}>
        {/* Header or Intro Section */}
        <div className="naver-map-centered">
          <h1 className="naver-map-title">병상 예약</h1>
          <p className="naver-map-subtitle">조건에 맞는 근처 병원을 보여드릴게요.</p>
        </div>

        {/* The Map Element */}
        <div id="map" className="naver-map" />
      
        <React.Fragment>
          {/* Filters Modal */}
          <SearchModeModal
            open={showSearchModeModal}
            onClose={() => setShowSearchModeModal(false)}
            onApply={(selectedMode) => {
              console.log("Selected Mode:", selectedMode);
              if (selectedMode === "emergency") {
                setEmergencyModalOpen(true);
                setShowTransferFilterPanel(false);
              } else if (selectedMode === "transfer") {
                setShowTransferFilterPanel(true);
                setEmergencyModalOpen(false);
              }
            }}
          />

          <EmergencyModal
            open={emergencyModalOpen}
            onClose={() => setEmergencyModalOpen(false)}
          />
        </React.Fragment>
      </div>


    </div>
  );
}
