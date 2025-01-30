"use client";

import * as React from "react";
import { styled } from "@mui/material/styles";
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
  FormControl,
  InputLabel,
  Select,
  MenuItem,
  Grid2, // Ensure Grid2 is correctly imported
} from "@mui/material";
import CloseIcon from "@mui/icons-material/Close";

// Styled Paper component for consistent styling
const Item = styled(Box)(({ theme }) => ({
  backgroundColor: "#fff",
  ...theme.typography.body2,
  padding: theme.spacing(1),
  textAlign: "center",
  color: theme.palette.text.secondary,
  // Apply dark mode styles if necessary
  ...(theme.palette.mode === "dark" && {
    backgroundColor: "#1A2027",
  }),
}));

const Transition = React.forwardRef(function Transition(props, ref) {
  return <Slide direction="up" ref={ref} {...props} />;
});

export default function DiagnosisModal({ open, onClose, onSubmit }) {
  const [values, setValues] = React.useState({
    patient_reg_number: "",
    name: "",
    sex: "",
    address: "",
    emergencyContact: "",
    eta: "",
    condition: "",
    notes: "",
  });

  const [errors, setErrors] = React.useState({
    patient_reg_number: "",
    name: "",
    sex: "",
    address: "",
    emergencyContact: "",
    eta: "",
    condition: "",
    notes: "",
  });

  const validate = (name, value) => {
    let error = "";
    const specialCharRegex = /[!@#$%^&*(),.?":{}|<>]/; // Detect special characters

    switch (name) {
      case "patient_reg_number":
        break;
      case "name":
        if (specialCharRegex.test(value))
          error = "이름에 특수문자는 사용할 수 없습니다.";
        break;
      case "sex":
        break;
      case "address":
        break;
      case "emergencyContact":
        if (!value) error = "비상 연락망을 입력해주세요.";
        else if (!/^\d{10,15}$/.test(value))
          error = "전화번호는 10-15자리 숫자여야 합니다.";
        break;
      case "eta":
        if (!value) error = "예상 도착 시간을 입력해주세요.";
        break;
      case "condition":
        if (!value) error = "환자의 상태를 입력해주세요.";
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
    setValues((prevValues) => ({ ...prevValues, [name]: value }));
    setErrors((prevErrors) => ({ ...prevErrors, [name]: validate(name, value) }));
  };

  const handleSubmit = () => {
    const newErrors = {};
    Object.keys(values).forEach((field) => {
      newErrors[field] = validate(field, values[field]);
    });
    setErrors(newErrors);

    if (Object.values(newErrors).every((error) => !error)) {
      onSubmit(values);
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
            style={{ display: "contents" }} // Maintain alignment
          >
            <CloseIcon />
          </IconButton>
          <Typography
            sx={{ ml: 2, flex: 1, color: "white" }}
            variant="h6"
            component="div"
          >
            소견서
          </Typography>
          <Button
            autoFocus
            color="inherit"
            onClick={handleSubmit}
            style={{ display: "contents" }} // Maintain alignment
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
        {/* 🏥 Section 1: Patient Details */}
        <Typography variant="h6" sx={{ fontWeight: "bold", color: "#333" }}>
          환자 인적 사항
        </Typography>
        <Grid2 container spacing={3} columns={16}>
          {/* 환자 등록번호 */}
          <Grid2 size={{ xs: 16, sm: 10 }}>
            <TextField
              name="patient_reg_number"
              label="환자 등록번호"
              variant="outlined"
              fullWidth
              value={values.patient_reg_number}
              onChange={handleChange}
              error={Boolean(errors.patient_reg_number)}
              helperText={errors.patient_reg_number}
            />
          </Grid2>

          {/* 환자 이름 */}
          <Grid2 size={{ xs: 16, sm: 6 }}>
            <TextField
              name="name"
              label="환자 이름"
              variant="outlined"
              fullWidth
              value={values.name}
              onChange={handleChange}
              error={Boolean(errors.name)}
              helperText={errors.name}
            />
          </Grid2>

          {/* 성별 (Sex) */}
          <Grid2 size={{ xs: 8, sm: 4 }}>
            <FormControl fullWidth>
              <InputLabel>성별</InputLabel>
              <Select
                name="sex"
                value={values.sex}
                onChange={handleChange}
                error={Boolean(errors.sex)}
              >
                <MenuItem value="male">남성</MenuItem>
                <MenuItem value="female">여성</MenuItem>
                <MenuItem value="other">기타</MenuItem>
              </Select>
            </FormControl>
          </Grid2>

          {/* 주소 (Address) */}
          <Grid2 size="grow">
            <TextField
              name="address"
              label="주소"
              variant="outlined"
              fullWidth
              value={values.address}
              onChange={handleChange}
              error={Boolean(errors.address)}
              helperText={errors.address}
            />
          </Grid2>
        </Grid2>

        <Divider sx={{ marginY: 2 }} />

        {/* 🚑 Section 2: Emergency & Medical Info */}
        <Typography variant="h6" sx={{ fontWeight: "bold", color: "#333" }}>
          상황 공유
        </Typography>
        <Grid2 container spacing={2} columns={16} rowSpacing={3}>
          {/* 비상 연락망 (Emergency Contact) */}
          <Grid2 size={{ xs: 16, sm: 8 }}>
            <TextField
              name="emergencyContact"
              label="비상 연락망(필수)"
              variant="outlined"
              fullWidth
              value={values.emergencyContact}
              onChange={handleChange}
              error={Boolean(errors.emergencyContact)}
              helperText={errors.emergencyContact}
            />
          </Grid2>

          {/* 예상 도착 시간 (ETA) */}
          <Grid2 size={{ xs: 16, sm: 8 }}>
            <TextField
              name="eta"
              label="예상 도착 시간(필수)"
              type="time"
              variant="outlined"
              fullWidth
              value={values.eta}
              onChange={handleChange}
              error={Boolean(errors.eta)}
              helperText={errors.eta}
              InputLabelProps={{ shrink: true }}
            />
          </Grid2>

          {/* 상태 설명 (Condition) */}
          <Grid2 size={{ xs: 16 }}>
            <TextField
              name="condition"
              label="상태 설명(필수)"
              variant="outlined"
              fullWidth
              multiline
              rows={4}
              value={values.condition}
              onChange={handleChange}
              error={Boolean(errors.condition)}
              helperText={errors.condition}
            />
          </Grid2>

          {/* 기타 참고 사항 (Notes) */}
          <Grid2 size={{ xs: 16 }}>
            <TextField
              name="notes"
              label="기타 참고 사항"
              variant="outlined"
              fullWidth
              multiline
              rows={3}
              value={values.notes}
              onChange={handleChange}
            />
          </Grid2>
        </Grid2>
      </Box>
    </Dialog>
  );
}
