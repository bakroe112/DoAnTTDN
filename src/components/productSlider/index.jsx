import React from "react";
import { ProductCard } from "./productCard";
import { Box, Grid, Stack, Typography } from "@mui/material";
import { EmblaCarousel } from "../carousel";
import { productItem } from "@/data/ProductData";

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
          <Typography
            variant="subtitle2"
            component={"h2"}
            color="background.paper"
            sx={{ fontWeight: 500, cursor: "pointer" }}
          >
            {"Xem tất cả >"}
          </Typography>
        </Stack>
        <Box
          sx={{
            width: "100%",
            paddingX: "8px",
          }}
        >
          <EmblaCarousel space="16" count={5} list={productItem.slice(0, 8)}>
            {(item) => <ProductCard item={item} />}
          </EmblaCarousel>
        </Box>
      </Grid>
    </Grid>
  );
};
