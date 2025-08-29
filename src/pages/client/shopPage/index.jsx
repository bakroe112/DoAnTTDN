import {
  Box,
  Breadcrumbs,
  Grid,
  Pagination,
  Stack,
  Typography,
} from "@mui/material";
import React from "react";
import { ProductSection } from "./components/productSection";
import { Icon } from "@iconify-icon/react";
import { FilterSection } from "./components/filterSection";
import { useNavigate } from "react-router-dom";
import { useSelector } from "react-redux";

export const ShopPage = () => {
  const navigate = useNavigate();
  const { search } = window.location;
  const searchParams = new URLSearchParams(search);

  console.log("search ", search);
  console.log("searchParams ", searchParams.toString());

  const products = useSelector((store) => store.products);

  // console.log("product", products);
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
            <Stack
              sx={{
                alignItems: "center",
                gap: "8px",
              }}
            >
              <ProductSection />
              <Pagination
                color="primary"
                count={19}
                variant="outlined"
                shape="rounded"
                page={products.page?.current_page}
                siblingCount={2}
                sx={{
                  pb: "24px",
                  "& .MuiPaginationItem-root": {
                    mx: 0.7,
                    fontSize: "14px",
                    fontWeight: 600,
                  },
                }}
                onChange={(e, value) => {
                  searchParams.set("page", value);
                  navigate(`?${searchParams.toString()}`);
                }}
              />
            </Stack>
          </Grid>
        </Grid>
      </Box>
    </Box>
  );
};
