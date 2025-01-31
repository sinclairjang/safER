import { Dialog, DialogTitle, DialogContent, DialogActions, Button, Typography, Box, Divider } from "@mui/material";
import { Person, AssignmentInd, LocalHospital, Call, AccessTime, Notes } from "@mui/icons-material";

export default function PatientDetailsModal({ patient, onClose }) {
    if (!patient) return null;

    return (
        <Dialog open={true} onClose={onClose} maxWidth="sm" fullWidth>
            <DialogTitle sx={{ textAlign: "center", fontWeight: "bold", color: "#ffffff" }}>
                🏥 환자 정보
            </DialogTitle>
            <DialogContent>
                <Box sx={{ display: "flex", flexDirection: "column", gap: 2, paddingY: 1 }}>
                    <Box sx={{ display: "flex", alignItems: "center", gap: 1 }}>
                        <Person sx={{ color: "#3498db" }} />
                        <Typography><strong>이름:</strong> {patient.patient_name || "N/A"}</Typography>
                    </Box>
                    <Box sx={{ display: "flex", alignItems: "center", gap: 1 }}>
                        <AssignmentInd sx={{ color: "#e67e22" }} />
                        <Typography><strong>환자 등록 번호:</strong> {patient.patient_reg_number || "N/A"}</Typography>
                    </Box>
                    <Box sx={{ display: "flex", alignItems: "center", gap: 1 }}>
                        <LocalHospital sx={{ color: "#27ae60" }} />
                        <Typography><strong>상태:</strong> {patient.condition}</Typography>
                    </Box>
                    <Box sx={{ display: "flex", alignItems: "center", gap: 1 }}>
                        <Call sx={{ color: "#c0392b" }} />
                        <Typography><strong>응급 연락처:</strong> {patient.emergency_contact}</Typography>
                    </Box>
                    <Box sx={{ display: "flex", alignItems: "center", gap: 1 }}>
                        <AccessTime sx={{ color: "#8e44ad" }} />
                        <Typography><strong>도착 예상 시간:</strong> {patient.eta}</Typography>
                    </Box>
                    {patient.notes && (
                        <>
                            <Divider />
                            <Box sx={{ display: "flex", alignItems: "center", gap: 1 }}>
                                <Notes sx={{ color: "#f39c12" }} />
                                <Typography><strong>비고:</strong> {patient.notes}</Typography>
                            </Box>
                        </>
                    )}
                </Box>
            </DialogContent>
            <DialogActions sx={{ justifyContent: "center", paddingBottom: 2 }}>
                <Button onClick={onClose} variant="contained" color="primary">
                    닫기
                </Button>
            </DialogActions>
        </Dialog>
    );
}
