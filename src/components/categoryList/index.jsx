/* eslint-disable no-unused-vars */
import React, { useState } from "react";
import { Box, Stack, Typography } from "@mui/material";
import { Icon } from "@iconify-icon/react";
import { categoryListItem, categoryMap } from "./CategogyListItem";

export const CategoryListItem = ({ sx, borderRadius }) => {
  const [onHover, setOnHover] = useState(false);
  const boderR = !borderRadius ? "10px" : borderRadius;
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
          borderRadius: onHover ? "0px 0px 0px 10px" : boderR,
        }}
      >
        {categoryListItem.map((item) => (
          <CategoryCard item={item} setOnHover={setOnHover} />
        ))}
      </Stack>

      {onHover && (
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
            zIndex:1001
          }}
        >
          {(categoryMap[onHover - 1] || []).map((items, index) => (
            <CategoryCardItem item={items} key={index} />
          ))}
        </Box>
      )}
    </Stack>
  );
};

export const CategoryCardItem = ({ item }) => {
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
        {item.list.map((item) => (
          <Stack
            sx={{
              "&:hover": {
                color: "#1435C3",
              },
            }}
          >
            <Typography
              sx={{
                fontSize: "15px",
              }}
            >
              {item}
            </Typography>
          </Stack>
        ))}
      </Stack>
    </Box>
  );
};

export const CategoryCard = ({ item, setOnHover }) => {
  return (
    <Stack
      onMouseEnter={() => setOnHover(item.id)}
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
    >
      <Icon icon={item.icon} width="24" height="24" />
      <Typography
        sx={{
          fontSize: "13px",
          fontWeight: 600,
        }}
      >
        {item.title}
      </Typography>
    </Stack>
  );
};
