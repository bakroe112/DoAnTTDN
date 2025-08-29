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
import { useNavigate, useParams } from "react-router-dom";
import { useDispatch, useSelector } from "react-redux";
import { getCategory, updateCategory } from "@/store/category/Action";

export const UpdateCategoryPage = () => {
  const { id } = useParams();
  const categories = useSelector((store) => store.categories);
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const [category, setCategory] = React.useState({});
  React.useEffect(() => {
    dispatch(getCategory(id));
  }, []);
  React.useEffect(() => {
    setCategory(categories.category);
  }, [categories.category]);

  const parent = categories.categories.find(
    (item) => item.id == categories.category?.parent_id
  );
  const remainList = categories.categories.filter((item) => item.id != id);
  console.log("categories", categories);
  // console.log("parent", parent);

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

  React.useEffect(() => {
    setGetCategories(parent?.id);
  }, [parent]);

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
              <Typography variant="h6">New Category</Typography>
              <Typography variant="subtitle1" color="text.disabled">
                Additional new category...
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
                  InputLabelProps={{ shrink: true }}
                  sx={{
                    "& label.Mui-focused": { color: "black" },
                    "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                      borderColor: "black",
                    },
                  }}
                />

                <FormControl fullWidth>
                  <InputLabel>Category parent</InputLabel>
                  <Select
                    input={
                      <OutlinedInput
                        id="select-multiple-chip"
                        label="Category parent"
                      />
                    }
                    value={getCategories}
                    onChange={handleChange}
                    renderValue={(selected) => {
                      const category = remainList.find(
                        (item) => item.id === selected
                      );
                      return category?.name;
                    }}
                  >
                    {remainList.map((item) => (
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
              dispatch(updateCategory(id, category));
              categories.loading === false && navigate("/admin/categories");
            }}
          >
            Update Category
          </Button>
        </Stack>
      </Stack>
    </>
  );
};
