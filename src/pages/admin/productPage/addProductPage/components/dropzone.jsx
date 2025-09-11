import { Icon } from "@iconify-icon/react";
import {
  alpha,
  Avatar,
  Box,
  Button,
  IconButton,
  Stack,
  Typography,
} from "@mui/material";
import React from "react";
import { useDropzone } from "react-dropzone";
import ClearIcon from "@mui/icons-material/Clear";
import CloudUploadIcon from "@mui/icons-material/CloudUpload";

export const Dropzone = ({ onFilesChange }) => {
  const [files, setFiles] = React.useState([]);

  const onDrop = React.useCallback(
    (acceptedFiles) => {
      setFiles((preFiles) => {
        const newFile = acceptedFiles.filter(
          (file) =>
            !preFiles.some(
              (f) =>
                f.name === file.name &&
                f.size === file.size &&
                f.lastModified === file.lastModified
            )
        );
        const updatedFiles = [...preFiles, ...newFile];
        onFilesChange?.(updatedFiles.map((f) => URL.createObjectURL(f)));
        return updatedFiles;
      });
    },
    [onFilesChange]
  );
  const handleDeleteImage = (f) => {
    setFiles((preFiles) => preFiles.filter((file) => file !== f));
  };

  const handleDeleteAllImage = () => {
    setFiles([]);
  };

  // console.log("files", files);
  const { getRootProps, getInputProps } = useDropzone({ onDrop });
  const renderFiles = files.map((file) => (
    <Box sx={{ position: "relative" }}>
      <Avatar
        src={URL.createObjectURL(file)}
        sx={{ height: "90px", width: "90px", borderRadius: "10px" }}
      />
      <Box sx={{ position: "absolute", top: 2, right: 4 }}>
        <IconButton
          sx={{
            color: "white",
            bgcolor: alpha("#161C24", 0.6),
            height: "20px",
            width: "20px",
            ":hover": {
              bgcolor: alpha("#161C24", 0.8),
            },
          }}
          onClick={() => handleDeleteImage(file)}
        >
          <ClearIcon sx={{ fontSize: "12px" }} />
        </IconButton>
      </Box>
      {/* {file.path} - {file.name} - {file.size} bytes - {file.lastModified}
      {console.log("file", file)} */}
    </Box>
  ));
  return (
    <Box>
      <Stack
        sx={{
          minHeight: "280px",
          justifyContent: "center",
          alignItems: "center",
          padding: "10px",
          border: 1,
          cursor: "pointer",
          borderStyle: "dashed",
          borderRadius: "5px",
          borderColor: "#BCC4CD",
          backgroundColor: "#F9FAFA",
          gap: "10px",
          pt: "50px",
          ":hover": {
            opacity: 0.6,
          },
          transition: "0.3s ease-in-out",
        }}
        {...getRootProps({ className: "dropzone" })}
      >
        <input {...getInputProps()} />
        <Icon
          icon="streamline-freehand-color:email-action-image"
          width="80"
          height="80"
        />
        <Typography variant="h6" fontWeight={600}>
          Drop or select files
        </Typography>
        <Stack direction="row" gap="4px">
          <Typography color="text.secondary" variant="subtitle1">
            Drag file here, or
          </Typography>
          <Typography
            color="primary.main"
            variant="subtitle1"
            sx={{ textDecoration: "underline" }}
          >
            <>browse</>
          </Typography>
          <Typography color="text.secondary" variant="subtitle1">
            your device
          </Typography>
        </Stack>
      </Stack>
      {/* {console.log("files", files)} */}
      {files.length > 0 && (
        <Stack spacing={1}>
          <Stack direction="row" spacing={1} py="18px">
            {renderFiles}
          </Stack>
          <Stack
            direction="row"
            spacing={1}
            sx={{ justifyContent: "end", alignItems: "end" }}
          >
            <Button
              variant="outlined"
              color="text.primary"
              size="small"
              sx={{
                fontWeight: 600,
                borderColor: "#919EAB",
                textTransform: "none",
                ":hover": {
                  boxShadow: "0px 0px 1px 1px #000",
                },
                transition: "0.3s ease-in-out",
              }}
              onClick={handleDeleteAllImage}
            >
              Remove All
            </Button>
            <Button
              variant="outlined"
              color="text.primary"
              size="small"
              startIcon={<CloudUploadIcon />}
              sx={{
                fontWeight: 600,
                borderColor: "#919EAB",
                textTransform: "none",
                bgcolor: "black",
                color: "background.paper",
                ":hover": {
                  opacity: 0.7,
                },
                transition: "0.3s ease-in-out",
              }}
            >
              Upload
            </Button>
          </Stack>
        </Stack>
      )}
    </Box>
  );
};
