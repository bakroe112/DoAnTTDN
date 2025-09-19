import { Search } from "@mui/icons-material";
import {
  AppBar,
  Box,
  FormControl,
  IconButton,
  InputAdornment,
  InputLabel,
  OutlinedInput,
  Toolbar,
} from "@mui/material";
import { DataGrid } from "@mui/x-data-grid";
import SearchIcon from "@mui/icons-material/Search";
import React, { useEffect } from "react";
import DataGridHeader from "./components/dataGridHeader";
import { useDispatch, useSelector } from "react-redux";
import { getAllProduct } from "@/store/product/Action";

export const AdminProductPage = () => {
  const products = useSelector((store) => store.products);

  // console.log("products", products);

  const [paginationModel, setPaginationModel] = React.useState({
    pageSize: 5,
    page: 0,
  });
  return (
    <Box sx={{ width: "100%" }}>
      <Toolbar
        sx={{
          border: 1,
          borderBottom: 0,
          borderColor: "#E0E0E0",
          borderRadius: "10px 10px 0px 0px",
          p: "12px",
        }}
      >
        <FormControl>
          <InputLabel>Search</InputLabel>
          <OutlinedInput
            endAdornment={
              <InputAdornment>
                <IconButton>
                  <SearchIcon />
                </IconButton>
              </InputAdornment>
            }
            label="Search"
          />
        </FormControl>
      </Toolbar>
      <Box sx={{ maxHeight: 400, width: "100%" }}>
        <DataGrid
          checkboxSelection
          disableRowSelectionOnClick
          getRowId={(row) => row.sku}
          rows={products.products}
          columns={DataGridHeader()}
          rowHeight={100}
          initialState={{
            pagination: {
              paginationModel: {
                pageSize: 5,
              },
            },
          }}
          sx={{ borderRadius: "0px 0px 10px 10px" }}
          paginationModel={paginationModel}
          onPaginationModelChange={setPaginationModel}
          pageSizeOptions={[5, 10, 25]}
        />
      </Box>
    </Box>
  );
};
