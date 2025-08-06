import { Box, Breadcrumbs, Grid, Stack, Typography } from "@mui/material";
import React from "react";
import { ProductSection } from "./components/productSection";
import { Icon } from "@iconify-icon/react";
import { FilterSection } from "./components/filterSection";

export const ShopPage = () => {
  return (
    <Box sx={{ bgcolor: "background.neutral" }}>
      <Box sx={{ p: "20px 240px" }}>
        {/* Breadcrumbs */}
        <Stack sx={{ paddingBottom: "20px" }}>
          <Breadcrumbs
            separator="›"
            aria-label="breadcrumb"
            sx={{
              fontSize: "24px",
              span: {
                fontSize: "16px",
                color: "text.primary",
                ":hover": {
                  color: "primary.main",
                },
                transition: "0.3s",
                cursor: "pointer",
              },
            }}
          >
            <Icon icon="eva:home-outline" width="24" height="24" />

            <Typography variant="captiontext">Màn hình máy tính</Typography>
          </Breadcrumbs>
        </Stack>

        <Grid container spacing={2}>
          <Grid size={2.1} sx={{ bgcolor: "background.paper" }}>
            <FilterSection />
          </Grid>
          <Grid size={9.9} sx={{ bgcolor: "background.paper" }}>
            <ProductSection />
          </Grid>
        </Grid>
      </Box>
    </Box>
  );
};
