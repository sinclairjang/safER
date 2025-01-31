import { Dialog, DialogTitle, DialogContent, DialogActions, Button, TextField } from "@mui/material";
import { useState } from "react";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";

export default function NoteModal({ reservation, onClose }) {
    const [note, setNote] = useState(reservation?.reason || ""); // ✅ Prefill existing reason
    const supabase = getSupabaseBrowserClient();

    const handleSaveNote = async () => {
        if (!reservation?.id) return;

        const { error } = await supabase
            .from("reservations")
            .update({ reason: note }) // ✅ Save note in database
            .eq("id", reservation.id);

        if (error) {
            console.error("Error updating reservation reason:", error);
        } else {
            onClose(); // ✅ Close modal after saving
        }
    };

    return (
        <Dialog open={true} onClose={onClose} maxWidth="sm" fullWidth>
            <DialogTitle>사유 입력</DialogTitle>
            <DialogContent>
                <TextField
                    fullWidth
                    multiline
                    rows={3}
                    label="사유를 입력하세요"
                    value={note}
                    onChange={(e) => setNote(e.target.value)}
                />
            </DialogContent>
            <DialogActions>
                <Button onClick={onClose} color="secondary">취소</Button>
                <Button onClick={handleSaveNote} color="primary" variant="contained">저장</Button>
            </DialogActions>
        </Dialog>
    );
}
