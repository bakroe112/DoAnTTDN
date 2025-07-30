import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import "./index.css";
import { MainRouter } from "./router";
import { ThemeProvider } from "@mui/material";
import { MuiTheme } from "./theme";

createRoot(document.getElementById("root")).render(
  <StrictMode>
    <ThemeProvider theme={MuiTheme}>
      <MainRouter />
    </ThemeProvider>
  </StrictMode>
);
