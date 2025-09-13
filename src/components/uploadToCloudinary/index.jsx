import React from "react";

export const uploadToCloudinary = async (file) => {
  if (file) {
    const data = new FormData();
    data.append("file", file);
    data.append("upload_preset", "e_economic");
    data.append("cloud_name", "dh1cat2ri");

    const res = await fetch(
      "https://api.cloudinary.com/v1_1/dh1cat2ri/image/upload",
      {
        method: "POST",
        body: data,
      }
    );

    const fileData = await res.json();
    return fileData.url.toString();
  }
};
