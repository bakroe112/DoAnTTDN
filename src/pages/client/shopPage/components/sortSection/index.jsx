import React from "react";
import { Box, ToggleButton, ToggleButtonGroup } from "@mui/material";
import { useNavigate } from "react-router-dom";

export const SortSection = () => {
  const [alignment, setAlignment] = React.useState("filter");
  const handleChange = (e, newFilter) => {
    setAlignment(newFilter);
  };

  const [getValue, setGetValue] = React.useState("");

  const navigate = useNavigate();
  const { search } = window.location;
  const searchParams = new URLSearchParams(search);
  React.useEffect(() => {
    if (getValue == "asc") {
      searchParams.set("sort", "sell_price");
      navigate(`?${searchParams.toString()}`);
      console.log("getValue", getValue);
    } else if (getValue == "des") {
      searchParams.set("sort", "sell_price");
      navigate(`?${searchParams.toString()}`);
      console.log("getValue", getValue);
    } else if (getValue == "discount_amount") {
      searchParams.set("sort", "discount_amount");
      navigate(`?${searchParams.toString()}`);
      console.log("getValue", getValue);
    }
  });
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
        <ToggleButton
          value="discount_amount"
          onClick={(e) => {
            setGetValue(e.target.value);
            searchParams.set("asc", "false");
            navigate(`?${searchParams.toString()}`);
          }}
        >
          Khuyến mãi tốt nhất
        </ToggleButton>
        <ToggleButton
          value="asc"
          onClick={(e) => {
            setGetValue(e.target.value);
            searchParams.set("asc", "true");
            navigate(`?${searchParams.toString()}`);
          }}
        >
          Giá tăng dần
        </ToggleButton>
        <ToggleButton
          value="des"
          onClick={(e) => {
            setGetValue(e.target.value);
            searchParams.set("asc", "false");
            navigate(`?${searchParams.toString()}`);
          }}
        >
          Giá giảm dần
        </ToggleButton>
        <ToggleButton
          value="newest"
          onClick={(e) => {
            setGetValue(e.target.value);
            searchParams.set("asc", "false");
            navigate(`?${searchParams.toString()}`);
          }}
        >
          Sản phẩm mới nhất
        </ToggleButton>
        <ToggleButton value="hotest">Sản phẩm bán chạy nhất</ToggleButton>
      </ToggleButtonGroup>
    </Box>
  );
};
