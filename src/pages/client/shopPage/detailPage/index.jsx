import { Icon } from "@iconify-icon/react";
import {
  Avatar,
  Box,
  Breadcrumbs,
  Button,
  CircularProgress,
  Divider,
  Grid,
  Paper,
  Stack,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Typography,
} from "@mui/material";
import React, { useState } from "react";
import { Link, useNavigate, useParams } from "react-router-dom";
import { ProductSection } from "../../landingPage/section/productSection";
import { useDispatch, useSelector } from "react-redux";
import { getProductByKey } from "@/store/product/Action";
import addCart from "@/function/addCart";
import { useStateContext } from "@/context";

const decodeUnicode = (str = "") => {
  return str
    .replace(/\\u003c/g, "<")
    .replace(/\\u003e/g, ">")
    .replace(/\\u0026/g, "&")
    .replace(/\\"/g, '"'); // xử lý dấu "
};

export const DetailPage = () => {
  const navigate = useNavigate();
  const onHoverImage = {
    outline: 1,
    outlineColor: "primary.main",
    cursor: "pointer",
    borderRadius: "5px",
  };

  const formatPrice = new Intl.NumberFormat("vi-VN");
  const [onOpenDetail, setOnOpenDetail] = useState(true);
  const [quantityValue, setQuantityValue] = React.useState(1);
  const { cart, setCart } = useStateContext();
  const { id } = useParams();
  const product = useSelector((store) => store.products);
  const dispatch = useDispatch();

  React.useEffect(() => {
    dispatch(getProductByKey(id));
  }, []);
  const [getImageUrl, setGetImageUrl] = useState("");
  // console.log("product", product);
  return (
    <>
      {product.loading_product == true ? (
        <Stack
          sx={{
            height: "100vh",
            width: "100%",
            alignItems: "center",
            justifyContent: "center",
            position: "absolute",
            top: 0,
            left: 0,
            backgroundColor: "background.paper",
            zIndex: 10000,
          }}
        >
          <CircularProgress />
        </Stack>
      ) : (
        <>
          <Box sx={{ bgcolor: "background.neutral" }}>
            <Box sx={{ p: "20px 240px" }}>
              <Stack sx={{ gap: "30px" }}>
                {/* Top */}
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
                                getImageUrl === ""
                                  ? product.product?.image_url
                                  : getImageUrl
                              }
                              className="size-full object-cover"
                            />
                            <Stack direction="row" sx={{ gap: "5px" }}>
                              {product.product?.images.map((item) => (
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
                            <Stack
                              sx={{ gap: "5px", p: "8px" }}
                              dangerouslySetInnerHTML={{
                                __html: decodeUnicode(
                                  product.product?.short_description
                                ),
                              }}
                            ></Stack>
                            <Typography
                              variant="body2"
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
                                className="text-[#1435C3] cursor-pointer"
                              />
                              <Icon
                                icon="devicon:facebook"
                                width="32"
                                height="32"
                                className="cursor-pointer"
                              />
                              <Icon
                                icon="material-symbols:share-outline"
                                width="32"
                                height="32"
                                className="text-[#1435C3] cursor-pointer"
                              />
                            </Stack>
                          </Stack>
                        </Box>

                        <Box p="10px">
                          <Stack sx={{ gap: "10px" }}>
                            <Typography variant="h4">
                              {product.product?.name}
                              {/* Màn hình Samsung LS22C310EAEXXV 22" (FHD 1920 x
                              1080/ IPS/ 75Hz/ 5 ms) */}
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
                                  {product.product?.brandName}
                                  {/* Samsung */}
                                </Typography>
                              </Stack>
                              <Icon icon="ci:line-m" width="24" height="24" />
                              <Typography variant="captiontext">
                                SKU: {product.product?.sku}
                              </Typography>
                              <Icon icon="ci:line-m" width="24" height="24" />
                              <Typography variant="captiontext">
                                Số lượng: {product.product?.quantity}
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
                                {formatPrice.format(product.product?.sell_price)}
                                ₫
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
                                  {formatPrice.format(
                                    product.product?.supplier_retail_price
                                  )}
                                  ₫
                                </Typography>
                                <Typography
                                  variant="captiontext"
                                  sx={{ color: "error.main" }}
                                >
                                  - {product.product?.discount_amount}%
                                </Typography>
                              </Stack>
                            </Stack>

                            <Stack spacing={3}>
                              <Divider />
                              <Button
                                variant="contained"
                                size="large"
                                onClick={() => {
                                  addCart(
                                    cart,
                                    setCart,
                                    product.product,
                                    quantityValue
                                  );
                                  navigate("/checkout");
                                }}
                              >
                                Thêm vào giỏ hàng
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
                                    variant="body2"
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
                                    <span>50.000đ</span> cho đơn hàng từ
                                    2.000.000đ có sản phẩm này
                                  </Typography>
                                </Stack>
                                <Stack direction="row">
                                  <Typography
                                    variant="body2"
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
                                    <span>100.000đ</span> cho đơn hàng từ
                                    8.000.000đ có sản phẩm này
                                  </Typography>
                                </Stack>
                                <Stack direction="row">
                                  <Typography
                                    variant="body2"
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
                                    <span>200.000đ</span> cho đơn hàng từ
                                    18.000.000đ có sản phẩm này
                                  </Typography>
                                </Stack>
                                <Stack direction="row">
                                  <Typography
                                    variant="body2"
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
                                    <span> 1.000.000đ </span>cho Học sinh - Sinh
                                    viên, Giáo viên và Giảng viên.
                                  </Typography>
                                </Stack>
                                <Stack direction="row">
                                  <Typography
                                    variant="body2"
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
                                    <span> 200.000đ </span>khi thanh toán qua
                                    VNPAY.
                                  </Typography>
                                </Stack>
                                <Stack direction="row">
                                  <Typography
                                    variant="body2"
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
                                    <span> 200.000đ </span>áp dụng cho các sản
                                    phẩm Gear khi mua PC Phong Vũ Gaming
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
                          <Typography variant="h7">
                            Chính sách bán hàng
                          </Typography>
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

                {/* Middle */}
                <Grid container spacing={3}>
                  <Grid size={8}>
                    <Box
                      sx={{
                        bgcolor: "background.paper",
                        p: "20px",
                        borderRadius: "5px",
                        maxHeight: onOpenDetail == true ? "800px" : "100%",
                        overflow: "hidden",
                        transition: "0.3s",
                      }}
                    >
                      <Typography
                        variant="h4"
                        sx={{ marginBottom: "16px", fontWeight: "700" }}
                      >
                        Mô tả sản phẩm
                      </Typography>
                      <Box
                        dangerouslySetInnerHTML={{
                          __html: decodeUnicode(product.product?.description),
                        }}
                        sx={{
                          ".image": {
                            display: "table",
                            textAlign: "center",
                            margin: "10px auto",
                            minWidth: "50px",
                            bgcolor: "background.neutral",
                          },
                          figcaption: {
                            padding: "9px",
                          },
                        }}
                      ></Box>
                    </Box>
                    {!product.product?.description == "" && (
                      <Stack
                        direction="row"
                        sx={{
                          bgcolor: "background.paper",
                          p: "20px",
                          color: "primary.main",
                          justifyContent: "center",
                        }}
                      >
                        <Stack
                          direction="row"
                          sx={{
                            cursor: "pointer",
                            alignItems: "center",
                            gap: "3px",
                          }}
                          onClick={() => setOnOpenDetail(!onOpenDetail)}
                        >
                          <Typography variant="body2">
                            {onOpenDetail == true
                              ? "Xem thêm nội dung"
                              : "Thu gọn nội dung"}
                          </Typography>
                          {onOpenDetail == true ? (
                            <Icon
                              icon="solar:alt-arrow-down-line-duotone"
                              width="16"
                              height="16"
                            />
                          ) : (
                            <Icon
                              icon="solar:alt-arrow-up-line-duotone"
                              width="16"
                              height="16"
                            />
                          )}
                        </Stack>
                      </Stack>
                    )}
                  </Grid>

                  <Grid size={4}>
                    <Box
                      sx={{
                        bgcolor: "background.paper",
                        p: "20px",
                        borderRadius: "5px",
                      }}
                    >
                      <Typography variant="h4" sx={{ fontWeight: "700" }}>
                        Thông tin chi tiết
                      </Typography>

                      {/* Table */}
                      <Paper sx={{ overflow: "hidden" }}>
                        <TableContainer sx={{ maxHeight: "600px" }}>
                          <Table sx={{ minWidth: 300 }}>
                            {/* table head */}
                            <TableHead>
                              <TableRow>
                                <TableCell></TableCell>
                                <TableCell align="right"></TableCell>
                              </TableRow>
                            </TableHead>

                            {/* table body */}
                            <TableBody>
                              {product.product?.attributes.map((item) => (
                                <TableRow
                                  sx={{
                                    "&:last-child td, &:last-child th": {
                                      border: 0,
                                    },
                                    ".MuiTableCell-root": {
                                      textAlign: "left",
                                      color: item.value === "" && "#82869e",
                                      bgcolor:
                                        item.value === "" &&
                                        "background.neutral",
                                      fontWeight: item.value === "" && 700,
                                      fontSize: "15px",
                                    },
                                  }}
                                >
                                  <TableCell component="th" scope="row">
                                    {item.name}
                                  </TableCell>
                                  <TableCell
                                    align="right"
                                    dangerouslySetInnerHTML={{
                                      __html: item.value,
                                    }}
                                  ></TableCell>
                                </TableRow>
                              ))}
                            </TableBody>
                          </Table>
                        </TableContainer>
                      </Paper>
                    </Box>
                  </Grid>
                </Grid>

                {/* Bottom */}
                <Box sx={{ bgcolor: "background.paper" }}>
                  <ProductSection
                    title={product.product?.categories[0].name}
                    colorFont="black"
                    flag={true}
                  />
                </Box>
              </Stack>
            </Box>
          </Box>
        </>
      )}
    </>
  );
};
