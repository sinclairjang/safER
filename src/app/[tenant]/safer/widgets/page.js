'use client';

import { Button } from '@mui/material';

export default function UIGallerlyPage() {
  return (
    <div style={{ textAlign: 'center', marginTop: '50px' }}>
      <h1>Welcome to Material UI with Next.js</h1>
      <Button
        variant="contained"
        color="primary"
        sx={{
            width: '10%',
            fontSize: '10px',
            padding: '0px',
        }}
        onClick={() => alert('Hello from Material UI!')}
      >
        Click Me
      </Button>
    </div>
  );
}
