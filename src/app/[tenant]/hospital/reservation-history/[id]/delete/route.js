import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { NextResponse } from "next/server";

export async function POST(request, { params }) {
    const { id, tenant } = await params;
    const supabase = await getSupabaseCookiesUtilClient();
    
    try {
        const { data, error } = await supabase
            .from("reservations")
            .delete()
            .eq("id", id);

        if (error) {
            console.error("Error deleting reservation:", error);
            return NextResponse.json(
                { message: "Failed to delete reservation." },
                { status: 500 }
            );
        }

        // Optionally, notify the user (maybe firebase?)

        return NextResponse.json(
            { message: "Reservation deleted successfully" }, 
            { status: 200}
        );
    } catch (error) {
        console.error("Unexpected error:", error);
        return NextResponse.json(
            { message: "Internal server error."},
            { status: 500 }
        );
    }
}