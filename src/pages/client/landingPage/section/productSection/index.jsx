import { EmblaCarousel } from "@/components/carousel";
import { ProductCard } from "@/components/productSlider/productCard";
import { productItem } from "@/data/ProductData";
import { Box, Button, Divider, Stack, Typography } from "@mui/material";
import React from "react";

export const ProductSection = () => {
  return (
    <Stack>
      <Stack
        direction="row"
        sx={{
          justifyContent: "space-between",
          alignItems: "center",
          padding: "15px",
        }}
      >
        <Typography
          variant="h5"
          sx={{
            color: "background.paper",
          }}
        >
          PC
        </Typography>
        <Typography variant="captiontext" sx={{ color: "background.paper" }}>
          Xem tất cả {">"}
        </Typography>
      </Stack>
      <Divider sx={{ bgcolor: "white" }} />

      <Stack sx={{ p: "20px" }}>
        <EmblaCarousel space="16" count={5} list={productItem.slice(0, 8)}>
          {(item) => <ProductCard item={item} />}
        </EmblaCarousel>
      </Stack>
    </Stack>
  );
};
