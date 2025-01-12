"use client";

import React, { useEffect, useState } from "react";
import "@/styles/custom.css";

export default function RootLayout({ children }) {
  const [theme, setTheme] = useState("light");

  // Load theme preference from localStorage when the component mounts
  useEffect(() => {
    const savedTheme = localStorage.getItem("theme") || "light";
    setTheme(savedTheme);
    document.documentElement.setAttribute("data-theme", savedTheme);
  }, []);

  // Toggle the theme and update localStorage
  const toggleTheme = () => {
    const newTheme = theme === "light" ? "dark" : "light";
    setTheme(newTheme);
    document.documentElement.setAttribute("data-theme", newTheme);
    localStorage.setItem("theme", newTheme);
  };

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
            <div className="theme-toggle">
              <input
                type="checkbox"
                id="theme-toggle"
                checked={theme === "dark"}
                onChange={toggleTheme}
                aria-label="Toggle dark mode"
              />
              <label htmlFor="theme-toggle" className="toggle-bar"></label>
            </div>
          </div>
        </header>
        <main>{children}</main>
        <style jsx>{`
          /* Toggle switch styles */
          .theme-toggle {
            position: relative; 
            display: inline-block;
            width: 50px;
            height: 25px;
          }

          .theme-toggle input {
            display: none;
          }

          .toggle-bar {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            transition: 0.4s;
            border-radius: 25px;
          }

          .toggle-bar:before {
            content: "";
            position: absolute;
            height: 20px;
            width: 20px;
            left: 4px;
            bottom: 2.5px;
            background-color: white;
            transition: 0.4s;
            border-radius: 50%;
          }

          input:checked + .toggle-bar {
            background-color:rgb(30, 162, 185);
          }

          input:checked + .toggle-bar:before {
            transform: translateX(24px);
          }
        `}</style>
      </body>
    </html>
  );
}
