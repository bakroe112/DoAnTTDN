import { EmblaCarousel } from "@/components/carousel";
import { BannerItem } from "@/components/carousel/BannerItem";
import { CategoryListItem } from "@/components/categoryList";
import { CustomTabPanel } from "@/components/customTabPanel/CustomTabPanel";
import { HeaderHelmet } from "@/components/header";
import { ProductSlider } from "@/components/productSlider";
import { Box, Stack, Tab, Tabs, Typography } from "@mui/material";
import React, { useState } from "react";

export const LandingPage = () => {
  const [value, setValue] = useState(0);
  const handleChange = (e, newValue) => {
    setValue(newValue);
  };
  const a11yProps = (index) => {
    return {
      id: `${index}`,
      " ": `${index}`,
    };
  };

  return (
    <Box component="section" sx={{}}>
      <HeaderHelmet title={"Home page"} />

      {/* * Banner */}
      <Box sx={{ height: "100%", position: "relative" }}>
        <EmblaCarousel
          dot="true"
          loop="true"
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

      {/* Sale */}
      <Box
        component="section"
        sx={{ bgcolor: "background.neutral", padding: "40px 240px" }}
      >
        {/* Sale slider */}
        <Box
          sx={{ bgcolor: "background.paper", p: "16px", borderRadius: "5px" }}
        >
          <Typography
            variant="h6"
            sx={{ paddingBottom: "20px", fontWeight: 800 }}
          >
            ƯU ĐÃI HOT
          </Typography>
          <Stack
            direction="row"
            sx={{ alignItems: "center", justifyContent: "center", gap: "45px" }}
          >
            {itemHotSale.map((item, index) => (
              <Stack
                key={index}
                sx={{
                  alignItems: "center",
                  justifyContent: "space-between",
                  gap: "12px",
                  textAlign: "center",
                }}
              >
                <img
                  src={item.image}
                  className="object-cover cursor-pointer"
                  width="70px"
                  height="70px"
                  alt=""
                />
                <Typography variant="h9" sx={{ textTransform: "uppercase" }}>
                  {item.title}
                </Typography>
              </Stack>
            ))}
          </Stack>
        </Box>

        {/* Product item sale slider */}
        <Box
          sx={{
            width: "100%",
            mt: "30px",
            backgroundImage: `url(
              "https://lh3.googleusercontent.com/SJsmGX8n_CnmPVRxLNJ9LGylqwyBL1gBTJuQUfkxfOcF_4v8Z4ALvmxlI51aeUhbnLcHDolkwnxPvq_g2CbNwFU9hG0lmjE=rw-w1920"
            )`,
            backgroundSize: "contain",
            backgroundPosition: "center",
            backgroundRepeat: "no-repeat",
          }}
        >
          <Box
            sx={{
              bgcolor: "white",
            }}
          >
            <Tabs
              variant="fullWidth"
              value={value}
              onChange={handleChange}
              sx={{ bgcolor: "Background.paper" }}
              selectionFollowsFocus
              TabIndicatorProps={{ style: { display: "none" } }}
            >
              <Tab
                label={
                  <Box>
                    <Typography variant="h5" fontWeight="700">
                      Laptop
                    </Typography>
                    <Typography variant="captiontext" fontWeight="600">
                      Giảm sốc 40%
                    </Typography>
                  </Box>
                }
                {...a11yProps(0)}
                sx={{
                  "&.Mui-selected": {
                    color: "#fff",
                    bgcolor: "#EC3D36",
                  },
                }}
              />
              <Tab
                label={
                  <Box>
                    <Typography variant="h5" fontWeight="700">Linh kiện</Typography>
                    <Typography variant="captiontext" fontWeight="600">Giảm sốc 65%</Typography>
                  </Box>
                }
                sx={{
                  "&.Mui-selected": {
                    color: "#fff",
                    bgcolor: "#EC3D36",
                  },
                }}
                {...a11yProps(1)}
              />
              <Tab
                label={
                  <Box>
                    <Typography variant="h5" fontWeight="700">Màn hình</Typography>
                    <Typography variant="captiontext" fontWeight="600">Giảm sốc 23%</Typography>
                  </Box>
                }
                sx={{
                  "&.Mui-selected": {
                    color: "#fff",
                    bgcolor: "#EC3D36",
                  },
                }}
                {...a11yProps(2)}
              />
              <Tab
                label={
                  <Box>
                    <Typography variant="h5" fontWeight="700">Gear</Typography>
                    <Typography variant="captiontext" fontWeight="600">Giảm sốc 43%</Typography>
                  </Box>
                }
                sx={{
                  "&.Mui-selected": {
                    color: "#fff",
                    bgcolor: "#EC3D36",
                  },
                }}
                {...a11yProps(3)}
              />
              <Tab
                label={
                  <Box>
                    <Typography variant="h5" fontWeight="700">Camera - Phụ kiện</Typography>
                    <Typography variant="captiontext" fontWeight="600">Giảm sốc 70%</Typography>
                  </Box>
                }
                sx={{
                  "&.Mui-selected": {
                    color: "#fff",
                    bgcolor: "#EC3D36",
                  },
                }}
                {...a11yProps(4)}
              />
              <Tab
                label={
                  <Box>
                    <Typography variant="h5" fontWeight="700">Điện gia dụng</Typography>
                    <Typography variant="captiontext" fontWeight="600">Giảm sốc 50%</Typography>
                  </Box>
                }
                sx={{
                  "&.Mui-selected": {
                    color: "#fff",
                    bgcolor: "#EC3D36",
                  },
                }}
                {...a11yProps(5)}
              />
            </Tabs>
          </Box>

          <CustomTabPanel tab={value} index={0}>
            <ProductSlider />
          </CustomTabPanel>
          <CustomTabPanel tab={value} index={1}>
            <ProductSlider />
          </CustomTabPanel>
          <CustomTabPanel tab={value} index={2}>
            <ProductSlider />
          </CustomTabPanel>
          <CustomTabPanel tab={value} index={3}>
            <ProductSlider />
          </CustomTabPanel>
          <CustomTabPanel tab={value} index={4}>
            <ProductSlider />
          </CustomTabPanel>
          <CustomTabPanel tab={value} index={5}>
            <ProductSlider />
          </CustomTabPanel>
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
