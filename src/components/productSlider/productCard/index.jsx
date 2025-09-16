import { useStateContext } from "@/context";
import addCart from "@/function/addCart";
import { Box, Button, Stack, Typography } from "@mui/material";
import React from "react";
import { useNavigate } from "react-router-dom";
export const ProductCard = ({ item, radius, height, width }) => {
  const { cart, setCart } = useStateContext();
  const formatted = new Intl.NumberFormat("vi-VN");
  const navigate = useNavigate();
  const quantityValue = 1;

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
        onClick={() => navigate(`/shop/${item.sku}`)}
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
          onClick={() => navigate(`/shop/${item.sku}`)}
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
          onClick={() => navigate(`/shop/${item.sku}`)}
        >
          {item.name}
        </Typography>
      </Stack>

      <Stack sx={{ gap: "16px" }}>
        <Stack>
          <Typography
            variant="subtitle2"
            sx={{ color: "primary.main", fontWeight: 800, cursor: "pointer" }}
            onClick={() => navigate(`/shop/${item.sku}`)}
          >
            {formatted.format(item.sellPrice)} ₫
          </Typography>

          <Stack
            direction="row"
            sx={{ gap: "5px", paddingX: "4px", cursor: "pointer" }}
            onClick={() => navigate(`/shop/${item.sku}`)}
          >
            <Typography
              variant="captiontext"
              sx={{ color: "text.disabled", textDecoration: " line-through" }}
            >
              {formatted.format(item.supplierRetailPrice)} ₫
            </Typography>
            <Typography variant="captiontext" sx={{ color: "error.main" }}>
              -{item.discountAmount}%
            </Typography>
          </Stack>
        </Stack>
        <Button
          variant="outlined"
          sx={{ border: 1, borderRadius: "5px" }}
          onClick={() => {
            addCart(cart, setCart, item, quantityValue);
            navigate("/checkout");
          }}
        >
          Thêm vào giỏ
        </Button>
      </Stack>
    </Box>
  );
};
