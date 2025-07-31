import { Box } from "@mui/material";

export const CustomTabPanel = (props) => {
  const { children, tab, index } = props;
  return (
    <div>
      {tab == index && (
        <Box>{children}</Box>
      )}
    </div>
  );
};
