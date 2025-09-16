import {
  alpha,
  Box,
  Button,
  Divider,
  Grid,
  Stack,
  TextField,
  Typography,
} from "@mui/material";
import { DataGrid } from "@mui/x-data-grid";
import React from "react";
import EditIcon from "@mui/icons-material/Edit";
import CardDataGrid from "./component/CardDataGrid";
import { useSelector } from "react-redux";
import { useStateContext } from "@/context";
import { formatMoney } from "@/function/FormatMoney";
import { useNavigate } from "react-router-dom";
export const CheckoutPage = () => {
  //   const { search } = window.location; // Lấy query string hiện tại
  //   const searchParams = new URLSearchParams(search);
    const navigate = useNavigate();
  //   const dispatch = useDispatch();
  //   const orderState = useSelector((store) => store.orders);

  const orderState = useSelector((store) => store.orders);
  const { cart, setCart } = useStateContext();

  // console.log("Cart", cart);

  return (
    <Box sx={{ bgcolor: "#F8F8FC" }}>
      <Box sx={{ p: "20px 240px" }}>
        <Grid
          container
          spacing={3}
          sx={{ alignItems: "center", justifyContent: "center" }}
        >
          <Grid size={8}>
            <CardDataGrid />
          </Grid>
          <Grid size={4}>
            <Stack
              spacing={2}
              sx={{
                p: "15px 30px",
                boxShadow: "0px 0px 2px 1px #e5e7eb",
                borderRadius: "10px",
              }}
            >
              <Stack
                direction="row"
                sx={{ justifyContent: "space-between", alignItems: "center" }}
              >
                <Typography>Chi tiết đơn hàng</Typography>
                <Button
                  variant="text"
                  color="text.primary"
                  sx={{
                    ":hover": {
                      bgcolor: alpha("#888", 0.1),
                    },
                  }}
                  startIcon={<EditIcon />}
                >
                  Chỉnh sửa
                </Button>
              </Stack>
              <Stack
                direction="row"
                sx={{ justifyContent: "space-between", alignItems: "center" }}
              >
                <TextField
                  size="small"
                  // value={}
                  placeholder="Nhập mã giảm giá"
                  sx={{ flexGrow: 1, marginRight: 1 }}
                  InputProps={{ sx: { height: 38 } }}
                />
                <Button
                  variant="outlined"
                  color="text.primary"
                  sx={{
                    border: "1px solid #888 ",
                    ":hover": {
                      bgcolor: alpha("#888", 0.1),
                    },
                  }}
                >
                  áp dụng
                </Button>
              </Stack>
              <Divider />
              <Stack
                direction="row"
                sx={{ justifyContent: "space-between", alignItems: "center" }}
              >
                <Typography variant="body2">Giá</Typography>
                <Stack direction="row">
                  <Typography variant="body2">
                    {formatMoney(sumPrice(cart.products))}
                  </Typography>
                </Stack>
              </Stack>
              <Stack
                direction="row"
                sx={{ justifyContent: "space-between", alignItems: "center" }}
              >
                <Typography variant="body2">Phí vận chuyển</Typography>
                <Stack direction="row">
                  <Typography variant="body2">
                    {formatMoney(getShippingPrice(cart?.products))}
                  </Typography>
                </Stack>
              </Stack>
              <Divider />
              <Stack
                direction="row"
                sx={{ justifyContent: "space-between", alignItems: "center" }}
              >
                <Typography variant="h5">Tổng</Typography>
                <Stack direction="row">
                  <Typography variant="body1" color="error" fontWeight={500}>
                    {formatMoney(
                      sumPrice(cart.products) + getShippingPrice(cart?.products)
                    )}
                  </Typography>
                </Stack>
              </Stack>
            </Stack>
            <Stack
              sx={{
                p: "30px 0px",
              }}
            >
              <Button
                size="large"
                variant="outlined"
                type="submit"
                color="primary.text"
                sx={{
                  textTransform: "none",
                  fontWeight: 600,
                  bgcolor: "background.paper",
                  transition: "0.3s ease-in-out",
                  ":hover": {
                    backgroundColor: "text.primary",
                    color: "background.paper",
                  },
                }}
              >
                Thanh toán
              </Button>
            </Stack>
          </Grid>
        </Grid>
      </Box>
    </Box>
  );
};

const sumPrice = (products) => {
  return products?.reduce(
    (total, item) => total + item.sellPrice * item.quantity_cart,
    0
  );
};

const getShippingPrice = (products) => {
  // Tính theo trọng lượng (Nào thêm sau)
  // const totalMass = products?.reduce(
  //   (total, item) => total + item.mass * item.quantity_cart,
  //   0
  // );
  // if (totalMass < 6) {
  //   return formatMoney(7.5);
  // } else if (totalMass > 9) {
  //   return formatMoney(25.5);
  // } else {
  //   return formatMoney(15.5);
  // }

  // But? ko có trọng lượng thì tính theo số lượng :D
  const totalProduct = products?.reduce(
    (total, item) => total + item.quantity_cart,
    0
  );
  if (totalProduct < 5) {
    return 50000;
  } else if (totalProduct > 9) {
    return 300000;
  } else {
    return 150000;
  }
};
