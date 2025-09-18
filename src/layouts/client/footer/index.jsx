import { Icon } from "@iconify-icon/react";
import { Box, Divider, Grid, Stack, Typography } from "@mui/material";
import React from "react";

export const ClientFooter = () => {
  const styleHover = {
    ":hover": {
      color: "primary.main",
    },
    transition: "0.3s",
    cursor: "pointer",
  };
  return (
    <Box component="footer">
      <Divider sx={{ bgcolor: "primary.main", borderBottomWidth: 3 }} />

      <Box sx={{ px: "240px" }}>
        <Grid container columns={25} sx={{ p: "20px" }}>
          <Grid size={5}>
            <Stack sx={{ gap: "16px" }}>
              <Typography variant="h8">Chính sách mua hàng</Typography>
              <Stack sx={{ gap: "8px", color: "text.secondary" }}>
                <Typography variant="captiontext" sx={styleHover}>
                  Thẻ ưu đãi
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Hướng dẫn mua online
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Ưu đãi dành cho Doanh nghiệp
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Chính sách trả góp
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Dịch vụ sửa chữa
                </Typography>
              </Stack>
            </Stack>
          </Grid>
          <Grid size={5}>
            <Stack sx={{ gap: "16px" }}>
              <Typography variant="h8">Hỗ trợ Khách hàng</Typography>
              <Stack sx={{ gap: "8px", color: "text.secondary" }}>
                <Typography variant="captiontext" sx={styleHover}>
                  Thẻ ưu đãi
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Hướng dẫn mua online
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Ưu đãi dành cho Doanh nghiệp
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Chính sách trả góp
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Dịch vụ sửa chữa
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Dịch vụ lắp đặt và nâng cấp PC/ Laptop tại cửa hàng & TTBH
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Dịch vụ sửa chữa
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Dịch vụ sửa chữa
                </Typography>
              </Stack>
            </Stack>
          </Grid>
          <Grid size={5}>
            <Stack sx={{ gap: "16px" }}>
              <Typography variant="h8">Thông tin</Typography>
              <Stack sx={{ gap: "8px", color: "text.secondary" }}>
                <Typography variant="captiontext" sx={styleHover}>
                  Thẻ ưu đãi
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Hướng dẫn mua online
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Ưu đãi dành cho Doanh nghiệp
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Chính sách trả góp
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Dịch vụ sửa chữa
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Dịch vụ sửa chữa
                </Typography>
                <Typography variant="captiontext" sx={styleHover}>
                  Dịch vụ sửa chữa
                </Typography>
              </Stack>
            </Stack>
          </Grid>
          <Grid size={5}>
            <Stack sx={{ gap: "16px" }}>
              <Typography variant="h8">Cộng đồng</Typography>
              <Stack sx={{ gap: "8px", color: "text.secondary" }}>
                <Typography variant="captiontext">
                  Gọi mua hàng (miễn phí){" "}
                  <Typography
                    variant="captiontext"
                    sx={{ ...styleHover, color: "primary.light" }}
                  >
                    18006767
                  </Typography>
                </Typography>
                <Typography variant="captiontext">
                  Gọi chăm sóc{" "}
                  <Typography
                    variant="captiontext"
                    sx={{ ...styleHover, color: "primary.light" }}
                  >
                    18006767
                  </Typography>
                </Typography>
                <Stack
                  direction="row"
                  sx={{ justifyItems: "center", gap: "5px", cursor: "pointer" }}
                >
                  <Icon icon="devicon:facebook" width="18" height="18" />
                  <Typography variant="captiontext" sx={styleHover}>
                    Facebook
                  </Typography>
                </Stack>
                <Stack
                  direction="row"
                  sx={{ justifyItems: "center", gap: "5px", cursor: "pointer" }}
                >
                  <Icon icon="logos:youtube-icon" width="18" height="18" />
                  <Typography variant="captiontext" sx={styleHover}>
                    Media
                  </Typography>
                </Stack>
                <Stack
                  direction="row"
                  sx={{ justifyItems: "center", gap: "5px", cursor: "pointer" }}
                >
                  <Icon
                    icon="arcticons:zalo"
                    width="18"
                    height="18"
                    className="text-[#1435C3]"
                  />
                  <Typography variant="captiontext" sx={styleHover}>
                    Zalo
                  </Typography>
                </Stack>
              </Stack>
            </Stack>
          </Grid>
          <Grid size={5}>
            <Stack sx={{ gap: "16px" }}>
              <Typography variant="h8">Email liên hệ</Typography>
              <Stack sx={{ gap: "8px", color: "text.secondary" }}>
                <Typography variant="captiontext">
                  Hỗ trợ Khách hàng:
                </Typography>
                <Typography
                  variant="captiontext"
                  sx={{ ...styleHover, color: "primary.light" }}
                >
                  cskh@abcbs.vn
                </Typography>
                <Typography variant="captiontext">Liên hệ báo giá:</Typography>
                <Typography
                  variant="captiontext"
                  sx={{ ...styleHover, color: "primary.light" }}
                >
                  baogia@abcds.vn
                </Typography>
                <Typography variant="captiontext">
                  Hợp tác phát triển:
                </Typography>
                <Typography
                  variant="captiontext"
                  sx={{ ...styleHover, color: "primary.light" }}
                >
                  hoptac@abcds.vn
                </Typography>
              </Stack>
            </Stack>
          </Grid>
        </Grid>

        <Stack direction="row" spacing={25}>
          <Stack>
            <Typography variant="h8">Phương thức thanh toán</Typography>
            <Stack direction="row" sx={{ py: "16px", gap: "16px" }}>
              <Stack sx={{ gap: "8px" }}>
                <Icon icon="solar:qr-code-linear" width="36" height="36" />
                <Typography variant="captiontext">QR Code</Typography>
              </Stack>
              <Stack sx={{ gap: "8px" }}>
                <Icon icon="solar:wad-of-money-linear" width="36" height="36" />
                <Typography variant="captiontext">Tiền mặt</Typography>
              </Stack>
              <Stack sx={{ gap: "8px" }}>
                <Icon icon="solar:clock-circle-linear" width="36" height="36" />
                <Typography variant="captiontext">Trả góp</Typography>
              </Stack>
              <Stack sx={{ gap: "8px" }}>
                <Icon icon="solar:card-linear" width="36" height="36" />
                <Stack>
                  <Typography variant="captiontext">Internet</Typography>
                  <Typography variant="captiontext">Banking</Typography>
                </Stack>
              </Stack>
            </Stack>
          </Stack>
          <Stack sx={{ gap: "16px" }}>
            <Typography variant="h8">
              Danh sách các ngân hàng thanh toán online
            </Typography>
            <img
              src="https://shopfront-cdn.tekoapis.com/static/vnpay_banks.png"
              className="object-cover"
              alt=""
            />
          </Stack>
        </Stack>
      </Box>

      <Box bgcolor="#E9EDF2">
        <Box sx={{ p: "10px 240px" }}>
          <Grid container spacing={2} columns={12} sx={{ p: "20px" }}>
            <Grid size={5}>
              <Stack sx={{ gap: "16px" }}>
                <Typography variant="h8" sx={{ textTransform: "uppercase" }}>
                  Công ty cổ phần thương mại - dịch vụ
                </Typography>
                <Stack sx={{ gap: "8px", color: "text.secondary" }}>
                  <Typography variant="captiontext">
                    © 1997 - 2020 Công Ty Cổ Phần Thương Mại - Dịch vụ Lê Ngọc Sơn
                  </Typography>
                  <Typography variant="captiontext">
                    Giấy chứng nhận đăng ký doanh nghiệp: 0304998358 do Sở KH-ĐT
                    TP.HCM cấp lần đầu ngày 30 tháng 05 năm 2007
                  </Typography>
                  <Typography variant="captiontext">
                    Website abcds.vn thuộc quyền sở hữu của Công ty Cổ phần
                    Thương Mại - Dịch Vụ Abcds và được phát triển bởi Shiori.
                  </Typography>
                </Stack>
              </Stack>
            </Grid>
            <Grid size={4.5}>
              <Stack sx={{ gap: "6px" }}>
                <Typography variant="captiontext" sx={{ fontWeight: 600 }}>
                  Địa chỉ trụ sở chính:
                </Typography>
                <Typography variant="captiontext">
                  Tầng 5, Số 117-119-121 Nguyễn Du, Phường Bến Thành, Thành Phố
                  Hồ Chí Minh
                </Typography>
                <Typography variant="captiontext" sx={{ fontWeight: 600 }}>
                  Văn phòng điều hành miền Bắc:
                </Typography>
                <Typography variant="captiontext">
                  Tầng 2, Số 47 Phố Thái Hà, Phường Trung Liệt, Quận Đống Đa,
                  Thành phố Hà Nội
                </Typography>
                <Typography variant="captiontext" sx={{ fontWeight: 600 }}>
                  Văn phòng điều hành miền Nam:
                </Typography>
                <Typography variant="captiontext">
                  677/2A Điện Biên Phủ, Phường 25 , Quận Bình Thạnh , TP. Hồ Chí
                  Minh
                </Typography>
              </Stack>
            </Grid>
            <Grid size={2.5}>
              <Stack sx={{ gap: "8px", justifyContent:"center",alignItems:"center" }}>
                <img
                  src="https://shopfront-cdn.tekoapis.com/common/da-dang-ky.png"
                  className="object-cover size-[50%]"
                  alt=""
                />
                <img
                  src="https://images.dmca.com/Badges/dmca-badge-w150-2x1-02.png?ID=73ee7811-7aa7-44d0-bb06-6c0df0da41d8"
                  className="object-cover size-[40%]"
                  alt=""
                />
              </Stack>
            </Grid>
          </Grid>
        </Box>
      </Box>
    </Box>
  );
};
