"use client";

import { useEffect } from "react";
import Script from "next/script";
import "@/styles/naver-map.css";

export default function NaverMapPage() {
  const initializeMap = () => {
    const mapOptions = {
      center: new naver.maps.LatLng(37.5665, 126.978), // Seoul's coordinates
      zoom: 14,
    };

    const map = new naver.maps.Map("map", mapOptions);

    // Example: Add a marker
    new naver.maps.Marker({
      position: new naver.maps.LatLng(37.5665, 126.978),
      map: map,
    });
  };

  return (
    <div className="naver-map-container">
      <div className="naver-map-centered">
        <h1 className="naver-map-title">병상 예약</h1>
        <p className="naver-map-subtitle">조건에 맞는 근처 병원을 보여드릴게요.</p>
      </div>
      <Script
        strategy="afterInteractive"
        src={`https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=${process.env.NEXT_PUBLIC_NCP_CLIENT_ID}`}
        onLoad={initializeMap}
      />
      <div id="map" className="naver-map"></div>
      <button
        className="naver-map-button"
        onClick={() => alert("Button clicked!")}
      >
        Example Button
      </button>
    </div>
  );
}
