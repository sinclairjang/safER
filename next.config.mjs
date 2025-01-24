/** @type {import('next').NextConfig} */
const nextConfig = {
    redirects: async () => [
        {
            source: "/logout",
            destination: "/auth/",
            permanent: true,
        },
    ],
};

export default nextConfig;
