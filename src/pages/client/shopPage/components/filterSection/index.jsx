/* eslint-disable no-unused-vars */
import {
  Accordion,
  AccordionDetails,
  AccordionSummary,
  Box,
  Divider,
  FormControl,
  FormControlLabel,
  FormGroup,
  Slider,
  Stack,
  Typography,
} from "@mui/material";
import React, { useState } from "react";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";
import Checkbox from "@mui/material/Checkbox";
import { useSelector } from "react-redux";

export const FilterSection = () => {
  const filter = new Intl.NumberFormat("vi-VN");

  const [value, setValue] = useState([0, 50000000]);

  const valuetext = (value) => {
    return `${filter.format(value)}`;
  };
  const handleChange = (e, newValue, activeThumb) => {
    if (activeThumb === 0) {
      setValue([Math.min(newValue[0], value[1]), value[1]]);
    } else {
      setValue([value[0], Math.max(newValue[1], value[0])]);
    }
  };
  // CheckBox
  const [checked, setChecked] = useState(true);

  const handleChangeCheck = (e) => {
    setChecked(e.target.checked);
  };

  // height check
  const [more, setMore] = useState(false);

  const product = useSelector((store) => store.products);
  console.log("product", product);

  const categories = product.products.categories;
  console.log("categories", categories);

  const { search } = window.location;
  const searchParams = new URLSearchParams(search);

  return (
    <Stack p="10px" position="relative">
      <Stack>
        <Typography fontSize="14px" paddingBottom="5px" fontWeight={600}>
          Khoảng giá
        </Typography>
        <Stack direction="row" sx={{ alignItems: "center" }}>
          <Box
            p="4px"
            borderRadius="5px"
            alignItems="center"
            minWidth="75px"
            justifyContent="center"
            display="flex"
            border="1px solid #DFE3E8"
          >
            <Typography sx={{ fontSize: "11px" }}>
              {filter.format(value[0])}đ
            </Typography>
          </Box>
          <Box width="100%">
            <Divider />
          </Box>
          <Box
            p="4px"
            borderRadius="5px"
            alignItems="center"
            minWidth="75px"
            justifyContent="center"
            display="flex"
            border="1px solid #DFE3E8"
          >
            <Typography sx={{ fontSize: "11px" }}>
              {filter.format(value[1])}đ
            </Typography>
          </Box>
        </Stack>
        <Box p="0px 10px">
          <Slider
            value={value}
            onChange={handleChange}
            valueLabelDisplay="auto"
            valueLabelFormat={valuetext}
            disableSwap
            max={50000000}
            step={500}
          />
        </Box>
      </Stack>
      <Divider variant="middle" />

      <Stack>
        <Accordion defaultExpanded>
          <AccordionSummary expandIcon={<ExpandMoreIcon />}>
            <Typography fontSize="14px" fontWeight={600}>
              Thương hiệu
            </Typography>
          </AccordionSummary>
          <AccordionDetails
            sx={{
              mt: "-16px",
              maxHeight: more ? "100%" : "85px",
              overflow: "hidden",
            }}
          >
            <FormGroup
              row
              sx={{
                "& .MuiTypography-root": { fontSize: "14px" },
              }}
            >
              <FormControlLabel
                control={
                  <Checkbox checked={checked} onChange={handleChangeCheck} />
                }
                label="9Fit"
              />
            </FormGroup>
          </AccordionDetails>
          {!more && (
            <Box
              component={Typography}
              variant="captiontext"
              color="primary.light"
              sx={{ cursor: "pointer" }}
              onClick={() => setMore(true)}
              ml="56px"
            >
              Xem thêm
            </Box>
          )}
        </Accordion>
      </Stack>
    </Stack>
  );
};
