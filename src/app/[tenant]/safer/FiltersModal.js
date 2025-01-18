"use client";
import { useState } from "react";
import styles from "./FiltersModal.module.css";

export default function FiltersModal({ onClose, onApply }) {
  const [parking, setParking] = useState(false);
  const [twentyFourHours, setTwentyFourHours] = useState(false);

  const handleApply = () => {
    const filters = { parking, twentyFourHours };
    onApply(filters);
    onClose();
  };

  return (
    <div className={styles.modalOverlay}>
      <div className={styles.modalContent}>
        <h2>필터 옵션 선택</h2>

        <div className={styles.checkboxContainer}>
          <label>
            <input
              type="checkbox"
              checked={parking}
              onChange={(e) => setParking(e.target.checked)}
            />
            주차 가능
          </label>
          <label>
            <input
              type="checkbox"
              checked={twentyFourHours}
              onChange={(e) => setTwentyFourHours(e.target.checked)}
            />
            24시간 운영
          </label>
        </div>

        <div className={styles.buttonRow}>
          <button onClick={onClose}>취소</button>
          <button onClick={handleApply}>적용</button>
        </div>
      </div>
    </div>
  );
}
