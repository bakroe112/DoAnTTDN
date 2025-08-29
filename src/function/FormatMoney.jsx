export function formatMoney(amount) {
  const formatted = new Intl.NumberFormat("vi-VN", {
    style: "currency",
    currency: "VND",
  }).format(amount);
  return formatted.replace("đ", "").trim();
}
