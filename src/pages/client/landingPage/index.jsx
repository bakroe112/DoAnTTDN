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
            sx={{
              alignItems: "stretch",
              justifyContent: "center",
              gap: "45px",
              flexWrap: "wrap",
            }}
          >
            {itemHotSale.map((item, index) => (
              <Stack
                key={index}
                sx={{
                  alignItems: "center",
                  justifyContent: "flex-start",
                  gap: "12px",
                  textAlign: "center",
                  width: "120px",
                }}
              >
                <img
                  src={item.image}
                  className="object-cover cursor-pointer"
                  width="60px"
                  height="60px"
                  alt=""
                />
                <Typography
                  variant="h9"
                  sx={{
                    textTransform: "uppercase",
                  }}
                >
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
              "image/ad/bannerTab.jpg"
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

        {/* Ad image */}
        <Box>
          <img
            src="image/banner/ad/1.jpg"
            className="object-cover size-full hover:scale-105 transition rounded-[10px] duration-300 cursor-pointer"
            alt=""
          />
        </Box>

        {/* Product slider */}
        <Box
          sx={{
            backgroundImage: "url('image/banner/productBanner/1.jpg')",
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
            backgroundImage: "url('image/banner/productBanner/1.jpg')",
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
            src="image/banner/ad/2.jpg"
            className="object-cover size-full hover:scale-105 transition rounded-[10px] duration-300 cursor-pointer"
            alt=""
          />
        </Box>

        {/* Product slider */}
        <Box
          sx={{
            backgroundImage: "url('image/banner/productBanner/1.jpg')",
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
            src="image/banner/ad/3.jpg"
            className="object-cover size-full hover:scale-105 transition rounded-[10px] duration-300 cursor-pointer"
            alt=""
          />
        </Box>

        {/* Product slider */}
        <Box
          sx={{
            backgroundImage: "url('image/banner/productBanner/1.jpg')",
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
              src="image/banner/ad/4.jpg"
              className="object-cover size-full hover:scale-105 transition rounded-[10px] duration-300 cursor-pointer"
              alt=""
            />
            <img
              src="image/banner/ad/5.jpg"
              className="object-cover size-full hover:scale-105 transition rounded-[10px] duration-300 cursor-pointer"
              alt=""
            />
            <img
              src="image/banner/ad/6.jpg"
              className="object-cover size-full hover:scale-105 transition rounded-[10px] duration-300 cursor-pointer"
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
    image: "image/ad/sale/1.jpg",
    title: "giờ vàng giá sốc",
  },
  {
    image: "image/ad/sale/2.jpg",
    title: "Tải app",
  },
  {
    image: "image/ad/sale/3.jpg",
    title: "Laptop AI",
  },
  {
    image: "image/ad/sale/4.jpg",
    title: "Trả góp 0%",
  },
  {
    image: "image/ad/sale/5.jpg",
    title: "apple education",
  },
  {
    image: "image/ad/sale/6.jpg",
    title: "Freeship",
  },
  {
    image: "image/ad/sale/7.jpg",
    title: "đổi điểm thpt 2025",
  },
];

const RightComponent = () => (
  <Stack sx={{ gap: "20px" }}>
    <img
      src="image/ad/2.jpg"
      alt=""
      className="size-full object-cover hover:scale-105 transition cursor-pointer"
    />
    <img
      src="image/ad/2.jpg"
      alt=""
      className="size-full object-cover hover:scale-105 transition cursor-pointer"
    />
  </Stack>
);
