import { CategoryListItem } from "@/components/categoryList";
import { useStateContext } from "@/context";
import { Icon } from "@iconify-icon/react/dist/iconify.js";
import {
  alpha,
  Box,
  Button,
  Collapse,
  InputAdornment,
  OutlinedInput,
  Stack,
  Typography,
} from "@mui/material";
import { useEffect, useRef } from "react";
import { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
const itemSections = [
  {
    title: "RTX 5060",
  },
  {
    title: "RTX 5060 Ti",
  },
  {
    title: "Mac Mini M4",
  },
  {
    title: "iPhone 16 Promax",
  },
  {
    title: "Màn hình",
  },
  {
    title: "Build PC",
  },
];
export const HeaderSection = () => {
  const navigate = useNavigate();
  const scrollRef = useRef();
  const [onClick, setOnClick] = useState(false);
  const handleClickButton = () => {
    setOnClick(!onClick);
  };
  const [isScrolled, setIsScrolled] = useState(false);
  const { cart, setCart } = useStateContext();

  const handleScrolled = () => {
    setIsScrolled(window.scrollY > 0);
    if (window.scrollY === 0) {
      setOnClick(false);
    }
  };

  useEffect(() => {
    window.addEventListener("scroll", handleScrolled);
    return () => {
      window.removeEventListener("scroll", handleScrolled);
    };
  }, []);

  return (
    <Box
      sx={{
        paddingX: "240px",
        paddingTop: "35px",
        bgcolor: "#fff",
      }}
      ref={scrollRef}
    >
      <Stack direction="row" spacing={2}>
        <Collapse in={!isScrolled} orientation="horizontal" unmountOnExit>
          <img
            src="/Logo.jpg"
            alt=""
            className="w-[250px] h-[60px] cursor-pointer mt-[-10px]"
            onClick={() => {
              navigate("/");
            }}
          />
        </Collapse>

        {isScrolled && (
          <Stack direction="row" gap="10px">
            <img
              src="https://shopfront-cdn.tekoapis.com/static/phongvu/logo.svg"
              alt=""
              className="w-[35px] h-[35px] cursor-pointer"
              onClick={() => {
                navigate("/");
              }}
            />
            <Button
              variant="outlined"
              startIcon={
                <Icon
                  icon="ph:list"
                  width="20"
                  height="20"
                  className="text-gray-500"
                />
              }
              sx={{
                height: "40px",
                borderColor: "#d1d5dc",
                textTransform: "none",
                color: "#6a7282",
                overflow: "hidden",
              }}
              onClick={handleClickButton}
            >
              Danh mục sản phẩm
            </Button>
          </Stack>
        )}

        <Stack sx={{ flex: 1 }}>
          <OutlinedInput
            size="small"
            endAdornment={
              <InputAdornment position="end">
                <Icon icon="eva:search-fill" width="24" height="24" />
              </InputAdornment>
            }
            placeholder="Nhập từ khóa cần tìm"
          />
          <Stack
            direction="row"
            sx={{
              paddingY: "8px",
              gap: "8px",
              color: "text.secondary",
            }}
          >
            {itemSections.map((item) => (
              <Typography
                variant="caption"
                sx={{
                  ":hover": {
                    color: "#1435C3",
                  },
                  cursor: "pointer",
                }}
                onClick={() => navigate(`/shop?categories=${item.title}`)}
              >
                {item.title}
              </Typography>
            ))}
          </Stack>
        </Stack>
        <Stack direction="row" alignItems="start" spacing={3}>
          <HeaderSectionItem
            icon="solar:user-circle-linear"
            title1="Đăng nhập"
            title2="Đăng ký"
            link="/login"
          />
          <HeaderSectionItem
            icon="solar:bell-linear"
            title1=""
            title2=""
            link=""
          />
          <HeaderSectionItem
            icon="solar:cart-large-2-linear"
            title1="Giỏ hàng của bạn"
            title2={`( ${cart.products.length} ) sản phẩm`}
            link="/checkout"
          />
        </Stack>
      </Stack>
      {onClick && isScrolled && (
        <Box>
          <Box
            sx={{
              position: "fixed",
              top: 113,
              left: 0,
              width: "100%",
              height: "90vh",
              bgcolor: alpha("#000", 0.5),
              zIndex: 999999,
            }}
            onClick={() => setOnClick(false)}
          ></Box>
          <CategoryListItem
            sx={{
              position: "fixed",
              top: 113,
              zIndex: 1000000,
              bgcolor: "white",
            }}
            borderRadius="0px 0px 10px 10px"
          />
        </Box>
      )}
    </Box>
  );
};

const HeaderSectionItem = ({ icon, title1, title2, link }) => {
  const navigate = useNavigate();
  return (
    <Stack
      direction="row"
      sx={{
        alignItems: "center",
        gap: "8px",
        color: "text.secondary",
        typography: "body2",
        cursor: "pointer",
        ":hover": {
          color: "#1435C3",
        },
      }}
      onClick={() => navigate(link)}
    >
      <Icon icon={icon} width="32" height="32" />
      <Stack>
        <Typography variant="captiontext">{title1}</Typography>
        <Typography variant="captiontext">{title2}</Typography>
      </Stack>
    </Stack>
  );
};
