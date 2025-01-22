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

export default function RootLayout({ children }) {
  const [muiTheme, setMuiTheme] = useState(createTheme());

  useEffect(() => {
    const currentDomain = window.location.hostname; // Get the domain
    const isRescuerDomain = currentDomain === "safer.com"; // Check if it's a rescuer's domain

    // Set theme dynamically
    const appliedTheme = isRescuerDomain ? "light" : "dark";
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
      <body>
        {/* Naver Maps Script */}
        <Script
          strategy="beforeInteractive"
          src={`https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=${process.env.NEXT_PUBLIC_NCP_CLIENT_ID}`}
        />
        {/* Material UI Providers */}
        <AppRouterCacheProvider>
          <ThemeProvider theme={muiTheme}>
            <CssBaseline /> {/* Normalize styles */}
            <main style={{ paddingTop: "0px" }}>{children}</main>
          </ThemeProvider>
        </AppRouterCacheProvider>
      </body>
    </html>
  );
}
