import { EmblaCarousel } from "@/components/carousel";
import { BannerItem } from "@/components/carousel/BannerItem";
import { CategoryListItem } from "@/components/categoryList";
import { CustomTabPanel } from "@/components/customTabPanel/CustomTabPanel";
import { ProductSlider } from "@/components/productSlider";
import {
  Box,
  Divider,
  Grid,
  Pagination,
  Stack,
  Tab,
  Tabs,
  Typography,
} from "@mui/material";
import React, { useState } from "react";
import { ProductSection } from "./section/productSection";
import { Icon } from "@iconify-icon/react";
import { ProductCard } from "@/components/productSlider/productCard";
import { HeaderHelmet } from "@/components/header";
import { useDispatch, useSelector } from "react-redux";
import { categoryListIcon } from "@/components/categoryList/CategoryListItem";
import { useNavigate } from "react-router-dom";
import { getAllProduct } from "@/store/product/Action";
const categoryMap = [
  "Laptop",
  "Apple",
  "Màn hình",
  "Gaming Gear",
  "PC",
  "Điện gia dụng",
];
export const LandingPage = () => {
  const products = useSelector((store) => store.products);
  const categories = useSelector((store) => store.categories);
  const navigate = useNavigate();
  const [value, setValue] = useState(0);
  const dispatch = useDispatch();

  React.useEffect(() => {
    dispatch(getAllProduct());
  }, []);

  console.log("product", products);

  //tab handleChang
  const tabHandleChange = (e, newValue) => {
    setValue(newValue);
  };

  const currentCategory = categoryMap[value];
  const filteredProducts = products?.all.filter((p) =>
    p.categories?.some((cat) =>
      cat.name.toLowerCase().includes(currentCategory.toLowerCase())
    )
  );
  //
  const a11yProps = (index) => {
    return {
      id: `${index}`,
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
          count="1"
          list={BannerItem}
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
          {(item) => (
            <img
              src={item.imageUrl}
              alt={item.label}
              key={item.id}
              className="size-full object-cover"
            />
          )}
        </EmblaCarousel>
      </Box>

      {/* * Main LandingPage */}
      <Stack
        component="section"
        sx={{
          bgcolor: "background.neutral",
          padding: "40px 240px",
          gap: "30px",
        }}
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
              borderRadius: "5px 5px 0px 0px",
            }}
          >
            <Tabs
              variant="fullWidth"
              value={value}
              onChange={tabHandleChange}
              sx={{
                bgcolor: "Background.paper",
                borderRadius: "5px 5px 0px 0px",
              }}
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
                    <Typography variant="h5" fontWeight="700">
                      Apple
                    </Typography>
                    <Typography variant="captiontext" fontWeight="600">
                      Giảm sốc {"<"} 20%
                    </Typography>
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
                    <Typography variant="h5" fontWeight="700">
                      Màn hình
                    </Typography>
                    <Typography variant="captiontext" fontWeight="600">
                      Giảm sốc 23%
                    </Typography>
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
                    <Typography variant="h5" fontWeight="700">
                      Gaming Gear
                    </Typography>
                    <Typography variant="captiontext" fontWeight="600">
                      Giảm sốc 43%
                    </Typography>
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
                    <Typography
                      variant="h5"
                      fontWeight="700"
                      sx={{
                        display: "-webkit-box",
                        overflow: "hidden",
                        WebkitLineClamp: 1,
                        WebkitBoxOrient: "vertical",
                      }}
                    >
                      PC + Linh kiện
                    </Typography>
                    <Typography variant="captiontext" fontWeight="600">
                      Giảm sốc 70%
                    </Typography>
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
                    <Typography variant="h5" fontWeight="700">
                      Điện gia dụng
                    </Typography>
                    <Typography variant="captiontext" fontWeight="600">
                      Giảm sốc 50%
                    </Typography>
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
            <ProductSlider products={filteredProducts} />
          </CustomTabPanel>
          <CustomTabPanel tab={value} index={1}>
            <ProductSlider products={filteredProducts} />
          </CustomTabPanel>
          <CustomTabPanel tab={value} index={2}>
            <ProductSlider products={filteredProducts} />
          </CustomTabPanel>
          <CustomTabPanel tab={value} index={3}>
            <ProductSlider products={filteredProducts} />
          </CustomTabPanel>
          <CustomTabPanel tab={value} index={4}>
            <ProductSlider products={filteredProducts} />
          </CustomTabPanel>
          <CustomTabPanel tab={value} index={5}>
            <ProductSlider products={filteredProducts} />
          </CustomTabPanel>
        </Box>

        {/* Categoty slider */}
        <Box
          sx={{ bgcolor: "background.paper", p: "16px", borderRadius: "5px" }}
        >
          <Typography
            variant="h6"
            sx={{ paddingBottom: "20px", fontWeight: 800 }}
          >
            Danh mục nổi bật
          </Typography>

          <EmblaCarousel count={10} list={categories.categories} space="44">
            {(item, index) => (
              <Stack
                sx={{ alignItems: "center", gap: "8px", cursor: "pointer" }}
                onClick={() => navigate(`/shop?categories=${item.name}`)}
              >
                <Icon
                  icon={categoryListIcon[index].icon}
                  width="56"
                  height="56"
                />
                <Typography
                  sx={{
                    fontSize: "14px",
                    fontWeight: 500,
                    textAlign: "center",
                    whiteSpace: "nowrap",
                    overflow: "hidden",
                    textOverflow: "ellipsis",
                    width: "100px",
                  }}
                >
                  {item.name}
                </Typography>
              </Stack>
            )}
          </EmblaCarousel>
        </Box>

        {/* Image tech slider */}
        {/* <Box
          sx={{ bgcolor: "background.paper", p: "16px", borderRadius: "5px" }}
        >
          <Typography
            variant="h6"
            sx={{ paddingBottom: "20px", fontWeight: 800 }}
          >
            Danh mục nổi bật
          </Typography>

          <EmblaCarousel
            count={4}
            list={[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]}
            space="44"
            loop="true"
          >
            {(item) => (
              <Stack sx={{ alignItems: "center", gap: "8px" }}>
                <img
                  src="https://lh3.googleusercontent.com/Cp88WJkAsVHE6gGSoHlem07dslNj7n7f2QyHBso2HVW81tGNr08IOONWZSbZiEUboWDRhsBxBjGa-01uz4XiJnwNH3FQMwOQ=w400-rw"
                  className="object-cover rounded-[10px] hover:scale-105 transition"
                  alt=""
                />
                <Typography
                  sx={{
                    display: "-webkit-box",
                    overflow: "hidden",
                    WebkitLineClamp: 1,
                    WebkitBoxOrient: "vertical",
                  }}
                >
                  Laptop
                </Typography>
              </Stack>
            )}
          </EmblaCarousel>
        </Box> */}

        {/* Ad image */}
        <Box>
          <img
            src="https://lh3.googleusercontent.com/dnzu37gM4r0A_UZUkgJ2_xELYA_RJboYUEv5GZvoVzS15q9kJTJiYPYI1_bJuHfN-V_mQgN-DFWnINIARvACEs75PVlz0AU=w1232-rw"
            className="object-cover size-full hover:scale-105 transition rounded-[10px] duration-300"
            alt=""
          />
        </Box>

        {/* Product slider */}
        <Box
          sx={{
            backgroundImage:
              "url('https://lh3.googleusercontent.com/xskupSpD9GawQhJQMm7O6vs7CehOkGhsXUBc_n0PSO0ZT9dMECEzWeQsyDAMbk_BV-kupn3IYip2hD0xdkC7vn0jjhl6Tcc=w1232')",
            backgroundSize: "cover",
            backgroundPosition: "center",
            backgroundRepeat: "no-repeat",
          }}
        >
          <ProductSection title="Sản phẩm Apple" />
        </Box>

        {/* Product slider */}
        <Box
          sx={{
            backgroundImage:
              "url('https://lh3.googleusercontent.com/xskupSpD9GawQhJQMm7O6vs7CehOkGhsXUBc_n0PSO0ZT9dMECEzWeQsyDAMbk_BV-kupn3IYip2hD0xdkC7vn0jjhl6Tcc=w1232')",
            backgroundSize: "cover",
            backgroundPosition: "center",
            backgroundRepeat: "no-repeat",
          }}
        >
          <ProductSection title="PC" />
        </Box>

        {/* Ad image */}
        <Box>
          <img
            src="https://lh3.googleusercontent.com/_gvYKVfDSEnexBdDanPl4kYr5Za0iU79GXluIjuxBI6d_9oy6DLKUq44J2yV38XAiwm7Zk8jJs3Ep7viPoTckU9W8gnepokatQ=w1232-rw"
            className="object-cover size-full hover:scale-105 transition rounded-[10px] duration-300"
            alt=""
          />
        </Box>

        {/* Product slider */}
        <Box
          sx={{
            backgroundImage:
              "url('https://lh3.googleusercontent.com/xskupSpD9GawQhJQMm7O6vs7CehOkGhsXUBc_n0PSO0ZT9dMECEzWeQsyDAMbk_BV-kupn3IYip2hD0xdkC7vn0jjhl6Tcc=w1232')",
            backgroundSize: "cover",
            backgroundPosition: "center",
            backgroundRepeat: "no-repeat",
          }}
        >
          <ProductSection title="Laptop" />
        </Box>

        {/* Ad image */}
        <Box>
          <img
            src="https://lh3.googleusercontent.com/_gvYKVfDSEnexBdDanPl4kYr5Za0iU79GXluIjuxBI6d_9oy6DLKUq44J2yV38XAiwm7Zk8jJs3Ep7viPoTckU9W8gnepokatQ=w1232-rw"
            className="object-cover size-full hover:scale-105 transition rounded-[10px] duration-300"
            alt=""
          />
        </Box>

        {/* Product slider */}
        <Box
          sx={{
            backgroundImage:
              "url('https://lh3.googleusercontent.com/xskupSpD9GawQhJQMm7O6vs7CehOkGhsXUBc_n0PSO0ZT9dMECEzWeQsyDAMbk_BV-kupn3IYip2hD0xdkC7vn0jjhl6Tcc=w1232')",
            backgroundSize: "cover",
            backgroundPosition: "center",
            backgroundRepeat: "no-repeat",
          }}
        >
          <ProductSection title="Linh kiện máy tính" />
        </Box>

    

        {/* Ad image */}
        <Box>
          <Stack direction="row" sx={{ gap: "24px" }}>
            <img
              src="https://lh3.googleusercontent.com/cuuNbwKuXSbDEC60PYrgUw8HrsOv7IhOAgzQf_FAJQ9PS3VVUhnGqic9v_G3Y160br2R39KGIL_Qk0AtAfd6T2js023830o=w411-rw"
              className="object-cover size-full hover:scale-105 transition rounded-[10px] duration-300"
              alt=""
            />
            <img
              src="https://lh3.googleusercontent.com/2mJvP_eadXIWuZaAMXt388xRld0zMOXtxO1FoK35wYuf341Gvs_E-tG4a1FVw6dzTKfyNMN1nLVrNzgzRkRC_jehSaPfwR4=w411-rw"
              className="object-cover size-full hover:scale-105 transition rounded-[10px] duration-300"
              alt=""
            />
            <img
              src="https://lh3.googleusercontent.com/7IRVxK5KFgNHCmZP5R7J_SqQHXGyKYUXGHSQ9n5YwMTaZr4FOZT9H1gl7FUkSmmQQzORGpHeeHgEF1gwNu5wKEzdsVHe-8MeIQ=w411-rw"
              className="object-cover size-full hover:scale-105 transition rounded-[10px] duration-300"
              alt=""
            />
          </Stack>
        </Box>

        {/* Product section */}
        <Box sx={{ bgcolor: "background.paper", borderRadius: "5px" }}>
          <Stack>
            <Stack
              direction="row"
              sx={{
                justifyContent: "space-between",
                alignItems: "center",
                padding: "20px 24px",
              }}
            >
              <Typography
                variant="h5"
                sx={{
                  color: "primary",
                  fontWeight: 700,
                  textTransform: "uppercase",
                }}
              >
                sản phẩm nổi bật
              </Typography>
              <Stack
                direction="row"
                sx={{
                  alignItems: "center",
                  color: "text.disabled",
                  cursor: "pointer",
                }}
                onClick={() => navigate("/shop")}
              >
                <Typography variant="body2" sx={{ fontWeight: 600 }}>
                  Xem tất cả
                </Typography>
                <Icon
                  icon="solar:alt-arrow-right-linear"
                  width="18"
                  height="18"
                />
              </Stack>
            </Stack>
            <Divider sx={{ bgcolor: "white" }} />

            <Stack
              sx={{
                py: "20px",
                alignItems: "center",
                gap: "24px",
              }}
            >
              <Box sx={{ flexGrow: 1 }}>
                <Grid
                  container
                  spacing={2}
                  columns={25}
                  sx={{
                    justifyContent: "center",
                  }}
                >
                  {products.products.length == 0 ? (
                    <Typography>Đã hết sản phẩm mất rồi...</Typography>
                  ) : (
                    <>
                      {products.products.map((item, index) => (
                        <Grid size="5" key={index}>
                          <ProductCard
                            item={item}
                            height={460}
                            width={240}
                            radius={0}
                          />
                        </Grid>
                      ))}
                    </>
                  )}
                </Grid>
              </Box>
              <Pagination
                color="primary"
                count={19}
                variant="outlined"
                shape="rounded"
                siblingCount={2}
                sx={{
                  "& .MuiPaginationItem-root": {
                    mx: 0.7,
                    fontSize: "14px",
                    fontWeight: 600,
                  },
                }}
              />
            </Stack>
          </Stack>
        </Box>
      </Stack>
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
    title: "Tải app",
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
