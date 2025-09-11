import React from "react";
import { applyMiddleware, combineReducers, legacy_createStore } from "redux";
import { thunk } from "redux-thunk";
import ProductReducer from "./product/reducer";
import { CategoryReducer } from "./category/Reducer";
import { AttributeReducer } from "./attribute/Reducer";

const rootReducers = combineReducers({
  products: ProductReducer,
  categories: CategoryReducer,
  attributes: AttributeReducer,
});

export const store = legacy_createStore(rootReducers, applyMiddleware(thunk));
