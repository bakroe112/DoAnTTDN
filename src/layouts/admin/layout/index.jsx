import { Box, IconButton, Stack, TextField, Tooltip } from "@mui/material";
import {
  Account,
  DashboardLayout,
  PageContainer,
  ThemeSwitcher,
} from "@toolpad/core";
import React from "react";
import { Outlet } from "react-router-dom";
import SearchIcon from "@mui/icons-material/Search";

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
  return (
    <DashboardLayout
      slots={{
        toolbarActions: SearchTool,
      }}
    >
      <PageContainer>
        <Outlet />
      </PageContainer>
    </DashboardLayout>
  );
};
