'use client';

import { useEffect, useState } from "react";
import { AppRouterCacheProvider } from "@mui/material-nextjs/v15-appRouter";
import { ThemeProvider, createTheme } from "@mui/material/styles";
import { CssBaseline } from "@mui/material";
import { Roboto } from "next/font/google";
import Script from "next/script";

// Configure Google Font
const roboto = Roboto({
  weight: ["300", "400", "500", "700"], // Available font weights
  subsets: ["latin"], // Character set to load
  display: "swap", // Ensures fallback font is shown until Roboto is loaded
  variable: "--font-roboto", // Creates a CSS variable for the font
});

const getTenantFromHostname = () => {
  if (typeof window === "undefined") return null;
  const hostname = window.location.hostname;
  const parts = hostname.split(".");
  if (parts.length >= 3) {
    return parts[0]; // e.g., "hyumc" from "hyumc.saf-er.com"
  }
  return "default";
}

export default function RootLayout({ children }) {
  const [muiTheme, setMuiTheme] = useState(createTheme());
  const [tenant, setTenant] = useState("default");

  useEffect(() => {
    const _tenant = getTenantFromHostname();
    console.log("Changing theme based on ", _tenant);
    setTenant(_tenant);
    // Set theme dynamically
    const appliedTheme = _tenant === "safer" ? "light" : "dark";
    document.documentElement.setAttribute("data-theme", appliedTheme);

    // Update Material UI theme
    setMuiTheme(
      createTheme({
        palette: {
          mode: appliedTheme, // Sync MUI palette mode with data-theme
        },
        typography: {
          fontFamily: "var(--font-roboto)", // Use Roboto globally
        },
      })
    );
  }, []);

  return (
    <html lang="en" className={roboto.variable}>
      <head>
        {tenant === "safer" && (
          <link
            rel="preload"
            href={`https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=${process.env.NCP_CLIENT_ID}`}
            as="script"
          />
        )}
        {/* External styles */}
        <link
          rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css"
        />
        <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
        />
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </head>
      <body style={{ backgroundColor: "inherit"}}>
        {tenant === "safer" && (
          <Script
            strategy="beforeInteractive"
            src={`https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=${process.env.NCP_CLIENT_ID}`}
          />
        )}
        {/* Material UI Providers */}
        <AppRouterCacheProvider>
          <ThemeProvider theme={muiTheme}>
            <CssBaseline /> {/* Normalize styles */}
            <main style={{ paddingTop: "0px", paddingBottom: "5px" }}>{children}</main>
          </ThemeProvider>
        </AppRouterCacheProvider>
      </body>
    </html>
  );
}
