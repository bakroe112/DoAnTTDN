import {
  Accordion,
  AccordionDetails,
  AccordionSummary,
  Box,
  Button,
  Chip,
  Collapse,
  Divider,
  FormControl,
  IconButton,
  InputAdornment,
  InputLabel,
  ListSubheader,
  MenuItem,
  OutlinedInput,
  Select,
  Stack,
  TextField,
  Typography,
} from "@mui/material";
import React from "react";
import { TipTapEditor } from "./components/tipTapEditor";
import { Dropzone } from "./components/dropzone";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";
import { useDispatch, useSelector } from "react-redux";
import { getCategoryTree } from "@/store/category/Action";
import { createProduct } from "@/store/product/Action";
import { useNavigate } from "react-router-dom";
import { getAttributeTree } from "@/store/attribute/Action";
import { uploadToCloudinary } from "@/components/uploadToCloudinary";

const ITEM_HEIGHT = 48;
const ITEM_PADDING_TOP = 8;
const MenuProps = {
  PaperProps: {
    style: {
      maxHeight: ITEM_HEIGHT * 4.5 + ITEM_PADDING_TOP,
      width: 250,
      overflowY: "auto",
    },
  },
};

export const AddProductPage = () => {
  const [getCategories, setGetCategories] = React.useState([]);
  const [getAttributes, setGetAttributes] = React.useState([]);
  const [getSellPrice, setGetSellPrice] = React.useState(0);
  const [imageUrl, setImageUrl] = React.useState(null);
  const [loading, setLoading] = React.useState(false);
  const categories = useSelector((store) => store.categories.categories);
  const attributes = useSelector((store) => store.attributes.attributes);
  const products = useSelector((store) => store.products);
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const [product, setProduct] = React.useState({});
  const formatMoney = new Intl.NumberFormat("vi-VN");

  React.useEffect(() => {
    const price = Number(product?.supplier_retail_price) || 0;
    const discount = Number(product?.discount_amount) || 0;

    const finalPrice = price - (price * discount) / 100;
    // setGetSellPrice(finalPrice);
    setProduct((prev) => ({
      ...prev,
      sell_price: finalPrice,
    }));
  }, [product?.supplier_retail_price, product?.discount_amount]);

  React.useEffect(() => {
    dispatch(getCategoryTree());
    dispatch(getAttributeTree());
  }, []);

  const handleChangeCategories = (event) => {
    const {
      target: { value },
    } = event;
    setGetCategories(
      // On autofill we get a stringified value.
      typeof value === "string" ? value.split(",") : value
    );
    setProduct({ ...product, categories: value });
  };
  const handleChangeAttributes = (event) => {
    const {
      target: { value },
    } = event;
    setGetAttributes(
      // On autofill we get a stringified value.
      typeof value === "string" ? value.split(",") : value
    );
    setProduct({ ...product, attributes: value });
  };

  const handleFileChange = async (event) => {
    const file = event.target.files[0];

    setLoading(true);
    const imgUrl = await uploadToCloudinary(file);
    setImageUrl(imgUrl);
    setProduct((prev) => ({ ...prev, image_url: imgUrl }));
    setLoading(false);
  };

  return (
    <Stack spacing={5}>
      {/* Detail */}
      <Accordion defaultExpanded>
        <AccordionSummary expandIcon={<ExpandMoreIcon />}>
          <Stack>
            <Typography variant="h6">Details</Typography>
            <Typography variant="subtitle1" color="text.disabled">
              Title, decription, image,...
            </Typography>
          </Stack>
        </AccordionSummary>
        <Divider />
        <AccordionDetails>
          <Box
            sx={{
              padding: "18px",
            }}
          >
            <Stack spacing={3}>
              <Box>
                {imageUrl && (
                  <Box mb={2}>
                    {loading ? (
                      ""
                    ) : (
                      <img
                        src={imageUrl}
                        style={{ width: "60%", borderRadius: "8px" }}
                      />
                    )}
                  </Box>
                )}
                <Button
                  variant="outlined"
                  component="label"
                  size="large"
                  color="primary.text"
                  sx={{
                    textTransform: "none",
                    fontWeight: 600,
                    transition: "0.3s ease-in-out",
                    ":hover": {
                      backgroundColor: "text.primary",
                      color: "background.paper",
                    },
                  }}
                >
                  {loading ? "Uploading..." : "Choose Image"}

                  <input
                    type="file"
                    hidden
                    accept="image/*"
                    onChange={handleFileChange}
                  />
                </Button>
              </Box>
              <TextField
                variant="outlined"
                label="Product Name"
                value={product?.name}
                name={product?.name}
                onChange={(e) =>
                  setProduct({ ...product, name: e.target.value })
                }
                sx={{
                  "& label.Mui-focused": { color: "black" },
                  "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                    borderColor: "black",
                  },
                }}
              />
              <TextField
                variant="outlined"
                label="Short Description"
                value={product?.short_description}
                name={product?.short_description}
                multiline
                minRows={6}
                onChange={(e) =>
                  setProduct({ ...product, short_description: e.target.value })
                }
                sx={{
                  "& label.Mui-focused": { color: "black" },
                  "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                    borderColor: "black",
                  },
                }}
              />
              <Box>
                <Typography variant="subtitle1" pb="10px">
                  Description
                </Typography>
                <TipTapEditor
                  onChange={(html) =>
                    setProduct({ ...product, description: html })
                  }
                />
              </Box>

              <Box>
                <Typography variant="subtitle1" pb="10px">
                  Images
                </Typography>
                <Dropzone
                  onFilesChange={(urls) => {
                    setProduct((prev) => ({ ...prev, images: urls }));
                  }}
                />
              </Box>
            </Stack>
          </Box>
        </AccordionDetails>
      </Accordion>
      {/* Properties */}
      <Accordion defaultExpanded>
        <AccordionSummary expandIcon={<ExpandMoreIcon />}>
          <Stack>
            <Typography variant="h6">Properties</Typography>
            <Typography variant="subtitle1" color="text.disabled">
              Additional attributes...
            </Typography>
          </Stack>
        </AccordionSummary>
        <Divider />

        <AccordionDetails>
          <Box
            sx={{
              padding: "18px",
            }}
          >
            <Stack spacing={3}>
              <Stack direction="row" spacing={2}>
                <TextField
                  fullWidth
                  variant="outlined"
                  label="Product SKU"
                  type="number"
                  value={product?.sku}
                  name={product?.sku}
                  sx={{
                    "& label.Mui-focused": { color: "black" },
                    "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                      borderColor: "black",
                    },
                    "& input::-webkit-outer-spin-button, & input::-webkit-inner-spin-button":
                      {
                        WebkitAppearance: "none",
                        margin: 0,
                      },
                  }}
                  onChange={(e) => {
                    setProduct({ ...product, sku: e.target.value });
                  }}
                />
                <TextField
                  fullWidth
                  variant="outlined"
                  label="Quantity"
                  type="number"
                  value={product?.quantity}
                  //  value={product?.name}
                  name={product?.quantity}
                  placeholder="0"
                  sx={{
                    "& label.Mui-focused": { color: "black" },
                    "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                      borderColor: "black",
                    },
                    "& input::-webkit-outer-spin-button, & input::-webkit-inner-spin-button":
                      {
                        WebkitAppearance: "none",
                        margin: 0,
                      },
                  }}
                  onChange={(e) => {
                    setProduct({ ...product, quantity: e.target.value });
                  }}
                />
              </Stack>
              <Stack direction="row" spacing={2}>
                <FormControl sx={{ width: "100%" }}>
                  <InputLabel>Category</InputLabel>
                  <Select
                    input={
                      <OutlinedInput
                        id="select-multiple-chip"
                        label="Category"
                      />
                    }
                    multiple
                    value={getCategories}
                    onChange={handleChangeCategories}
                    renderValue={(selected) => (
                      <Box sx={{ display: "flex", flexWrap: "wrap", gap: 0.5 }}>
                        {selected.map((id) => {
                          // tìm name theo id
                          let label = "";
                          categories.forEach((cate) => {
                            cate.children.forEach((item) => {
                              item.children.forEach((i) => {
                                if (i.id === id) {
                                  label = i.name;
                                }
                              });
                            });
                          });
                          return <Chip key={id} label={label} />;
                        })}
                      </Box>
                    )}
                    MenuProps={MenuProps}
                  >
                    {categories?.flatMap((cate) =>
                      cate.children?.flatMap((item) => [
                        <ListSubheader key={item.name}>
                          {item.name}
                        </ListSubheader>,
                        ...item.children.map((i) => (
                          <MenuItem key={i.name} value={i.id}>
                            {i.name}
                          </MenuItem>
                        )),
                      ])
                    )}
                  </Select>
                </FormControl>
                <FormControl sx={{ width: "100%" }}>
                  <InputLabel>Attribute</InputLabel>
                  <Select
                    input={
                      <OutlinedInput
                        id="select-multiple-chip"
                        label="Attribute"
                      />
                    }
                    multiple
                    value={getAttributes}
                    onChange={handleChangeAttributes}
                    renderValue={(selected) => (
                      <Box sx={{ display: "flex", flexWrap: "wrap", gap: 0.5 }}>
                        {selected.map((id) => {
                          // tìm name theo id
                          let label = "";
                          attributes.forEach((attr) => {
                            attr.children.forEach((item) => {
                              if (item.id === id) {
                                label = item.value;
                              }
                            });
                          });
                          return <Chip key={id} label={label} />;
                        })}
                      </Box>
                    )}
                    MenuProps={MenuProps}
                  >
                    {attributes?.flatMap((attr) =>
                      attr.children?.flatMap((item) => [
                        <ListSubheader key={item.name}>
                          {item.name}
                        </ListSubheader>,
                        <MenuItem key={item.value} value={item.id}>
                          {item.value}
                        </MenuItem>,
                      ])
                    )}
                  </Select>
                </FormControl>
              </Stack>
              <TextField
                fullWidth
                variant="outlined"
                label="Brand"
                value={product?.brand_name}
                name={product?.brand_name}
                onChange={(e) =>
                  setProduct({ ...product, brand_name: e.target.value })
                }
                sx={{
                  "& label.Mui-focused": { color: "black" },
                  "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                    borderColor: "black",
                  },
                }}
              />
            </Stack>
          </Box>
        </AccordionDetails>
      </Accordion>
      {/* Prices */}
      <Accordion defaultExpanded>
        <AccordionSummary expandIcon={<ExpandMoreIcon />}>
          <Stack>
            <Typography variant="h6">Prices</Typography>
            <Typography variant="subtitle1" color="text.disabled">
              Price related inputs
            </Typography>
          </Stack>
        </AccordionSummary>
        <Divider />

        <AccordionDetails>
          <Box
            sx={{
              padding: "18px",
            }}
          >
            <Stack spacing={3}>
              <TextField
                fullWidth
                variant="outlined"
                label="Regular price"
                type="text"
                value={formatMoney.format(product?.supplier_retail_price || 0)}
                name={product?.supplier_retail_price}
                onChange={(e) => {
                  const rawValue = e.target.value.replace(/\D/g, "");
                  setProduct({
                    ...product,
                    supplier_retail_price: rawValue,
                  });
                }}
                sx={{
                  "& label.Mui-focused": { color: "black" },
                  "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                    borderColor: "black",
                  },
                  "& input::-webkit-outer-spin-button, & input::-webkit-inner-spin-button":
                    {
                      WebkitAppearance: "none",
                      margin: 0,
                    },
                }}
                placeholder="0"
                InputLabelProps={{ shrink: true }}
                slotProps={{
                  input: {
                    startAdornment: (
                      <InputAdornment position="start">VND</InputAdornment>
                    ),
                  },
                }}
              />
              <TextField
                fullWidth
                variant="outlined"
                label="Discount"
                type="text"
                value={product?.discount_amount}
                name={product?.discount_amount}
                onChange={(e) =>
                  setProduct({
                    ...product,
                    discount_amount: e.target.value,
                  })
                }
                sx={{
                  "& label.Mui-focused": { color: "black" },
                  "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                    borderColor: "black",
                  },
                  "& input::-webkit-outer-spin-button, & input::-webkit-inner-spin-button":
                    {
                      WebkitAppearance: "none",
                      margin: 0,
                    },
                }}
                placeholder="0"
                InputLabelProps={{ shrink: true }}
                slotProps={{
                  input: {
                    startAdornment: (
                      <InputAdornment position="start">%</InputAdornment>
                    ),
                  },
                }}
              />
              <TextField
                fullWidth
                variant="outlined"
                label="Sale price"
                type="text"
                value={formatMoney.format(product?.sell_price || 0)}
                name={product?.sell_price}
                onChange={(e) => {
                  const rawValue = e.target.value.replace(/\D/g, "");
                  setProduct({
                    ...product,
                    sell_price: rawValue,
                  });
                }}
                sx={{
                  "& label.Mui-focused": { color: "black" },
                  "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                    borderColor: "black",
                  },
                  "& input::-webkit-outer-spin-button, & input::-webkit-inner-spin-button":
                    {
                      WebkitAppearance: "none",
                      margin: 0,
                    },
                }}
                placeholder="0"
                InputLabelProps={{ shrink: true }}
                slotProps={{
                  input: {
                    readOnly: true,
                    startAdornment: (
                      <InputAdornment position="start">VND</InputAdornment>
                    ),
                  },
                }}
              />
            </Stack>
          </Box>
        </AccordionDetails>
      </Accordion>
      {/* Submit Button */}
      <Stack direction="row" sx={{ justifyContent: "end", pb: "40px" }}>
        <Button
          size="large"
          variant="outlined"
          type="submit"
          color="primary.text"
          sx={{
            textTransform: "none",
            fontWeight: 600,
            transition: "0.3s ease-in-out",
            ":hover": {
              backgroundColor: "text.primary",
              color: "background.paper",
            },
          }}
          onClick={() => {
            console.log("product", product);
            dispatch(createProduct(product));
            // setProduct({});
            products.loading === false && navigate("/admin/products");
          }}
        >
          Create Product
        </Button>
      </Stack>
    </Stack>
  );
};
