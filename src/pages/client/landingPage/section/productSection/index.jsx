import { EmblaCarousel } from "@/components/carousel";
import { ProductCard } from "@/components/productSlider/productCard";
import { Icon } from "@iconify-icon/react";
import { Divider, Stack, Typography } from "@mui/material";
import React, { useEffect, useState } from "react";
import { useSelector } from "react-redux";

export const ProductSection = ({ title, colorFont }) => {
  const [onHover, setonHover] = useState(false);
  const product = useSelector((store) => store.products);
  useEffect(() => {}, []);
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
            color: colorFont ? colorFont : "background.paper",
            textTransform: "uppercase",
          }}
        >
          {title}
        </Typography>
        <Stack
          direction="row"
          sx={{
            alignItems: "center",
            color: "background.paper",
            cursor: "pointer",
          }}
        >
          <Typography
            variant="body2"
            sx={{ fontWeight: 600, color: "text.primary" }}
          >
            Xem tất cả
          </Typography>
          <Icon icon="solar:alt-arrow-right-linear" width="18" height="18" />
        </Stack>
      </Stack>
      <Divider sx={{ bgcolor: "white" }} />

      <Stack
        sx={{ p: "20px" }}
        onMouseEnter={() => setonHover(true)}
        onMouseLeave={() => setonHover(false)}
      >
        <EmblaCarousel
          button={onHover}
          space="16"
          count={5}
          position={20}
          list={product.products.slice(0, 8)}
        >
          {(item) => <ProductCard height={500} item={item} />}
        </EmblaCarousel>
      </Stack>
    </Stack>
  );
};
