/** @type {import('next').NextConfig} */
const nextConfig = {
    reactStrictMode: false,
    redirects: async () => [
        {
            source: "/logout",
            destination: "/auth/",
            permanent: true,
        },
    ],
};

export default nextConfig;
