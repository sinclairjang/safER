import "@/styles/loading.css";  

export default function Loading() {
    return (
        <article className={"loading-container"} aria-busy="true">
            <div className={"spinner"}></div>
            <strong className={"message"}>예약 현황을 확인하고 있습니다...</strong>
        </article>
    );
}
