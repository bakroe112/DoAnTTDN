import {
  ADD_NEW_CATEGORY_FAILURE,
  ADD_NEW_CATEGORY_REQUEST,
  ADD_NEW_CATEGORY_SUCCESS,
  DELETE_CATEGORY_FAILURE,
  DELETE_CATEGORY_REQUEST,
  DELETE_CATEGORY_SUCCESS,
  GET_ALL_CATEGORIES_FAILURE,
  GET_ALL_CATEGORIES_REQUEST,
  GET_ALL_CATEGORIES_SUCCESS,
  GET_CATEGORY_REQUEST,
  GET_CATEGORY_SUCCESS,
  UPDATE_CATEGORY_FAILURE,
  UPDATE_CATEGORY_REQUEST,
  UPDATE_CATEGORY_SUCCESS,
} from "./action_type";

const initialState = {
  categories: [],
  loading: true,
  error: null,
};

export const CategoryReducer = (state = initialState, action) => {
  switch (action.type) {
    case GET_ALL_CATEGORIES_REQUEST:
    case ADD_NEW_CATEGORY_REQUEST:
    case GET_CATEGORY_REQUEST:
    case UPDATE_CATEGORY_REQUEST:
    case DELETE_CATEGORY_REQUEST:
      return { ...state, loading: true };
    case GET_ALL_CATEGORIES_SUCCESS:
      return { ...state, loading: false, categories: action.payload };
    case ADD_NEW_CATEGORY_SUCCESS:
    case UPDATE_CATEGORY_SUCCESS:
    case DELETE_CATEGORY_SUCCESS:
      return { ...state, loading: false, categories: action.payload };
    case GET_CATEGORY_SUCCESS:
      return { ...state, loading: false, category: action.payload };
    case GET_ALL_CATEGORIES_FAILURE:
    case ADD_NEW_CATEGORY_FAILURE:
    case UPDATE_CATEGORY_FAILURE:
    case DELETE_CATEGORY_FAILURE:
      return { ...state, loading: true };

    default:
      return state;
  }
};
