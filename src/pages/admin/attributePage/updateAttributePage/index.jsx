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
import { getAttribute, updateAttribute } from "@/store/attribute/Action";

export const UpdateAttributePage = () => {
  const { id } = useParams();
  const attributes = useSelector((store) => store.attributes);
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const [attribute, setAttribute] = React.useState({});
  React.useEffect(() => {
    dispatch(getAttribute(id));
  }, []);
  React.useEffect(() => {
    setAttribute(attributes.attribute);
  }, [attributes.attribute]);

  const parent = attributes.attributes.find(
    (item) => item.id == attributes.attribute?.parent_id
  );
  const remainList = attributes.attributes.filter((item) => item.id != id);
  // console.log("attributes", attributes);
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

  const [getAttributes, setGetAttributes] = React.useState("");

  React.useEffect(() => {
    setGetAttributes(parent?.id);
  }, [parent]);

  const handleChange = (event) => {
    setGetAttributes(event.target.value);
    setAttribute({ ...attribute, parent_id: event.target.value });
  };
  return (
    <>
      <Stack spacing={3}>
        <Accordion defaultExpanded>
          <AccordionSummary expandIcon={<ExpandMoreIcon />}>
            <Stack>
              <Typography variant="h6">New Attribute</Typography>
              <Typography variant="subtitle1" color="text.disabled">
                Additional new attribute...
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
                  label="Attribute name"
                  value={attribute?.name}
                  name={attribute?.name}
                  onChange={(e) =>
                    setAttribute({ ...attribute, name: e.target.value })
                  }
                  InputLabelProps={{ shrink: true }}
                  sx={{
                    "& label.Mui-focused": { color: "black" },
                    "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                      borderColor: "black",
                    },
                  }}
                />
                <TextField
                  fullWidth
                  variant="outlined"
                  label="Attribute value"
                  value={attribute?.value}
                  name={attribute?.value}
                  onChange={(e) =>
                    setAttribute({ ...attribute, value: e.target.value })
                  }
                  sx={{
                    "& label.Mui-focused": { color: "black" },
                    "& .MuiOutlinedInput-root.Mui-focused fieldset": {
                      borderColor: "black",
                    },
                  }}
                />

                <FormControl fullWidth>
                  <InputLabel>Attribute parent</InputLabel>
                  <Select
                    input={
                      <OutlinedInput
                        id="select-multiple-chip"
                        label="Attribute parent"
                      />
                    }
                    value={getAttributes}
                    onChange={handleChange}
                    renderValue={(selected) => {
                      const attribute = remainList.find(
                        (item) => item.id === selected
                      );
                      return attribute?.name;
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
              dispatch(updateAttribute(id, attribute));
              attributes.loading === false && navigate("/admin/attributes");
            }}
          >
            Update Attribute
          </Button>
        </Stack>
      </Stack>
    </>
  );
};
