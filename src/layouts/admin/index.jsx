import React from "react";
import { ReactRouterAppProvider } from "@toolpad/core/react-router";
import { Outlet } from "react-router-dom";
import SpaceDashboardIcon from "@mui/icons-material/SpaceDashboard";
import InventoryIcon from "@mui/icons-material/Inventory";
import AddIcon from "@mui/icons-material/Add";
import EditIcon from "@mui/icons-material/Edit";
const NAVIGATION = [
  {
    kind: "header",
    title: "Main 1",
  },
  {
    segment: "admin/dashboard",
    title: "Dashboard",
    icon: <SpaceDashboardIcon />,
  },
  { kind: "divider" },
  {
    segment: "admin/products",
    title: "Products",
    icon: <InventoryIcon />,
    children: [
      {
        segment: "",
        title: "Product List",
        icon: <SpaceDashboardIcon />,
      },
      {
        segment: "create",
        title: "Create Product",
        icon: <AddIcon />,
      },
      {
        segment: "update",
        pattern: "update/:id",
        title: "Edit Product",
        icon: <EditIcon />,
      },
    ],
  },
  {
    segment: "admin/categories",
    title: "Categories",
    icon: <InventoryIcon />,
    children: [
      {
        segment: "",
        title: "List",
        icon: <SpaceDashboardIcon />,
      },
      {
        segment: "create",
        title: "Create",
        icon: <AddIcon />,
      },
      {
        segment: "update",
        pattern: "update/:id",
        title: "Edit",
        icon: <EditIcon />,
      },
    ],
  },
];

const BRANDING = { title: "Admin", homeUrl: "/admin" };
// logo
export const AdminProvider = () => {
  return (
    <ReactRouterAppProvider navigation={NAVIGATION} branding={BRANDING}>
      <Outlet />
    </ReactRouterAppProvider>
  );
};
