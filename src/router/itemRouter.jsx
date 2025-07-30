import React from "react";
import { createBrowserRouter } from "react-router";
import { ClientLayout } from "../layouts";
import { LandingPage } from "../pages/client/landingPage/landingPage";

export const itemRouter = createBrowserRouter([
  {
    path: "/",
    element: <ClientLayout />,
    children: [{ path: "/", element: <LandingPage /> }],
  },
]);
