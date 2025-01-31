import TenantName from "./TenantName";
import Header from "./Header";
import { Box } from "@mui/material";
import {Divider} from "@mui/material";

export default async function SaferLayout(pageProps) {
    const { tenant } = await pageProps.params;
    return (
        <Box sx={{ display: "flex", flexDirection: "column", minHeight: "100vh" }}>
        <Header tenant={tenant} />

        {/* Tenant Section */}
        <Box sx={{ padding: "16px 16px 0px 16px", backgroundColor: "white" }}>
            <TenantName tenant={tenant} />
        </Box>
        <Divider />
        {/* Main Content */}
        <Box sx={{ flexGrow: 1, padding: "16px" }}>
            {pageProps.children}
        </Box>

    </Box>
    );
}