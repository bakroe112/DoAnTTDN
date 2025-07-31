import { Icon } from "@iconify-icon/react/dist/iconify.js";
import { Typography } from "@mui/material";
import { Box, Stack } from "@mui/system";
import React from "react";
import { Link } from "react-router";

const bannerItems = [
  {
    title: "Hệ thống Showroom",
    icon: "solar:city-linear",
    link: "/p/he-thong-showroom-phong-vu",
  },
  {
    title: "Dành Cho Doanh Nghiệp",
    icon: "solar:case-round-minimalistic-linear",
    link: "/p/khach-hang-doanh-nghiep",
  },
  {
    title: "Apple Education",
    icon: "solar:shop-2-linear",
    link: "/p/apple-education",
  },
  {
    title: "Hotline:11112222",
    icon: "solar:phone-calling-linear",
    link: "/",
  },
  {
    title: "Tin công nghệ",
    icon: "solar:display-linear",
    link: "/cong-nghe",
  },
  {
    title: "Xây dựng cấu hình",
    icon: "solar:settings-linear",
    link: "/buildpc",
  },
  {
    title: "Khuyến mãi",
    icon: "solar:tag-price-linear",
    link: "/p/promo",
  },
];

export const BannerSection = () => {
  return (
    <Box component="section" width="100%" > 
      <img
        src="https://lh3.googleusercontent.com/lQNzRj1Dt-OWPIul2aA09f_Jx6SS2TXmdV_INbv_Smea7c5sh8zCB1RWw6xhxf-LBeZjxWnXsZdYgQv4TMkyJzWzmBh4h3JiPQ=w1920-rw"
        alt=""
        className="h-[56px] w-full object-cover"
      />
      <Stack
        direction="row"
        gap={4}
        paddingX="120px"
        paddingY="14px"
        width="100%"
        bgcolor="primary.main"
        height="42px"
        alignItems="center"
        justifyContent="center"
      >
        {bannerItems.map((item) => (
          <BannerItem item={item} key={item.title} />
        ))}
      </Stack>
    </Box>
  );
};

const BannerItem = ({ item }) => {
  return (
    <Stack component={Link} to={item.link} direction="row" spacing="6px">
      <Icon icon={item.icon} width="18" height="18" className="text-white" />
      <Typography fontSize="13px" color="background.paper">
        {item.title}
      </Typography>
    </Stack>
  );
};
