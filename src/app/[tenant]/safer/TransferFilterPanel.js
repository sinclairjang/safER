"use client";

import "@/styles/FilterPanel.css";
import React, { useState, useEffect } from "react";
import {
  Box,
  Button,
  Paper,
  Stepper,
  Step,
  StepLabel,
  StepContent,
  Typography,
} from "@mui/material";

import ListIcon from "@mui/icons-material/List";
import BedIcon from "@mui/icons-material/Bed";
import VerifiedIcon from "@mui/icons-material/Verified";
import PrecisionManufacturingIcon from "@mui/icons-material/PrecisionManufacturing";
import LocationOnIcon from "@mui/icons-material/LocationOn";

// Example sub-components from your original FilterPanel steps:
function StepOne({ data, onChange }) {
  const departments = [
    "일반",
    "신경과",
    "흉부외과",
    "내과",
    "외과",
    "정형외과",
    "신경외과",
    "약물",
    "화상",
    "외상",
    "소아",
    "감염",
    "심장내과",
    "정신과",
  ];

  const handleDepartmentChange = (e) => {
    onChange({ department: e.target.value });
  };

  return (
    <Box>
      <Typography variant="h6" sx={{ display: "flex", alignItems: "center", mb: 1 }}>
        <ListIcon sx={{ mr: 1 }} />
        분과 선택
      </Typography>
      <select
        className="w-full border p-1"
        value={data.department || ""}
        onChange={handleDepartmentChange}
      >
        <option value="">---선택---</option>
        {departments.map((dep) => (
          <option key={dep} value={dep}>
            {dep}
          </option>
        ))}
      </select>
    </Box>
  );
}

function StepTwo({ data, onChange }) {
  const bedTypes = ["입원실", "중환자실"];

  const handleBedTypeChange = (e) => {
    onChange({ bedType: e.target.value });
  };

  return (
    <Box>
      <Typography variant="h6" sx={{ display: "flex", alignItems: "center", mb: 1 }}>
        <BedIcon sx={{ mr: 1 }} />
        병상 유형
      </Typography>
      {bedTypes.map((type) => (
        <label key={type} style={{ display: "block", marginBottom: "5px" }}>
          <input
            type="radio"
            name="bedType"
            value={type}
            checked={data.bedType === type}
            onChange={handleBedTypeChange}
          />
          <span style={{ marginLeft: "8px" }}>{type}</span>
        </label>
      ))}
    </Box>
  );
}

function StepThree({ data, onChange }) {
  const handleEmergencyChange = () => {
    onChange({ ...data, emergencyNeeded: !data.emergencyNeeded });
  };
  const handleIsolationChange = () => {
    onChange({ ...data, isolationNeeded: !data.isolationNeeded });
  };

  return (
    <Box>
      <Typography variant="h6" sx={{ display: "flex", alignItems: "center", mb: 1 }}>
        <VerifiedIcon sx={{ mr: 1 }} />
        필요한 조치
      </Typography>
      <label style={{ display: "block", marginBottom: "5px" }}>
        <input
          type="checkbox"
          checked={data.emergencyNeeded}
          onChange={handleEmergencyChange}
        />
        <span style={{ marginLeft: "8px" }}>응급 조치가 필요</span>
      </label>
      <label style={{ display: "block", marginBottom: "5px" }}>
        <input
          type="checkbox"
          checked={data.isolationNeeded}
          onChange={handleIsolationChange}
        />
        <span style={{ marginLeft: "8px" }}>격리가 필요</span>
      </label>
    </Box>
  );
}

function StepFour({ data, onChange }) {
  const equipments = [
    "CT",
    "MRI",
    "혈관촬영기",
    "인공호흡기",
    "조산아가용 인공호흡기",
    "인큐베이터",
    "CRRT",
    "ECMO",
    "고압산소치료기",
    "중심체온조절유도기",
    "구급차",
  ];

  const toggleEquipment = (equip) => {
    let current = data.equipment || [];
    if (current.includes(equip)) {
      current = current.filter((e) => e !== equip);
    } else {
      current = [...current, equip];
    }
    onChange({ equipment: current });
  };

  return (
    <Box>
      <Typography variant="h6" sx={{ display: "flex", alignItems: "center", mb: 1 }}>
        <PrecisionManufacturingIcon sx={{ mr: 1 }} />
        필요한 장비
      </Typography>
      {equipments.map((eq) => (
        <label key={eq} style={{ display: "block", marginBottom: "5px" }}>
          <input
            type="checkbox"
            checked={data.equipment?.includes(eq)}
            onChange={() => toggleEquipment(eq)}
          />
          <span style={{ marginLeft: "8px" }}>{eq}</span>
        </label>
      ))}
    </Box>
  );
}

