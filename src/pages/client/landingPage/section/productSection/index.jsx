import { EmblaCarousel } from "@/components/carousel";
import { ProductCard } from "@/components/productSlider/productCard";
import { productItem } from "@/data/ProductData";
import { Icon } from "@iconify-icon/react";
import { Box, Button, Divider, Stack, Typography } from "@mui/material";
import React from "react";

export const ProductSection = ({ title }) => {
  return (
    <Stack>
      <Stack
        direction="row"
        sx={{
          justifyContent: "space-between",
          alignItems: "center",
          padding: "20px 24px",
        }}
      >
        <Typography
          variant="h5"
          sx={{
            color: "background.paper",
            textTransform: "uppercase",
          }}
        >
          {title}
        </Typography>
        <Stack
          direction="row"
          sx={{ alignItems: "center", color: "background.paper", cursor:"pointer" }}
        >
          <Typography variant="body2" sx={{ fontWeight: 600 }}>
            Xem tất cả{" "}
          </Typography>
          <Icon icon="solar:alt-arrow-right-linear" width="18" height="18" />
        </Stack>
      </Stack>
      <Divider sx={{ bgcolor: "white" }} />

      <Stack sx={{ p: "20px" }}>
        <EmblaCarousel space="16" count={5} list={productItem.slice(0, 8)}>
          {(item) => <ProductCard height={500} item={item} />}
        </EmblaCarousel>
      </Stack>
    </Stack>
  );
};
