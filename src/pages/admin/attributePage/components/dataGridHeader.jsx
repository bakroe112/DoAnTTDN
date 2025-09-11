import { deleteAttribute } from "@/store/attribute/Action";
import { Icon } from "@iconify-icon/react";
import {
  Box,
  IconButton,
  MenuItem,
  MenuList,
  Popover,
  Stack,
  Typography,
} from "@mui/material";
import React from "react";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";

function RenderAttribute(props) {
  const { value, row } = props;

  return (
    <Box
      sx={{
        height: "100%",
        display: "flex",
        alignItems: "center",
        gap: "12px",
        paddingRight: "12px",
      }}
    >
      <Typography
        variant="subtitle2"
        sx={{
          flex: 1,
          wordBreak: "break-word",
          wordWrap: "break-word",
          overflow: "hidden",
          textOverflow: "ellipsis",
        }}
      >
        {row.name}
      </Typography>
    </Box>
  );
}
function RenderAttributeValue(props) {
  const { value, row } = props;

  return (
    <Box
      sx={{
        height: "100%",
        display: "flex",
        alignItems: "center",
        gap: "12px",
        paddingRight: "12px",
      }}
    >
      <Typography
        variant="subtitle2"
        sx={{
          flex: 1,
          wordBreak: "break-word",
          wordWrap: "break-word",
          overflow: "hidden",
          textOverflow: "ellipsis",
        }}
      >
        {row.value}
      </Typography>
    </Box>
  );
}

function RenderAttributeParent(props) {
  const { value, row } = props;
  const attributes = useSelector((store) => store.attributes);
  const parent = attributes.attributes.find(
    (item) => item.id === row.parent_id
  );

  return (
    <Box
      sx={{
        height: "100%",
        display: "flex",
        alignItems: "center",
        gap: "12px",
        paddingRight: "12px",
      }}
    >
      <Typography
        variant="subtitle2"
        sx={{
          flex: 1,
          wordBreak: "break-word",
          wordWrap: "break-word",
          overflow: "hidden",
          textOverflow: "ellipsis",
        }}
      >
        {parent ? parent.name : ""}
      </Typography>
    </Box>
  );
}

function RenderAction(props) {
  const { row } = props;
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const [anchorEl, setAnchorEl] = React.useState(null);

  const handleClick = (event) => {
    setAnchorEl(event.currentTarget);
  };

  const handleClose = () => {
    setAnchorEl(null);
  };

  const open = Boolean(anchorEl);
  const id = open ? "simple-popover" : undefined;

  return (
    <Box
      sx={{
        display: "flex",
        alignItems: "center",
        justifyContent: "end",
        height: "100%",
      }}
    >
      <IconButton onClick={handleClick}>
        <Icon icon="ant-design:more-outlined" width="24" height="24" />
      </IconButton>
      <Popover
        id={id}
        open={open}
        anchorEl={anchorEl}
        onClose={handleClose}
        anchorOrigin={{
          vertical: "bottom",
          horizontal: "right",
        }}
        transformOrigin={{
          vertical: "top",
          horizontal: "right",
        }}
      >
        <MenuList>
          <MenuItem
            sx={{ gap: "10px", alignItems: "center" }}
            onClick={() => navigate(`/admin/attributes/update/${row.id}`)}
          >
            <Icon
              icon="material-symbols-light:edit-rounded"
              width="24"
              height="24"
            />
            Edit
          </MenuItem>
          <MenuItem
            onClick={() => dispatch(deleteAttribute(row.id))}
            sx={{ gap: "10px", alignItems: "center" }}
          >
            <Icon
              icon="material-symbols:delete-outline-rounded"
              width="24"
              height="24"
              className="text-red-500"
            />
            <Typography color={"#fb2c36"}>Delete</Typography>
          </MenuItem>
        </MenuList>
      </Popover>
    </Box>
  );
}

const DataGridHeader = () => {
  return [
    {
      field: "name",
      headerName: "Attribute",
      flex: 1,
      renderCell: RenderAttribute,
    },
    {
      field: "value",
      headerName: "value",
      flex: 1,
      renderCell: RenderAttributeValue,
    },
    {
      field: "parent",
      headerName: "Parent",
      flex: 1,
      renderCell: RenderAttributeParent,
    },
    {
      field: "action",
      headerName: "",
      sortable: false, // Disable sorting
      disableColumnMenu: true,
      renderCell: RenderAction,
    },
  ];
};

export default DataGridHeader;
