import { ProductCard } from "@/components/productSlider/productCard";
import { Box, Divider, Grid, Stack, Typography } from "@mui/material";
import React from "react";
import { SortSection } from "../sortSection";
import { useSelector } from "react-redux";

export const ProductSection = () => {
  const products = useSelector((store) => store.products);

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
            {/* Điện thoại - Máy tính bảng - Đồng hồ thông minh */}
            Số lượng sản phẩm
          </Typography>
          <Typography
            variant="h5"
            sx={{
              color: "text.disabled",
              fontWeight: 500,
            }}
          >
            ({products.products.length} sản phẩm)
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
              {products.products.length == 0 ? (
                <Typography>Đã hết sản phẩm mất rồi...</Typography>
              ) : (
                <>
                  {products.products.map((item, index) => (
                    <Grid size="5" key={index}>
                      <ProductCard
                        item={item}
                        height={460}
                        width={240}
                        radius={0}
                      />
                    </Grid>
                  ))}
                </>
              )}
            </Grid>
          </Box>
        </Stack>
      </Stack>
    </Box>
  );
};
