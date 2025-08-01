import { productDetailData } from "@/data/ProductDetailData";
import { Icon } from "@iconify-icon/react";
import {
  Avatar,
  Box,
  Breadcrumbs,
  Button,
  Divider,
  Grid,
  Stack,
  Typography,
} from "@mui/material";
import React, { useState } from "react";
import { Link } from "react-router-dom";

export const DetailPage = () => {
  const onHoverImage = {
    outline: 1,
    outlineColor: "primary.main",
    cursor: "pointer",
    borderRadius: "5px",
  };

  const [getImageUrl, setGetImageUrl] = useState("");
  const productInfoImage = productDetailData.productInfo.imageUrl;
  return (
    <Box sx={{ bgcolor: "background.neutral" }}>
      <Box sx={{ p: "20px 240px" }}>
        <Stack sx={{ gap: "30px" }}>
          {/* Head */}
          <Box>
            <Stack sx={{ paddingBottom: "20px" }}>
              <Breadcrumbs
                separator="›"
                aria-label="breadcrumb"
                sx={{
                  fontSize: "24px",

                  a: {
                    fontSize: "16px",
                    color: "primary.light",
                    ":hover": {
                      color: "primary.main",
                    },
                    transition: "0.3s",
                    cursor: "pointer",
                  },
                }}
              >
                <Icon icon="eva:home-outline" width="24" height="24" />

                <Link>Màn hình máy tính</Link>

                <Link>Samsung</Link>
              </Breadcrumbs>
            </Stack>

            <Grid container spacing={3}>
              <Grid
                size={9}
                sx={{
                  bgcolor: "background.paper",
                  p: "16px",
                  borderRadius: "5px",
                }}
              >
                <Stack direction="row" sx={{ gap: "40px", py: "20px" }}>
                  <Box>
                    <Stack sx={{ gap: "20px" }}>
                      <img
                        src={
                          getImageUrl === "" ? productInfoImage : getImageUrl
                        }
                        className="size-full object-cover"
                      />
                      <Stack direction="row" sx={{ gap: "5px" }}>
                        {productDetailData.productDetail.images.map((item) => (
                          <Stack
                            sx={{
                              ":hover": onHoverImage,
                            }}
                            onMouseEnter={() => setGetImageUrl(item.url)}
                          >
                            <img
                              src={item.url}
                              className="object-cover size-[50px]"
                            />
                          </Stack>
                        ))}
                      </Stack>
                      <Divider />
                      <Stack sx={{ gap: "5px" }}>
                        <Typography variant="body2">
                          - Kích thước: 22" (1920 x 1080), Tỷ lệ 16:9
                        </Typography>
                        <Typography variant="body2">
                          - Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V)
                        </Typography>
                        <Typography variant="body2">
                          - Tần số quét: 75Hz , Thời gian phản hồi 5 ms
                        </Typography>
                        <Typography variant="body2">
                          - Hiển thị màu sắc: 16.7 triệu màu
                        </Typography>
                        <Typography variant="body2">
                          - Cổng hình ảnh: 1 x HDMI 1.4, 1 x VGA/D-sub,
                        </Typography>
                      </Stack>
                      <Typography
                        variant="body1"
                        sx={{ color: "primary.light", cursor: "pointer" }}
                      >
                        Xem thông tin chi tiết
                      </Typography>
                      <Stack
                        direction="row"
                        sx={{ gap: "20px", alignItems: "center" }}
                      >
                        <Typography variant="body2">Chia sẻ:</Typography>

                        <Icon
                          icon="arcticons:zalo"
                          width="32"
                          height="32"
                          className="text-[#1435C3]"
                        />
                        <Icon icon="devicon:facebook" width="32" height="32" />
                        <Icon
                          icon="material-symbols:share-outline"
                          width="32"
                          height="32"
                          className="text-[#1435C3]"
                        />
                      </Stack>
                    </Stack>
                  </Box>

                  <Box>
                    <Stack sx={{ gap: "10px" }}>
                      <Typography variant="h4">
                        Màn hình Samsung LS22C310EAEXXV 22" (FHD 1920 x 1080/
                        IPS/ 75Hz/ 5 ms)
                      </Typography>

                      <Stack
                        direction="row"
                        sx={{
                          color: "text.disabled",
                          alignItems: "center",
                        }}
                      >
                        <Stack direction="row" sx={{ gap: "8px" }}>
                          <Typography variant="captiontext">
                            Thương hiệu
                          </Typography>
                          <Typography
                            variant="captiontext"
                            sx={{
                              color: "primary.light",
                              ":hover": {
                                color: "primary.main",
                              },
                              transition: "0.3s",
                              cursor: "pointer",
                            }}
                          >
                            Samsung
                          </Typography>
                        </Stack>
                        <Icon icon="ci:line-m" width="24" height="24" />
                        <Typography variant="captiontext">
                          SKU: 230300172
                        </Typography>
                      </Stack>

                      <Stack>
                        <Typography
                          variant="h6"
                          sx={{
                            color: "primary.main",
                            fontWeight: 800,
                            cursor: "pointer",
                          }}
                        >
                          2.390.000₫
                        </Typography>

                        <Stack
                          direction="row"
                          sx={{
                            gap: "5px",
                            paddingX: "4px",
                            cursor: "pointer",
                          }}
                        >
                          <Typography
                            variant="captiontext"
                            sx={{
                              color: "text.disabled",
                              textDecoration: " line-through",
                            }}
                          >
                            2.559.000₫{" "}
                          </Typography>
                          <Typography
                            variant="captiontext"
                            sx={{ color: "error.main" }}
                          >
                            -7%
                          </Typography>
                        </Stack>
                      </Stack>

                      <Stack spacing={3}>
                        <Divider />
                        <Button variant="contained" size="large">
                          Liên hệ
                        </Button>
                        <Divider />
                      </Stack>

                      <Stack sx={{ gap: "8px" }}>
                        <Typography variant="h7" sx={{ fontWeight: 600 }}>
                          Khuyến mãi liên quan
                        </Typography>

                        <Stack sx={{ marginLeft: "-26px", gap: "8px" }}>
                          <Stack direction="row">
                            <Typography
                              component={"li"}
                              sx={{
                                textAlign: "-webkit-match-parent",
                                span: {
                                  color: "error.main",
                                  fontWeight: 700,
                                },
                              }}
                            >
                              Nhập mã <strong>08WEEKND50</strong> giảm{" "}
                              <span>50.000đ</span> cho đơn hàng từ 2.000.000đ có
                              sản phẩm này
                            </Typography>
                          </Stack>
                          <Stack direction="row">
                            <Typography
                              component={"li"}
                              sx={{
                                textAlign: "-webkit-match-parent",
                                span: {
                                  color: "error.main",
                                  fontWeight: 700,
                                },
                              }}
                            >
                              Nhập mã <strong>08WEEKND100</strong> giảm{" "}
                              <span>100.000đ</span> cho đơn hàng từ 8.000.000đ
                              có sản phẩm này
                            </Typography>
                          </Stack>
                          <Stack direction="row">
                            <Typography
                              component={"li"}
                              sx={{
                                textAlign: "-webkit-match-parent",
                                span: {
                                  color: "error.main",
                                  fontWeight: 700,
                                },
                              }}
                            >
                              Nhập mã <strong>08WEEKND200</strong> giảm{" "}
                              <span>200.000đ</span> cho đơn hàng từ 18.000.000đ
                              có sản phẩm này
                            </Typography>
                          </Stack>
                          <Stack direction="row">
                            <Typography
                              component={"li"}
                              sx={{
                                textAlign: "-webkit-match-parent",
                                span: {
                                  color: "error.main",
                                  fontWeight: 700,
                                },
                              }}
                            >
                              Giảm đến
                              <span> 1.000.000đ </span>cho Học sinh - Sinh viên,
                              Giáo viên và Giảng viên.
                            </Typography>
                          </Stack>
                          <Stack direction="row">
                            <Typography
                              component={"li"}
                              sx={{
                                textAlign: "-webkit-match-parent",
                                span: {
                                  color: "error.main",
                                  fontWeight: 700,
                                },
                              }}
                            >
                              Nhập mã <strong>QRPV3</strong>
                              <span> 200.000đ </span>khi thanh toán qua VNPAY.
                            </Typography>
                          </Stack>
                          <Stack direction="row">
                            <Typography
                              component={"li"}
                              sx={{
                                textAlign: "-webkit-match-parent",
                                span: {
                                  color: "error.main",
                                  fontWeight: 700,
                                },
                              }}
                            >
                              Nhận được mã giảm giá
                              <span> 200.000đ </span>áp dụng cho các sản phẩm
                              Gear khi mua PC Phong Vũ Gaming
                            </Typography>
                          </Stack>
                        </Stack>
                      </Stack>
                    </Stack>
                  </Box>
                </Stack>
              </Grid>

              <Grid size={3}>
                <Stack spacing={2}>
                  <Stack
                    direction="row"
                    sx={{
                      bgcolor: "background.paper",
                      p: "16px ",
                      gap: "8px",
                      borderRadius: "5px",
                    }}
                  >
                    <Avatar
                      sx={{
                        width: 48,
                        height: 48,
                        bgcolor: "white",
                        border: 1,
                        borderColor: "common_light.darker",
                      }}
                    >
                      <img
                        src="https://lh3.googleusercontent.com/qOnchEYD7No58bjEQs5pf_05IV-0DmoaCmEFXD007VHs5cn16LZ6PC98IlY3OiBL9UXsEwNzwiVHRrvSDMQ"
                        className="size-full object-contain"
                      />
                    </Avatar>
                    <Typography
                      variant="h8"
                      sx={{ textTransform: "uppercase" }}
                    >
                      CÔNG TY CỔ PHẦN THƯƠNG MẠI DỊCH VỤ
                      <Icon
                        icon="ph:seal-check-fill"
                        width="24"
                        height="24"
                        className="text-[#00e202] mb-[-5px] ml-2"
                      />
                    </Typography>
                  </Stack>

                  <Stack
                    sx={{
                      bgcolor: "background.paper",
                      p: "16px ",
                      gap: "8px",
                      borderRadius: "5px",
                    }}
                  >
                    <Typography variant="h7">Chính sách bán hàng</Typography>
                    <Stack
                      direction="row"
                      sx={{ alignItems: "center", gap: "20px" }}
                    >
                      <Icon
                        icon="fa7-solid:shipping-fast"
                        width="32"
                        height="32"
                        className="text-[#003fe2]"
                      />
                      <Typography variant="body1">
                        Miễn phí giao hàng cho đơn hàng từ 5 triệu
                      </Typography>
                    </Stack>
                    <Stack
                      direction="row"
                      sx={{ alignItems: "center", gap: "20px" }}
                    >
                      <Icon
                        icon="iconamoon:shield-yes-light"
                        width="36"
                        height="36"
                        className="text-[#003fe2]"
                      />
                      <Typography variant="body1">
                        Cam kết hàng chính hãng 100%
                      </Typography>
                    </Stack>
                    <Stack
                      direction="row"
                      sx={{ alignItems: "center", gap: "20px" }}
                    >
                      <Icon
                        icon="carbon:ibm-data-product-exchange"
                        width="32"
                        height="32"
                        className="text-[#003fe2]"
                      />
                      <Typography variant="body1">
                        Đổi trả trong vòng 10 ngày
                      </Typography>
                    </Stack>
                  </Stack>
                </Stack>
              </Grid>
            </Grid>
          </Box>

          {/* Body */}
          <Box
            sx={{
              bgcolor: "background.paper",
              p: "20px",
              borderRadius: "5px",
            }}
          >
            <Typography variant="h3" sx={{ marginBottom: "16px" }}>
              Mô tả sản phẩm
            </Typography>
            <Box
              dangerouslySetInnerHTML={{
                __html: productDetailData.productDetail.description,
              }}
              sx={{
                ".image": {
                  display: "table",
                  clear:"both",
                  alignItems:"center",
                  margin:"10px auto",
                  minWidth:"50px"
                },
              }}
            ></Box>
          </Box>
        </Stack>
      </Box>
    </Box>
  );
};
