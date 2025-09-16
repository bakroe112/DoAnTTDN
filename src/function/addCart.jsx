const addCart = (cart, setCart, shopItem, quantity) => {
  setCart((prevCart) => {
    const index = cart?.products.findIndex((item) => item.sku === shopItem.sku);
    if (index !== -1) {
      const updatedCart = { ...cart };
      updatedCart.products[index].quantity_cart += 1;
      return updatedCart;
    } else {
      return {
        ...cart,
        products: [...cart.products, { ...shopItem, quantity_cart: quantity }],
      };
    }
  });
};

export default addCart;
