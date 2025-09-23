import {
  ADD_NEW_USER_REQUEST,
  ADD_NEW_USER_SUCCESS,
  ADD_NEW_USER_FAILURE,
  GET_USER_REQUEST,
  GET_USER_SUCCESS,
  GET_USER_FAILURE,
} from "./action_type";

const initialState = {
  loading: false,
  users: [],
  error: null,
};

export const OrderReducer = (state = initialState, action) => {
  switch (action.type) {
    case ADD_NEW_USER_REQUEST:
    case GET_USER_REQUEST:
      return { ...state, loading: true, users: [] };
    case ADD_NEW_USER_SUCCESS:
      return { ...state, loading: false };
    case GET_USER_SUCCESS:
      return { ...state, loading: false, users: action.payload };
    case GET_USER_FAILURE:
    case ADD_NEW_USER_FAILURE:
      return { ...state, loading: false };
    default:
      return state;
  }
};
