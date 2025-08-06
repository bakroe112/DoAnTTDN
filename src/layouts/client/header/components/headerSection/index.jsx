import { CategoryListItem } from "@/components/categoryList";
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
import { Link } from "react-router-dom";
//  <CategoryListItem sx={{}}/>
const headerSectionItems = [
  {
    id: 1,
    icon: "solar:user-circle-linear",
    title1: "Đăng nhập",
    title2: "Đăng ký",
    action: () => {},
    link: "/",
  },
  {
    id: 2,
    icon: "solar:bell-linear",
    action: () => {},
    link: "/",
  },
  {
    id: 3,
    icon: "solar:cart-large-2-linear",
    title1: "Giỏ hàng của bạn",
    title2: "(0) sản phẩm",
    action: () => {},
    link: "/",
  },
];
const itemSections = [
  {
    title: "RTX 5060",
    link: "/",
  },
  {
    title: "RTX 5060 Ti",
    link: "/",
  },
  {
    title: "Mac Mini M4",
    link: "/",
  },
  {
    title: "iPhone 16 Promax",
    link: "/",
  },
  {
    title: "Màn hình",
    link: "/",
  },
  {
    title: "Build PC",
    link: "/",
  },
];
export const HeaderSection = () => {
  const scrollRef = useRef();
  const [onClick, setOnClick] = useState(false);
  const handleClickButton = () => {
    setOnClick(!onClick);
  };
  const [isScrolled, setIsScrolled] = useState(false);

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
        <Collapse
          in={!isScrolled}
          orientation="horizontal"
          // timeout={200}
          unmountOnExit
        >
          <img
            src="https://shopfront-cdn.tekoapis.com/static/phongvu/logo-full.svg"
            alt=""
            className="w-[251px] h-[35px]"
          />
        </Collapse>

        {isScrolled && (
          <Stack direction="row" gap="10px">
            <img
              src="https://shopfront-cdn.tekoapis.com/static/phongvu/logo.svg"
              alt=""
              className="w-[35px] h-[35px]"
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
                component={Link}
                to={item.link}
                variant="caption"
                sx={{
                  ":hover": {
                    color: "#1435C3",
                  },
                }}
              >
                {item.title}
              </Typography>
            ))}
          </Stack>
        </Stack>
        <Stack direction="row" alignItems="start" spacing={3}>
          {headerSectionItems.map((item) => (
            <HeaderSectionItem item={item} key={item.id} />
          ))}
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

const HeaderSectionItem = ({ item }) => {
  return (
    <Stack
      component={Link}
      to={item.link}
      direction="row"
      sx={{
        alignItems: "center",
        gap: "8px",
        color: "text.secondary",
        typography: "body2",
        ":hover": {
          color: "#1435C3",
        },
      }}
    >
      <Icon icon={item.icon} width="32" height="32" />
      <Stack>
        <Typography variant="captiontext">{item.title1}</Typography>
        <Typography variant="captiontext">{item.title2}</Typography>
      </Stack>
    </Stack>
  );
};
