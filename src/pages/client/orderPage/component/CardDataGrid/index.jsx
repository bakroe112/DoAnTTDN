import { Box, Toolbar, Typography } from "@mui/material";
import { DataGrid } from "@mui/x-data-grid";
import React from "react";
import DataGridHeader from "./DataGridHeader";
import { useStateContext } from "@/context";

const CardDataGrid = () => {
  const { cart, setCart } = useStateContext();
  const [products, setProducts] = React.useState(cart.products);
  // console.log("Cart", cart);

  React.useEffect(() => {
    setCart({ ...cart, products: products });
  }, [products]);

  return (
    <Box>
      <Toolbar
        sx={{
          border: 1,
          borderBottom: 0,
          borderColor: "#E0E0E0",
          borderRadius: "10px 10px 0px 0px",
          p: "12px",
          bgcolor: "background.paper",
        }}
      >
        <Typography variant="h4">
          Giỏ hàng {`(${cart.products.length})`}
        </Typography>
      </Toolbar>
      <Box>
        <DataGrid
          rows={cart.products}
          disableRowSelectionOnClick
          disableColumnSorting
          disableColumnMenu
          disableColumnResize
          hideFooter
          getRowId={(row) => row.sku}
          columns={DataGridHeader(products, setProducts)}
          rowHeight={100}
          slots={{
            noRowsOverlay: CustomNoRowsOverlay,
          }}
          sx={{
            borderRadius: "0px 0px 10px 10px",
            bgcolor: "background.paper",
            borderColor: "#E0E0E0",
          }}
        />
      </Box>
    </Box>
  );
};
const CustomNoRowsOverlay = () => {
  return (
    <Box
      sx={{
        height: "100%",
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        p: 2,
      }}
    >
      <Typography variant="subtitle1" fontWeight={300} color="text.secondary">
        🛒 Giỏ hàng trống, hãy thêm sản phẩm!
      </Typography>
    </Box>
  );
};
export default CardDataGrid;
