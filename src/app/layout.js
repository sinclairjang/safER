"use client";

import React, { useEffect, useState } from "react";
import "@/styles/custom.css";
import Script from "next/script";

export default function RootLayout({ children }) {
  const [theme, setTheme] = useState("light");

  useEffect(() => {
    // Determine theme based on the domain
    const currentDomain = window.location.hostname; // Get the current domain
    const isRescuerDomain = currentDomain === "safer.com"; // Check if it matches the rescuer's domain

    // Set the theme based on the domain
    const appliedTheme = isRescuerDomain ? "light" : "dark";
    setTheme(appliedTheme);
    document.documentElement.setAttribute("data-theme", appliedTheme);
  }, []); // Empty dependency array ensures this runs once on mount

  return (
    <html lang="en" data-theme={theme}>
      <head>
        <link
          rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css"
        />
        <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
        />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </head>
      <body>

        <Script
          strategy="beforeInteractive"
          src={`https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=${process.env.NEXT_PUBLIC_NCP_CLIENT_ID}`}
        />
        <main>{children}</main>
      </body>
    </html>
  );
}
