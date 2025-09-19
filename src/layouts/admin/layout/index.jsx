import {
  Box,
  CircularProgress,
  IconButton,
  Stack,
  TextField,
  Tooltip,
} from "@mui/material";
import { DashboardLayout, PageContainer, ThemeSwitcher } from "@toolpad/core";
import React from "react";
import { Outlet, useLocation } from "react-router-dom";
import SearchIcon from "@mui/icons-material/Search";
import { useDispatch, useSelector } from "react-redux";
import { getAllProduct, getShopProduct } from "@/store/product/Action";

const SearchTool = () => {
  return (
    <Stack direction="row">
      <Tooltip title="Search" enterDelay={1000}>
        <Box>
          <IconButton
            type="button"
            sx={{ display: { xs: "inline", md: "none" } }}
          >
            <SearchIcon />
          </IconButton>
        </Box>
      </Tooltip>
      <TextField
        variant="outlined"
        size="small"
        slotProps={{
          input: {
            endAdornment: (
              <IconButton type="button" size="small">
                <SearchIcon />
              </IconButton>
            ),
            sx: { pr: 0.5 },
          },
        }}
        sx={{ display: { xs: "none", md: "inline-block" }, mr: 1 }}
      />
      <ThemeSwitcher />
      {/* <Account /> sau chỉnh đăng nhập thì tìm cái này */}
    </Stack>
  );
};

export const AdminLayout = () => {
  const dispatch = useDispatch();
  const products = useSelector((store) => store.products);
  const path = useLocation();

  React.useEffect(() => {
    window.scrollTo(0, 0);
  }, [path.pathname]);

  React.useEffect(() => {
    dispatch(getAllProduct());
  }, [path.search]);

  return (
    <DashboardLayout
      slots={{
        toolbarActions: SearchTool,
      }}
    >
      <PageContainer>
        {products.loading ? (
          <Stack
            sx={{
              width: "100%",
              height: "100vh",
              alignItems: "center",
              justifyContent: "center",
            }}
          >
            <CircularProgress />
          </Stack>
        ) : (
          <Outlet />
        )}
      </PageContainer>
    </DashboardLayout>
  );
};
