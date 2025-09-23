/* eslint-disable no-unused-vars */
import React from "react";
import { Box, Stack, Typography } from "@mui/material";
import { Icon } from "@iconify-icon/react";
import { categoryListIcon } from "./CategoryListItem";
import { useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";

export const CategoryListItem = ({ sx, borderRadius }) => {
  const navigate = useNavigate();
  const [onHover, setOnHover] = React.useState(false);
  const borderR = !borderRadius ? "10px" : borderRadius;
  const categories = useSelector((store) => store.categories);

  // console.log("categories", categories);

  return (
    <Stack
      direction="row"
      sx={{
        ...sx,
        // marginTop: "209px"
      }}
      onMouseLeave={() => setOnHover(null)}
    >
      <Stack
        sx={{
          height: "520px",
          width: "200px",
          gap: "3px",
          paddingY: "5px",
          bgcolor: "#fff",
          overflow: "hidden",
          borderRadius:
            onHover !== null &&
            categories.categories?.[onHover]?.children?.length > 0
              ? "10px 0px 0px 10px"
              : borderR,
        }}
      >
        {categories.categories.map((item, index) => (
          <CategoryCard
            item={item}
            index={index}
            setOnHover={setOnHover}
            navigate={navigate}
            key={index}
          />
        ))}
      </Stack>

      {onHover !== null &&
        categories.categories?.[onHover]?.children?.length > 0 && (
          <Box
            sx={{
              columns: 5,
              width: "900px",
              bgcolor: "#fff",
              borderRadius: "0px 10px 10px 0px",
              padding: "10px",
              position: "absolute",
              left: 200,
              minHeight: "520px",
              zIndex: 1001,
            }}
          >
            {categories.categories[onHover]?.children.map((item) => (
              <CategoryCardItem item={item} key={item.id} navigate={navigate} />
            ))}
          </Box>
        )}
    </Stack>
  );
};

export const CategoryCard = ({ item, index, setOnHover, navigate }) => {
  return (
    <Stack
      onMouseEnter={() => setOnHover(index)}
      direction="row"
      sx={{
        alignItems: "center",
        padding: "3px 5px",
        gap: "5px",
        ":hover": {
          bgcolor: "#F4F6F8",
          color: "#1435C3",
        },
        borderRadius: "10px",
        cursor: "pointer",
      }}
      onClick={() => navigate(`/shop?categories=${item.name}`)}
    >
      <Icon icon={categoryListIcon[index].icon} width="24" height="24" />
      <Typography
        sx={{
          fontSize: "13px",
          fontWeight: 600,
        }}
      >
        {item.name}
      </Typography>
    </Stack>
  );
};

export const CategoryCardItem = ({ item, navigate }) => {
  return (
    <Box
      sx={{
        breakInside: "avoid",
        marginBottom: "20px",
      }}
    >
      <Typography
        sx={{
          fontWeight: 600,
          color: "#1435C3",
          marginBottom: "8px",
        }}
      >
        {item.name}
      </Typography>

      <Stack
        sx={{
          width: "100%",
          cursor: "pointer",
          gap: "5px",
        }}
      >
        {item.children.map((item, index) => (
          <Stack
            sx={{
              "&:hover": {
                color: "#1435C3",
              },
            }}
            onClick={() => navigate(`/shop?categories=${item.name}`)}
            key={index}
          >
            <Typography
              sx={{
                fontSize: "15px",
              }}
              key={index}
            >
              {item.name}
            </Typography>
          </Stack>
        ))}
      </Stack>
    </Box>
  );
};
