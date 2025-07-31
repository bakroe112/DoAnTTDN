import React from "react";
import { ProductCard } from "./productCard";
import { Box, Grid, Stack, Typography } from "@mui/material";
import { EmblaCarousel } from "../carousel";
import { productItem } from "@/data/ProductData";
import { Icon } from "@iconify-icon/react";

export const ProductSlider = () => {
  return (
    <Grid
      container
      sx={{
        width: "100%",
        paddingBottom: "50px",
        justifyContent: "center",
        alignItems: "center",
      }}
    >
      <Grid size={2.2}>
        <Stack
          sx={{
            justifyContent: "center",
            alignItems: "center",
          }}
        >
          <Typography variant="h6" color="background.paper">
            Kết thúc sau ... ngày
          </Typography>
        </Stack>
      </Grid>

      <Grid flex={1}>
        <Stack
          sx={{
            alignItems: "end",
            padding: "24px 14px",
            width: "100%",
          }}
        >
          <Stack
            direction="row"
            sx={{
              alignItems: "center",
              color: "background.paper",
              cursor: "pointer",
            }}
          >
            <Typography variant="body2" sx={{ fontWeight: 600 }}>
              Xem tất cả{" "}
            </Typography>
            <Icon icon="solar:alt-arrow-right-linear" width="18" height="18" />
          </Stack>
        </Stack>
        <Box
          sx={{
            width: "100%",
            paddingX: "8px",
          }}
        >
          <EmblaCarousel space="16" count={5} list={productItem.slice(0, 8)}>
            {(item) => <ProductCard height={420} radius={5} item={item} />}
          </EmblaCarousel>
        </Box>
      </Grid>
    </Grid>
  );
};
