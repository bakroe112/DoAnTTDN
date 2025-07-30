import React from "react";
import { Box, Stack, Typography } from "@mui/material";
import { HeaderHelmet } from "@/components/header";
import { EmblaCarousel } from "@/components/carousel";
import { BannerItem } from "@/components/carousel/BannerItem";
import { CategoryListItem } from "@/components/categoryList";

export const LandingPage = () => {
  return (
    <Box component="section" sx={{}}>
      <HeaderHelmet title={"Home page"} />

      {/* * Banner */}
      <Box sx={{ height: "100%", position: "relative" }}>
        <EmblaCarousel
          LeftComponent={
            <Box
              sx={{
                paddingLeft: "240px",
              }}
            >
              <CategoryListItem sx={{ position: "relative" }} />
            </Box>
          }
          RightComponent={
            <Box
              sx={{
                paddingRight: "240px",
              }}
            >
              <RightComponent />
            </Box>
          }
        >
          {BannerItem.map((item) => (
            <Box
              key={item.id}
              sx={{
                flex: "0 0 auto",
                minWidth: 0,
              }}
            >
              <img
                src={item.imageUrl}
                alt={item.label}
                className="size-full object-cover"
              />
            </Box>
          ))}
        </EmblaCarousel>
      </Box>

      <Box component="section" sx={{bgcolor:"background.neutral",padding:"40px 240px"}}>
       <Box sx={{bgcolor:"background.paper",p:"16px"}}>
         <Typography variant="subtitle1" sx={{}}>ƯU ĐÃI HOT</Typography>
         <Stack
           direction="row"
           sx={{ alignItems: "center", justifyContent: "center" ,gap:"20px"}}
         >
           {itemHotSale.map((item, index) => (
             <Stack
               key={index}
               sx={{ alignItems: "center", justifyContent: "space-between" ,gap:"12px"}}
             >
               <img
                 src={item.image}
                 className="object-cover"
                 width="50px"
                 height="50px"
                 alt=""
               />
               <Typography>{item.title}</Typography>
             </Stack>
           ))}
         </Stack>
       </Box>
      </Box>
    </Box>
  );
};

const itemHotSale = [
  {
    image:
      "https://lh3.googleusercontent.com/BDKc0cNqD9aFutr_P2Td-pDs8m1x2nmGpNq8ttDzkIv23YtMeLeHuYGXcBziKgXlrjEcDp-beciucZD3EAkM2cdik3YTPSRQ=rw",
    title: "giờ vàng giá sốc",
  },
  {
    image:
      "https://lh3.googleusercontent.com/J1R3a7rFlStPeRg5iGUWphLKG627H_JMsz2YJQ0u0MNmYg0X1xmhIcsEZX8bkiWmzeU5bApIcEMJ1SLQW-lRbaOaR0GcZV0=rw",
    title: "Tải app Phong vũ",
  },
  {
    image:
      "https://lh3.googleusercontent.com/H3q2rUUzeXEsb817k2mm2ZXt8jNOlp17CCsTtyC83qLg9CP6ogtgDmSvB9d0AphEZdZKs04FijIb3IAcpd6xIaNVOTZbOdkM=rw",
    title: "Laptop AI",
  },
  {
    image:
      "https://lh3.googleusercontent.com/9kExCsjLcU2f-rbsGYpklMxfBvkKXRSpopEexfyNWWnMnGqXvX6vteCTpE4OMp3VMu5JJbmD78sy0LYDpxRnNelmtd6A0QY=rw",
    title: "ưu đãi học sinh sinh viên ",
  },
  {
    image:
      "https://lh3.googleusercontent.com/qCWEulBvX_TsERCbu6DpECYHF7a0alHciZcH5kJZgl6VVTnF-kPo0B2vI0J0Jflda6ISGj4emAdwouxdZaqupcF6Z9EYu9Ep=rw",
    title: "Trả góp 0%",
  },
  {
    image:
      "https://lh3.googleusercontent.com/KMw4OZjfx4yRWiq4QnIKsJBF3YOfRmHGgEUofyd7wheHqJCGBxYoNLU46NFKwaNyFanj6rO4EBF5deMb4bsR72hfNunQ0TLA=rw",
    title: "apple education",
  },
  {
    image:
      "https://lh3.googleusercontent.com/-yC8R_E5UsZelRrsPPLuBUNmoUIsNLaueLi64i3rfQa0a_3OvZ5SvVi-DnnyYnhHCbcbiUU1QqTRVjts5fqfKciOyMDDacv9=rw",
    title: "Freeship",
  },
  {
    image:
      "https://lh3.googleusercontent.com/jggsBXIEAczwOHojMefL4fmhFrsmhHDm4FMf9QNbTaH3jk6hg8BkVcPC9sS-rcVWPM0g4YD84xYYTYmay5hXG0aRGeGHen1B4A=rw",
    title: "đổi điểm thpt 2025",
  },
];

const RightComponent = () => (
  <Stack sx={{ gap: "20px" }}>
    <img
      src="https://lh3.googleusercontent.com/orGNh2OK5Wf2oy4Px2ChYBhdG-Orl-TzmSpTzuVBC6Jz-BAjHPmQ2xo3MF_XG9Zlyz6mqfsNdnGV7TvdiY9yUc5IrmMGqKAW=w300-rw"
      alt=""
      className="size-full object-cover hover:scale-105 transition"
    />
    <img
      src="https://lh3.googleusercontent.com/ZLwUel1VKwiSYHcrJXI6qCzTXXeTMe0qDtKcOTV93PKnhliPc52gn3JI-hPPNpMy5pH6PYs9Ac4F3Qwb6sev2D61qJnfGVM=w300-rw"
      alt=""
      className="size-full object-cover hover:scale-105 transition"
    />
  </Stack>
);
