import React, { createContext, useContext } from "react";

// tạo một kho dữ liệu chung mà nhiều component có thể truy cập được
const StateContext = createContext({
  product: null,
  cart: [],
  setProduct: () => {},
  setCart: () => {},
});

// là Provider để tạo ra kho lưu dữ liệu cho createContext
const ThemeContext = ({ children }) => {
  const savedCart = JSON.parse(localStorage.getItem("cart_user1")) || {
    products: [],
    address: {
      first_name: "",
      last_name: "",
      phone: 0,
      street_address: "",
      city: "",
      state: "",
      zip: "",
      default: true,
    },
    // payment: {
    //   title: "Cash",
    //   description: "Pay with cash when your order is delivered.",
    //   icon: "tabler:cash",
    // },
  };
  const [cart, setCart] = React.useState(savedCart);

  React.useEffect(() => {
    localStorage.setItem("cart_user1", JSON.stringify(cart));
  }, [cart]);

  return (
    <StateContext.Provider value={{ cart, setCart }}>
      {children}
    </StateContext.Provider>
  );
};
export default ThemeContext;

export const useStateContext = () => useContext(StateContext);
