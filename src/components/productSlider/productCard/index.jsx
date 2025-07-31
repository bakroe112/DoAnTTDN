/* eslint-disable no-unused-vars */
import { productItem } from "@/data/ProductData";
import { Box, Button, Stack, Typography } from "@mui/material";
import React from "react";
export const ProductCard = ({ item }) => {
  const formatted = new Intl.NumberFormat("vi-VN");
  console.log(item.name);
  return (
    <Box
      sx={{
        // maxWidth: "230px",
        // minHeight: "450px",
        minHeight: "420px",
        border: 1,
        borderRadius: "5px",
        borderColor: "common.light",
        bgcolor: "background.paper",
        padding: "16px",
        display: "flex",
        flexDirection: "column",
        justifyContent: "space-between",
      }}
    >
      <img
        src={item.imageUrl}
        width="100%"
        height="100%"
        className="object-contain"
      />
      <Stack sx={{ gap: "5px" }}>
        <Typography>{item.brandName}</Typography>
        <Typography
          variant="captiontext"
          sx={{
            display: "-webkit-box",
            overflow: "hidden",
            WebkitLineClamp: 2,
            WebkitBoxOrient: "vertical",
          }}
        >
          {item.name}
        </Typography>

        <Stack>
          <Typography
            variant="subtitle2"
            sx={{ color: "primary.main", fontWeight: 800 }}
          >
            {formatted.format(item.latestPrice)} ₫
          </Typography>

          <Stack direction="row" sx={{ gap: "5px", paddingX: "4px" }}>
            <Typography
              variant="captiontext"
              sx={{ color: "text.disabled", textDecoration: " line-through" }}
            >
              {formatted.format(item.supplierRetailPrice)} ₫{" "}
            </Typography>
            <Typography variant="captiontext" sx={{ color: "error.main" }}>
              -{item.discountPercent}%
            </Typography>
          </Stack>
        </Stack>
      </Stack>

      <Button variant="outlined" sx={{ border: 1, borderRadius: "5px" }}>
        Thêm vào giỏ
      </Button>
    </Box>
  );
};
