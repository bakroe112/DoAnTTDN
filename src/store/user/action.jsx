import { axiosClient } from "../../config/axiosClient";
import {
  ADD_NEW_USER_REQUEST,
  ADD_NEW_USER_SUCCESS,
  ADD_NEW_USER_FAILURE,
  GET_USER_REQUEST,
  GET_USER_SUCCESS,
  GET_USER_FAILURE,
} from "./action_type";

export const getUser = () => async (dispatch) => {
  dispatch({ type: GET_USER_REQUEST });
  try {
    axiosClient.get(`/users`).then((data) => {
      dispatch({
        type: GET_USER_SUCCESS,
        payload: data.data,
      });
    });
  } catch (error) {
    dispatch({ type: GET_USER_FAILURE, error: null });
  }
};

export const addNewUser = (user, action) => async (dispatch) => {
  // dispatch({ type: GET_PRODUCT_REQUEST });
  try {
    console.log(user);
    axiosClient
      .post("/users", user)
      .then((data) => {
        dispatch({
          type: ADD_NEW_USER_SUCCESS,
          payload: data.data,
        });
        action();
      })
      .catch((e) => {
        console.log(e);
      });
  } catch (error) {
    dispatch({ type: ADD_NEW_USER_FAILURE, error: null });
  }
};

// export const getOrderById = (id) => async (dispatch) => {
//   dispatch({ type: GET_ORDER_REQUEST });
//   try {
//     axiosClient
//       .get("/orders/" + id)
//       .then((data) => {
//         console.log(data);
//         dispatch({ type: GET_ORDER_SUCCESS, payload: data.data });
//       })
//       .catch((e) => {
//         dispatch({ type: GET_ORDER_FAILURE, payload: e });
//       });
//   } catch (error) {
//     dispatch({ type: GET_ORDER_FAILURE, payload: error });
//   }
// };

// export const updateOrder = (id, order) => async (dispatch) => {
//   dispatch({ type: UPDATE_ORDER_REQUEST });
//   try {
//     axiosClient
//       .put("/orders/" + id, order)
//       .then((data) => {
//         console.log(data);
//         dispatch({ type: UPDATE_ORDER_SUCCESS, payload: data.data });
//       })
//       .catch((e) => {
//         dispatch({ type: UPDATE_ORDER_FAILURE, payload: e });
//       });
//   } catch (error) {
//     dispatch({ type: UPDATE_ORDER_FAILURE, payload: error });
//   }
// };

// export const deleteOrder = (id) => async (dispatch) => {
//   dispatch({ type: DELETE_ORDER_REQUEST });
//   try {
//     axiosClient
//       .delete("/orders/" + id)
//       .then((data) => {
//         console.log(data);
//         dispatch({ type: DELETE_ORDER_SUCCESS, payload: data.data });
//       })
//       .catch((e) => {
//         dispatch({ type: DELETE_ORDER_FAILURE, payload: e });
//       });
//   } catch (error) {
//     dispatch({ type: DELETE_ORDER_FAILURE, payload: error });
//   }
// };
