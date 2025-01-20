"use client";
import React, { useState } from "react";
import "@/styles/FilterPanel.css";

export default function FilterPanel() {
  // Whether the panel is open or collapsed
  const [isOpen, setIsOpen] = useState(true);

  // Current step in the wizard (1 to 4)
  const [step, setStep] = useState(1);

  // Data states
  const [stepOneData, setStepOneData] = useState({ department: "" });
  const [stepTwoData, setStepTwoData] = useState({ bedType: "" });
  const [stepThreeData, setStepThreeData] = useState({
    emergencyNeeded: false,
    isolationNeeded: false
  });
  const [stepFourData, setStepFourData] = useState({ equipment: [] });

  // Handlers for step navigation
  const goNext = () => setStep((prev) => Math.min(prev + 1, 4));
  const goPrev = () => setStep((prev) => Math.max(prev - 1, 1));

  // Example final "Apply" action
  const handleApplyFilters = () => {
    console.log("Step 1:", stepOneData);
    console.log("Step 2:", stepTwoData);
    console.log("Step 3:", stepThreeData);
    console.log("Step 4:", stepFourData);
    alert("Filters applied. Now run your search or query logic here!");
  };

  const handleSearch = () => {
    const query = document.querySelector(".search-input").value.trim();
    if (query) {
      alert(`Searching for: ${query}`); // Replace with actual logic
      // Example: Filter items or trigger API call
    } else {
      alert("검색어를 입력해주세요.");
    }
  };

  // Collapsed width (50px) vs. expanded (300px)
  const panelWidth = isOpen ? 300 : 50;

  return (
    <div
      className="panel-container"
      style={{
        width: panelWidth,
        position: "relative",
        zIndex: 1
      }}
    >
        <button
            className="collapse-button"
            onClick={() => setIsOpen(!isOpen)}
        >
            {isOpen ? "❮" : "❯"} {/* Left or Right arrow */}
        </button>

        <div className="panel-header">
        {isOpen && (
            <div className="search-ui">
            <input
                type="text"
                className="search-input"
                placeholder="검색어를 입력하세요..." /* Placeholder for search */
            />
            <button className="search-button" onClick={handleSearch}>
                검색
            </button>
            </div>
        )}
        </div>

        {/* Step content area (only visible if open) */}
        {isOpen && (
            <div className="panel-content">
            {step === 1 && (
                <StepOne data={stepOneData} onChange={setStepOneData} />
            )}
            {step === 2 && (
                <StepTwo data={stepTwoData} onChange={setStepTwoData} />
            )}
            {step === 3 && (
                <StepThree data={stepThreeData} onChange={setStepThreeData} />
            )}
            {step === 4 && (
                <StepFour data={stepFourData} onChange={setStepFourData} />
            )}

            {/* Navigation Buttons */}
            <div className="mt-auto pt-2">
                {step > 1 && (
                <button className="btn btn-gray mr-2" onClick={goPrev}>
                    Prev
                </button>
                )}
                {step < 4 && (
                <button className="btn btn-blue" onClick={goNext}>
                    Next
                </button>
                )}
                {step === 4 && (
                <button className="btn btn-green" onClick={handleApplyFilters}>
                    Apply
                </button>
                )}
            </div>
            </div>
        )}
    </div>
  );
}

/** Step 1: 분과 */
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
    "정신과"
  ];

  const handleDepartmentChange = (e) => {
    onChange({ department: e.target.value });
  };

  return (
    <div>
      <h3 className="font-bold mb-2">1. 분과 선택</h3>
      <select
        className="w-full border p-1"
        value={data.department}
        onChange={handleDepartmentChange}
      >
        <option value="">---Select---</option>
        {departments.map((dep) => (
          <option key={dep} value={dep}>
            {dep}
          </option>
        ))}
      </select>
    </div>
  );
}

/** Step 2: 병상유형 */
function StepTwo({ data, onChange }) {
  const bedTypes = ["입원실", "중환자실"];

  const handleBedTypeChange = (e) => {
    onChange({ bedType: e.target.value });
  };

  return (
    <div>
      <h3 className="font-bold mb-2">2. 병상유형</h3>
      {bedTypes.map((type) => (
        <label key={type} className="block mb-1">
          <input
            type="radio"
            name="bedType"
            value={type}
            checked={data.bedType === type}
            onChange={handleBedTypeChange}
          />
          <span className="ml-2">{type}</span>
        </label>
      ))}
    </div>
  );
}

/** Step 3: 응급조치 / 격리 */
function StepThree({ data, onChange }) {
  const handleEmergencyChange = () => {
    onChange({ ...data, emergencyNeeded: !data.emergencyNeeded });
  };
  const handleIsolationChange = () => {
    onChange({ ...data, isolationNeeded: !data.isolationNeeded });
  };

  return (
    <div>
      <h3 className="font-bold mb-2">3. 필요한 조치</h3>
      <label className="block mb-1">
        <input
          type="checkbox"
          checked={data.emergencyNeeded}
          onChange={handleEmergencyChange}
        />
        <span className="ml-2">응급 조치가 필요</span>
      </label>
      <label className="block">
        <input
          type="checkbox"
          checked={data.isolationNeeded}
          onChange={handleIsolationChange}
        />
        <span className="ml-2">격리가 필요</span>
      </label>
    </div>
  );
}

/** Step 4: 장비 선택 (multi-select) */
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
    "구급차"
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
    <div>
      <h3 className="font-bold mb-2">4. 필요한 장비</h3>
      {equipments.map((eq) => (
        <label key={eq} className="block mb-1">
          <input
            type="checkbox"
            checked={data.equipment.includes(eq)}
            onChange={() => toggleEquipment(eq)}
          />
          <span className="ml-2">{eq}</span>
        </label>
      ))}
    </div>
  );
}