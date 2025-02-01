"use client";

import { useEffect, useState } from "react";
import { Pie } from "react-chartjs-2";
import { Chart as ChartJS, ArcElement, Tooltip, Legend } from "chart.js";
import { Box, Typography } from "@mui/material";
import { bedCodeMap } from "@/bedcode-map";

// Register Chart.js components
ChartJS.register(ArcElement, Tooltip, Legend);

export default function PieChartBeds({ data }) {
    const [chartData, setChartData] = useState(null);

    useEffect(() => {
        if (data) {
            updateChartData(data);
        }
    }, [data]);

    const updateChartData = (data) => {
        const bedCategories = [
            "hvec_rate", "hvoc_rate", "hvcc_rate", "hvncc_rate", "hvccc_rate", "hvicc_rate",
            "hv2_rate", "hv3_rate", "hv6_rate", "hv8_rate", "hv9_rate", "hv13_rate",
            "hv14_rate", "hv15_rate", "hv16_rate", "hv17_rate", "hv18_rate", "hv19_rate",
            "hv21_rate", "hv22_rate", "hv23_rate", "hv24_rate", "hv25_rate", "hv26_rate",
            "hv27_rate", "hv29_rate", "hv30_rate", "hv31_rate", "hv32_rate", "hv33_rate",
            "hv34_rate", "hv35_rate", "hv37_rate", "hv38_rate", "hv39_rate", "hv41_rate"
        ];
        
        const datasets = bedCategories
            .filter((bedType) => data.hasOwnProperty(bedType) && data[bedType] !== null)
            .map((bedType) => {
                const occupiedRate = data[bedType] ?? 0; // Get occupied percentage
                const availableRate = 100 - occupiedRate; // Remaining % is available

            return {
                label: bedType.replace("_rate", "").toUpperCase(),
                data: [availableRate, occupiedRate], // Pie chart slices
                backgroundColor: ["rgba(54, 162, 235, 0.6)", "rgba(255, 99, 132, 0.6)"], // Colors
            };
    });

        setChartData(datasets);
    };

    const options = {
        plugins: {
          legend: {
            labels: {
              color: "rgb(217, 217, 7)", // bright yellow for the legend labels
              font: {
                size: 14,
                weight: "bold",
              },
            },
          },
        },
      };

    if (!chartData) return <Typography>Loading chart...</Typography>;

    return (
        <Box sx={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(300px, 1fr))", gap: "20px", margin: "auto", width: "90%" }}>
            {chartData.map((chart, index) => (
                <Box key={index} sx={{ textAlign: "center" }}>
                    <Typography variant="h6" color="white" sx={{ marginBottom: "10px" }}>{bedCodeMap[chart.label.toLowerCase()] ? `${bedCodeMap[chart.label.toLowerCase()]}(${chart.label.toLowerCase()})` : chart.label}</Typography>
                    <Pie 
                        data={{ labels: ["가용 병상", "사용중인 병상"], datasets: [chart] }}
                        options={options} 
                    />
                </Box>
            ))}
        </Box>
    );
}
