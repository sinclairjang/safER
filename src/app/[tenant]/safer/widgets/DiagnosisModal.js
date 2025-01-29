"use client";

import * as React from "react";
import {
  Button,
  Dialog,
  AppBar,
  Toolbar,
  IconButton,
  Typography,
  Slide,
  TextField,
  Box,
  Divider,
} from "@mui/material";
import CloseIcon from "@mui/icons-material/Close";

const Transition = React.forwardRef(function Transition(props, ref) {
  return <Slide direction="up" ref={ref} {...props} />;
});

export default function FullScreenDialog({ open, onClose, bookingUUID }) {
  const [values, setValues] = React.useState({
    name: "",
    condition: "",
    emergencyContact: "",
    eta: "",
    notes: "",
  });

  const [errors, setErrors] = React.useState({
    name: "",
    condition: "",
    emergencyContact: "",
    eta: "",
    notes: "",
  });

  const validate = (name, value) => {
    let error = "";
    const specialCharRegex = /[!@#$%^&*(),.?":{}|<>]/; // Regex to detect special characters
  
    switch (name) {
      case "name":
        if (!value) {
          error = "환자 이름을 입력해주세요.";
        } else if (specialCharRegex.test(value)) {
          error = "이름에 특수문자는 사용할 수 없습니다.";
        } 
        break;
      case "condition":
        if (!value) {
          error = "환자의 상태를 알려주세요.";
        } 
        break;
      case "emergencyContact":
        if (!value) {
          error = "비상 연락망을 입력해주세요.";
        } else if (!/^\d{10,15}$/.test(value)) {
          error = "전화번호는 10-15자리 숫자여야 합니다.";
        }
        break;
      case "eta":
        if (!value) {
          error = "예상 도착 시간을 입력해주세요.";
        }
        break;
      case "notes":
        break;
      default:
        break;
    }
  
    return error;
  };
  

  const handleChange = (e) => {
    const { name, value } = e.target;

    // Update values
    setValues((prevValues) => ({
      ...prevValues,
      [name]: value,
    }));

    // Validate and update errors
    setErrors((prevErrors) => ({
      ...prevErrors,
      [name]: validate(name, value),
    }));
  };

  const handleSubmit = () => {
    // Validate all fields before submission
    const newErrors = {};
    Object.keys(values).forEach((field) => {
      newErrors[field] = validate(field, values[field]);
    });
    setErrors(newErrors);

    // If no errors, process the form submission
    if (Object.values(newErrors).every((error) => !error)) {
      alert("Form submitted successfully!");
      onClose();
    }
  };

  return (
    <Dialog
      fullScreen
      open={open}
      onClose={onClose}
      TransitionComponent={Transition}
    >
      <AppBar sx={{ position: "sticky", top: 0 }}>
        <Toolbar>
          <IconButton
            edge="start"
            color="inherit"
            onClick={onClose}
            aria-label="close"
            style={{
              display: "contents",
            }}
          >
            <CloseIcon />
          </IconButton>
          <Typography sx={{ ml: 2, flex: 1 }} variant="h6" component="div">
            소견서
          </Typography>
          <Button
            autoFocus
            color="inherit"
            onClick={handleSubmit}
            style={{
              display: "contents",
            }}
          >
            제출
          </Button>
        </Toolbar>
      </AppBar>
      <Box
        sx={{
          padding: 2,
          display: "flex",
          flexDirection: "column",
          gap: 2, // Add spacing between block elements
        }}
      >
        <Typography variant="body1">환자의 상태를 간략히 설명해주세요:</Typography>

        {/* Inline Fields */}
        <Box
          sx={{
            display: "flex",
            gap: 2,
            flexWrap: "wrap", // Ensure it wraps on small screens
          }}
        >
          <TextField
            name="name"
            label="환자 이름"
            variant="outlined"
            fullWidth
            sx={{ flex: "1 1 30%" }} // Takes up 30% of space, adjusts responsively
            value={values.name}
            onChange={handleChange}
            error={Boolean(errors.name)}
            helperText={errors.name}
          />
          <TextField
            name="emergencyContact"
            label="비상 연락망"
            variant="outlined"
            fullWidth
            sx={{ flex: "1 1 30%" }}
            value={values.emergencyContact}
            onChange={handleChange}
            error={Boolean(errors.emergencyContact)}
            helperText={errors.emergencyContact}
          />
          <TextField
            name="eta"
            label="예상 도착 시간 (ETA)"
            fullWidth
            variant="outlined"
            type="time"
            sx={{ flex: "1 1 30%" }}
            value={values.eta}
            onChange={handleChange}
            error={Boolean(errors.eta)}
            helperText={errors.eta}
          />
        </Box>

        {/* Block Fields */}
        <TextField
          name="condition"
          label="상태 설명"
          fullWidth
          variant="outlined"
          multiline
          rows={6} // Increase the number of rows to make it taller
          sx={{
            mb: 2,
            "& .MuiInputBase-root": {
              fontSize: "1rem", // Adjust font size if needed
              lineHeight: "1.5", // Adjust line spacing
            },
          }}
          value={values.condition}
          onChange={handleChange}
          error={Boolean(errors.condition)}
          helperText={errors.condition}
        />
        <Divider />
        <TextField
          name="notes"
          label="기타 참고 사항"
          fullWidth
          variant="outlined"
          multiline
          rows={6}
          sx={{
            mb: 2,
            "& .MuiInputBase-root": {
              fontSize: "1rem", // Adjust font size if needed
              lineHeight: "1.5", // Adjust line spacing
            },
          }}
          value={values.notes}
          onChange={handleChange}
          error={Boolean(errors.notes)}
          helperText={errors.notes}
        />
      </Box>
    </Dialog>
  );
}
