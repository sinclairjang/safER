"use client";

import * as React from 'react';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';

export default function FormDialog({ open, onClose, onSubmit }) {

  return (
    <React.Fragment>
      <Dialog
        open={open}
        onClose={onClose}
        PaperProps={{
          component: 'form',
          onSubmit: (event) => {
            event.preventDefault();
            const formData = new FormData(event.currentTarget);
            const formJson = Object.fromEntries(formData.entries());
            const searchRadius = formJson['search-radius']; // Adjust for numeric input
            console.log(`Search Radius (km): ${searchRadius}`);
            onSubmit(searchRadius);
            onClose();
          },
        }}
      >
        <DialogTitle>응급실 찾기</DialogTitle>
        <DialogContent>
          <DialogContentText>
            당신의 현재 위치에서 특정 반경 이내의 가용한 모든 응급실을 찾습니다.
            
          </DialogContentText>
          <TextField
            autoFocus
            required
            margin="dense"
            id="search-radius"
            name="search-radius"
            label="검색 범위(km)를 설정해주세요"
            type="number" // Changed from "number" to "text" to allow maxLength
            fullWidth
            variant="standard"
            slotProps={{
              htmlInput: {
                min: 0,
                max: 500,
                step: 1,
              },
            }}
          />
        </DialogContent>
        <DialogActions>
          <Button onClick={onClose}>취소</Button>
          <Button type="submit">검색</Button>
        </DialogActions>
      </Dialog>
    </React.Fragment>
  );
}