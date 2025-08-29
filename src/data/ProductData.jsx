import { getProductByKey } from "@/store/product/Action";
import React from "react";
import { useDispatch, useSelector } from "react-redux";
import { useParams } from "react-router-dom";

const ProductData = () => {
  const id = useParams();
  const products = useSelector((store) => store.products);
  const dispatch = useDispatch();

  React.useEffect(() => {
    dispatch(getProductByKey(id));
  }, []);

  return products.products;
};

export default ProductData;
