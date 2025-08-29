import { Box, Button, Stack, Typography } from "@mui/material";
import React from "react";
export const ProductCard = ({ item, radius, height, width }) => {
  const formatted = new Intl.NumberFormat("vi-VN");
  return (
    <Box
      sx={{
        maxWidth: `${width}px`,
        // minHeight: "450px",
        minHeight: `${height}px`,
        border: 1,
        borderRadius: `${radius}px`,
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
        className="object-contain hover:scale-105 transition duration-300 cursor-pointer"
      />
      <Stack sx={{ gap: "5px" }}>
        <Typography
          variant="captiontext"
          sx={{
            ":hover": {
              color: "primary.main",
            },
            color: "text.disabled",
            transition: "0.5s",
            cursor: "pointer",
            textTransform: "uppercase",
            fontWeight: 500,
          }}
        >
          {item.brandName}
        </Typography>
        <Typography
          variant="captiontext"
          sx={{
            display: "-webkit-box",
            overflow: "hidden",
            WebkitLineClamp: 2,
            WebkitBoxOrient: "vertical",
            cursor: "pointer",
          }}
        >
          {item.name}
        </Typography>
      </Stack>

      <Stack sx={{ gap: "16px" }}>
        <Stack>
          <Typography
            variant="subtitle2"
            sx={{ color: "primary.main", fontWeight: 800, cursor: "pointer" }}
          >
            {formatted.format(item.latestPrice)} ₫
          </Typography>

          <Stack
            direction="row"
            sx={{ gap: "5px", paddingX: "4px", cursor: "pointer" }}
          >
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
        <Button variant="outlined" sx={{ border: 1, borderRadius: "5px" }}>
          Thêm vào giỏ
        </Button>
      </Stack>
    </Box>
  );
};
