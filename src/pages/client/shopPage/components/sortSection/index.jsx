import React from "react";
import { Box, ToggleButton, ToggleButtonGroup } from "@mui/material";

export const SortSection = () => {
  const [alignment, setAlignment] = React.useState("filter");
  const handleChange = (e, newFilter) => {
    setAlignment(newFilter);
  };
  return (
    <Box>
      <ToggleButtonGroup
        color="primary"
        value={alignment}
        exclusive
        onChange={handleChange}
        sx={{
          gap: "16px",
          "& .MuiButtonBase-root": {
            border: "1px solid #DFE3E8",
            borderRadius: "5px",
            fontSize: "15px",
            color: "text.primary",
            textTransform: "none",
            p: "10px",
            "&.Mui-selected": {
              bgcolor: "#E3F1FF",
              border: "1px solid #1435C3",
            },
          },
        }}
      >
        <ToggleButton value="sale">Khuyến mãi tốt nhất</ToggleButton>
        <ToggleButton value="increase">Giá tăng dần</ToggleButton>
        <ToggleButton value="decrease">Giá giảm dần</ToggleButton>
        <ToggleButton value="newest">Sản phẩm mới nhất</ToggleButton>
        <ToggleButton value="hotest">Sản phẩm bán chạy nhất</ToggleButton>
      </ToggleButtonGroup>
    </Box>
  );
};
