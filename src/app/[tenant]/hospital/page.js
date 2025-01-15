export default async function MainPage({ params }) {
    const { tenant } = await params;

    // Sample content for 삼성서울병원 (Samsung Medical Center)
    const hospitalInfo = {
        name: "함께하는 진료 함께하는 행복, SMC 삼성서울병원입니다.",
        description:
            "삼성서울병원은 환자 중심의 진료와 연구를 통해 글로벌 의료 서비스를 제공하는 대한민국의 대표 병원입니다.",
        mission: "최상의 의료 서비스와 혁신적인 연구로 인류의 건강과 행복을 실현합니다.",
        features: [
            "최첨단 의료 기술 및 시설",
            "국제적인 의료진과 전문 인력",
            "종합적인 환자 맞춤형 케어",
            "연구 중심의 치료 및 임상 시험",
        ],
        contact: {
            address: "서울특별시 강남구 일원로 81 (일원동)",
            phone: "02-3410-2114",
            website: "https://www.samsunghospital.com/",
        },
    };

    return (
        <>
            <header style={{ textAlign: "center", marginBottom: "20px" }}>
                <h1>{hospitalInfo.name}</h1>
                <p style={{ fontStyle: "italic", color: "#555" }}>
                    {hospitalInfo.description}
                </p>
            </header>
            <main style={{ padding: "20px", maxWidth: "800px", margin: "0 auto" }}>
                <section style={{ marginBottom: "30px" }}>
                    <h2>우리의 사명</h2>
                    <p style={{ fontSize: "1.1em", lineHeight: "1.6" }}>
                        {hospitalInfo.mission}
                    </p>
                </section>
                <section style={{ marginBottom: "30px" }}>
                    <h2>특징</h2>
                    <ul style={{ listStyleType: "disc", paddingLeft: "20px" }}>
                        {hospitalInfo.features.map((feature, index) => (
                            <li key={index} style={{ marginBottom: "10px" }}>
                                {feature}
                            </li>
                        ))}
                    </ul>
                </section>
                <section style={{ marginBottom: "30px" }}>
                    <h2>연락처</h2>
                    <address style={{ fontStyle: "normal", lineHeight: "1.6" }}>
                        <strong>주소:</strong> {hospitalInfo.contact.address}
                        <br />
                        <strong>전화번호:</strong> {hospitalInfo.contact.phone}
                        <br />
                        <strong>웹사이트:</strong>{" "}
                        <a
                            href={hospitalInfo.contact.website}
                            target="_blank"
                            rel="noopener noreferrer"
                            style={{ color: "blue", textDecoration: "underline" }}
                        >
                            {hospitalInfo.contact.website}
                        </a>
                    </address>
                </section>
            </main>
        </>
    );
}
