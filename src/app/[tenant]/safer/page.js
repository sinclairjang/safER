"use client";

import { useEffect, useState, Fragment } from "react";
import { createRoot } from 'react-dom/client';
import "@/styles/naver-map.css";
import DiagnosisModal from "./DiagnosisModal";
import EmergencyModal from "./EmergencyModal";
import TransferFilterPanel from "./TransferFilterPanel"
import SearchModeModal from "./SearchModeModal";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import InfoWindowContent from "./InfoWindowContent";

export default function ReservationPage() {
  const [map, setMap] = useState(null);        // Reference to the Naver map
  const [userLocation, setUserLocation] = useState(null);
  const [markers, setMarkers] = useState([]);  // Track markers to remove or update
  const [filters, setFilters] = useState({});
  const [showSearchModeModal, setShowSearchModeModal] = useState(false);
  const [emergencyModalOpen, setEmergencyModalOpen] = useState(false); 
  const [showTransferFilterPanel, setShowTransferFilterPanel] = useState(false);
  const [searchRadius, setSearchRadius] = useState(null);
  const [showDialog, setShowDialog] = useState(false);

  const supabase = getSupabaseBrowserClient();

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

      addMapModeControls(newMap);

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
      position: naver.maps.Position.TOP_LEFT, // You can change to TOP_LEFT, etc.
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

  const addMapModeControls = (map) => {
    const controlsHtml = `
      <div style="display: flex; gap: 10px; background-color: rgba(255, 255, 255, 0.9); padding: 10px; border-radius: 8px; box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);">
        <!-- Normal Map Button -->
        <div id="defaultMap" class="sprite-icon normal-map" style="
          display: flex;
          flex-direction: column;
          align-items: center;
          width: 64px;
          cursor: pointer;">
          <div style="
            width: 64px;
            height: 34px;
            background-image: url('https://maps-service.pstatic.net/pcweb_navermap_v5/250117-4d3a92b/assets/sprites/home.png');
            background-position: -67px 0px;
            background-size: 261px 188px;">
          </div>
          <span style="
            margin-top: 4px;
            font-size: 12px;
            font-family: 'Noto Sans KR', sans-serif;
            color: #333;
            text-align: center;">일반지도</span>
        </div>
  
        <!-- Satellite Map Button -->
        <div id="satelliteMap" class="sprite-icon satellite-map" style="
          display: flex;
          flex-direction: column;
          align-items: center;
          width: 64px;
          cursor: pointer;">
          <div style="
            width: 64px;
            height: 34px;
            background-image: url('https://maps-service.pstatic.net/pcweb_navermap_v5/250117-4d3a92b/assets/sprites/home.png');
            background-position: 0px -55px;
            background-size: 261px 188px;">
          </div>
          <span style="
            margin-top: 4px;
            font-size: 12px;
            font-family: 'Noto Sans KR', sans-serif;
            color: #333;
            text-align: center;">위성지도</span>
        </div>
      </div>
    `;
  
    const MapModeControl = new naver.maps.CustomControl(controlsHtml, {
      position: naver.maps.Position.TOP_RIGHT,
    });
  
    naver.maps.Event.once(map, "init", () => {
      MapModeControl.setMap(map);
  
      document.getElementById("defaultMap").addEventListener("click", () => {
        map.setMapTypeId(naver.maps.MapTypeId.NORMAL); // Switch to Normal Map
      });
  
      document.getElementById("satelliteMap").addEventListener("click", () => {
        map.setMapTypeId(naver.maps.MapTypeId.HYBRID); // Switch to Satellite Map
      });
    });
  };
  
  /**
   * Called when user applies filters in the modal.
   */
  const handleApplyFilters = (selectedFilters) => {
    setFilters(selectedFilters);
  };

  useEffect(() => {
    if (searchRadius && map && userLocation) {
      // Clear any existing markers
      markers.forEach((marker) => marker.setMap(null));
      setMarkers([]);

      console.log(userLocation);

      supabase
        .rpc("find_nearby_hospitals", {
          user_lat: userLocation.latitude,
          user_lon: userLocation.longitude,
          radius_km: searchRadius
        })
        .then(({ data, error }) => {
          if (error) {
            console.error("RPC error:", error);
            return;
          }

          if (data && Array.isArray(data)) {
            console.log("Nearby Hospitals:", data);
          }

          const newMarkers = data.map((hospital) => {
            const marker = new naver.maps.Marker({
              position: new naver.maps.LatLng(hospital.wgs84lat, hospital.wgs84lon),
              map
            });

            const infoWindow = new naver.maps.InfoWindow({
              content: "",
              maxWidth: 300,
              backgroundColor: "#fff",
              borderColor: "#ccc",
              borderWidth: 2,
              
          });
          // // Apply filters
          // const filteredData = hospitalData.filter((hospital) => {
          //   if (filters.parking && !hospital.parking) return false;
          //   if (filters.twentyFourHours && !hospital.twentyFourHours) return false;
          //   return true;
          // });

            const InfoWindowContainer = document.createElement("div");
            const root = createRoot(InfoWindowContainer);

            root.render(
              <InfoWindowContent
                dutyname={hospital.dutyname}
                dutyaddr={hospital.dutyaddr}
                dutytel3={hospital.dutytel3}
                distance_km={hospital.distance_km}
                link={hospital.link || null} // If a link exists in the data
                image="/placeholder-hospital.png"
                marker={marker}
              />
            );

            infoWindow.setContent(InfoWindowContainer);

            // Add click listener to marker to open InfoWindow
            naver.maps.Event.addListener(marker, "click", () => {
                if (infoWindow.getMap()) {
                  infoWindow.close();
              } else {
                  infoWindow.open(map, marker);
              }
            });

            return marker;
          });

          setMarkers(newMarkers);
        })
    }
  }, [searchRadius, map, userLocation])

  const handleOnSubmit = (searchRadius) => {
    setSearchRadius(searchRadius);
  }

  // Add event listener for "reservation-click" event
  useEffect(() => {
    const handleOpenDialog = () => setShowDialog(true);
    window.addEventListener("reservation-click", handleOpenDialog);

    return () => {
      window.removeEventListener("reservation-click", handleOpenDialog);
    };
  }, []);

  const handleDialogClose = () => {
    setShowDialog(false);
  };

  return (
    <div className="naver-map-page" style={{ display: 'flex', height: '90vh', position: 'relative' }}>
      
      { showTransferFilterPanel && <TransferFilterPanel map={map} /> }
      
      <div className="naver-map-container" style={{ flexGrow: 1, position: 'relative' }}>
        {/* Header or Intro Section */}
        <div className="naver-map-centered">
          <h1 className="naver-map-title">병상 예약</h1>
          <p className="naver-map-subtitle">조건에 맞는 근처 병원을 보여드릴게요.</p>
        </div>

        {/* The Map Element */}
        <div id="map" className="naver-map" />
      
        <Fragment>
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
            onSubmit={handleOnSubmit}
          />

          <DiagnosisModal 
            open={showDialog}
            onClose={handleDialogClose}
          />
        </Fragment>
      </div>


    </div>
  );
}
