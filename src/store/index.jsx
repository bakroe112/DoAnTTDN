import React from "react";
import { applyMiddleware, combineReducers, legacy_createStore } from "redux";
import { thunk } from "redux-thunk";
import ProductReducer from "./product/reducer";
import { CategoryReducer } from "./category/Reducer";

const rootReducers = combineReducers({
  products: ProductReducer,
  categories: CategoryReducer,
});

export const store = legacy_createStore(rootReducers, applyMiddleware(thunk));
