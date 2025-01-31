import { Dialog, DialogTitle, DialogContent, DialogActions, Button, Typography, TextField } from "@mui/material";
import { useState } from "react";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";

export default function ReasonModal({ reservation, onClose, isEditing }) {
    const [note, setNote] = useState(reservation?.reason || ""); // ✅ Prefill existing reason
    const supabase = getSupabaseBrowserClient();

    // ✅ Save changes to the database
    const handleSaveNote = async () => {
        if (!reservation?.id) return;

        const { error } = await supabase
            .from("reservations")
            .update({ reason: note }) // ✅ Update reason in database
            .eq("id", reservation.id);

        if (error) {
            console.error("Error updating reservation reason:", error);
        } else {
            onClose(); // ✅ Close modal after saving
        }
    };

    return (
        <Dialog open={true} onClose={onClose} maxWidth="sm" fullWidth>
            <DialogTitle>{isEditing ? "사유 수정" : "사유 보기"}</DialogTitle>
            <DialogContent>
                {isEditing ? (
                    <TextField
                        fullWidth
                        multiline
                        rows={3}
                        label="사유를 입력하세요"
                        value={note}
                        onChange={(e) => setNote(e.target.value)}
                    />
                ) : (
                    <Typography variant="body1" sx={{ whiteSpace: "pre-wrap" }}>
                        {note || "사유 없음"}
                    </Typography>
                )}
            </DialogContent>
            <DialogActions>
                <Button onClick={onClose} color="secondary">닫기</Button>
                {isEditing && <Button onClick={handleSaveNote} color="primary" variant="contained">저장</Button>}
            </DialogActions>
        </Dialog>
    );
}
