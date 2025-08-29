import { Icon } from "@iconify-icon/react";
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
  styled,
  TextField,
  Typography,
} from "@mui/material";
import React from "react";
import { TipTapEditor } from "./components/tipTapEditor";
import { Dropzone } from "./components/dropzone";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";

const CustomTextField = styled(TextField)({
  "& label.Mui-focused": {
    color: "black",
  },
  "& .MuiOutlinedInput-root": {
    "&.Mui-focused fieldset": {
      borderColor: "black",
    },
  },
  // Ẩn nút tăng giảm của Chrome, Safari, Edge
  "& input::-webkit-outer-spin-button, & input::-webkit-inner-spin-button": {
    WebkitAppearance: "none",
    margin: 0,
  },
  // "& .MuiInputLabel-root": {
  //   color: "gray",
  // },
});

const ITEM_HEIGHT = 48;
const ITEM_PADDING_TOP = 8;
const MenuProps = {
  PaperProps: {
    style: {
      maxHeight: ITEM_HEIGHT * 4.5 + ITEM_PADDING_TOP,
      width: 250,
    },
  },
};

export const AddProductPage = () => {
  const [open, setOpen] = React.useState(false);
  const [value, setValue] = React.useState("" > "");
  const [getCategories, setGetCategories] = React.useState([]);

  const handleChange = (event) => {
    const {
      target: { value },
    } = event;
    setGetCategories(
      // On autofill we get a stringified value.
      typeof value === "string" ? value.split(",") : value
    );
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
              <CustomTextField variant="outlined" label="Product Name" />
              <CustomTextField
                variant="outlined"
                label="Short Description"
                InputProps={{
                  style: {
                    height: "160px",
                  },
                }}
              />
              <Box>
                <Typography variant="subtitle1" pb="10px">
                  Description
                </Typography>
                <TipTapEditor />
              </Box>

              <Box>
                <Typography variant="subtitle1" pb="10px">
                  Images
                </Typography>
                <Dropzone />
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
                <CustomTextField
                  fullWidth
                  variant="outlined"
                  label="Product SKU"
                  type="number"
                  value={value}
                  onChange={(e) => {
                    const v = Number(e.target.value);
                    if (v >= 0 || e.target.value === "") {
                      // chỉ cho nhập số dương
                      setValue(e.target.value === "" ? "" : v);
                    }
                  }}
                />
                <CustomTextField
                  fullWidth
                  variant="outlined"
                  label="Quantity"
                  type="number"
                  placeholder="0"
                  InputLabelProps={{ shrink: true }}
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
                    onChange={handleChange}
                    renderValue={(selected) => (
                      <Box sx={{ display: "flex", flexWrap: "wrap", gap: 0.5 }}>
                        {selected.map((value) => (
                          <Chip key={value} label={value} />
                        ))}
                      </Box>
                    )}
                    MenuProps={MenuProps}
                  >
                    <ListSubheader>Category 1</ListSubheader>
                    <MenuItem key="Category" value="Option 1">
                      Option 1
                    </MenuItem>
                    <MenuItem key="Category" value="Option 2">
                      Option 2
                    </MenuItem>
                    <ListSubheader>Category 2</ListSubheader>
                    <MenuItem key="Category" value="Option 1">
                      Option 1
                    </MenuItem>
                    <MenuItem key="Category" value="Option 2">
                      Option 2
                    </MenuItem>
                  </Select>
                </FormControl>
                <FormControl sx={{ width: "100%" }}>
                  <InputLabel>Attribute</InputLabel>
                  <Select
                    input={
                      <OutlinedInput
                        id="select-multiple-chip"
                        label="Category"
                      />
                    }
                    multiple
                    value={getCategories}
                    onChange={handleChange}
                    renderValue={(selected) => (
                      <Box sx={{ display: "flex", flexWrap: "wrap", gap: 0.5 }}>
                        {selected.map((value) => (
                          <Chip key={value} label={value} />
                        ))}
                      </Box>
                    )}
                    MenuProps={MenuProps}
                  >
                    <ListSubheader>Attribute 1</ListSubheader>
                    <MenuItem key="Attribute" value="Option 1">
                      Option 1
                    </MenuItem>
                    <MenuItem key="Attribute" value="Option 2">
                      Option 2
                    </MenuItem>
                    <ListSubheader>Attribute 2</ListSubheader>
                    <MenuItem key="Attribute" value="Option 1">
                      Option 1
                    </MenuItem>
                    <MenuItem key="Attribute" value="Option 2">
                      Option 2
                    </MenuItem>
                  </Select>
                </FormControl>
              </Stack>
              <FormControl sx={{ width: "100%" }}>
                <InputLabel>Brand</InputLabel>
                <Select
                  input={
                    <OutlinedInput id="select-multiple-chip" label="Category" />
                  }
                  multiple
                  value={getCategories}
                  onChange={handleChange}
                  renderValue={(selected) => (
                    <Box sx={{ display: "flex", flexWrap: "wrap", gap: 0.5 }}>
                      {selected.map((value) => (
                        <Chip key={value} label={value} />
                      ))}
                    </Box>
                  )}
                  MenuProps={MenuProps}
                >
                  <MenuItem key="Attribute" value="Option 1">
                    Option 1
                  </MenuItem>
                  <MenuItem key="Attribute" value="Option 2">
                    Option 2
                  </MenuItem>
                </Select>
              </FormControl>
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
              <CustomTextField
                fullWidth
                variant="outlined"
                label="Regular price"
                type="number"
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
              <CustomTextField
                fullWidth
                variant="outlined"
                label="Discount"
                type="number"
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
              <CustomTextField
                fullWidth
                variant="outlined"
                label="Sale price"
                type="number"
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
        >
          Create Product
        </Button>
      </Stack>
    </Stack>
  );
};
