/* eslint-disable no-unused-vars */
import { alpha, Box, Button, IconButton, Stack } from "@mui/material";
import Autoplay from "embla-carousel-autoplay";
import useEmblaCarousel from "embla-carousel-react";
import React, { useCallback } from "react";
import { BannerItem } from "./BannerItem";
import { DotButton, useDotButton } from "./EmblaCarouselDotButton";
import { Icon } from "@iconify-icon/react";

export const EmblaCarousel = ({ children, LeftComponent, RightComponent }) => {
  const [emblaRef, emblaApi] = useEmblaCarousel({ loop: true }, [
    Autoplay({ playOnInit: true, delay: 3000 }),
  ]);
  const scrollPrev = useCallback(() => {
    if (emblaApi) emblaApi.scrollPrev();
  }, [emblaApi]);

  const scrollNext = useCallback(() => {
    if (emblaApi) emblaApi.scrollNext();
  }, [emblaApi]);

  const { selectedIndex, scrollSnaps, onDotButtonClick } =
    useDotButton(emblaApi);
  return (
    <Box component="section" position="relative">
      <Box sx={{ overflow: "hidden" }} ref={emblaRef}>
        <Box sx={{ display: "flex" }}>{children}</Box>
        <Stack
          direction="row"
          sx={{
            width: "100%",
            alignItems: "center",
            position: "absolute",
            height: "100%",
            top: 0,
          }}
        >
          {LeftComponent}
          <IconButton
            onClick={scrollPrev}
            color="#9f9f9f"
            sx={{ zIndex: "1000" }}
          >
            <Icon
              icon="solar:alt-arrow-left-line-duotone"
              width="24"
              height="24"
            />
          </IconButton>
          <div className="flex-1"></div>
          <IconButton onClick={scrollNext} color="#9f9f9f">
            <Icon
              icon="solar:alt-arrow-right-line-duotone"
              width="24"
              height="24"
            />
          </IconButton>

          {RightComponent}
        </Stack>

        <Stack
          direction="row"
          sx={{
            gap: "8px",
            justifyContent: "center",
            position: "absolute",
            bottom: "20px",
            left: "50%",
            transform: "translate(-50%,-50%)",
          }}
        >
          {scrollSnaps.map((_, index) => (
            <Box
              sx={{
                width: "10px",
                height: "10px",
                borderRadius: "50%",
                bgcolor:
                  index === selectedIndex ? "#1435C3" : alpha("#fff", 0.5),
                cursor: "pointer",
              }}
              onClick={() => onDotButtonClick(index)}
            ></Box>
          ))}
        </Stack>
      </Box>
    </Box>
  );
};
