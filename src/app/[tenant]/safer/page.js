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
import { Snackbar, Alert } from "@mui/material";
import ReactDOMServer from "react-dom/server";
import MyLocationIcon from "@mui/icons-material/MyLocation";

export default function ReservationPage() {
  const [map, setMap] = useState(null);        // Reference to the Naver map
  const [userLocation, setUserLocation] = useState({ lat: 37.487340, lng: 127.015288 });
  const [markers, setMarkers] = useState([]);  // Track markers to remove or update
  const [userMarker, setUserMarker] = useState(null);
  const [showSearchModeModal, setShowSearchModeModal] = useState(false);
  const [emergencyModalOpen, setEmergencyModalOpen] = useState(false); 
  const [showTransferFilterPanel, setShowTransferFilterPanel] = useState(false);
  const [searchRadius, setSearchRadius] = useState(null);
  const [circle, setCircle] = useState(null);
  const [showDialog, setShowDialog] = useState(false);
  const [availabilityUnits, setAvailabilityUnits] = useState([]);
  const [equipments, setEquipments] = useState([]);
  // State for showing a snackbar message
  const [snackbarOpen, setSnackbarOpen] = useState(false);
  const [snackbarMessage, setSnackbarMessage] = useState("");

  const handleCloseSnackbar = () => {
    setSnackbarOpen(false);
  };

  const supabase = getSupabaseBrowserClient();

  /**
   * Initialize the map (once) if it's not created yet and naver.maps is available.
   */
  useEffect(() => {
    if (!map && window?.naver?.maps) {
      const mapOptions = {
        center: new naver.maps.LatLng(37.5665, 126.978), // Seoul
        zoom: 13,
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
      const watchId = navigator.geolocation.watchPosition(
        (position) => {
          const { latitude, longitude } = position.coords;
          const userLantLng = { lat: latitude, lng: longitude };

          setUserLocation(userLantLng);

          map.setCenter(new naver.maps.LatLng(lat, lng));

          return () => navigator.geolocation.clearWatch(watchId);
        },
        (error) => {
          alert("실제 사용자 위치를 수신하기 위해서는 HTTPS 프로토콜을 사용해야합니다.");
          // Mocked user location
          const mockLocation = { lat: 37.487340, lng: 127.015288 };
          console.log("Mocked user location:", mockLocation);
          setUserLocation(mockLocation);
          
          // Use mocked location
          const userLatLng = new naver.maps.LatLng(mockLocation.lat, mockLocation.lng);
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
          box-shadow: 0 2px 4px rgba(0,0,0,0);
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
      
      const logo = document.querySelector(".fa.fa-hospital");

      document.getElementById("defaultMap").addEventListener("click", () => {
        map.setMapTypeId(naver.maps.MapTypeId.NORMAL); // Switch to Normal Map

        if (logo) {
          logo.style.color = "black"; // Set the color to black for normal mode
        }
      });
  
      document.getElementById("satelliteMap").addEventListener("click", () => {
        map.setMapTypeId(naver.maps.MapTypeId.HYBRID); // Switch to Satellite Map

        if (logo) {
          logo.style.color = "white"; // Set the color to white for satellite mode
        }
      });
    });
  };
  
  useEffect(() => {
    if (searchRadius && map && userLocation) {
      // Clear any existing markers
      markers.forEach((marker) => marker.setMap(null));
      setMarkers([]);

      console.log("Find nearby hospitals from ", userLocation);

      if (availabilityUnits) {
        if (availabilityUnits.length > 0) {
          supabase
            .rpc("find_nearby_hospitals_optionally_filtered", {
              user_lat: userLocation.lat,
              user_lon: userLocation.lng,
              radius_km: searchRadius,
              availability_units: availabilityUnits,
              equip_list: equipments
            })
            .then(({ data, error }) => {
              if (error) {
                console.error("RPC error:", error);
                return;
              }
    
              if (data && Array.isArray(data)) {
                console.log("Nearby Hospitals:", data);
                showHospitals(data, availabilityUnits);
              } else {
                setSnackbarMessage(`현재 ${searchRadius}km내 조건에 맞는 전원 가능한 병원이 없습니다.`);
                setSnackbarOpen(true);
              }
          })
        } else {
          console.log("Filter combination not found!");
        }
      } else {
        supabase
          .rpc("find_nearby_hospitals_optionally_filtered", {
            user_lat: userLocation.lat,
            user_lon: userLocation.lng,
            radius_km: searchRadius,
            availability_units: ['hvec'],
            equip_list: []
          })
          .then(({ data, error }) => {
            if (error) {
              console.error("RPC error:", error);
              return;
            }
  
            if (data && Array.isArray(data)) {
              console.log("Nearby Hospitals:", data);
              showHospitals(data, ['hvec']);
            } else {
              setSnackbarMessage(`현재 ${searchRadius}km내 조건에 이용 가능한 응급실이 없습니다.`);
              setSnackbarOpen(true);
            }
          })
      }
    }
  }, [searchRadius, map, userLocation])

    // Place or update the user marker whenever map or userLocation changes
  useEffect(() => {
    if (map) {
      // If marker doesn’t exist yet, create it
      if (!userMarker) {
         // Create a container for the marker
        const markerContainer = document.createElement("div");
        const root = createRoot(markerContainer);

        // Render the Material UI icon into the container
        root.render(
          <MyLocationIcon
            style={{
              color: "blue",
              fontSize: "20px",
              backgroundColor: "white",
              borderRadius: "50%",
              padding: "0px",
              boxShadow: "0 2px 4px rgba(0, 0, 0, 0.2)",
            }}
          />
        );
        
        // Create the marker with the rendered container
        const userMarker = new naver.maps.Marker({
          position: new naver.maps.LatLng(userLocation.lat, userLocation.lng),
          map,
          icon: {
            content: markerContainer, // Attach the React-rendered container
            anchor: new naver.maps.Point(18, 18), // Adjust the anchor to center the marker
          },
        });

        setUserMarker(userMarker);

        const circle = new naver.maps.Circle({
          map: map,
          center: new naver.maps.LatLng(userLocation.lat, userLocation.lng),
          radius: searchRadius * 1000,
          fillColor: "#E0FFFF",
          fillOpacity: 0.4
      });
      
        setCircle(circle);
      } else {
        // If marker already exists, just move it
        userMarker.setPosition(new naver.maps.LatLng(userLocation.lat, userLocation.lng));
        circle.setCenter(new naver.maps.LatLng(userLocation.lat, userLocation.lng));
        circle.setRadius(searchRadius * 1000);
      }
    }
  }, [searchRadius, map, userLocation]);

  const handleEmergencyModalSubmit = (searchRadius) => {
    setSearchRadius(searchRadius);
  }

  // Add event listener for "reservation-click" event
  useEffect(() => {
    const handleReservationClicked = () => {
      setShowDialog(true);

      
    }
    window.addEventListener("reservation-click", handleReservationClicked);

    return () => {
      window.removeEventListener("reservation-click", handleReservationClicked);
    };
  }, []);

  const handleDiagnosisModalClose = () => {
    setShowDialog(false);
  };

  const handleApplyFilters = (availabilityUnits, equipments) => {
    setAvailabilityUnits(availabilityUnits);
    setEquipments(equipments);
    setEmergencyModalOpen(true);
  };

  return (
    <div className="naver-map-page" style={{ display: 'flex', height: '90vh', position: 'relative' }}>
      
      { showTransferFilterPanel && <TransferFilterPanel map={map} onApplyFilters={handleApplyFilters} /> }
      
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
                setAvailabilityUnits("");
              } else if (selectedMode === "transfer") {
                setShowTransferFilterPanel(true);
                setEmergencyModalOpen(false);
              }
            }}
          />

          <EmergencyModal
            open={emergencyModalOpen}
            onClose={() => setEmergencyModalOpen(false)}
            onSubmit={handleEmergencyModalSubmit}
          />

          <DiagnosisModal 
            open={showDialog}
            onClose={handleDiagnosisModalClose}
          />
        </Fragment>
      </div>

      <Snackbar 
        open={snackbarOpen} 
        autoHideDuration={6000} 
        onClose={handleCloseSnackbar}
        anchorOrigin={{ vertical: "bottom", horizontal: "center" }}
      >
        <Alert onClose={handleCloseSnackbar} severity="warning" sx={{ width: '100%' }}>
          {snackbarMessage}
        </Alert>
      </Snackbar>            
    </div>
  );

  function showHospitals(data, availabilityUnits) {
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
          availabilityUnits={availabilityUnits}
          hospitalData={hospital} />
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
  }
}
