import React from "react";
import { createBrowserRouter } from "react-router";
import { LandingPage } from "@/pages/client/landingPage";
import { ClientLayout } from "@/layouts";

export const itemRouter = createBrowserRouter([
  {
    path: "/",
    element: <ClientLayout />,
    children: [{ path: "/", element: <LandingPage /> }],
  },
]);
