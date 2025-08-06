import React from "react";
import { createBrowserRouter } from "react-router";
import { ClientLayout } from "@/layouts";
import { DetailPage, LandingPage, ShopPage } from "@/pages";

export const itemRouter = createBrowserRouter([
  {
    path: "/",
    element: <ClientLayout />,
    children: [
      { path: "/", element: <LandingPage /> },
      { path: "/shop/", element: <ShopPage /> },
      { path: "/shop/:id", element: <DetailPage /> },
    ],
  },
]);
