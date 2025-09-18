import {
  alpha,
  Box,
  Button,
  Divider,
  IconButton,
  InputAdornment,
  Stack,
  TextField,
  Typography,
} from "@mui/material";
import React from "react";
import AlternateEmailIcon from "@mui/icons-material/AlternateEmail";
import PersonIcon from "@mui/icons-material/Person";
import PasswordIcon from "@mui/icons-material/Password";
import LocalPhoneIcon from "@mui/icons-material/LocalPhone";
import SwitchLeftIcon from "@mui/icons-material/SwitchLeft";
export const LoginPage = () => {
  const [change, setChange] = React.useState(false);
  return (
    <Box sx={{ p: "20px 700px" }}>
      <Stack
        sx={{
          boxShadow: "0px 0px 2px 1px #E0E0E0",
          borderRadius: "10px",
          p: "24px",
        }}
      >
        {change ? (
          <Stack spacing={2}>
            <Stack sx={{ alignItems: "center", gap: "5px" }}>
              <Typography variant="h4">Đăng Nhập</Typography>
              <Divider color="#919EAB" sx={{ width: "50%", mx: "auto" }} />
            </Stack>
            <TextField
              fullWidth
              size="small"
              label="Email"
              // value={category?.name}
              // name={category?.name}
              // onChange={(e) => setCategory({ ...category, name: e.target.value })}
              sx={{
                "& label.Mui-focused": { color: "black" },
                "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                  borderColor: "black",
                },
              }}
              slotProps={{
                input: {
                  startAdornment: (
                    <InputAdornment position="start">
                      <AlternateEmailIcon />
                    </InputAdornment>
                  ),
                },
              }}
              variant="standard"
            />
            <TextField
              fullWidth
              size="small"
              label="Password"
              type="password"
              // value={category?.name}
              // name={category?.name}
              // onChange={(e) => setCategory({ ...category, name: e.target.value })}
              sx={{
                "& label.Mui-focused": { color: "black" },
                "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                  borderColor: "black",
                },
              }}
              slotProps={{
                input: {
                  startAdornment: (
                    <InputAdornment position="start">
                      <PasswordIcon />
                    </InputAdornment>
                  ),
                },
              }}
              variant="standard"
            />
            <Stack direction="row" sx={{ alignContent: "center" }}>
              <Typography
                sx={{ cursor: "pointer" }}
                onClick={() => setChange(false)}
              >
                Chưa có có tài khoản?
              </Typography>
            </Stack>
            <Button
              variant="outlined"
              sx={{
                borderColor: "#888",
                color: "text.primary",
                fontSize: "18px",
              }}
            >
              Đăng nhập
            </Button>
          </Stack>
        ) : (
          <Stack spacing={2}>
            <Stack sx={{ alignItems: "center", gap: "5px" }}>
              <Typography variant="h4">Đăng Ký</Typography>
              <Divider color="#919EAB" sx={{ width: "50%", mx: "auto" }} />
            </Stack>
            <TextField
              fullWidth
              size="small"
              variant="standard"
              label="Name"
              // value={category?.name}
              // name={category?.name}
              // onChange={(e) => setCategory({ ...category, name: e.target.value })}
              sx={{
                "& label.Mui-focused": { color: "black" },
                "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                  borderColor: "black",
                },
              }}
              slotProps={{
                input: {
                  startAdornment: (
                    <InputAdornment position="start">
                      <PersonIcon />
                    </InputAdornment>
                  ),
                },
              }}
            />
            <TextField
              fullWidth
              size="small"
              label="Email"
              // value={category?.name}
              // name={category?.name}
              // onChange={(e) => setCategory({ ...category, name: e.target.value })}
              sx={{
                "& label.Mui-focused": { color: "black" },
                "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                  borderColor: "black",
                },
              }}
              slotProps={{
                input: {
                  startAdornment: (
                    <InputAdornment position="start">
                      <AlternateEmailIcon />
                    </InputAdornment>
                  ),
                },
              }}
              variant="standard"
            />
            <TextField
              fullWidth
              size="small"
              label="Password"
              type="password"
              // value={category?.name}
              // name={category?.name}
              // onChange={(e) => setCategory({ ...category, name: e.target.value })}
              sx={{
                "& label.Mui-focused": { color: "black" },
                "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                  borderColor: "black",
                },
              }}
              slotProps={{
                input: {
                  startAdornment: (
                    <InputAdornment position="start">
                      <PasswordIcon />
                    </InputAdornment>
                  ),
                },
              }}
              variant="standard"
            />
            <TextField
              fullWidth
              size="small"
              label="Number"
              type="number"
              // value={category?.name}
              // name={category?.name}
              // onChange={(e) => setCategory({ ...category, name: e.target.value })}
              sx={{
                "& label.Mui-focused": { color: "black" },
                "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                  borderColor: "black",
                },
                "& input[type=number]::-webkit-outer-spin-button, & input[type=number]::-webkit-inner-spin-button":
                  {
                    WebkitAppearance: "none",
                    margin: 0,
                  },
              }}
              slotProps={{
                input: {
                  startAdornment: (
                    <InputAdornment position="start">
                      <LocalPhoneIcon />
                    </InputAdornment>
                  ),
                },
              }}
              variant="standard"
            />
            <Stack direction="row" sx={{ alignContent: "center" }}>
              <Typography
                sx={{ cursor: "pointer" }}
                onClick={() => setChange(true)}
              >
                Đã có tài khoản?
              </Typography>
            </Stack>
            <Button
              variant="outlined"
              sx={{
                borderColor: "#888",
                color: "text.primary",
                fontSize: "18px",
              }}
            >
              Đăng ký
            </Button>
          </Stack>
        )}
      </Stack>
    </Box>
  );
};
