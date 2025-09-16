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
import { useNavigate } from "react-router-dom";

export const FilterSection = () => {
  const { search } = window.location;
  const searchParams = new URLSearchParams(search);
  const navigate = useNavigate();
  const filter = new Intl.NumberFormat("vi-VN");
  const initialPrice = searchParams.get("price")
    ? searchParams.get("price").split("-").map(Number)
    : [0, 50000000];
  const [value, setValue] = useState(initialPrice);
  const [getValueCategories, setGetValueCategories] = React.useState([]);

  // Slider
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
  const handleChangeCommitted = () => {
    searchParams.set("price", value.join("-"));
    navigate(`?${searchParams.toString()}`);
  };
  // console.log("Value", value);
  // CheckBox
  const handleChangeCheck = (e, name) => {
    let updatedCate = [...getValueCategories];
    if (e.target.checked) {
      updatedCate.push(name);
    } else {
      updatedCate = updatedCate.filter((item) => item !== name);
    }
    setGetValueCategories(updatedCate);
    if (updatedCate.length > 0) {
      // gán thành 1 chuỗi ví dụ như "Apple,Acer,Dell"
      searchParams.set("categories", updatedCate.join(","));
    } else {
      searchParams.delete("categories");
    }
    navigate(`?${searchParams.toString()}`);
  };

  React.useEffect(() => {
    const { search } = window.location;
    const searchParams = new URLSearchParams(search);
    const url = searchParams.get("categories");
    if (url) {
      // sau đó cập nhật lại thành ["Apple", "Acer", "Dell"] để ko lỗi getValueCategories
      setGetValueCategories(url.split(","));
    }
  }, []);
  // height check
  const [more, setMore] = useState(false);

  const product = useSelector((store) => store.products);
  // console.log("product", product);

  const categories = useSelector((store) => store.categories);
  const ListCategory = categories.categories;

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
            onChangeCommitted={handleChangeCommitted}
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
        {ListCategory.map((cate) => (
          <>
            {cate.children.slice(0, 1).map((item) => (
              <Accordion defaultExpanded>
                <AccordionSummary expandIcon={<ExpandMoreIcon />}>
                  <Typography fontSize="14px" fontWeight={600}>
                    {item.name}
                  </Typography>
                </AccordionSummary>
                <AccordionDetails
                  sx={{
                    mt: "-16px",
                    // maxHeight: more ? "100%" : "85px",

                    overflow: "hidden",
                  }}
                >
                  <FormGroup
                    row
                    sx={{
                      "& .MuiTypography-root": { fontSize: "14px" },
                    }}
                  >
                    {item.children.map((i) => (
                      <FormControlLabel
                        control={
                          <Checkbox
                            checked={getValueCategories.includes(i.name)}
                            onChange={(e) => handleChangeCheck(e, i.name)}
                          />
                        }
                        label={i.name}
                      />
                    ))}
                  </FormGroup>
                </AccordionDetails>
                {/* {!more && (
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
                )} */}
              </Accordion>
            ))}
          </>
        ))}
      </Stack>
    </Stack>
  );
};
