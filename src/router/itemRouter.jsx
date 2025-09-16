import React from "react";
import { createBrowserRouter } from "react-router";
import { ClientLayout } from "@/layouts";
import {
  AddCategoryPage,
  AddProductPage,
  AdminCategoryPage,
  AdminProductPage,
  DashboardPage,
  DetailPage,
  LandingPage,
  ShopPage,
  UpdateCategoryPage,
  UpdateProductPage,
} from "@/pages";
import { AdminProvider } from "@/layouts/admin";
import { AdminLayout } from "@/layouts/admin/layout";
import { AdminAttributePage } from "@/pages/admin/attributePage";
import { AddAttributePage } from "@/pages/admin/attributePage/addAttributePage";
import { UpdateAttributePage } from "@/pages/admin/attributePage/updateAttributePage";
import { CheckoutPage } from "@/pages/client/orderPage";
export const itemRouter = createBrowserRouter([
  {
    path: "/",
    element: <ClientLayout />,
    children: [
      { path: "/", element: <LandingPage /> },
      { path: "/shop", element: <ShopPage /> },
      { path: "/shop/:id", element: <DetailPage /> },
      { path: "/checkout", element: <CheckoutPage /> },
    ],
  },
  {
    path: "/admin",
    element: <AdminProvider />,
    children: [
      {
        path: "",
        element: <AdminLayout />,
        children: [
          { path: "/admin/dashboard", element: <DashboardPage /> },
          // product
          { path: "/admin/products", element: <AdminProductPage /> },
          { path: "/admin/products/create", element: <AddProductPage /> },
          { path: "/admin/products/update", element: <UpdateProductPage /> },
          {
            path: "/admin/products/update/:id",
            element: <UpdateProductPage />,
          },
          // category
          { path: "/admin/categories", element: <AdminCategoryPage /> },
          { path: "/admin/categories/create", element: <AddCategoryPage /> },
          { path: "/admin/categories/update", element: <UpdateCategoryPage /> },
          {
            path: "/admin/categories/update/:id",
            element: <UpdateCategoryPage />,
          },
          // attribute
          { path: "/admin/attributes", element: <AdminAttributePage /> },
          { path: "/admin/attributes/create", element: <AddAttributePage /> },
          {
            path: "/admin/attributes/update",
            element: <UpdateAttributePage />,
          },
          {
            path: "/admin/attributes/update/:id",
            element: <UpdateAttributePage />,
          },
        ],
      },
    ],
  },
]);