export default function TransferFilterPanel({ map }) {
  // Control whether the panel is open or collapsed
  const [isOpen, setIsOpen] = useState(true);

  // Vertical Stepper active step
  const [activeStep, setActiveStep] = useState(0);

  // Data for each step
  const [stepOneData, setStepOneData] = useState({});
  const [stepTwoData, setStepTwoData] = useState({});
  const [stepThreeData, setStepThreeData] = useState({});
  const [stepFourData, setStepFourData] = useState({ equipment: [] });

  // Range (from your search UI)
  const [searchRange, setSearchRange] = useState("");

  // --[ Step Validation Logic Added Here ]--
  const steps = [
    {
      label: "분과 선택",
      content: <StepOne data={stepOneData} onChange={setStepOneData} />,
      validate: () => {
        // Require a department selection
        return stepOneData.department && stepOneData.department.trim() !== "";
      },
    },
    {
      label: "병상 유형",
      content: <StepTwo data={stepTwoData} onChange={setStepTwoData} />,
      validate: () => {
        // Require a bedType selection
        return stepTwoData.bedType && stepTwoData.bedType.trim() !== "";
      },
    },
    {
      label: "응급 / 격리",
      content: <StepThree data={stepThreeData} onChange={setStepThreeData} />,
      validate: () => {
        // Require at least one checkbox be true
        return stepThreeData.emergencyNeeded || stepThreeData.isolationNeeded;
      },
    },
    {
      label: "장비 선택",
      content: <StepFour data={stepFourData} onChange={setStepFourData} />,
      validate: () => {
        // Require at least one piece of equipment be selected
        return stepFourData.equipment && stepFourData.equipment.length > 0;
      },
    },
  ];
  // --[ End of Step Validation Logic ]--

  useEffect(() => {
    if (map) {
      setTimeout(() => {
        naver.maps.Event.trigger(map, "resize");
      }, 300);
    }
  }, [isOpen, map]);

  // --[ Updated handleNext to enforce validation ]--
  const handleNext = () => {
    if (steps[activeStep].validate()) {
      setActiveStep((prevStep) => prevStep + 1);
    } else {
      alert("입력을 완료해주세요!");
    }
  };

  const handleBack = () => {
    setActiveStep((prevStep) => prevStep - 1);
  };

  const handleApplyFilters = () => {
    console.log("Step 1 Data:", stepOneData);
    console.log("Step 2 Data:", stepTwoData);
    console.log("Step 3 Data:", stepThreeData);
    console.log("Step 4 Data:", stepFourData);
    console.log("Search Range:", searchRange);

    // Here you'd run your actual filter/search logic
    alert("Filters applied. Query your data with the selected filters!");
  };

  const toggleFilterPanel = () => {
    setIsOpen(!isOpen);
  };

  // Dynamically adjust the width to achieve your "collapse" effect
  const panelWidth = isOpen ? 320 : 24;

  return (
    <Box
      sx={{
        height: "100%",
        width: panelWidth,
        position: "relative",
        zIndex: 1,
        transition: "width 0.3s ease",
        borderRight: "1px solid #ccc",
        backgroundColor: "#f8f8f8",
      }}
    >
      <Button
        variant="outlined"
        size="small"
        onClick={toggleFilterPanel}
        sx={{
          maxWidth: "40px",
          minWidth: "40px",
          position: "absolute",
          top: "50%", /* Center vertically */
          right: "-20px", /* Slightly outside the panel */
          transform: "translateY(-50%)", /* Adjust for centering */
          height: "40px",
          backgroundColor: "white", /* Match the panel's background */
          border: "1px solid #ccc", /* Light border */
          borderRadius: "50%", /* Circular shape */
          boxShadow: "0 2px 4px rgba(0, 0, 0, 0.2)", /* Subtle shadow */
          cursor: "pointer",
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
          fontSize: "16px", /* Adjust arrow size */
          color: "#333", /* Neutral arrow color */
          transition: "transform 0.3s ease",
          zIndex: "1",
        }}
      >
        {isOpen ? "❮" : "❯"}
      </Button>

      {/* Header / Search Range UI */}
      {isOpen && (
        <Box p={2} sx={{ display: "flex", gap: 1, alignItems: "center" }}>
          <Box
            sx={{
              p: 1,
              backgroundColor: "#007bff33",
              borderRadius: "4px",
              display: "flex",
              alignItems: "center",
            }}
          >
            <LocationOnIcon color="primary" />
          </Box>
          <input
            type="number"
            className="search-input"
            placeholder="검색 범위(km)"
            value={searchRange}
            style={{ flex: 1, padding: "8px" }}
            onChange={(e) => setSearchRange(e.target.value)}
          />
        </Box>
      )}

      {/* Vertical Stepper */}
      {isOpen && (
        <Stepper activeStep={activeStep} orientation="vertical" sx={{ p: 2 }}>
          {steps.map((step, index) => (
            <Step key={step.label}>
              <StepLabel>{step.label}</StepLabel>
              <StepContent>
                {step.content}

                <Box sx={{ mb: 2, mt: 2 }}>
                  <div>
                    <Button
                      disabled={index === 0}
                      onClick={handleBack}
                      sx={{ mr: 1 }}
                    >
                      이전
                    </Button>
                    {index === steps.length - 1 ? (
                      <Button
                        variant="contained"
                        onClick={handleApplyFilters}
                      >
                        검색
                      </Button>
                    ) : (
                      <Button
                        variant="contained"
                        onClick={handleNext}
                        // Disable "다음" if current step’s input isn’t valid
                        disabled={!steps[activeStep].validate()}
                      >
                        다음
                      </Button>
                    )}
                  </div>
                </Box>
              </StepContent>
            </Step>
          ))}
        </Stepper>
      )}
    </Box>
  );
}
