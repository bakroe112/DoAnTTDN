import { axiosClient } from "../../config/axiosClient";
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
  GET_ATTRIBUTE_FAILURE,
  GET_ATTRIBUTE_REQUEST,
  GET_ATTRIBUTE_SUCCESS,
  UPDATE_ATTRIBUTE_FAILURE,
  UPDATE_ATTRIBUTE_REQUEST,
  UPDATE_ATTRIBUTE_SUCCESS,
} from "./action_type";

export const getAllAttributes = () => async (dispatch) => {
  dispatch({ type: GET_ALL_ATTRIBUTES_REQUEST });
  try {
    axiosClient
      .get("/all-attributes")
      .then((data) => {
        dispatch({ type: GET_ALL_ATTRIBUTES_SUCCESS, payload: data.data });
      })
      .catch((e) => {
        dispatch({ type: GET_ALL_ATTRIBUTES_FAILURE, payload: e });
      });
  } catch (error) {
    dispatch({ type: GET_ALL_ATTRIBUTES_FAILURE, payload: e });
  }
};

export const getAttribute = (id) => async (dispatch) => {
  dispatch({ type: GET_ATTRIBUTE_REQUEST });
  try {
    axiosClient
      .get("/attributes/" + id)
      .then((data) => {
        dispatch({ type: GET_ATTRIBUTE_SUCCESS, payload: data.data });
      })
      .catch((e) => {
        dispatch({ type: GET_ATTRIBUTE_FAILURE, payload: e });
      });
  } catch (error) {
    dispatch({ type: GET_ATTRIBUTE_FAILURE, payload: e });
  }
};

export const addNewAttribute = (attribute) => async (dispatch) => {
  dispatch({ type: ADD_NEW_ATTRIBUTE_REQUEST });
  try {
    axiosClient
      .post("/attributes", attribute)
      .then((data) => {
        dispatch({ type: ADD_NEW_ATTRIBUTE_SUCCESS, payload: data.data });
      })
      .catch((e) => {
        dispatch({ type: ADD_NEW_ATTRIBUTE_FAILURE, payload: e });
      });
  } catch (error) {
    dispatch({ type: ADD_NEW_ATTRIBUTE_FAILURE, payload: e });
  }
};

export const updateAttribute = (id, attribute) => async (dispatch) => {
  dispatch({ type: UPDATE_ATTRIBUTE_REQUEST });
  try {
    axiosClient
      .put("/attributes/" + id, attribute)
      .then((data) => {
        dispatch({ type: UPDATE_ATTRIBUTE_SUCCESS, payload: data.data });
      })
      .catch((e) => {
        dispatch({ type: UPDATE_ATTRIBUTE_FAILURE, payload: e });
      });
  } catch (error) {
    dispatch({ type: UPDATE_ATTRIBUTE_FAILURE, payload: e });
  }
};

export const deleteAttribute = (id) => async (dispatch) => {
  dispatch({ type: DELETE_ATTRIBUTE_REQUEST });
  try {
    axiosClient
      .delete("/attributes/" + id)
      .then((data) => {
        dispatch({ type: DELETE_ATTRIBUTE_SUCCESS, payload: data.data });
      })
      .catch((e) => {
        dispatch({ type: DELETE_ATTRIBUTE_FAILURE, payload: e });
      });
  } catch (error) {
    dispatch({ type: DELETE_ATTRIBUTE_FAILURE, payload: e });
  }
};
