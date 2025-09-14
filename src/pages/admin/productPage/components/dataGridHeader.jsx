import { formatDate } from "@/function/FormatDate";
import { formatMoney } from "@/function/FormatMoney";
import { formatTime } from "@/function/FormatTime";
import { deleteProduct } from "@/store/product/Action";
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
import { useDispatch } from "react-redux";
import { useNavigate } from "react-router-dom";

function RenderProduct(props) {
  const { value, row } = props;
  // console.log("image_url", row.imageUrl);
  // console.log("name", row.name);

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
      <img src={row.imageUrl} className="w-[70px] h-[70px] rounded-[12px]" />
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

function RenderDateTime(props) {
  const { value } = props;

  return (
    <Stack
      sx={{
        height: "100%",
        justifyContent: "center",
      }}
    >
      <Typography sx={{ lineHeight: 2 }} variant="body2">
        {formatDate(value)}
      </Typography>
      <Typography
        sx={{ lineHeight: 2 }}
        variant="captiontext"
        color={"text.secondary"}
      >
        {formatTime(value)}
      </Typography>
    </Stack>
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
            onClick={() => navigate(row.sku)}
          >
            <Icon
              icon="material-symbols-light:edit-rounded"
              width="24"
              height="24"
            />
            Edit
          </MenuItem>
          <MenuItem
            onClick={() =>
              dispatch(deleteProduct(row.sku, () => console.log("Delete")))
            }
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
      headerName: "Product",
      flex: 1,
      renderCell: RenderProduct,
    },
    {
      field: "createdAt",
      headerName: "Created at",
      width: 200,
      renderCell: RenderDateTime,
    },
    {
      field: "sellPrice",
      headerName: "Price",
      width: 120,
      valueGetter: (value) => value,
      valueFormatter: (value) => formatMoney(value),
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
