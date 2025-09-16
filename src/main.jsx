import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { MainRouter } from "./router";
import { ThemeProvider } from "@mui/material";
import { MuiTheme } from "./theme";
import { Provider } from "react-redux";
import { store } from "./store";
import "./index.css";
import ThemeContext from "./context";

createRoot(document.getElementById("root")).render(
  <StrictMode>
    <ThemeContext>
      <Provider store={store}>
        <ThemeProvider theme={MuiTheme}>
          <MainRouter />
        </ThemeProvider>
      </Provider>
    </ThemeContext>
  </StrictMode>
);
