import React from "react";
import ClientHeader from "./header";
import { Outlet, useLocation } from "react-router-dom";
import { ClientFooter } from "./footer";
import { CircularProgress, Divider, Stack } from "@mui/material";
import { useDispatch, useSelector } from "react-redux";
import { getShopProduct } from "@/store/product/Action";
import { getCategoryTree } from "@/store/category/Action";

export const ClientLayout = () => {
  const dispatch = useDispatch();
  const products = useSelector((store) => store.products);
  const path = useLocation();

  React.useEffect(() => {
    window.scrollTo(0, 0);
  }, [path.pathname]);

  React.useEffect(() => {
    dispatch(getShopProduct());
  }, [path.search]);

  React.useEffect(() => {
    dispatch(getCategoryTree());
  }, []);

  // console.log("products: ", products);
  return (
    <>
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
        <>
          <ClientHeader />
          <Outlet />
          <ClientFooter />
        </>
      )}
    </>
  );
};
