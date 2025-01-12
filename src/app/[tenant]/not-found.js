"use client";

import "@/styles/not-found.css";
import { usePathname } from "next/navigation";

export default function  NotFoundPage({ params }) {
    const pathname = usePathname();
    const tenant = pathname.split("/")[1]; // Assuming the tenant is in the first segment
  
    console.log(tenant); // Logs the dynamic tenant parameter
    return (
      <div className="not-found-container">
        <h1 className="not-found-title">404 ERROR</h1>
        <p className="not-found-message">해당 페이지를 찾을 수 없어요!</p>
      </div>
    );
  } 