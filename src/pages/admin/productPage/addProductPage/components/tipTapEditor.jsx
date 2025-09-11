import { Icon } from "@iconify-icon/react";
import {
  Box,
  Button,
  Divider,
  FormControl,
  IconButton,
  MenuItem,
  Select,
  Stack,
} from "@mui/material";
import { EditorContent, useEditor } from "@tiptap/react";
import Image from "@tiptap/extension-image";
import Highlight from "@tiptap/extension-highlight";
import TextAlign from "@tiptap/extension-text-align";
import StarterKit from "@tiptap/starter-kit";
import Heading from "@tiptap/extension-heading";
import Placeholder from "@tiptap/extension-placeholder";
import React from "react";
import classNames from "classnames";

export const TipTapEditor = ({ onChange }) => {
  const editor = useEditor({
    extensions: [
      StarterKit,
      Highlight,
      Image,
      Heading.configure({
        levels: [1, 2, 3, 4, 5, 6],
      }),
      TextAlign.configure({
        types: ["heading", "paragraph"],
      }),
      Placeholder.configure({
        placeholder: "Write something …",
      }),
    ],
    content: "",
    onUpdate: ({ editor }) => {
      // Mỗi lần editor update -> gọi callback
      onChange?.(editor.getHTML(), editor.getText(), editor.getJSON());
    },
  });

  const [typography, setTypography] = React.useState("0");

  const handleChange = (event) => {
    setTypography(event.target.value);

    if (event.target.value == 0) {
      editor.chain().focus().setParagraph().run();
    } else {
      editor
        .chain()
        .focus()
        .toggleHeading({ level: Number(event.target.value) })
        .run();
    }
  };

  const [, forceUpdate] = React.useReducer((x) => x + 1, 0);

  React.useEffect(() => {
    if (!editor) return;
    editor.on("transaction", forceUpdate);
    editor.on("selectionUpdate", forceUpdate);

    return () => {
      editor.off("transaction", forceUpdate);
      editor.off("selectionUpdate", forceUpdate);
    };
  }, [editor]);

  return (
    <Box>
      <Box
        sx={{
          p: "8px",
          borderRadius: "5px 5px 0px 0px",
          border: 1,
          borderColor: "#BCC4CD",
        }}
      >
        <Stack direction="row" gap="10px" alignItems="center">
          <Box>
            <FormControl>
              <Select size="small" value={typography} onChange={handleChange}>
                <MenuItem value="0">Paragraph</MenuItem>
                <MenuItem value="1" sx={{ fontSize: "18px" }}>
                  <strong>Heading 1</strong>
                </MenuItem>
                <MenuItem value="2" sx={{ fontSize: "17px" }}>
                  <strong>Heading 2</strong>
                </MenuItem>
                <MenuItem value="3" sx={{ fontSize: "16px" }}>
                  <strong>Heading 3</strong>
                </MenuItem>
                <MenuItem value="4" sx={{ fontSize: "15px" }}>
                  <strong>Heading 4</strong>
                </MenuItem>
                <MenuItem value="5" sx={{ fontSize: "14px" }}>
                  <strong>Heading 5</strong>
                </MenuItem>
                <MenuItem value="6" sx={{ fontSize: "13px" }}>
                  <strong>Heading 6</strong>
                </MenuItem>
              </Select>
            </FormControl>
          </Box>
          <Divider orientation="vertical" variant="middle" flexItem />
          <Box>
            <IconButton
              onClick={() => editor.chain().focus().toggleBold().run()}
              className={editor.isActive("bold") ? "is-active" : ""}
            >
              <Icon icon="octicon:bold-24" width="18" height="18" />
            </IconButton>
            <IconButton
              onClick={() => editor.chain().focus().toggleItalic().run()}
              className={editor.isActive("italic") ? "is-active" : ""}
            >
              <Icon icon="tabler:italic" width="18" height="18" />
            </IconButton>
            <IconButton
              onClick={() => editor.chain().focus().toggleStrike().run()}
              className={editor.isActive("strike") ? "is-active" : ""}
            >
              <Icon icon="lucide:strikethrough" width="18" height="18" />
            </IconButton>
            <IconButton
              onClick={() => editor.chain().focus().toggleHighlight().run()}
              className={editor.isActive("highlight") ? "is-active" : ""}
            >
              <Icon icon="fluent:highlight-24-filled" width="18" height="18" />
            </IconButton>
          </Box>
          <Divider orientation="vertical" variant="middle" flexItem />
          <Box>
            <IconButton
              onClick={() => editor.chain().focus().setTextAlign("left").run()}
              className={
                editor.isActive({ textAlign: "left" }) ? "is-active" : ""
              }
            >
              <Icon icon="solar:align-left-bold" width="18" height="18" />
            </IconButton>
            <IconButton
              onClick={() =>
                editor.chain().focus().setTextAlign("center").run()
              }
              className={
                editor.isActive({ textAlign: "center" }) ? "is-active" : ""
              }
            >
              <Icon
                icon="solar:align-horizontal-center-bold"
                width="18"
                height="18"
              />
            </IconButton>
            <IconButton
              onClick={() => editor.chain().focus().setTextAlign("right").run()}
              className={
                editor.isActive({ textAlign: "right" }) ? "is-active" : ""
              }
            >
              <Icon icon="solar:align-right-bold" width="18" height="18" />
            </IconButton>
            <IconButton
              onClick={() =>
                editor.chain().focus().setTextAlign("justify").run()
              }
              className={
                editor.isActive({ textAlign: "justify" }) ? "is-active" : ""
              }
            >
              <Icon
                icon="solar:align-vertical-spacing-bold"
                width="18"
                height="18"
              />
            </IconButton>
          </Box>
          <Divider orientation="vertical" variant="middle" flexItem />
          <Box>
            <IconButton
              onClick={() => editor.chain().focus().toggleLink().run()}
              className={
                editor.isActive({ textAlign: "link" }) ? "is-active" : ""
              }
            >
              <Icon icon="stash:link-solid" width="20" height="20" />
            </IconButton>
            <IconButton
              onClick={() => editor.chain().focus().toggleLink().run()}
              className={
                editor.isActive({ textAlign: "link" }) ? "is-active" : ""
              }
            >
              <Icon icon="uil:link-broken" width="20" height="20" />
            </IconButton>
            <IconButton
              onClick={() => {
                const url = window.prompt("URL");
                url && editor.chain().focus().setImage({ src: url }).run();
              }}
              className={
                editor.isActive({ textAlign: "link" }) ? "is-active" : ""
              }
            >
              <Icon
                icon="material-symbols:image-outline-rounded"
                width="20"
                height="20"
              />
            </IconButton>
          </Box>
        </Stack>
      </Box>
      <Box
        sx={{
          minHeight: { xs: "100px", md: "200px" },
          maxHeight: { xs: "200px", md: "350px", lg: "500px" },
          padding: "16px",
          borderRadius: " 0px 0px 5px 5px",
          border: 1,
          borderTop: 0,
          overflow: "hidden",
          overflowY: "auto",
          borderColor: "#BCC4CD",
          backgroundColor: "#F6F7F8",
        }}
      >
        <EditorContent
          editor={editor}
          onFocus={(e) => (e.target.style.outline = "none")}
        />
      </Box>
    </Box>
  );
};
