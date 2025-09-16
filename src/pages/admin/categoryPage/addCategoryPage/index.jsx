import {
  Accordion,
  AccordionDetails,
  AccordionSummary,
  Box,
  Button,
  Chip,
  Divider,
  FormControl,
  InputLabel,
  MenuItem,
  OutlinedInput,
  Select,
  Stack,
  styled,
  TextField,
  Typography,
} from "@mui/material";
import React from "react";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import { addNewCategory, getAllCategories } from "@/store/category/Action";

export const AddCategoryPage = () => {
  const categories = useSelector((store) => store.categories);
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const [category, setCategory] = React.useState({});
  React.useEffect(() => {
    dispatch(getAllCategories());
  }, []);
  console.log("categories", categories);
  const CustomTextField = styled(TextField)({
    "& label.Mui-focused": {
      color: "black",
    },
    "& .MuiOutlinedInput-root": {
      "&.Mui-focused fieldset": {
        borderColor: "black",
      },
    },
    // "& .MuiInputLabel-root": {
    //   color: "gray",
    // },
  });
  const [getCategories, setGetCategories] = React.useState("");

  const handleChange = (event) => {
    setGetCategories(event.target.value);
    setCategory({ ...category, parent_id: event.target.value });
  };
  return (
    <>
      <Stack spacing={3}>
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
              <Stack direction="row" spacing={2}>
                <TextField
                  fullWidth
                  variant="outlined"
                  label="Category name"
                  value={category?.name}
                  name={category?.name}
                  onChange={(e) =>
                    setCategory({ ...category, name: e.target.value })
                  }
                  sx={{
                    "& label.Mui-focused": { color: "black" },
                    "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                      borderColor: "black",
                    },
                  }}
                />

                <FormControl fullWidth>
                  <InputLabel shrink>Category parent</InputLabel>
                  <Select
                    input={
                      <OutlinedInput
                        id="select-multiple-chip"
                        label="Category parent"
                      />
                    }
                    displayEmpty
                    value={getCategories}
                    onChange={handleChange}
                    renderValue={(selected) => {
                      if (selected == null || selected == "") return "None";
                      const found = categories.categories.find(
                        (c) => c.id === selected
                      );
                      return found ? found.name : "None";
                    }}
                    MenuProps={{
                      PaperProps: {
                        style: {
                          maxHeight: 300,
                          overflowY: "auto",
                        },
                      },
                    }}
                  >
                    <MenuItem value={null}>
                      <em>None</em>
                    </MenuItem>
                    {categories.categories.map((item) => (
                      <MenuItem key={item.id} value={item.id}>
                        {item.name}
                      </MenuItem>
                    ))}
                  </Select>
                </FormControl>
              </Stack>
            </Box>
          </AccordionDetails>
        </Accordion>
        {/* Submit Button */}
        <Stack direction="row" sx={{ justifyContent: "end" }}>
          <Button
            size="large"
            variant="outlined"
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
              dispatch(addNewCategory(category));
              // categories.loading === false && navigate("/admin/categories");
              setCategory({ ...category, name: "" });
            }}
          >
            Create Category
          </Button>
        </Stack>
      </Stack>
    </>
  );
};
