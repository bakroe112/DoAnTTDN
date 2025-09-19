import { useStateContext } from "@/context";
import { formatMoney } from "@/function/FormatMoney";
import { Icon } from "@iconify/react";
import { Box, IconButton, Stack, Typography } from "@mui/material";
import React from "react";

function RenderProduct(props) {
  const { value, row } = props;

  return (
    <Box
      sx={{
        height: "100%",
        display: "flex",
        alignItems: "center",
        gap: "12px",
        paddingRight: "12px",
      }}
    >
      <img src={row.image_url} className="w-[70px] h-[70px] rounded-[12px]" />
      <Typography
        variant="subtitle2"
        sx={{
          flex: 1,
          wordBreak: "break-word",
          wordWrap: "break-word",
          overflow: "hidden",
          textOverflow: "ellipsis",
        }}
      >
        {row.name}
      </Typography>
    </Box>
  );
}

function RenderQuantity(props) {
  const { row } = props;
  const { setCart } = useStateContext();

  const addQuantity = () => {
    setCart((prevCart) => {
      const updatedProducts = prevCart.products.map((item) =>
        item.sku === row.sku
          ? { ...item, quantity_cart: item.quantity_cart + 1 }
          : item
      );
      return { ...prevCart, products: updatedProducts };
    });
  };

  const decQuantity = () => {
    setCart((prevCart) => {
      const updatedProducts = prevCart.products.map((item) =>
        item.sku === row.sku
          ? { ...item, quantity_cart: item.quantity_cart - 1 }
          : item
      );
      return { ...prevCart, products: updatedProducts };
    });
  };

  return (
    <Box
      sx={{
        display: "flex",
        alignItems: "center",
        height: "100%",
        flexDirection: "column",
        justifyContent: "center",
        gap: "4px",
      }}
    >
      <Stack
        sx={{
          border: "1px solid black",
          flexDirection: "row",
          alignItems: "center",
          gap: "8px",
          padding: "4px",
          borderColor: "divider",
          borderRadius: "8px",
        }}
      >
        <IconButton
          size="small"
          sx={{ borderRadius: "8px" }}
          onClick={decQuantity}
          disabled={row.quantity_cart === 1}
        >
          <Icon icon="eva:minus-fill" width={16} height={16} />
        </IconButton>
        <Typography variant="body2">{row.quantity_cart}</Typography>
        <IconButton
          size="small"
          sx={{ borderRadius: "8px" }}
          onClick={addQuantity}
          disabled={row.quantity_cart === row.quantity}
        >
          <Icon icon="eva:plus-fill" width={16} height={16} />
        </IconButton>
      </Stack>
    </Box>
  );
}

function RenderAction(props) {
  const { row } = props;
  const { cart, setCart } = useStateContext();

  return (
    <Box
      sx={{
        display: "flex",
        alignItems: "center",
        justifyContent: "end",
        height: "100%",
      }}
    >
      <IconButton
        size="small"
        onClick={() => {
          let updatedProduct = cart.products.filter(
            (item) => item.sku !== row.sku
          );
          setCart((newCart) => ({
            ...newCart,
            products: updatedProduct,
          }));
        }}
        sx={{
          bgcolor: "transparent",
        }}
      >
        <Icon icon="solar:trash-bin-trash-bold" />
      </IconButton>
    </Box>
  );
}

const DataGridHeader = (rows, setRows) => {
  return [
    {
      field: "name",
      headerName: "Sản phẩm",
      width: 300,
      renderCell: RenderProduct,
    },
    {
      field: "sell_price",
      headerName: "Đơn giá",
      width: 120,
      valueGetter: (value) => value,
      valueFormatter: (value) => formatMoney(value),
    },
    {
      field: "quantity",
      headerName: "Số lượng",
      width: 130,
      renderCell: (params) => (
        <RenderQuantity {...params} rows={rows} setRows={setRows} />
      ),
    },
    {
      field: "totalPrice",
      headerName: "Thành tiền",
      width: 130,
      headerAlign: "right",
      align: "right",
      valueGetter: (value, row) => {
        return formatMoney(row.sell_price * row.quantity_cart);
      },
    },
    {
      field: "action",
      headerName: "",
      sortable: false,
      width: 100,
      disableColumnMenu: true,
      renderCell: RenderAction,
    },
  ];
};

export default DataGridHeader;
