import {
  Accordion,
  AccordionDetails,
  AccordionSummary,
  Box,
  Button,
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
import { addNewAttribute, getAllAttributes } from "@/store/attribute/Action";

export const AddAttributePage = () => {
  const attributes = useSelector((store) => store.attributes);
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const [attribute, setAttributes] = React.useState({});
  React.useEffect(() => {
    dispatch(getAllAttributes());
  }, []);

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

  const handleChange = (event) => {
    setGetAttributes(event.target.value);
    setAttributes({ ...attribute, parent_id: event.target.value });
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
                  label="Attribute name"
                  value={attribute?.name}
                  name={attribute?.name}
                  onChange={(e) =>
                    setAttributes({ ...attribute, name: e.target.value })
                  }
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
                    setAttributes({ ...attribute, value: e.target.value })
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
                  >
                    {attributes.attributes.map((item) => (
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
              dispatch(addNewAttribute(attribute));
              attributes.loading === false && navigate("/admin/attributes");
            }}
          >
            Create Product
          </Button>
        </Stack>
      </Stack>
    </>
  );
};
