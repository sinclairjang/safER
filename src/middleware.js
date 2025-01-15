import { NextResponse } from "next/server";
import { getSupabaseReqResClient } from "./supabase-utils/reqResClient";
import { TENANT_MAP } from "./tenant-map";
import { buildUrl, getHostnameAndPort } from "./utils/url-helpers";

export const config = {
    matcher: [
       "/((?!.*\\.).*)",
    ],
};

export async function middleware(request) {
    console.log("request", request.url);
    //console.log("Request Cookies:", request.cookies.getAll());
    const { supabase, response } = getSupabaseReqResClient({ request });
    const { data: user, error } = await supabase.auth.getUser();
    console.log(user);
    if (error) {
        console.error("Error authenticating user:", error);
    }

    // refresh the token if it's expired and pass the refreshed Auth token to both the server and client
    //const sessionUser = session.data?.session?.user;

    const [hostname] = getHostnameAndPort(request);
    if (hostname in TENANT_MAP === false) {
        console.log(hostname);
        return NextResponse.rewrite(new URL("/not-found", request.url));
    } 
    
    const requestedPath = request.nextUrl.pathname;    
    //const [tenant, ...restOfPath] = requestedPath.substr(1).split("/");
    //const applicationPath = "/" + restOfPath.join("/");
    const tenant = TENANT_MAP[hostname];
    const applicationPath = requestedPath;
    if ( !/[a-z0-9-_]+/.test(tenant) ) {
        return NextResponse.rewrite(new URL("/not-found", request.url));
    }

    if (applicationPath.startsWith("/safer") || applicationPath.startsWith("/hospital")) {
        if (!user.user) {
            return NextResponse.redirect(buildUrl("/", tenant, request));
        } else if (!user.user.app_metadata?.tenants.includes(tenant)) {
            return NextResponse.rewrite(new URL("/not-found", request.url));
        }
    } else if (applicationPath === "/" ){
        if (user.user) {
            if (tenant === "safer") {
                return NextResponse.redirect(buildUrl("/safer", tenant, request));
            } else {
                return NextResponse.redirect(buildUrl("/hospital", tenant, request));   
            }
        }
    }

    const rewrittenResponse = NextResponse.rewrite(
        new URL(`/${tenant}${applicationPath}${request.nextUrl.search}`, request.url),
        {
            request: request,
        }
    );
    const cookiesToSet = response.value.cookies.getAll();
    cookiesToSet.forEach(({ name, value, options }) => {
        rewrittenResponse.cookies.set(name, value, options);
    });
    return rewrittenResponse;
}