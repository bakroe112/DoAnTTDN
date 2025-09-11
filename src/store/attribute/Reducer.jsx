import {
  ADD_NEW_ATTRIBUTE_FAILURE,
  ADD_NEW_ATTRIBUTE_REQUEST,
  ADD_NEW_ATTRIBUTE_SUCCESS,
  DELETE_ATTRIBUTE_FAILURE,
  DELETE_ATTRIBUTE_REQUEST,
  DELETE_ATTRIBUTE_SUCCESS,
  GET_ALL_ATTRIBUTES_FAILURE,
  GET_ALL_ATTRIBUTES_REQUEST,
  GET_ALL_ATTRIBUTES_SUCCESS,
  GET_ATTRIBUTE_REQUEST,
  GET_ATTRIBUTE_SUCCESS,
  UPDATE_ATTRIBUTE_FAILURE,
  UPDATE_ATTRIBUTE_REQUEST,
  UPDATE_ATTRIBUTE_SUCCESS,
} from "./action_type";

const initialState = {
  attributes: [],
  loading: true,
  error: null,
};

export const AttributeReducer = (state = initialState, action) => {
  switch (action.type) {
    case GET_ALL_ATTRIBUTES_REQUEST:
    case ADD_NEW_ATTRIBUTE_REQUEST:
    case GET_ATTRIBUTE_REQUEST:
    case UPDATE_ATTRIBUTE_REQUEST:
    case DELETE_ATTRIBUTE_REQUEST:
      return { ...state, loading: true };
    case GET_ALL_ATTRIBUTES_SUCCESS:
      return { ...state, loading: false, attributes: action.payload };
    case ADD_NEW_ATTRIBUTE_SUCCESS:
    case UPDATE_ATTRIBUTE_SUCCESS:
    case DELETE_ATTRIBUTE_SUCCESS:
      return { ...state, loading: false, attributes: action.payload };
    case GET_ATTRIBUTE_SUCCESS:
      return { ...state, loading: false, attribute: action.payload };
    case GET_ALL_ATTRIBUTES_FAILURE:
    case ADD_NEW_ATTRIBUTE_FAILURE:
    case UPDATE_ATTRIBUTE_FAILURE:
    case DELETE_ATTRIBUTE_FAILURE:
      return { ...state, loading: true };

    default:
      return state;
  }
};
