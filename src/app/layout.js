"use client";

import React, { useEffect, useState } from "react";
import "@/styles/custom.css";

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
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </head>
      <body>
        <header>
          <div style={{ display: "flex", justifyContent: "flex-end", padding: "10px" }}>
            {/* Header can contain more domain-specific items */}
          </div>
        </header>
        <main>{children}</main>
      </body>
    </html>
  );
}
