/* eslint-disable no-unused-vars */
import { Box, useMediaQuery, useTheme } from "@mui/system";
import { BannerSection } from "./components/bannerSection";
import { HeaderSection } from "./components/headerSection";
import { useState } from "react";
import { useEffect } from "react";

const ClientHeader = () => {
  const theme = useTheme();
  const upSm = useMediaQuery(theme.breakpoints.up("sm"));
  const upMd = useMediaQuery(theme.breakpoints.up("md"));

  const [isScrolled, setIsScrolled] = useState(false);

  const handleScrolled = () => {
    setIsScrolled(window.scrollY > 0);
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
        position: "sticky",
        width: "100%",
        zIndex: 1100,
        top: isScrolled ? -99 : 0,
        transition: "top 0.2s",
      }}
    >
      <BannerSection />
      <HeaderSection />
    </Box>
  );
};

export default ClientHeader;
