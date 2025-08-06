import { ProductCard } from "@/components/productSlider/productCard";
import { productItem } from "@/data/ProductData";
import { Icon } from "@iconify-icon/react";
import {
  Box,
  Divider,
  Grid,
  Pagination,
  Stack,
  Typography,
} from "@mui/material";
import React from "react";
import { FilterSection } from "../filterSection";
import { SortSection } from "../sortSection";

export const ProductSection = () => {
  return (
    <Box sx={{ bgcolor: "background.paper", borderRadius: "5px" }}>
      <Stack>
        <Stack
          direction="row"
          sx={{
            alignItems: "center",
            padding: "12px 18px",
            gap: "10px",
          }}
        >
          <Typography
            variant="h4"
            sx={{
              color: "primary",
              fontWeight: 700,
            }}
          >
            Điện thoại - Máy tính bảng - Đồng hồ thông minh
          </Typography>
          <Typography
            variant="h5"
            sx={{
              color: "text.disabled",
              fontWeight: 500,
            }}
          >
            (141 sản phẩm)
          </Typography>
        </Stack>
        <Divider sx={{ bgcolor: "white", borderBottomWidth: 2 }} />

        <Stack direction="row" gap={3} p="18px" alignItems="center">
          <Typography variant="captiontext">Sắp xếp theo</Typography>
          <SortSection />
        </Stack>

        <Divider sx={{ bgcolor: "white", borderBottomWidth: 3 }} />

        <Stack
          sx={{
            py: "20px",
            alignItems: "center",
            gap: "24px",
          }}
        >
          <Box sx={{ flexGrow: 1 }}>
            <Grid
              container
              spacing={2}
              columns={25}
              sx={{
                justifyContent: "center",
              }}
            >
              {productItem.map((item) => (
                <Grid size="5">
                  <ProductCard
                    item={item}
                    height={460}
                    width={240}
                    radius={0}
                  />
                </Grid>
              ))}
            </Grid>
          </Box>
          <Pagination
            color="primary"
            count={19}
            variant="outlined"
            shape="rounded"
            siblingCount={2}
            sx={{
              "& .MuiPaginationItem-root": {
                mx: 0.7,
                fontSize: "14px",
                fontWeight: 600,
              },
            }}
          />
        </Stack>
      </Stack>
    </Box>
  );
};
