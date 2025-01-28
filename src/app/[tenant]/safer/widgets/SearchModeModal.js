"use client";

import * as React from 'react';
import Button from '@mui/material/Button';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogTitle from '@mui/material/DialogTitle';
import RadioGroup from '@mui/material/RadioGroup';
import FormControlLabel from '@mui/material/FormControlLabel';
import Radio from '@mui/material/Radio';

export default function FiltersModal({ open, onClose, onApply }) {
  const [selectedMode, setSelectedMode] = React.useState('emergency'); // Default to "emergency"

  const handleModeChange = (event) => {
    setSelectedMode(event.target.value);
  };

  const handleApply = () => {
    onApply(selectedMode); // Pass the selected mode to the parent
    onClose(); // Close the modal
  };

  return (
    <Dialog 
      open={open} 
      onClose={onClose}
      PaperProps={{
        style: {
          minWidth: '40vw',
          minHeight: '40vh',
        }
      }}>

      <DialogTitle>응급 상황을 선택해주세요</DialogTitle>
      <DialogContent>
        <RadioGroup
          value={selectedMode}
          onChange={handleModeChange}
        >
          <FormControlLabel
            value="emergency"
            control={<Radio />}
            label="가까운 응급실 조회"
          />
          <FormControlLabel
            value="transfer"
            control={<Radio />}
            label="환자 후속 조치 (입원/전원)"
          />
        </RadioGroup>
      </DialogContent>
      <DialogActions>
        <Button onClick={onClose}>취소</Button>
        <Button onClick={handleApply} variant="contained">
          선택
        </Button>
      </DialogActions>
    </Dialog>
  );
}
