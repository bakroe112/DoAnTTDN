import React from "react";
import { ProductCard } from "./productCard";
import { Box, Stack, Typography } from "@mui/material";
import { EmblaCarousel } from "../carousel";
import { productItem } from "@/data/ProductData";

export const ProductSlider = () => {
  return (
    <Stack
      direction="row"
      sx={{
        width: "100%",
        bgcolor: "Background.paper",
        position: "relative",
        paddingBottom: "50px",
        justifyContent: "space-between",
      }}
    >
      <Stack
        sx={{
          justifyContent: "center",
          alignItems: "center",
          textAlign: "center",
          paddingX: "55px",
        }}
      >
        <Typography noWrap color="background.paper">
          Kết thúc sau ... ngày
        </Typography>
      </Stack>

      <Stack>
        <Stack
          sx={{ alignItems: "end", padding: "24px 15px", maxWidth: "96%" }}
        >
          <Typography
            variant="subtitle2"
            color="background.paper"
            sx={{ fontWeight: 500, cursor: "pointer" }}
          >
            {"Xem tất cả >"}
          </Typography>
        </Stack>
        <EmblaCarousel>
          {productItem.slice(0, 8).map((item) => (
            <ProductCard item={item} />
          ))}
        </EmblaCarousel>
      </Stack>
    </Stack>
  );
};
