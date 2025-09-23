-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 23, 2025 lúc 03:56 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `e_economic`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `value`, `parent_id`, `created_at`, `updated_at`) VALUES
(6, 'Thông tin chung', '', NULL, '2025-09-13 22:22:47', '2025-09-13 22:22:47'),
(7, 'Cấu hình chi tiết', '', NULL, '2025-09-13 22:22:47', '2025-09-13 22:22:47'),
(8, 'Bảo hành', '24 tháng', 6, '2025-09-13 22:22:47', '2025-09-13 22:22:47'),
(9, 'Tên', 'LS22C310EAEXXV', 6, '2025-09-13 22:22:47', '2025-09-13 22:22:47'),
(10, 'Kích thước', '22\\\"', 7, '2025-09-13 22:22:47', '2025-09-13 22:22:47'),
(11, 'Thương hiệu', 'HP', 6, '2025-09-13 22:38:58', '2025-09-13 22:38:58'),
(12, 'Series model', 'HP OmniBook', 6, '2025-09-13 22:39:16', '2025-09-13 22:39:16'),
(13, 'Part-number', 'C1MN2PA', 6, '2025-09-13 22:39:24', '2025-09-13 22:39:24'),
(14, 'Màu sắc', 'Bạc', 6, '2025-09-13 22:39:33', '2025-09-13 22:39:33'),
(15, 'Nhu cầu', 'Văn phòng', 6, '2025-09-13 22:39:39', '2025-09-13 22:39:39'),
(16, 'CPU', 'Intel® Core™ Ultra 5-225U ( 3.8 GHz - 4.8 GHz / 12MB / 12 nhân, 14 luồng ), Intel AI', 7, '2025-09-13 22:39:47', '2025-09-13 22:39:47'),
(17, 'NPU', 'Intel® AI Boost, up to 12 TOPS', 7, '2025-09-13 22:39:56', '2025-09-13 22:39:56'),
(18, 'Chip đồ họa', 'Onboard graphics Intel® Graphics', 7, '2025-09-13 22:45:28', '2025-09-13 22:45:28'),
(19, 'Màn hình', '14\" ( 1920 x 1200 ) WUXGA IPS , không cảm ứng , 300 nits , 62.5% sRGB , Màn hình chống lóa', 7, '2025-09-13 22:45:36', '2025-09-13 22:45:36'),
(20, 'Webcam', 'HD webcam', 7, '2025-09-13 22:45:43', '2025-09-13 22:45:43'),
(21, 'Âm thanh', 'HP Audio Boost', 7, '2025-09-13 22:46:08', '2025-09-13 22:46:08'),
(22, 'Thương hiệu', 'Asus', 6, '2025-09-13 22:46:39', '2025-09-13 22:46:39'),
(23, 'Bảo hành', '6 tháng', 6, '2025-09-13 22:46:49', '2025-09-13 22:46:49'),
(24, 'Nhu cầu', 'Gaming', 6, '2025-09-13 22:47:10', '2025-09-13 22:47:10'),
(25, 'CPU', 'Intel® Core™ Ultra 9-285H ( 2.5 GHz - 4.5 GHz / 36MB / 24 nhân, 24 luồng ), Intel AI', 7, '2025-09-13 22:47:26', '2025-09-13 22:47:26'),
(26, 'Chip đồ họa', 'GeForce RTX™ 5090 24GB GDDR7 ( 1647MHz , 120W , 3352 AI TOPs ) Intel® Arc™ Graphics', 7, '2025-09-13 22:47:33', '2025-09-13 22:47:33'),
(27, 'Màn hình', '16\" ( 2560 x 1600 ) WQXGA 16:10 , OLED , 240Hz , không cảm ứng , 500 nits , 100% DCI-P3 , Màn hình gương , G-Sync', 7, '2025-09-13 22:47:41', '2025-09-13 22:47:41'),
(28, 'Màu sắc', 'Đen', 6, '2025-09-13 23:59:37', '2025-09-13 23:59:37'),
(29, 'Series model', 'Lenovo ThinkPad', 6, '2025-09-13 23:59:54', '2025-09-13 23:59:54'),
(31, 'Thương hiệu', 'Lenovo', 6, '2025-09-14 00:00:35', '2025-09-14 00:00:35'),
(32, 'Bảo hành', '36 tháng', 6, '2025-09-14 00:00:42', '2025-09-14 00:00:42'),
(33, 'Thương hiệu', 'Dell', 6, '2025-09-23 03:00:37', '2025-09-23 03:00:37'),
(36, 'Bảo hành', '12 tháng', 6, '2025-09-23 03:01:08', '2025-09-23 03:01:08'),
(37, 'Tên', '15 DC15250', 6, '2025-09-23 03:01:17', '2025-09-23 03:01:17'),
(38, 'Part-number', '71073959', 6, '2025-09-23 03:01:23', '2025-09-23 03:01:23'),
(39, 'CPU', 'Intel® Core™ i7-1355U ( 1.7 GHz - 5.0 GHz / 12MB / 10 nhân, 12 luồng ), Non-EVO', 7, '2025-09-23 03:01:34', '2025-09-23 03:01:34'),
(40, 'Chip đồ họa', 'Onboard graphics Intel® Iris® Xe Graphics', 7, '2025-09-23 03:01:41', '2025-09-23 03:01:41'),
(41, 'Màn hình', '15.6\" ( 1920 x 1080 ) Full HD WVA , 120Hz , không cảm ứng , 250 nits , Màn hình chống lóa', 7, '2025-09-23 03:02:01', '2025-09-23 03:02:01'),
(42, 'Webcam', 'HD webcam', 7, '2025-09-23 03:02:08', '2025-09-23 03:02:08'),
(43, 'Series model', 'Acer Nitro', 6, '2025-09-23 03:08:43', '2025-09-23 03:08:43'),
(44, 'Tên', 'Nitro V 15 ProPanel ANV15-41-R7CR', 6, '2025-09-23 03:08:51', '2025-09-23 03:10:18'),
(45, 'Nhu cầu', 'Gaming', 7, '2025-09-23 03:09:22', '2025-09-23 03:10:06'),
(46, 'CPU', 'AMD Ryzen™ 5 7535HS ( 3.3 GHz - 4.55 GHz / 16MB / 6 nhân, 12 luồng ), AMD', 7, '2025-09-23 03:09:33', '2025-09-23 03:09:33'),
(47, 'CPU', 'AMD Ryzen™ 5 7535HS ( 3.3 GHz - 4.55 GHz / 16MB / 6 nhân, 12 luồng ), AMD', 7, '2025-09-23 03:10:31', '2025-09-23 03:10:31'),
(48, 'Chip đồ họa', 'GeForce RTX™ 4050 6GB GDDR6 194 AI TOPs ) AMD Radeon 660M', 7, '2025-09-23 03:10:37', '2025-09-23 03:16:09'),
(49, 'Màn hình', '15.6\" ( 1920 x 1080 ) Full HD IPS , 180Hz , không cảm ứng , 300 nits , 100% sRGB , Acer ComfyView', 7, '2025-09-23 03:10:43', '2025-09-23 03:16:23'),
(50, 'Ram', '1 x 16GB DDR5 4800MHz ( 2 Khe cắm / Hỗ trợ tối đa 96GB )', 7, '2025-09-23 03:10:50', '2025-09-23 03:16:46'),
(51, 'Chip đồ họa', 'Onboard graphics Intel® Iris® Xe Graphics', 7, '2025-09-23 03:15:05', '2025-09-23 03:16:54'),
(52, 'Màn hình', '14\" ( 1920 x 1200 ) WUXGA IPS , 60Hz , 250 nits , 45% NTSC , Acer ComfyView', 7, '2025-09-23 03:15:10', '2025-09-23 03:17:00'),
(53, 'Ram', '16GB LPDDR5 6400MHz ( 1 Khe cắm / Không nâng cấp được )', 7, '2025-09-23 03:15:17', '2025-09-23 03:17:08'),
(54, 'Âm thanh', 'Acer Purified Voice', 7, '2025-09-23 03:15:25', '2025-09-23 03:17:15'),
(55, 'Mô tả bảo hành', 'Bảo hành Pin 12 tháng', 6, '2025-09-23 03:15:39', '2025-09-23 03:15:39'),
(56, 'Series model', 'Acer Aspire', 6, '2025-09-23 03:15:47', '2025-09-23 03:16:01'),
(57, 'Màu sắc', 'Xám', 6, '2025-09-23 03:17:59', '2025-09-23 03:17:59'),
(58, 'Thương hiệu', 'Apple', 6, '2025-09-23 03:23:29', '2025-09-23 03:23:29'),
(59, 'Bảo hành', '12 tháng', 6, '2025-09-23 03:23:35', '2025-09-23 03:23:35'),
(60, 'Nhóm sản phẩm', 'Điện thoại', 6, '2025-09-23 03:23:42', '2025-09-23 03:23:42'),
(61, 'Độ phân giải', '2622 x 1206', 7, '2025-09-23 03:23:49', '2025-09-23 03:23:49'),
(62, 'Cấu hình', NULL, NULL, '2025-09-23 03:23:57', '2025-09-23 03:23:57'),
(63, 'Dung lượng (ROM)', '256GB', 62, '2025-09-23 03:24:03', '2025-09-23 03:24:03'),
(64, 'Hệ điều hành', 'iOS', 62, '2025-09-23 03:24:10', '2025-09-23 03:24:10'),
(65, 'RAM', '12GB', 62, '2025-09-23 03:24:16', '2025-09-23 03:24:16'),
(66, 'Thương hiệu', 'Msi', 6, '2025-09-23 04:01:43', '2025-09-23 04:01:43'),
(67, 'Dòng CPU', 'Ultra 9', 7, '2025-09-23 04:01:54', '2025-09-23 04:01:54'),
(68, 'Thế hệ CPU', 'Intel Core Ultra series 2', 7, '2025-09-23 04:02:00', '2025-09-23 04:02:00'),
(69, 'CPU', 'Intel Ultra 9 285K ( 3.7 GHz - 5.5 GHz / 36MB / 24 nhân, 24 luồng )', 7, '2025-09-23 04:02:06', '2025-09-23 04:02:06'),
(70, 'RAM', '2 x 16GB DDR5 5600MHz ( 4 Khe cắm Hỗ trợ tối đa 128GB )', 7, '2025-09-23 04:02:12', '2025-09-23 04:02:12'),
(71, 'Lưu trữ', '1TB SSD', 7, '2025-09-23 04:02:19', '2025-09-23 04:02:19'),
(72, 'Hệ điều hành', 'No OS', 7, '2025-09-23 04:03:18', '2025-09-23 04:03:18'),
(73, 'Số cổng lưu trữ tối đa', '2 x M.2 NVMe, 1 x M.2 SATA/NVMe , 1 x 2.5\" SATA, 2 x 3.5\" SATA', 7, '2025-09-23 04:03:25', '2025-09-23 04:03:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(11, 'Laptop', NULL, '2025-09-13 22:22:47', '2025-09-13 22:22:47'),
(13, 'Thương hiệu', 11, '2025-09-13 22:22:47', '2025-09-13 22:22:47'),
(14, 'Apple', 13, '2025-09-13 22:22:47', '2025-09-13 22:22:47'),
(21, 'Acer', 13, '2025-09-13 22:24:20', '2025-09-13 22:24:20'),
(22, 'ASUS', 13, '2025-09-13 22:24:30', '2025-09-13 22:24:30'),
(23, 'Dell', 13, '2025-09-13 22:24:50', '2025-09-13 22:24:50'),
(24, 'HP', 13, '2025-09-13 22:25:45', '2025-09-13 22:25:45'),
(25, 'Lenovo', 13, '2025-09-13 22:26:16', '2025-09-13 22:26:26'),
(26, 'Nhu Cầu', 11, '2025-09-13 22:26:38', '2025-09-13 22:33:42'),
(27, 'Laptop Gaming', 26, '2025-09-13 22:27:27', '2025-09-13 22:27:27'),
(28, 'Laptop AI', 26, '2025-09-13 22:27:40', '2025-09-13 22:27:40'),
(29, 'Laptop đồ họa', 26, '2025-09-13 22:27:53', '2025-09-13 22:27:53'),
(30, 'Laptop Sinh Viên', 26, '2025-09-13 22:28:02', '2025-09-13 22:28:02'),
(31, 'Cấu hình', 11, '2025-09-13 22:28:07', '2025-09-13 22:33:52'),
(32, 'Laptop i5', 31, '2025-09-13 22:28:21', '2025-09-13 22:28:21'),
(33, 'Laptop i7', 31, '2025-09-13 22:28:29', '2025-09-13 22:28:29'),
(34, 'Laptop i9', 31, '2025-09-13 22:28:37', '2025-09-13 22:28:37'),
(35, 'Laptop Ryzen 5', 31, '2025-09-13 22:28:48', '2025-09-13 22:28:48'),
(36, 'Sản phẩm Apple', NULL, '2025-09-13 22:34:18', '2025-09-13 22:34:18'),
(37, 'Mac', 36, '2025-09-13 22:34:27', '2025-09-13 22:34:27'),
(38, 'Macbook Air', 37, '2025-09-13 22:34:39', '2025-09-13 22:34:39'),
(39, 'Macbook Pro', 37, '2025-09-13 22:34:48', '2025-09-13 22:34:48'),
(40, 'iMac', 37, '2025-09-13 22:34:54', '2025-09-13 22:34:54'),
(41, 'Mac mini', 37, '2025-09-13 22:35:01', '2025-09-13 22:35:01'),
(42, 'Iphone', 36, '2025-09-13 22:35:14', '2025-09-13 22:35:14'),
(43, 'iPhone 17 series', 42, '2025-09-13 22:35:25', '2025-09-13 22:35:25'),
(44, 'iPhone 16 series', 42, '2025-09-13 22:35:36', '2025-09-13 22:35:36'),
(45, 'PC - Máy tính bàn', NULL, '2025-09-13 22:35:48', '2025-09-13 22:35:48'),
(46, 'PC theo thương hiệu', 45, '2025-09-13 22:35:57', '2025-09-13 22:35:57'),
(47, 'PC ASUS', 46, '2025-09-13 22:36:04', '2025-09-13 22:36:04'),
(48, 'PC Dell', 46, '2025-09-13 22:36:12', '2025-09-13 22:36:12'),
(49, 'PC Intel', 46, '2025-09-13 22:36:20', '2025-09-13 22:36:20'),
(50, 'PC theo nhu cầu', 45, '2025-09-13 22:36:32', '2025-09-13 22:36:32'),
(51, 'PC AI', 50, '2025-09-13 22:36:39', '2025-09-13 22:36:39'),
(52, 'PC Gaming', 50, '2025-09-13 22:36:48', '2025-09-13 22:36:48'),
(53, 'PC đồ họa', 50, '2025-09-13 22:36:57', '2025-09-13 22:36:57'),
(55, 'Laptop - Máy tính xách tay', 26, '2025-09-13 23:59:02', '2025-09-13 23:59:02'),
(56, 'Laptop - Máy tính xách tay non-gaming', 26, '2025-09-13 23:59:10', '2025-09-13 23:59:10'),
(57, 'Điện máy', NULL, '2025-09-15 21:23:26', '2025-09-15 21:23:26'),
(58, 'Điện gia dụng', NULL, '2025-09-15 21:24:05', '2025-09-15 21:24:05'),
(59, 'Màn hình máy tính', NULL, '2025-09-15 21:24:12', '2025-09-15 21:24:12'),
(60, 'Linh kiện máy tính', NULL, '2025-09-15 21:24:21', '2025-09-15 21:24:21'),
(61, 'Phụ kiện máy tính', NULL, '2025-09-15 21:27:33', '2025-09-15 21:27:33'),
(62, 'Gaming Gear', NULL, '2025-09-15 21:29:58', '2025-09-15 21:29:58'),
(63, 'Điện thoại, Tablet, Phụ kiện', NULL, '2025-09-15 21:30:10', '2025-09-15 21:30:10'),
(64, 'Phụ kiện', NULL, '2025-09-15 21:30:17', '2025-09-15 21:30:17'),
(65, 'Thiết bị âm thanh', NULL, '2025-09-15 21:30:25', '2025-09-15 21:30:25'),
(66, 'Thiết bị văn phòng', NULL, '2025-09-15 21:30:33', '2025-09-15 21:30:33'),
(67, 'Giải pháp doanh nghiệp', NULL, '2025-09-15 21:30:45', '2025-09-15 21:30:45'),
(68, 'Hàng thanh lý', NULL, '2025-09-15 21:30:50', '2025-09-15 21:30:50'),
(69, 'Laptop HP', 11, '2025-09-23 01:27:39', '2025-09-23 01:27:39'),
(70, 'HP Envy', 69, '2025-09-23 01:28:17', '2025-09-23 01:28:17'),
(71, 'HP Omen', 69, '2025-09-23 01:29:19', '2025-09-23 01:29:19'),
(72, 'HP Victus', 69, '2025-09-23 01:29:48', '2025-09-23 01:29:48'),
(73, 'Laptop Lenovo', 11, '2025-09-23 01:30:12', '2025-09-23 01:30:12'),
(74, 'Lenovo Legion', 73, '2025-09-23 01:31:50', '2025-09-23 01:31:50'),
(75, 'Lenovo ThinkBook', 73, '2025-09-23 01:32:52', '2025-09-23 01:32:52'),
(76, 'Lenovo IdeaPad', 73, '2025-09-23 01:33:10', '2025-09-23 01:33:10'),
(77, 'Lenovo ThinkPad', 73, '2025-09-23 01:33:44', '2025-09-23 01:33:44'),
(78, 'Laptop Acer', 11, '2025-09-23 01:35:15', '2025-09-23 01:35:15'),
(79, 'Acer Nitro 5', 78, '2025-09-23 01:35:40', '2025-09-23 01:35:40'),
(80, 'Acer Predator', 78, '2025-09-23 01:36:39', '2025-09-23 01:36:39'),
(81, 'Acer Nitro Swift', 78, '2025-09-23 01:37:03', '2025-09-23 01:37:03'),
(82, 'Laptop Asus', 11, '2025-09-23 01:37:26', '2025-09-23 01:37:26'),
(83, 'ASUS Vivobook', 82, '2025-09-23 01:38:12', '2025-09-23 01:38:12'),
(85, 'ASUS TUF Gaming', 82, '2025-09-23 01:39:04', '2025-09-23 01:39:04'),
(86, 'ASUS Zenbook', 82, '2025-09-23 01:39:31', '2025-09-23 01:39:31'),
(87, 'Ipad', 36, '2025-09-23 01:40:07', '2025-09-23 01:40:07'),
(88, 'iPad Pro', 87, '2025-09-23 01:40:27', '2025-09-23 01:40:27'),
(89, 'iPad Air', 87, '2025-09-23 01:41:03', '2025-09-23 01:41:03'),
(90, 'iPad Mini', 87, '2025-09-23 01:41:23', '2025-09-23 01:41:23'),
(91, 'Phụ kiện Apple', 36, '2025-09-23 01:41:36', '2025-09-23 01:41:36'),
(92, 'Apple Watch', 91, '2025-09-23 01:41:51', '2025-09-23 01:41:51'),
(93, 'Củ sạc & cáp sạc', 91, '2025-09-23 01:42:19', '2025-09-23 01:42:19'),
(94, 'Airtag', 91, '2025-09-23 01:42:27', '2025-09-23 01:42:27'),
(95, 'Tivi', 57, '2025-09-23 01:42:38', '2025-09-23 01:42:38'),
(96, 'Samsung', 95, '2025-09-23 01:42:47', '2025-09-23 01:42:47'),
(97, 'LG', 95, '2025-09-23 01:42:53', '2025-09-23 01:42:53'),
(98, 'Sony', 95, '2025-09-23 01:43:01', '2025-09-23 01:43:01'),
(99, 'Xiaomi', 95, '2025-09-23 01:43:17', '2025-09-23 01:43:17'),
(100, 'TCL', 95, '2025-09-23 01:43:57', '2025-09-23 01:43:57'),
(101, 'PC HP', 46, '2025-09-23 01:44:41', '2025-09-23 01:44:41'),
(102, 'PC theo cấu hình VGA', 45, '2025-09-23 01:45:01', '2025-09-23 01:46:33'),
(103, 'PC RTX 5000 series', 102, '2025-09-23 01:45:18', '2025-09-23 01:45:18'),
(104, 'PC RTX 4090', 102, '2025-09-23 01:45:29', '2025-09-23 01:45:29'),
(105, 'PC RTX 4080', 102, '2025-09-23 01:45:37', '2025-09-23 01:45:37'),
(106, 'PC RTX 4070', 103, '2025-09-23 01:45:45', '2025-09-23 01:45:45'),
(107, 'PC RTX 4060', 102, '2025-09-23 01:45:53', '2025-09-23 01:45:53'),
(108, 'PC cấu hình CPU Intel', 45, '2025-09-23 01:47:06', '2025-09-23 01:47:06'),
(109, 'PC i9', 108, '2025-09-23 01:47:14', '2025-09-23 01:47:14'),
(110, 'PC i7', 108, '2025-09-23 01:47:21', '2025-09-23 01:47:21'),
(111, 'PC i5', 108, '2025-09-23 01:47:29', '2025-09-23 01:47:29'),
(112, 'Theo Thương hiệu', 59, '2025-09-23 01:48:10', '2025-09-23 01:48:10'),
(113, 'ASUS', 112, '2025-09-23 01:48:17', '2025-09-23 01:48:17'),
(114, 'Acer', 112, '2025-09-23 01:48:22', '2025-09-23 01:48:22'),
(115, 'Dell', 112, '2025-09-23 01:48:28', '2025-09-23 01:48:28'),
(116, 'LG', 112, '2025-09-23 01:48:35', '2025-09-23 01:48:35'),
(117, 'MSI', 112, '2025-09-23 01:48:46', '2025-09-23 01:48:46'),
(118, 'Tần số quét', 59, '2025-09-23 01:54:04', '2025-09-23 01:54:04'),
(119, '60Hz', 118, '2025-09-23 01:54:10', '2025-09-23 01:54:10'),
(120, '75Hz', 118, '2025-09-23 01:54:19', '2025-09-23 01:54:19'),
(121, '100Hz', 118, '2025-09-23 01:54:28', '2025-09-23 01:54:28'),
(122, '120Hz', 118, '2025-09-23 01:54:50', '2025-09-23 01:54:50'),
(123, '144Hz', 118, '2025-09-23 01:54:58', '2025-09-23 01:54:58'),
(124, '165Hz', 118, '2025-09-23 01:55:07', '2025-09-23 01:55:07'),
(125, 'Theo kích cỡ', 59, '2025-09-23 01:55:30', '2025-09-23 01:55:30'),
(126, 'Dưới 19 inch', 125, '2025-09-23 01:55:45', '2025-09-23 01:55:45'),
(127, '24 inch', 125, '2025-09-23 01:55:53', '2025-09-23 01:55:53'),
(128, '22 inch', 125, '2025-09-23 01:55:59', '2025-09-23 01:55:59'),
(129, '27 inch', 125, '2025-09-23 01:56:06', '2025-09-23 01:56:06'),
(130, '32 inch', 125, '2025-09-23 01:56:20', '2025-09-23 01:56:20'),
(131, '32 inch trở lên', 125, '2025-09-23 01:56:31', '2025-09-23 01:56:31'),
(132, 'Ổ cứng', 60, '2025-09-23 02:24:24', '2025-09-23 02:24:24'),
(133, 'Ổ cứng SSD', 132, '2025-09-23 02:24:40', '2025-09-23 02:24:40'),
(134, 'Ổ cứng HDD', 132, '2025-09-23 02:24:47', '2025-09-23 02:24:47'),
(135, 'Ổ cứng di động', 132, '2025-09-23 02:24:55', '2025-09-23 02:24:55'),
(136, 'WD', 132, '2025-09-23 02:25:03', '2025-09-23 02:25:03'),
(137, 'Seagate', 132, '2025-09-23 02:25:11', '2025-09-23 02:25:11'),
(138, 'Case - Thùng máy tính', 60, '2025-09-23 02:25:26', '2025-09-23 02:25:26'),
(139, 'ASUS', 138, '2025-09-23 02:26:11', '2025-09-23 02:26:11'),
(140, 'SAMA', 138, '2025-09-23 02:26:17', '2025-09-23 02:26:17'),
(141, 'MSI', 138, '2025-09-23 02:26:25', '2025-09-23 02:26:25'),
(142, 'GIGABYTE', 138, '2025-09-23 02:26:37', '2025-09-23 02:26:37'),
(143, 'CORSAIR', 138, '2025-09-23 02:26:55', '2025-09-23 02:26:55'),
(144, 'RAM PC', 60, '2025-09-23 02:27:05', '2025-09-23 02:27:05'),
(145, 'RAM DDR5', 144, '2025-09-23 02:27:14', '2025-09-23 02:27:14'),
(146, 'RAM DDR4', 144, '2025-09-23 02:27:23', '2025-09-23 02:27:23'),
(147, 'Ram 8GB', 144, '2025-09-23 02:27:32', '2025-09-23 02:27:32'),
(148, 'Ram 16GB', 144, '2025-09-23 02:27:40', '2025-09-23 02:27:40'),
(149, 'Ram 32GB', 144, '2025-09-23 02:27:49', '2025-09-23 02:27:49'),
(150, 'Kingston', 144, '2025-09-23 02:28:00', '2025-09-23 02:28:00'),
(151, 'Gigabyte', 144, '2025-09-23 02:28:12', '2025-09-23 02:28:12'),
(152, 'KINGMAX', 144, '2025-09-23 02:28:21', '2025-09-23 02:28:21'),
(153, 'CORSAIR', 144, '2025-09-23 02:28:33', '2025-09-23 02:28:33'),
(154, 'Adata', 144, '2025-09-23 02:28:43', '2025-09-23 02:28:43'),
(155, 'CPU - Bộ vi xử lý', 60, '2025-09-23 02:28:55', '2025-09-23 02:28:55'),
(156, 'CPU Intel', 155, '2025-09-23 02:29:09', '2025-09-23 02:29:09'),
(157, 'Intel Core Ultra 200S', 155, '2025-09-23 02:29:35', '2025-09-23 02:29:35'),
(158, 'Intel thế hệ 12', 155, '2025-09-23 02:29:42', '2025-09-23 02:29:42'),
(159, 'Intel Core i3', 155, '2025-09-23 02:29:50', '2025-09-23 02:29:50'),
(160, 'Intel Core i5', 155, '2025-09-23 02:29:57', '2025-09-23 02:29:57'),
(161, 'PSU - Nguồn máy tính', 60, '2025-09-23 02:30:16', '2025-09-23 02:30:16'),
(162, 'ASUS', 161, '2025-09-23 02:30:22', '2025-09-23 02:30:22'),
(163, 'Cooler Master', 161, '2025-09-23 02:30:28', '2025-09-23 02:30:28'),
(164, 'Golden Field', 161, '2025-09-23 02:30:35', '2025-09-23 02:30:35'),
(165, 'CORSAIR', 161, '2025-09-23 02:30:41', '2025-09-23 02:30:41'),
(166, 'Gigabyte', 161, '2025-09-23 02:30:46', '2025-09-23 02:30:46'),
(167, 'Mainboard - Bo mạch chủ', 60, '2025-09-23 02:31:03', '2025-09-23 02:31:03'),
(168, 'Mainboard B860', 167, '2025-09-23 02:31:09', '2025-09-23 02:31:09'),
(169, 'Mainboard B760', 167, '2025-09-23 02:31:16', '2025-09-23 02:31:16'),
(170, 'Mainboard Z890', 167, '2025-09-23 02:31:21', '2025-09-23 02:31:21'),
(171, 'Mainboard Z790', 167, '2025-09-23 02:31:26', '2025-09-23 02:31:26'),
(172, 'Mainboard X870', 167, '2025-09-23 02:31:32', '2025-09-23 02:31:32'),
(173, 'Chuột máy tính', 61, '2025-09-23 02:31:56', '2025-09-23 02:31:56'),
(174, 'ASUS', 173, '2025-09-23 02:32:02', '2025-09-23 02:32:02'),
(175, 'Logitech', 173, '2025-09-23 02:32:11', '2025-09-23 02:32:11'),
(176, 'Corsair', 173, '2025-09-23 02:32:18', '2025-09-23 02:32:18'),
(177, 'Razer', 173, '2025-09-23 02:32:23', '2025-09-23 02:32:23'),
(178, 'SteelSeries', 173, '2025-09-23 02:32:28', '2025-09-23 02:32:28'),
(179, 'Bàn phím', 61, '2025-09-23 02:32:41', '2025-09-23 02:32:41'),
(180, 'Asus', 179, '2025-09-23 02:32:47', '2025-09-23 02:32:47'),
(181, 'Logitech', 179, '2025-09-23 02:32:52', '2025-09-23 02:32:52'),
(182, 'Rapoo', 179, '2025-09-23 02:32:59', '2025-09-23 02:32:59'),
(183, 'Microsoft', 179, '2025-09-23 02:33:06', '2025-09-23 02:33:06'),
(184, 'Razer', 179, '2025-09-23 02:33:11', '2025-09-23 02:33:11'),
(185, 'Corsair', 179, '2025-09-23 02:33:17', '2025-09-23 02:33:17'),
(186, 'HyperX', 179, '2025-09-23 02:33:23', '2025-09-23 02:33:23'),
(187, 'Aula', 179, '2025-09-23 02:33:29', '2025-09-23 02:33:29'),
(188, 'Newmen', 179, '2025-09-23 02:33:34', '2025-09-23 02:33:34'),
(189, 'Tay cầm chơi game', 62, '2025-09-23 02:33:51', '2025-09-23 02:33:51'),
(190, 'PlayStation', 189, '2025-09-23 02:33:57', '2025-09-23 02:33:57'),
(191, 'Xbox', 189, '2025-09-23 02:41:46', '2025-09-23 02:41:46'),
(192, 'Logitech', 189, '2025-09-23 02:41:52', '2025-09-23 02:41:52'),
(193, 'Chuột Gaming', 62, '2025-09-23 02:42:01', '2025-09-23 02:42:01'),
(194, 'ASUS', 193, '2025-09-23 02:42:06', '2025-09-23 02:42:06'),
(195, 'Logitech', 193, '2025-09-23 02:42:12', '2025-09-23 02:42:12'),
(196, 'CORSAIR', 193, '2025-09-23 02:42:19', '2025-09-23 02:42:19'),
(197, 'Razer', 193, '2025-09-23 02:42:24', '2025-09-23 02:42:24'),
(198, 'Bàn phím Gaming', 62, '2025-09-23 02:42:33', '2025-09-23 02:42:33'),
(199, 'ASUS', 198, '2025-09-23 02:42:39', '2025-09-23 02:42:39'),
(200, 'Logitech', 198, '2025-09-23 02:42:49', '2025-09-23 02:42:49'),
(201, 'CORSAIR', 198, '2025-09-23 02:42:56', '2025-09-23 02:42:56'),
(202, 'Razer', 198, '2025-09-23 02:43:02', '2025-09-23 02:43:02'),
(203, 'Tai nghe Gaming', 62, '2025-09-23 02:43:10', '2025-09-23 02:43:10'),
(204, 'ASUS', 203, '2025-09-23 02:43:15', '2025-09-23 02:43:15'),
(205, 'Logitech', 203, '2025-09-23 02:43:20', '2025-09-23 02:43:20'),
(206, 'CORSAIR', 203, '2025-09-23 02:43:26', '2025-09-23 02:43:26'),
(207, 'Phụ kiện điện thoại', 63, '2025-09-23 02:43:49', '2025-09-23 02:43:49'),
(208, 'Kính cường lực', 207, '2025-09-23 02:43:57', '2025-09-23 02:43:57'),
(209, 'Ốp lưng', 207, '2025-09-23 02:44:06', '2025-09-23 02:44:06'),
(210, 'Vòng giữ điện thoại', 207, '2025-09-23 02:44:12', '2025-09-23 02:44:12'),
(211, 'Máy tính bảng', 63, '2025-09-23 02:44:22', '2025-09-23 02:44:22'),
(212, 'iPad', 211, '2025-09-23 02:44:27', '2025-09-23 02:44:27'),
(213, 'Samsung', 211, '2025-09-23 02:44:32', '2025-09-23 02:44:32'),
(214, 'Xiaomi', 211, '2025-09-23 02:44:38', '2025-09-23 02:44:38'),
(215, 'Điện thoại', 63, '2025-09-23 02:44:50', '2025-09-23 02:44:50'),
(216, 'iPhone', 215, '2025-09-23 02:44:55', '2025-09-23 02:44:55'),
(217, 'Samsung', 215, '2025-09-23 02:45:00', '2025-09-23 02:45:00'),
(218, 'Xiaomi', 215, '2025-09-23 02:45:06', '2025-09-23 02:45:06'),
(219, 'Lưu trữ - Chuyển đổi', 64, '2025-09-23 02:45:28', '2025-09-23 02:45:28'),
(220, 'Hub', 219, '2025-09-23 02:45:35', '2025-09-23 02:45:35'),
(221, 'Cáp chuyền - cáp nối', 219, '2025-09-23 02:45:43', '2025-09-23 02:45:43'),
(222, 'USB', 219, '2025-09-23 02:45:54', '2025-09-23 02:45:54'),
(223, 'Đầu chuyển', 219, '2025-09-23 02:46:01', '2025-09-23 02:46:01'),
(224, 'Phụ kiện laptop', 64, '2025-09-23 02:46:09', '2025-09-23 02:46:09'),
(225, 'Giá đỡ', 224, '2025-09-23 02:46:15', '2025-09-23 02:46:15'),
(226, 'Đế tản nhiệt', 224, '2025-09-23 02:46:21', '2025-09-23 02:46:21'),
(227, 'Balo - túi chống sốc', 224, '2025-09-23 02:46:27', '2025-09-23 02:46:27'),
(228, 'Phụ kiện khác', 64, '2025-09-23 02:46:37', '2025-09-23 02:46:37'),
(229, 'Máy ảnh', 228, '2025-09-23 02:46:42', '2025-09-23 02:46:42'),
(230, 'Máy ghi âm', 228, '2025-09-23 02:46:49', '2025-09-23 02:46:49'),
(231, 'Máy quay phim', 228, '2025-09-23 02:46:54', '2025-09-23 02:46:54'),
(232, 'Tai nghe', 65, '2025-09-23 02:47:44', '2025-09-23 02:47:44'),
(233, 'Asus', 232, '2025-09-23 02:47:51', '2025-09-23 02:47:51'),
(234, 'Apple', 232, '2025-09-23 02:47:57', '2025-09-23 02:47:57'),
(235, 'Sony', 232, '2025-09-23 02:48:04', '2025-09-23 02:48:04'),
(236, 'Logitech', 232, '2025-09-23 02:48:10', '2025-09-23 02:48:10'),
(237, 'Razer', 232, '2025-09-23 02:48:15', '2025-09-23 02:48:15'),
(238, 'Loa nghe nhạc', 65, '2025-09-23 02:48:24', '2025-09-23 02:48:24'),
(239, 'Bose', 238, '2025-09-23 02:48:30', '2025-09-23 02:48:30'),
(240, 'Harman Kardon', 238, '2025-09-23 02:48:35', '2025-09-23 02:48:35'),
(241, 'JBL', 238, '2025-09-23 02:48:40', '2025-09-23 02:48:40'),
(242, 'MicroPhone', 65, '2025-09-23 02:48:53', '2025-09-23 02:48:53'),
(243, 'SARAMONIC', 242, '2025-09-23 02:48:59', '2025-09-23 02:48:59'),
(244, 'SALAR', 242, '2025-09-23 02:49:04', '2025-09-23 02:49:04'),
(245, 'AKG', 242, '2025-09-23 02:49:10', '2025-09-23 02:49:10'),
(246, 'HYPERX', 242, '2025-09-23 02:49:15', '2025-09-23 02:49:15'),
(247, 'SENIC', 242, '2025-09-23 02:49:20', '2025-09-23 02:49:20'),
(248, 'RAZER', 242, '2025-09-23 02:49:26', '2025-09-23 02:49:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_14_023947_create_categories_table', 1),
(5, '2025_08_14_085528_create_personal_access_tokens_table', 1),
(6, '2025_08_14_093614_create_attributes_table', 1),
(7, '2025_08_14_140443_create_product', 1),
(8, '2025_08_17_015007_create_product_categories_table', 1),
(9, '2025_08_17_021257_create_product_attributes_table', 1),
(10, '2025_08_17_021303_create_product_images_table', 1),
(11, '2025_09_16_121126_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`products`)),
  `delivery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`delivery`)),
  `payment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`payment`)),
  `status` varchar(255) NOT NULL DEFAULT 'Order Placed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `sku` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_url` varchar(2048) DEFAULT NULL,
  `quantity` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_retail_price` bigint(20) UNSIGNED DEFAULT NULL,
  `discount_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `sell_price` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `brand_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`sku`, `name`, `image_url`, `quantity`, `supplier_retail_price`, `discount_amount`, `sell_price`, `description`, `short_description`, `brand_name`, `created_at`, `updated_at`) VALUES
(220700059, 'Apple MacBook Pro M2 13.3 inch (8CPU / 10GPU/ 8GB/ 512GB)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758633774/exzp0tvjimgtokd6ojpe.webp', 4, 39300000, NULL, 39300000, '<p>Đang cập nhật</p>', 'Đang cập nhật', 'Apple', '2025-09-23 06:24:05', '2025-09-23 06:24:05'),
(230903487, 'Máy tính xách tay/ Laptop Acer Aspire 5 A514-56P-742F (NX.KHRSV.005) (i7-1355U) (Xám)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758622691/wbepigsbmzxdd3i7byja.webp', 13, 19990000, 22, 15690151, '<p>\\u003cp\\u003eLaptop \\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-acer-aspire\\&quot;\\u003eACER\">https://phongvu.vn/c/laptop-acer-aspire\\\"\\u003eACER</a> Aspire\\u003c/a\\u003e 5 A514-56P-742F được trang bị con chip mạnh mẽ Intel Core i7-1355U cùng bộ nhớ RAM lớn lên đến 16GB giúp laptop có thể xử lý tốt các tác vụ thường ngày của bạn một cách mượt mà. Sản phẩm \\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-van-phong\\\">https://phongvu.vn/c/laptop-van-phong\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003elaptop văn phòng\\u003c/a\\u003e này sẽ phù hợp với đối tượng như học sinh, sinh viên hay nhân viên văn phòng.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eThiết kế nhỏ gọn và hiện đại, RAM lớn 16GB LPDDR5 6400MHz\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-acer\\&quot;\\u003e\\u003cstrong\\u003eLaptop\">https://phongvu.vn/c/laptop-acer\\\"\\u003e\\u003cstrong\\u003eLaptop</a> ACER\\u003c/strong\\u003e\\u003c/a\\u003e\\u003cstrong\\u003e Aspire 5 A514\\u0026nbsp;\\u003c/strong\\u003esở hữu một thiết kế ấn tượng với gam màu xám hiện đại càng làm tăng lên sự sang trọng và thời thượng. Đồng thời, với kiểu dáng nhỏ gọn và mỏng nhẹ với thông số kích thước là \\u003cstrong\\u003e318.8 x 225.5 x 17.99 mm\\u003c/strong\\u003e và chỉ có trượng lượng \\u003cstrong\\u003e1.5kg\\u003c/strong\\u003e giúp bạn có thể thoải mái mang chiếc laptop đi học hoặc đi làm.\\u003c/p\\u003e\\u003cp\\u003e\\u003cstrong\\u003eACER Aspire 5 A514\\u003c/strong\\u003e còn được trang bị bộ nhớ RAM lớn lên đến \\u003cstrong\\u003e16Gb \\u003c/strong\\u003egiúp bạn dễ dàng sử dụng liên tục nhiều ứng dụng cùng trang web mà không lo ngại vấn đề giật lag. Ngoài ra, RAM chuẩn \\u003cstrong\\u003eLPDDR5\\u003c/strong\\u003e có bus speed \\u003cstrong\\u003e6400MHz\\u003c/strong\\u003e giúp chiếc laptop có thể chạy ổn định và mượt hơn khi bạn sử dụng lâu dài.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/5/27/a1a49c31-a847-42db-ab5a-969905ba6f26/may-chieu-viewsonic-m1-mini-plus%20%286%29.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/5/27/a1a49c31-a847-42db-ab5a-969905ba6f26/may-chieu-viewsonic-m1-mini-plus%20%286%29.png\\</a>\" alt=\\\"Thiết kế  ACER Aspire 5 nhỏ gọn và hiện đại, RAM lớn 16GB LPDDR5 6400MHz\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eThiết kế \\u0026nbsp;ACER Aspire 5 nhỏ gọn và hiện đại, RAM lớn 16GB LPDDR5 6400MHz\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eCấu hình cao Intel Core i7-1355U, chip đồ họa Intel Iris Xe Graphics\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop\\&quot;\\u003e\\u003cstrong\\u003eLaptop\">https://phongvu.vn/c/laptop\\\"\\u003e\\u003cstrong\\u003eLaptop</a> \\u003c/strong\\u003e\\u003c/a\\u003e\\u003cstrong\\u003eACER Aspire 5 A514\\u003c/strong\\u003e được trang bị có cấu hình cao và mạnh mẽ \\u003cstrong\\u003eIntel Core i7-1355U\\u003c/strong\\u003e có xung nhịp dao động từ \\u003cstrong\\u003e1.7 GHz - 5.0 GHz\\u003c/strong\\u003e cùng bộ nhớ đệm\\u003cstrong\\u003e 12MB\\u003c/strong\\u003e và\\u003cstrong\\u003e 10 nhân 12 luồng\\u003c/strong\\u003e giúp chiếc laptop của bạn không chỉ có thể xử lý tốt các tác vụ đơn giản như soạn thảo văn phòng, xem phim mà ở các tác vụ nặng như chơi game, lập trình vẫn có thể xử lý ổn định.\\u003c/p\\u003e\\u003cp\\u003eBên cạnh đó, \\u003cstrong\\u003eACER Aspire 5 A514\\u003c/strong\\u003e còn sở hữu con chip đồ họa tích hợp \\u003cstrong\\u003eIntel Iris Xe Graphics\\u003c/strong\\u003e giúp chiếc laptop này có thể xử lý đồ họa ở mức trung bình khi chơi các tựa game cũng như làm những công việc cần chất lượng đồ họa cơ bản như thiết kế và chỉnh sửa hình ảnh hay video.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/5/27/73034b9c-f325-4810-bff6-d4811351e1ae/may-chieu-viewsonic-m1-mini-plus%20%285%29.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/5/27/73034b9c-f325-4810-bff6-d4811351e1ae/may-chieu-viewsonic-m1-mini-plus%20%285%29.png\\</a>\" alt=\\\"Cấu hình cao Intel Core i7-1355U, chip đồ họa Intel Iris Xe Graphics\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eCấu hình cao Intel Core i7-1355U, chip đồ họa Intel Iris Xe Graphics\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eMàn hình 14 inch WUXGA IPS, bộ nhớ trong 512GB SSD\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003e\\u003cstrong\\u003eLaptop ACER Aspire 5 A514\\u003c/strong\\u003e có độ lớn màn hình là 14 inch cùng độ phân giải \\u003cstrong\\u003eWUXGA\\u0026nbsp;\\u003c/strong\\u003ecó số lượng pixels lớn hơn so với\\u003cstrong\\u003e Full HD\\u003c/strong\\u003e kết hợp với tấm nền \\u003cstrong\\u003eIPS\\u003c/strong\\u003e càng làm tăng độ chân thực và sắc nét của hình ảnh hiển thị. Ngoài ra, còn được hỗ trợ \\u003cstrong\\u003eHD Webcam\\u003c/strong\\u003e giúp bạn thực hiện được các cuộc gọi trực tuyến trong học tập cũng như làm việc.\\u003c/p\\u003e\\u003cp\\u003e\\u003cstrong\\u003eACER Aspire 5 A514\\u003c/strong\\u003e còn được trang bị bộ nhớ lớn lên đến\\u003cstrong\\u003e 512GB\\u003c/strong\\u003e đem lại kho ghi nhớ rộng rãi giúp bạn thoải mái lưu trữ nhiều tài liệu, ứng dụng đáp ứng cho nhu cầu học tập và làm việc. Đồng thời, bộ nhớ chuẩn \\u003cstrong\\u003eSSD\\u003c/strong\\u003e giúp laptop có thể khởi động nhanh chỉ trong vài giây.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/12/9/63a7a4c1-d94f-4552-98da-7e0defbac32a/image.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/12/9/63a7a4c1-d94f-4552-98da-7e0defbac32a/image.png\\</a>\" alt=\\\"Màn hình 14 inch WUXGA IPS, bộ nhớ trong 512GB SSD\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eMàn hình 14 inch WUXGA IPS, bộ nhớ trong 512GB SSD\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eBàn phím thiết kế tối giản, pin 3 cell 50Wh\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003e\\u003cstrong\\u003eLaptop\\u003c/strong\\u003e \\u003cstrong\\u003eACER Aspire 5 A514\\u0026nbsp;\\u003c/strong\\u003ecó thiết kế bàn phím tối giản làm chiếc laptop gọn gàng hơn và còn được trang bị đầy đủ các phím chức năng thường dùng. Độ nảy mỗi phím tốt phù hợp với các đối tượng người dùng thường xuyên soạn thảo văn phòng nhưng lại ít nhập số liệu.\\u003c/p\\u003e\\u003cp\\u003eNgoài ra, \\u003cstrong\\u003elaptop ACER Aspire 5 A514\\u0026nbsp;\\u003c/strong\\u003ecòn\\u003cstrong\\u003e\\u0026nbsp;\\u003c/strong\\u003eđược trang bị viên pin liền có dung lượng là \\u003cstrong\\u003e3 cell 50Wh\\u0026nbsp;\\u003c/strong\\u003eđem lại cho bạn thời gian sử dụng vừa đủ, trung bình trong khoảng một buổi học và thuyết trình cũng như trong một cuộc họp kéo dài nhiều giờ đồng hồ.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/5/27/b09e1466-f5ca-4dcb-8862-67c259ed4376/may-chieu-viewsonic-m1-mini-plus%20%287%29.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/5/27/b09e1466-f5ca-4dcb-8862-67c259ed4376/may-chieu-viewsonic-m1-mini-plus%20%287%29.png\\</a>\" alt=\\\"Bàn phím ACER Aspire 5 thiết kế tối giản, pin 3 cell 50Wh\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eBàn phím ACER Aspire 5 thiết kế tối giản, pin 3 cell 50Wh\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eHệ điều hành Windows 11 Home, sở hữu cổng kết nối hiện đại\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003e\\u003cstrong\\u003eLaptop ACER Aspire 5 A514\\u003c/strong\\u003e sẽ được cài đặt sẵn\\u003cstrong\\u003e Windows 11 Home\\u003c/strong\\u003e. Đây là hệ điều hành mà Microsoft đã cải tiến và thêm nhiều tính năng tiện ích khác cũng như giao diện người dùng mới mẻ hơn so với các phiên bản Windows 10 trước đó.\\u0026nbsp;\\u003c/p\\u003e\\u003cp\\u003e\\u003cstrong\\u003eACER Aspire 5 A514\\u003c/strong\\u003e được trang bị nhiều cổng kết nối hiện đại và phổ biến hiện nay như: 1 cổng\\u003cstrong\\u003e HDMI\\u0026nbsp;\\u003c/strong\\u003exuất hình ảnh, 2 cổng \\u003cstrong\\u003eUSB 3.2\\u003c/strong\\u003e truyền tải dữ liệu với tốc độ cao, \\u003cstrong\\u003eAudio combo\\u003c/strong\\u003e kết nối hình ảnh và micro. Ngoài ra còn hỗ trợ kết nối không dây \\u003cstrong\\u003eWiFi 802.11ax (Wifi 6)\\u003c/strong\\u003e bắt sóng wifi nhanh chóng cùng \\u003cstrong\\u003eBluetooth 5.1\\u003c/strong\\u003e chia sẻ dữ liệu với nhiều thiết bị cùng lúc.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/5/27/3cfba0d3-3841-4b28-912c-bd0a1d697848/may-chieu-viewsonic-m1-mini-plus%20%283%29.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/5/27/3cfba0d3-3841-4b28-912c-bd0a1d697848/may-chieu-viewsonic-m1-mini-plus%20%283%29.png\\</a>\" alt=\\\"Hệ điều hành Windows 11 Home, sở hữu cổng kết nối hiện đại\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHệ điều hành Windows 11 Home, sở hữu cổng kết nối hiện đại\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eHình ảnh thực tế Laptop ACER Aspire 5 A514-56P-742F\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/3/10/f7bb22b6-4880-449a-ab87-6ae103c61f05/acer-aspire-5-a514%20%281%29.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/3/10/f7bb22b6-4880-449a-ab87-6ae103c61f05/acer-aspire-5-a514%20%281%29.png\\</a>\" alt=\\\"Hình ảnh thực tế Laptop ACER Aspire 5 A514-56P-742F (trực diện)\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHình ảnh thực tế Laptop ACER Aspire 5 A514-56P-742F (trực diện)\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/3/10/55bcd695-f0a2-44c6-ae82-afa888a92514/acer-aspire-5-a514%20%282%29.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/3/10/55bcd695-f0a2-44c6-ae82-afa888a92514/acer-aspire-5-a514%20%282%29.png\\</a>\" alt=\\\"Hình ảnh thực tế Laptop ACER Aspire 5 A514-56P-742F (cạnh phải)\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHình ảnh thực tế Laptop ACER Aspire 5 A514-56P-742F (cạnh phải)\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eMua Laptop ACER Aspire 5 A514-56P-742F mới chính hãng tại Phong Vũ\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003e\\u003cstrong\\u003eLaptop ACER Aspire 5 A514\\u003c/strong\\u003e không chỉ sở hữu một cấu hình cao, mạnh mẽ mà còn được bán với giá cả hợp lý. Hiện sản phẩm đang được bày bán tại mọi Showroom của Phong Vũ trên toàn quốc. Khi mua hàng, quý hàng sẽ được tặng kèm nhiều phần quà cùng ưu đãi hấp dẫn. Hãy liên hệ với chúng tôi ngay để nhân viên có thể tư vấn cho bạn trực tiếp ngay tại nhà nhé!\\u003c/p\\u003e</p>', 'CPU: Intel® Core™ i7-1355U (1.7 GHz - 5.0 GHz/ 12MB/ 10 nhân, 12 luồng)\\u003cbr/\\u003eVGA: Onboard graphics \\u003cbr/\\u003eRAM:  16GB 6400MHz LPDDR5 (Không nâng cấp được)\\u003cbr/\\u003eỔ cứng: 512GB SSD M.2 NVMe\\u003cbr/\\u003eMàn hình: 14\\\" WUXGA  (1920 x 1200) IPS, 60Hz, 250 nits, Acer ComfyView, 45% NTSC\\u003cbr/\\u003eKhác: Bàn phím thường, HD webcam, Acer Purified Voice, Non-EVO\\u003cbr/\\u003eOS: Windows 11 Home', 'Acer', '2025-09-23 03:21:24', '2025-09-23 03:21:24'),
(240501974, 'iPad Pro M4 11 inch 5G - 1TB', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758635558/tjozaj0hpfmos3j0w2as.webp', 6, 51490000, 5, 48915500, '<p>Đang cập nhật</p>', 'Đang cập nhật', 'Apple', '2025-09-23 06:53:26', '2025-09-23 06:53:26'),
(240501992, 'iPad Pro M4 11 inch 2TB Wifi', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758635475/cdt3lt6vxzw72e9sylgd.webp', 22, 57490000, 4, 55190400, '<p>Đang cập nhật</p>', 'Đang cập nhật', 'Apple', '2025-09-23 06:52:27', '2025-09-23 06:52:27'),
(240502004, 'iPad Pro M4 13 inch 5G - 2TB', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758635007/vz8h018m64za8ufijusn.webp', 2, 71990000, NULL, 71990000, '<p>Đang cập nhật</p>', 'Đang cập nhật', 'Apple', '2025-09-23 06:44:04', '2025-09-23 06:44:04'),
(241002921, 'Mainboard Gigabyte AORUS Z890 A ELITE WF7 ICE', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758630184/e1romxdxwyb45fkj8lse.webp', 15, 10290000, 8, 9466800, '<p>\\u003cp\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/mainboard-gigabyte\\\">https://phongvu.vn/c/mainboard-gigabyte\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003e\\u003cstrong\\u003eMainboard Gigabyte\\u003c/strong\\u003e\\u003c/a\\u003e\\u003cstrong\\u003e Z890 A ELITE WF7 ICE\\u003c/strong\\u003e là một sản phẩm vượt trội trong dòng bo mạch chủ mới nhất, được thiết kế để tận dụng tối đa sức mạnh của các bộ vi xử lý \\u003cstrong\\u003eIntel® Core™ Ultra\\u003c/strong\\u003e. Với sự kết hợp giữa \\u003cstrong\\u003echipset Intel Z890\\u003c/strong\\u003e và \\u003cstrong\\u003esocket LGA1851\\u003c/strong\\u003e, bo mạch chủ này cung cấp nền tảng vững chắc cho các hệ thống máy tính hiệu suất cao, từ máy chơi game chuyên nghiệp đến máy trạm sáng tạo nội dung.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eBảng thông số kỹ thuật\\u0026nbsp;\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cfigure class=\\\"table\\\"\\u003e\\u003ctable style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003ctbody\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eThông số kỹ thuật\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eChi tiết\\u003c/strong\\u003e\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eChipset\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eIntel® Z890 Express Chipset\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eCPU\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eSocket LGA1851, hỗ trợ bộ vi xử lý Intel® Core™ Ultra, bộ nhớ đệm L3 thay đổi theo CPU\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eBộ nhớ (RAM)\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cp\\u003eHỗ trợ cho các mô-đun bộ nhớ DDR5 8800(O.C) /8600(O.C) / 8400(O.C) /8266(O.C) / 8200(O.C) / 8000(O.C) / 7950(O.C) / 7900(O.C) / 7800(O.C) / 7600(O.C) / 7400(O.C) / 7200(O.C) / 7000(O.C) / 6800(O.C) / 6600(O.C) / 6400 / 6200 / 6000 / 5800 / 5600MT/s.\\u003c/p\\u003e\\u003cp\\u003e4 x khe cắm DDR5 DIMM hỗ trợ bộ nhớ hệ thống lên đến 256 GB (dung lượng DIMM đơn 64 GB)\\u003cbr\\u003eKiến trúc bộ nhớ kênh đôi\\u003c/p\\u003e\\u003cul\\u003e\\u003cli\\u003eHỗ trợ các mô-đun bộ nhớ ECC Un-buffered DIMM 1Rx8/2Rx8 (hoạt động ở chế độ không phải ECC)\\u003c/li\\u003e\\u003cli\\u003eHỗ trợ các mô-đun bộ nhớ non-ECC Un-buffered DIMM 1Rx8/2Rx8/1Rx16\\u003c/li\\u003e\\u003cli\\u003eHỗ trợ các mô-đun bộ nhớ Extreme Memory Profile (XMP)\\u003c/li\\u003e\\u003c/ul\\u003e\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eĐồ hoạ\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cp\\u003eBộ xử lý đồ họa tích hợp - Intel® HD Graphics hỗ trợ:\\u003cbr\\u003e- 1 x đầu nối Intel® Thunderbolt™ 4 (cổng USB4® USB Type-C®), hỗ trợ đầu ra video DisplayPort và Thunderbolt™\\u003cbr\\u003eKhi lắp màn hình Thunderbolt™, độ phân giải tối đa được hỗ trợ là 5120x2880@60 Hz với 24 bpp (đầu ra màn hình đơn).\\u003cbr\\u003eKhi lắp màn hình USB4® USB Type-C®, độ phân giải tối đa được hỗ trợ là 3840x2160@240 Hz (đầu ra màn hình đơn).\\u003c/p\\u003e\\u003cp\\u003e- 1 x cổng HDMI phía trước, hỗ trợ độ phân giải tối đa 1920x1080@30 Hz\\u003cbr\\u003e* Hỗ trợ phiên bản HDMI 1.4\\u003c/p\\u003e\\u003cp\\u003e- 1 x DisplayPort, hỗ trợ độ phân giải tối đa 4096x2304@60 Hz\\u003cbr\\u003e* Hỗ trợ phiên bản DisplayPort 2.1 và HDCP 2.3\\u003c/p\\u003e\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eKhe cắm mở rộng\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cp\\u003e\\u003cstrong\\u003eCPU:\\u003c/strong\\u003e\\u003c/p\\u003e\\u003cp\\u003e- 1 x khe cắm PCI Express x16, hỗ trợ PCIe 5.0 và chạy ở x16 (PCIEX16)\\u003cbr\\u003e* Khe cắm PCIEX16 chỉ có thể hỗ trợ card đồ họa hoặc NVMe SSD. Nếu chỉ lắp một card đồ họa, hãy đảm bảo lắp card đó vào khe cắm PCIEX16.\\u003c/p\\u003e\\u003cp\\u003e\\u003cstrong\\u003eChipset:\\u003c/strong\\u003e\\u003cbr\\u003e- 2 x khe cắm PCI Express x16, hỗ trợ PCIe 4.0 và chạy ở x4 (PCIEX4_1, PCIEX4_2)\\u003c/p\\u003e\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eÂm thanh\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eRealtek® ALC1220 CODEC, âm thanh độ phân giải cao, hỗ trợ 2/4/5.1/7.1 kênh, S/PDIF Out\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eLưu trữ\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eCPU:\\u003c/strong\\u003e\\u003cbr\\u003e- 1 x đầu nối M.2 (Ổ cắm 3, M key, hỗ trợ SSD loại 25110/22110/2580/2280 PCIe 5.0 x4/x2) (M2A_CPU)\\u003cbr\\u003e- 1 x đầu nối M.2 (Ổ cắm 3, M key, hỗ trợ SSD loại 22110/2280 PCIe 4.0 x4/x2) (M2B_CPU)\\u003cbr\\u003e\\u003cstrong\\u003eChipset:\\u003c/strong\\u003e\\u003cbr\\u003e\\u003cstrong\\u003e-\\u003c/strong\\u003e 1 x đầu nối M.2 (Ổ cắm 3, M key, hỗ trợ SSD loại 25110/22110/2580/2280 PCIe 4.0 x4/x2) (M2Q_SB)\\u003cbr\\u003e- 1 x đầu nối M.2 (Ổ cắm 3, M key, hỗ trợ SSD loại 22110/2280 SATA và PCIe 4.0 x4) (M2M_SB)\\u003cbr\\u003e- 4 x SATA Đầu nối 6Gb/giây\\u003cbr\\u003eHỗ trợ RAID 0, RAID 1, RAID 5 và RAID 10 cho thiết bị lưu trữ NVMe SSD\\u003cbr\\u003eHỗ trợ RAID 0, RAID 1, RAID 5 và RAID 10 cho thiết bị lưu trữ SATA\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eUSB\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eCPU:\\u003cbr\\u003e- 1 x cổng Intel® Thunderbolt™ 4 (USB Type-C®) ở mặt sau\\u003cbr\\u003eBộ chip:\\u003cbr\\u003e- 1 x cổng USB Type-C® hỗ trợ USB 3.2 Gen 2, có sẵn thông qua đầu cắm USB bên trong\\u003cbr\\u003e- 2 x cổng USB 3.2 Gen 2 Type-A (màu đỏ) ở mặt sau\\u003cbr\\u003e- 5 x cổng USB 3.2 Gen 1 (3 cổng ở mặt sau, 2 cổng có sẵn thông qua đầu cắm USB bên trong)\\u003cbr\\u003eBộ chip + 2 Hub USB 2.0:\\u003cbr\\u003e- 8 x cổng USB 2.0/1.1 (4 cổng ở mặt sau, 4 cổng có sẵn thông qua đầu cắm USB bên trong)\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eCổng LAN\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eRealtek® 2.5GbE LAN\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eWi-Fi và Bluetooth\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eMediaTek Wi-Fi 7 MT7925 hoặc Realtek® Wi-Fi 7 RTL8922AE, hỗ trợ Bluetooth 5.4, chuẩn 802.11a/b/g/n/ac/ax/be\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eTính năng đèn LED\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e3 đầu cắm dải đèn LED RGB Gen2 và 1 đầu cắm dải RGB\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eHệ điều hành hỗ trợ\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eWindows 11 64-bit\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eKích thước (Form Factor)\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eTX, 30.5 cm x 24.4 cm\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eKết nối I/O nội bộ\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e1 x 24-pin ATX main power connector\\u003cbr\\u003e2 x 8-pin ATX 12V power connectors\\u003cbr\\u003e1 x CPU fan header\\u003cbr\\u003e1 x CPU fan/water cooling pump header\\u003cbr\\u003e3 x system fan headers\\u003cbr\\u003e1 x system fan/water cooling pump header\\u003cbr\\u003e3 x addressable RGB Gen2 LED strip headers\\u003cbr\\u003e1 x RGB LED strip header\\u003cbr\\u003e4 x M.2 Socket 3 connectors\\u003cbr\\u003e4 x SATA 6Gb/s connectors\\u003cbr\\u003e1 x front panel header\\u003cbr\\u003e1 x front panel audio header\\u003cbr\\u003e1 x USB Type-C® header, with USB 3.2 Gen 2 support\\u003cbr\\u003e1 x USB 3.2 Gen 1 header\\u003cbr\\u003e2 x USB 2.0/1.1 headers\\u003cbr\\u003e1 x Trusted Platform Module header (For the GC-TPM2.0 SPI/GC-TPM2.0 SPI 2.0/GC-TPM2.0 SPI V2 module only)\\u003cbr\\u003e1 x HDMI port (Note)\\u003cbr\\u003e1 x power button\\u003cbr\\u003e1 x reset button\\u003cbr\\u003e1 x Q-Flash Plus button\\u003cbr\\u003e1 x reset jumper\\u003cbr\\u003e1 x Clear CMOS jumper\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eKết nối I/O phía sau\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e1 x Intel® Thunderbolt™ 4 connectors (USB Type-C® ports)\\u003cbr\\u003e2 x USB 3.2 Gen 2 Type-A ports (red)\\u003cbr\\u003e3 x USB 3.2 Gen 1 ports\\u003cbr\\u003e4 x USB 2.0/1.1 ports\\u003cbr\\u003e2 x antenna connectors (2T2R)\\u003cbr\\u003e1 x DisplayPort (Note)\\u003cbr\\u003e1 x RJ-45 port\\u003cbr\\u003e1 x optical S/PDIF Out connector\\u003cbr\\u003e2 x audio jacks\\u003c/td\\u003e\\u003c/tr\\u003e\\u003c/tbody\\u003e\\u003c/table\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eThiết kế và Hiệu Năng CPU - Tối ưu hóa cho các bộ vi xử lý Intel® Core™ Ultra\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003e\\u003cstrong\\u003eGigabyte Z890 A ELITE WF7 ICE\\u003c/strong\\u003e hỗ trợ \\u003cstrong\\u003esocket LGA1851\\u003c/strong\\u003e, phù hợp với các bộ vi xử lý mới nhất của Intel như dòng \\u003cstrong\\u003eCore™ Ultra\\u003c/strong\\u003e. Với khả năng tương thích đa dạng, bo mạch chủ này giúp tối ưu hóa hiệu năng của bộ vi xử lý, giúp hệ thống của bạn hoạt động mượt mà và nhanh chóng.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/10/22/c2f5e38a-686f-4a7b-ae8f-947e41733cc5/Laptop-HP-ProBook-440-G10%20-%202024-10-22T142412.562.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/10/22/c2f5e38a-686f-4a7b-ae8f-947e41733cc5/Laptop-HP-ProBook-440-G10%20-%202024-10-22T142412.562.png\\</a>\" alt=\\\"Bo mạch chủ Gigabyte Z890 A ELITE WF7 ICE sử dụng socket LGA1851 và chipset Intel Z890\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eBo mạch chủ Gigabyte Z890 A ELITE WF7 ICE sử dụng socket LGA1851 và chipset Intel Z890\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/mainboard-bo-mach-chu\\\">https://phongvu.vn/c/mainboard-bo-mach-chu\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003eBo mạch chủ\\u003c/a\\u003e còn hỗ trợ \\u003cstrong\\u003ebộ nhớ đệm L3\\u003c/strong\\u003e tùy thuộc vào từng loại CPU, đảm bảo tốc độ xử lý dữ liệu nhanh và hiệu quả. Với khả năng tương thích cao cùng các bộ xử lý đa nhân, bo mạch chủ này mang đến tốc độ xử lý vượt trội trong các tác vụ từ chơi game đến làm việc đa nhiệm.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eHỗ trợ RAM DDR5 và PCIe 5.0 - Tốc độ vượt trội cho các ứng dụng yêu cầu cao\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eGigabyte Z890 A ELITE WF7 ICE hỗ trợ \\u003cstrong\\u003ebộ nhớ DDR5\\u003c/strong\\u003e với tốc độ lên đến \\u003cstrong\\u003e9200MT/s\\u003c/strong\\u003e khi ép xung, và có thể lắp đặt tối đa \\u003cstrong\\u003e4 khe DIMM DDR5\\u003c/strong\\u003e với dung lượng bộ nhớ lên đến \\u003cstrong\\u003e256 GB\\u003c/strong\\u003e. Điều này mang lại khả năng đa nhiệm tuyệt vời và tối ưu hóa hiệu năng cho các tác vụ yêu cầu bộ nhớ lớn.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/10/22/aa4a7b6b-2a7b-4366-92dd-153d4235a314/Laptop-HP-ProBook-440-G10%20-%202024-10-22T142644.406.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/10/22/aa4a7b6b-2a7b-4366-92dd-153d4235a314/Laptop-HP-ProBook-440-G10%20-%202024-10-22T142644.406.png\\</a>\" alt=\\\"Thiết kế mạnh mẽ của bo mạch chủ Gigabyte Z890 A ELITE WF7 ICE, tối ưu hóa cho các hệ thống hiệu năng cao với hỗ trợ bộ xử lý Intel Core Ultra và DDR5.\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eThiết kế mạnh mẽ của bo mạch chủ Gigabyte Z890 A ELITE WF7 ICE, tối ưu hóa cho các hệ thống hiệu năng cao với hỗ trợ bộ xử lý Intel Core Ultra và DDR5.\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp\\u003eBên cạnh đó, bo mạch chủ hỗ trợ \\u003cstrong\\u003eECC Un-buffered DIMM\\u003c/strong\\u003e và \\u003cstrong\\u003eXMP\\u003c/strong\\u003e, cho phép người dùng tận dụng các module bộ nhớ cao cấp để cải thiện hiệu năng. Với công nghệ \\u003cstrong\\u003eDual Channel\\u003c/strong\\u003e, tốc độ truyền tải dữ liệu giữa CPU và bộ nhớ được cải thiện đáng kể, giúp hệ thống hoạt động nhanh hơn.\\u003c/p\\u003e\\u003cp\\u003eVới khe cắm \\u003cstrong\\u003ePCI Express x16\\u003c/strong\\u003e hỗ trợ chuẩn \\u003cstrong\\u003ePCIe 5.0\\u003c/strong\\u003e, bo mạch chủ này cung cấp băng thông cực cao để lắp đặt card đồ họa mạnh mẽ nhất hiện nay. Điều này không chỉ cải thiện hiệu suất đồ họa mà còn tối ưu hóa cho các ứng dụng đòi hỏi xử lý đa nhiệm và đồ họa chuyên nghiệp. Bên cạnh đó, \\u003cstrong\\u003e2 khe PCIe 4.0 x4\\u003c/strong\\u003e cho phép người dùng kết nối thêm các card mở rộng khác như card mạng, card âm thanh hoặc các thiết bị lưu trữ tốc độ cao.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eĐồ họa tích hợp Intel® HD Graphics - Hỗ trợ hiển thị đa màn hình với độ phân giải cao\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eBo mạch chủ Gigabyte Z890 A ELITE WF7 ICE trang bị \\u003cstrong\\u003ebộ xử lý đồ họa tích hợp Intel® HD Graphics\\u003c/strong\\u003e, hỗ trợ nhiều cổng xuất hình ảnh chất lượng cao như:\\u003c/p\\u003e\\u003cul\\u003e\\u003cli\\u003e\\u003cstrong\\u003eCổng Intel® Thunderbolt™ 4\\u003c/strong\\u003e: Hỗ trợ xuất hình ảnh với độ phân giải tối đa \\u003cstrong\\u003e5120x2880@60 Hz\\u003c/strong\\u003e, phù hợp cho các màn hình độ phân giải 4K hoặc thậm chí là 5K.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eCổng DisplayPort 2.1\\u003c/strong\\u003e và \\u003cstrong\\u003eHDMI 1.4\\u003c/strong\\u003e: Cho phép xuất hình ảnh chất lượng cao ở độ phân giải \\u003cstrong\\u003e4096x2304@60 Hz\\u003c/strong\\u003e.\\u003c/li\\u003e\\u003c/ul\\u003e\\u003cp\\u003eVới khả năng hỗ trợ tới \\u003cstrong\\u003e3 màn hình cùng lúc\\u003c/strong\\u003e, đây là lựa chọn tuyệt vời cho những ai có nhu cầu sử dụng nhiều màn hình để làm việc hoặc giải trí.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eKết nối âm thanh Realtek® ALC1220 CODEC, Chất lượng âm thanh cao cấp\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eBo mạch chủ này được trang bị \\u003cstrong\\u003echip âm thanh Realtek® ALC1220 CODEC\\u003c/strong\\u003e với công nghệ \\u003cstrong\\u003eÂm thanh Độ nét cao (High Definition Audio)\\u003c/strong\\u003e, hỗ trợ các cấu hình âm thanh từ 2/4/5.1/7.1 kênh. Ngoài ra, với jack xuất \\u003cstrong\\u003eDSD audio\\u003c/strong\\u003e, chất lượng âm thanh khi nghe nhạc hoặc xem phim sẽ được nâng lên một tầm cao mới.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/10/22/d11dc2f1-2acd-47a8-b5f3-4eaf3d8e6893/Laptop-HP-ProBook-440-G10%20-%202024-10-22T142831.918.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/10/22/d11dc2f1-2acd-47a8-b5f3-4eaf3d8e6893/Laptop-HP-ProBook-440-G10%20-%202024-10-22T142831.918.png\\</a>\" alt=\\\"Âm thanh chất lượng cao từ chip Realtek ALC1220 CODEC\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eÂm thanh chất lượng cao từ chip Realtek ALC1220 CODEC\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp\\u003eĐiều này đảm bảo âm thanh phát ra từ hệ thống luôn rõ ràng, trung thực, đặc biệt khi kết hợp với các hệ thống loa đa kênh chất lượng cao.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eHỗ trợ lưu trữ tốc độ cao với M.2 và SATA\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eGigabyte Z890 A ELITE WF7 ICE hỗ trợ \\u003cstrong\\u003e4 khe cắm M.2\\u003c/strong\\u003e và \\u003cstrong\\u003e4 cổng SATA 6Gb/s\\u003c/strong\\u003e, cho phép bạn lắp đặt ổ cứng SSD tốc độ cao, giúp khởi động hệ điều hành, mở ứng dụng và truyền dữ liệu nhanh chóng hơn. Điều này cũng hỗ trợ cho việc tối ưu hóa tốc độ đọc ghi dữ liệu trong quá trình sử dụng các phần mềm yêu cầu hiệu suất cao.\\u0026nbsp;\\u003c/p\\u003e\\u003cp\\u003eĐiều đặc biệt là bo mạch này hỗ trợ \\u003cstrong\\u003eRAID 0, 1, 5, 10\\u003c/strong\\u003e cho cả thiết bị lưu trữ NVMe và SATA, mang lại sự linh hoạt và bảo mật cho hệ thống lưu trữ của bạn.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eCổng kết nối đa dạng - Đáp ứng mọi nhu cầu\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eGigabyte Z890 A ELITE WF7 ICE cung cấp nhiều tùy chọn kết nối như:\\u003c/p\\u003e\\u003cul\\u003e\\u003cli\\u003e\\u003cstrong\\u003eIntel® Thunderbolt™ 4\\u003c/strong\\u003e với tốc độ lên đến \\u003cstrong\\u003e40Gbps\\u003c/strong\\u003e, tương thích với các thiết bị Thunderbolt, USB4 và USB 3.2.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eUSB 3.2 Gen 2 Type-A\\u003c/strong\\u003e và \\u003cstrong\\u003eUSB 2.0/1.1\\u003c/strong\\u003e, cho phép kết nối nhanh với các thiết bị ngoại vi như bàn phím, chuột, ổ cứng ngoài.\\u003c/li\\u003e\\u003c/ul\\u003e\\u003cp\\u003eVới hệ thống kết nối phong phú, bo mạch chủ này đảm bảo rằng bạn có thể kết nối và mở rộng hệ thống của mình một cách dễ dàng.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/10/22/3d88a04c-4237-4a6d-8394-5fe06003e7e0/Laptop-HP-ProBook-440-G10%20-%202024-10-22T142906.667.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/10/22/3d88a04c-4237-4a6d-8394-5fe06003e7e0/Laptop-HP-ProBook-440-G10%20-%202024-10-22T142906.667.png\\</a>\" alt=\\\"Cổng Thunderbolt 4, USB 3.2 Gen 2 và các tùy chọn kết nối đa dạng giúp người dùng dễ dàng mở rộng và kết nối các thiết bị ngoại vi.\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eCổng Thunderbolt 4, USB 3.2 Gen 2 và các tùy chọn kết nối đa dạng giúp người dùng dễ dàng mở rộng và kết nối các thiết bị ngoại vi.\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp\\u003eGigabyte Z890 A ELITE WF7 ICE tích hợp \\u003cstrong\\u003eRealtek® 2.5GbE LAN\\u003c/strong\\u003e, mang lại khả năng truyền tải dữ liệu mạng nhanh chóng và ổn định. Điều này đặc biệt hữu ích cho các tác vụ như chơi game online, truyền tải dữ liệu lớn hoặc xem video trực tuyến. Ngoài ra, bo mạch chủ này còn được trang bị \\u003cstrong\\u003eWi-Fi 7\\u003c/strong\\u003e, tiêu chuẩn không dây mới nhất với tốc độ truyền tải vượt trội. Công nghệ \\u003cstrong\\u003eBluetooth 5.4\\u003c/strong\\u003e tích hợp giúp người dùng kết nối với các thiết bị ngoại vi như chuột, bàn phím hoặc tai nghe không dây một cách nhanh chóng và dễ dàng.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eGiao diện BIOS thân thiện và tính năng AI độc quyền\\u0026nbsp;\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eBo mạch chủ này sử dụng \\u003cstrong\\u003eUEFI BIOS\\u003c/strong\\u003e với giao diện thân thiện, dễ sử dụng, giúp người dùng dễ dàng cài đặt và tối ưu hệ thống. Ngoài ra, với \\u003cstrong\\u003eGIGABYTE Control Center\\u003c/strong\\u003e, bạn có thể quản lý toàn bộ hệ thống từ việc điều khiển quạt đến việc tối ưu hóa hiệu năng chỉ với một vài cú nhấp chuột.\\u003c/p\\u003e\\u003cp\\u003eGigabyte Z890 A ELITE WF7 ICE cũng đi kèm với các tính năng AI hỗ trợ tối ưu hóa hiệu suất, quản lý nhiệt độ, và tự động điều chỉnh tốc độ quạt theo thời gian thực. Nhờ đó, người dùng có thể tận hưởng hiệu suất cao mà không cần lo lắng về vấn đề làm mát.\\u003c/p\\u003e\\u003cp\\u003eGigabyte đã trang bị cho Z890 A ELITE WF7 ICE\\u003cstrong\\u003e hệ thống tản nhiệt tiên tiến \\u003c/strong\\u003evới các lá tản nhiệt kim loại lớn, giúp bo mạch chủ luôn duy trì ở nhiệt độ ổn định ngay cả khi vận hành với hiệu suất cao. Thiết kế này không chỉ giúp tăng tuổi thọ cho các linh kiện mà còn giảm thiểu nguy cơ quá nhiệt khi ép xung hệ thống.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eSở hữu ngay Mainboard Gigabyte Z890 A ELITE WF7 ICE tại Phong Vũ với giá ưu đãi\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eNếu bạn đang tìm kiếm một \\u003cstrong\\u003emainboard\\u003c/strong\\u003e mạnh mẽ, bền bỉ và tích hợp nhiều công nghệ hiện đại, thì \\u003cstrong\\u003eGigabyte Z890 A ELITE WF7 ICE\\u003c/strong\\u003e chính là sự lựa chọn hoàn hảo. Hãy nhanh tay đặt mua tại \\u003cstrong\\u003ePhong Vũ\\u003c/strong\\u003e để trải nghiệm hiệu suất đỉnh cao và tận hưởng các ưu đãi hấp dẫn! Không chỉ đảm bảo hàng chính hãng, Phong Vũ còn cam kết giao hàng nhanh chóng cùng chính sách bảo hành uy tín.\\u003c/p\\u003e\\u003cp\\u003e\\u003cstrong\\u003eĐặt mua ngay hôm nay để nâng cấp hệ thống của bạn lên tầm cao mới!\\u003c/strong\\u003e\\u003c/p\\u003e</p>', '- Chuẩn mainboard: ATX\\u003cbr/\\u003e - Socket: 1851 , Chipset: Z890\\u003cbr/\\u003e - Hỗ trợ RAM: 4 khe DDR5, tối đa 256GB\\u003cbr/\\u003e - Lưu trữ: 4 x SATA 3 6Gb/s, 3 x M.2 NVMe, 1 x M.2 SATA/NVMe\\u003cbr/\\u003e - Cổng xuất hình: 1 x HDMI, 1 x DisplayPort, 1 x Thunderbolt 4', 'Gigabyte', '2025-09-23 05:24:41', '2025-09-23 05:24:41'),
(241003310, 'Mainboard MSI PRO PRO Z890 S | DDR5 - Wifi 7', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758630319/sxvzbxcngo3aymgfgzws.webp', 10, 8290000, 24, 6300400, '<p>Đang cập nhật</p>', 'Đang cập nhật', 'Msi', '2025-09-23 05:26:15', '2025-09-23 05:26:15'),
(250116586, 'Mainboard Msi B860M GAMING PLUS WIFI', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758626641/rimtvlitgb756vvbncmz.webp', 8, 6319000, 7, 5876670, '<p>Đang cập nhật</p>', 'Đang cập nhật', 'Msi', '2025-09-23 04:24:42', '2025-09-23 04:24:42'),
(250300678, 'Máy tính bảng Apple iPad Gen 11 (A16) Wifi - 11 inch 256GB - Blue (MD4H4ZA/A)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757902744/pmiuinflxm0ess1phg5l.webp', 10, 12990000, 13, 11301300, '<p>Đang cập nhật</p>', '- Chính hãng, Mới 100%, Nguyên seal\\u003cbr/\\u003e- Màn hình: 11\\\" Liquid Retina IPS\\u003cbr/\\u003e- Camera sau: 12MP\\u003cbr/\\u003e- Camera trước: 12MP\\u003cbr/\\u003e- CPU: Apple A16\\u003cbr/\\u003e- Bộ nhớ: 256GB\\u003cbr/\\u003e- RAM: 6GB\\u003cbr/\\u003e- Hệ điều hành: iPadOS 18', 'Apple', '2025-09-14 19:20:08', '2025-09-19 02:33:32');
INSERT INTO `products` (`sku`, `name`, `image_url`, `quantity`, `supplier_retail_price`, `discount_amount`, `sell_price`, `description`, `short_description`, `brand_name`, `created_at`, `updated_at`) VALUES
(250306340, 'PC Asus V500MV-13420H136W (Intel Core i5-13420H/ 16GB DDR5/ 512GB SSD/ Windows 11)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625928/ehvksvbxdij6wkwhj9r5.webp', 7, 14190000, 12, 12487200, '<p>\\u003cp\\u003e\\u003ci\\u003ePC Asus V500MV (i5-13420H/ 16GB/ 512GB/ W11H) (Xám) (V500MV-13420H136W) là mẫu \\u003c/i\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/may-tinh-de-ban\\\">https://phongvu.vn/c/may-tinh-de-ban\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003e\\u003ci\\u003emáy tính để bàn\\u003c/i\\u003e\\u003c/a\\u003e\\u003ci\\u003e hiện đại, được trang bị vi xử lý Intel® Core™ i5-13420H 8 nhân 12 luồng, xung nhịp tối đa 4.6GHz, đi kèm bộ nhớ RAM 16GB DDR5-5600MHz hiệu năng cao và ổ cứng SSD 512GB PCIe 4.0. Sản phẩm sử dụng đồ họa tích hợp Intel UHD, chạy hệ điều hành Windows 11 Home, hỗ trợ đầy đủ kết nối như USB, HDMI, DisplayPort, LAN, Wi-Fi 6, âm thanh 7.1 và cho phép xuất ra cùng lúc hai màn hình. Máy có thiết kế bền bỉ, tản nhiệt tốt, đi kèm bàn phím và chuột USB.\\u003c/i\\u003e\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003ePC Asus V500MV có bộ vi xử lý Intel® Core™ i5-13420H 2.1 GHz, Bộ nhớ đệm 12MB, có thể tăng lên tới 4.6 GHz, 8 nhân, 12 luồng, phù hợp xử lý đa nhiệm, văn phòng, thậm chí biên tập video nhẹ và chơi một số game\\u0026nbsp;\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/pc-asus\\\">https://phongvu.vn/c/pc-asus\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003ePC Asus \\u003c/a\\u003eV500MV (i5-13420H/ 16GB/ 512GB/ W11H) được trang bị bộ vi xử lý \\u003cstrong\\u003eIntel® Core™ i5-13420H\\u003c/strong\\u003e – con chip hiệu suất cao thuộc dòng \\u003cstrong\\u003eH-series\\u003c/strong\\u003e vốn được thiết kế cho laptop gaming và nay mang đến sức mạnh ấn tượng trong thiết bị PC mini tower. Với 8 nhân và 12 luồng xử lý, xung nhịp cơ bản \\u003cstrong\\u003e2.1GHz\\u003c/strong\\u003e và \\u003cstrong\\u003eTurbo Boost lên đến 4.6GHz\\u003c/strong\\u003e, chiếc PC này hoàn toàn có thể đáp ứng tốt mọi tác vụ văn phòng hiện đại như xử lý bảng tính, đa nhiệm ứng dụng, duyệt web nhiều tab, thậm chí biên tập video nhẹ hay chơi một số tựa game phổ biến.\\u003c/p\\u003e\\u003cp\\u003eĐược tích hợp đồ họa \\u003cstrong\\u003eIntel® UHD Graphics\\u003c/strong\\u003e, PC Asus V500MV vẫn có khả năng xử lý hình ảnh ổn định cho các công việc giải trí cơ bản, stream video 4K, chỉnh sửa ảnh và video nhẹ nhàng. Đây là lựa chọn lý tưởng cho người dùng gia đình, văn phòng và sinh viên cần một máy tính nhỏ gọn nhưng mạnh mẽ.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXdcImg6ZCcdCAQJeVEnGukFxcO9MW0DCwM-mI_gjEE_chK1mVlRK0KRxG8pjK1nfJeyC7dv2XowMyDyhHnhkVUxDW0R0rFw5RODNIAVWFocxWvG2W7aLUSnnTDopuvaLIGa8MAadQ?key=D9IYQQ-Xq0svCdtpME06_bl0\\\">https://lh7-rt.googleusercontent.com/docsz/AD_4nXdcImg6ZCcdCAQJeVEnGukFxcO9MW0DCwM-mI_gjEE_chK1mVlRK0KRxG8pjK1nfJeyC7dv2XowMyDyhHnhkVUxDW0R0rFw5RODNIAVWFocxWvG2W7aLUSnnTDopuvaLIGa8MAadQ?key=D9IYQQ-Xq0svCdtpME06_bl0\\</a>\" alt=\\\"Với nền tảng CPU hiệu năng cao này, người dùng có thể an tâm sử dụng lâu dài PC Asus V500MV (i5-13420H/ 16GB/ 512GB/ W11H) \\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eVới nền tảng CPU hiệu năng cao này, người dùng có thể an tâm sử dụng lâu dài PC Asus V500MV (i5-13420H/ 16GB/ 512GB/ W11H)\\u0026nbsp;\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eRAM DDR5‑5600 Bus cao, băng thông lớn, giúp khởi chạy ứng dụng nhanh và chuyển đổi giữa các tác vụ mượt mà, ổ cứng 512GB SSD PCIe 4.0, tốc độ đọc/ghi rất cao\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003ePC Asus V500MV sở hữu \\u003cstrong\\u003e16GB RAM DDR5 5600MHz (2 x 8GB)\\u003c/strong\\u003e, mang lại tốc độ truyền dữ liệu cao. Băng thông lớn và độ trễ thấp của RAM DDR5 không chỉ hỗ trợ xử lý đa tác vụ mượt mà, mà còn tối ưu hóa hiệu suất khi sử dụng các ứng dụng ngốn bộ nhớ như trình chỉnh sửa hình ảnh, phần mềm văn phòng đa luồng hoặc các công cụ lập trình. Việc chuyển đổi giữa các tab trình duyệt, ứng dụng nền và chương trình nặng diễn ra một cách liền mạch, không giật lag.\\u003c/p\\u003e\\u003cp\\u003e\\u003cstrong\\u003eỔ cứng SSD PCIe 4.0 512GB\\u003c/strong\\u003e đi kèm cũng là một điểm mạnh đáng giá. Đây là chuẩn lưu trữ tốc độ cao mới nhất hiện nay, giúp cải thiện tốc độ khởi động máy chỉ trong vài giây, mở phần mềm gần như tức thì và giảm thiểu thời gian tải game hoặc truy xuất dữ liệu lớn. Với dung lượng 512GB, người dùng có đủ không gian để lưu trữ tài liệu công việc, dữ liệu học tập, ảnh, video, phần mềm hoặc thậm chí một vài tựa game phổ biến.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eThiết kế PC Asus V500MV bền bỉ,\\u0026nbsp; sử dụng tụ điện thể rắn, bo mạch chủ Asus chất lượng cao, tản nhiệt khí với ống dẫn nhiệt và quạt kích thước lớn\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003ePC Asus V500MV (i5-13420H/ 16GB/ 512GB/ W11H) nổi bật với thiết kế nhỏ gọn nhưng chắc chắn và bền bỉ. Toàn bộ bo mạch chủ sử dụng tụ điện thể rắn chuẩn doanh nghiệp, cho tuổi thọ cao và khả năng hoạt động ổn định lâu dài. Đây là yếu tố quan trọng giúp PC vận hành ổn định xuyên suốt, kể cả khi sử dụng với cường độ cao. \\u003cstrong\\u003eBo mạch chủ ASUS\\u003c/strong\\u003e danh tiếng cũng đảm bảo sự tương thích và hiệu năng tối ưu giữa các linh kiện bên trong.\\u003c/p\\u003e\\u003cp\\u003e\\u003cstrong\\u003eHệ thống tản nhiệt khí \\u003c/strong\\u003eđược thiết kế chuyên dụng với ống dẫn nhiệt và quạt làm mát kích thước lớn, giúp duy trì nhiệt độ CPU trong mức an toàn. CPU i5-13420H trong máy có thể hoạt động với \\u003cstrong\\u003eTDP \\u003c/strong\\u003elên đến \\u003cstrong\\u003e45W\\u003c/strong\\u003e, mang lại hiệu năng cao hơn cả nhiều máy tính để bàn phổ thông. Đặc biệt, khi hoạt động ở chế độ hiệu suất cao, máy vẫn giữ được độ ồn dưới \\u003cstrong\\u003e38 dB.\\u003c/strong\\u003e Ở những tác vụ nhẹ, quạt sẽ tự động dừng, đạt mức độ ồn 0 dB, lý tưởng cho không gian làm việc hoặc học tập yên tĩnh.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXc0bAOAxrvD6mL5ZjjhjSKCBYbhh12CgLARslM5knQXdar9NoqJ99YwGsTubsUDvxNuu5YzwTe_NUMLw8xqTV-5eZz_2oFQdz-15bBEh8pORx2lsdf5unC1BFl3SFEKKcHYjHa1iw?key=D9IYQQ-Xq0svCdtpME06_bl0\\\">https://lh7-rt.googleusercontent.com/docsz/AD_4nXc0bAOAxrvD6mL5ZjjhjSKCBYbhh12CgLARslM5knQXdar9NoqJ99YwGsTubsUDvxNuu5YzwTe_NUMLw8xqTV-5eZz_2oFQdz-15bBEh8pORx2lsdf5unC1BFl3SFEKKcHYjHa1iw?key=D9IYQQ-Xq0svCdtpME06_bl0\\</a>\" alt=\\\"PC Asus V500MV (i5-13420H/ 16GB/ 512GB/ W11H) đi kèm bàn phím và chuột USB, giúp người dùng bắt đầu sử dụng ngay mà không cần trang bị thêm phụ kiện rời\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003ePC Asus V500MV (i5-13420H/ 16GB/ 512GB/ W11H) đi kèm bàn phím và chuột USB, giúp người dùng bắt đầu sử dụng ngay mà không cần trang bị thêm phụ kiện rời\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eHệ điều hành Windows 11 Home thông dụng với người dùng, dễ dàng sử dụng\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003ePC Asus V500MV (i5-13420H/ 16GB/ 512GB/ W11H) được cài sẵn hệ điều hành \\u003cstrong\\u003eWindows 11 Home\\u003c/strong\\u003e. Với giao diện trực quan, hiện đại cùng nhiều cải tiến về hiệu năng, bảo mật và khả năng hỗ trợ phần mềm, Windows 11 Home mang lại trải nghiệm sử dụng liền mạch và dễ dàng cho cả người mới và người dùng lâu năm.\\u003c/p\\u003e\\u003cp\\u003eWindows 11 Home tích hợp sẵn Microsoft Store, bộ ứng dụng văn phòng Microsoft Office, công cụ đa nhiệm Snap Layouts, hỗ trợ nhiều desktop ảo và khả năng tối ưu hóa khi làm việc với màn hình cảm ứng hoặc thiết bị lai. Hệ điều hành này cũng tương thích hoàn hảo với phần cứng Intel thế hệ 13, tối ưu hoá hiệu năng khi xử lý các tác vụ đa luồng, sử dụng đồ họa tích hợp và các phần mềm chuyên dụng.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXe8Fx5HBLIAp1oselbMrmFHgTZEuunjkB5YwU6wZCX9rwP-sLbzFaBkvIU3iEXe_2ksEYnyMZSF-41h5kNaQASv_H7WINL1FT6u8xWw8IPRFKX5oqq-pB9OqF56Ss6KeHQoeO8?key=D9IYQQ-Xq0svCdtpME06_bl0\\\">https://lh7-rt.googleusercontent.com/docsz/AD_4nXe8Fx5HBLIAp1oselbMrmFHgTZEuunjkB5YwU6wZCX9rwP-sLbzFaBkvIU3iEXe_2ksEYnyMZSF-41h5kNaQASv_H7WINL1FT6u8xWw8IPRFKX5oqq-pB9OqF56Ss6KeHQoeO8?key=D9IYQQ-Xq0svCdtpME06_bl0\\</a>\" alt=\\\"Ngoài ra, Windows 11 Home cũng có những nâng cấp về bảo mật như Windows Hello, Secure Boot và TPM 2.0, giúp người dùng an tâm hơn trước các mối đe dọa mạng\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eNgoài ra, Windows 11 Home cũng có những nâng cấp về bảo mật như Windows Hello, Secure Boot và TPM 2.0, giúp người dùng an tâm hơn trước các mối đe dọa mạng\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eCổng kết nối của PC Asus V500MV (i5-13420H/ 16GB/ 512GB/ W11H) đầy đủ với cổng USB, HDMI, DisplayPort, LAN, Wi-Fi 6, hỗ trợ 2 màn hình cùng lúc\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003ePC Asus V500MV (i5-13420H/ 16GB/ 512GB/ W11H) được trang bị hệ thống cổng kết nối đa dạng và hiện đại, đáp ứng đầy đủ nhu cầu của người dùng cá nhân và doanh nghiệp. Mặt trước gồm\\u003cstrong\\u003e 1 cổng USB-C 3.2 Gen 1, 2 cổng USB-A 3.2 Gen 1, jack tai nghe 3.5mm\\u003c/strong\\u003e \\u003cstrong\\u003ekết hợp mic\\u003c/strong\\u003e – thuận tiện khi cần kết nối nhanh với thiết bị ngoại vi như USB, tai nghe hoặc ổ cứng gắn ngoài.\\u003c/p\\u003e\\u003cp\\u003eỞ mặt sau, máy được trang bị \\u003cstrong\\u003e4 cổng USB 2.0, 1 cổng LAN RJ45 Gigabit, 1 cổng HDMI 1.4 và 1 DisplayPort 1.4\\u003c/strong\\u003e – hỗ trợ \\u003cstrong\\u003exuất hình ảnh ra hai màn hình\\u003c/strong\\u003e đồng thời với độ phân giải cao, thuận tiện cho công việc thiết kế, học tập hoặc giải trí đa nhiệm. Ngoài ra, hệ thống âm thanh tích hợp cũng rất ấn tượng với \\u003cstrong\\u003ecổng xuất âm 7.1 kênh\\u003c/strong\\u003e, mang lại trải nghiệm âm thanh trung thực và sống động cho cả xem phim và chơi game. PC này cũng hỗ trợ chuẩn \\u003cstrong\\u003eWi-Fi 6 (802.11ax) 2x2 cùng Bluetooth 5.3, \\u003c/strong\\u003echo khả năng kết nối không dây nhanh, ổn định và tiết kiệm năng lượng.\\u0026nbsp;\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXdZYhyPK2UkZ0wMz1r7Cf1xLNTiHfeW5UxCGSoMrVJiwxm8pN_pwIvqu5s5tYysAmGpkrXw7-DVxsKo0m8WlpkfK3nOiJ9bo_D-6AJLCL3vVaM0JaOtCtlFwHQvtUw5i5t7ZVTH?key=D9IYQQ-Xq0svCdtpME06_bl0\\\">https://lh7-rt.googleusercontent.com/docsz/AD_4nXdZYhyPK2UkZ0wMz1r7Cf1xLNTiHfeW5UxCGSoMrVJiwxm8pN_pwIvqu5s5tYysAmGpkrXw7-DVxsKo0m8WlpkfK3nOiJ9bo_D-6AJLCL3vVaM0JaOtCtlFwHQvtUw5i5t7ZVTH?key=D9IYQQ-Xq0svCdtpME06_bl0\\</a>\" alt=\\\"Dù là làm việc tại văn phòng hay học online tại nhà, ASUS V500MV vẫn đảm bảo kết nối mượt mà với thiết bị ngoại vi, màn hình, mạng internet và âm thanh đa chiều\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eDù là làm việc tại văn phòng hay học online tại nhà, ASUS V500MV vẫn đảm bảo kết nối mượt mà với thiết bị ngoại vi, màn hình, mạng internet và âm thanh đa chiều\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eChọn mua PC Asus V500MV giá ưu đãi tại Phong Vũ\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eChọn mua PC Asus V500MV (i5-13420H/ 16GB/ 512GB/ W11H) ngay hôm nay để sở hữu máy tính bàn mạnh mẽ, hiệu năng ổn định cho học tập, làm việc và giải trí. PC ASUS đang được phân phối tại các cửa hàng Phong Vũ trên toàn quốc với giá ưu đãi hấp dẫn. Máy được hưởng bảo hành chính hãng Asus lên đến 3 năm, giúp bạn yên tâm sử dụng lâu dài. Đừng bỏ lỡ cơ hội nâng cấp không gian làm việc với một chiếc PC thiết kế đẹp, cấu hình mạnh, vận hành mượt mà. Đặt mua ngay hôm nay tại website chính hãng của Phong Vũ <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/\">https://phongvu.vn/</a> để được giao hàng tận nơi, tư vấn tận tình và hỗ trợ kỹ thuật chuyên nghiệp.\\u003c/p\\u003e</p>', 'CPU: Intel Core i5-13420H (2.1 GHz - 4.6 GHz/12MB/8 nhân, 12 luồng)\\u003cbr/\\u003eĐồ họa: Intel UHD Graphics\\u003cbr/\\u003eRAM: 2 x 8GB DDR5 5600MHz)\\u003cbr/\\u003eLưu trữ: 512GB M.2 NVMe SSD \\u003cbr/\\u003eBàn phím + Chuột: USB', 'Asus', '2025-09-23 04:13:53', '2025-09-23 04:13:53'),
(250309496, 'Máy tính Apple MacBook Air 13.6 inch (M3/8CPU/10GPU/24GB/512GB/70W) - Bạc (Z1HY00023)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757902330/m9myiuwdjk24cqis3u0f.webp', 5, 34890000, 12, 30703200, '<p>\\u003cp\\u003e\\u003ci\\u003eApple \\u003c/i\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-apple-macbook-air\\\">https://phongvu.vn/c/laptop-apple-macbook-air\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003e\\u003ci\\u003eMacBook Air \\u003c/i\\u003e\\u003c/a\\u003e\\u003ci\\u003eM3 13.6 inch sở hữu thiết kế siêu mỏng cùng hiệu năng mạnh mẽ, mang đến trải nghiệm làm việc và giải trí đỉnh cao. Sản phẩm này không chỉ đảm bảo tốc độ xử lý nhanh chóng mà còn hỗ trợ đa nhiệm mượt mà. Với màn hình Liquid Retina sắc nét, thời lượng pin ấn tượng, MacBook Air M3 chính là lựa chọn lý tưởng cho những ai yêu thích sự gọn nhẹ nhưng vẫn cần hiệu suất vượt trội. Hãy cùng tìm hiểu chi tiết những tính năng nổi bật của sản phẩm nhé!\\u003c/i\\u003e\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eApple MacBook Air M3 13.6\\\" chip Apple M3 tốc độ xử lý và hiệu năng mạnh mẽ\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eSản phẩm được trang bị \\u003cstrong\\u003echip Apple M3\\u003c/strong\\u003e tốc độ nhanh, khả năng xử lý đồ họa tốt hơn và tối ưu hóa hiệu suất khi chạy nhiều tác vụ cùng lúc. Sản xuất trên tiến trình 3nm tiên tiến,\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-apple-macbook\\\">https://phongvu.vn/c/laptop-apple-macbook\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003e MacBook\\u003c/a\\u003e Air M3 13.6\\\"\\u003cstrong\\u003e\\u0026nbsp;\\u003c/strong\\u003emang đến khả năng tiết kiệm năng lượng tối ưu. Với CPU 8 nhân, GPU 10 nhân và Neural Engine 16 nhân, máy xử lý mượt mà mọi tác vụ từ làm việc văn phòng, lập trình cho đến chỉnh sửa video 4K hay thiết kế đồ họa. So với thế hệ M1, hiệu suất CPU của M3 cao hơn và GPU nhanh hơn, giúp đa nhiệm hiệu quả và xử lý đồ họa chuyên sâu.\\u0026nbsp;\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/021f0cdf-57e1-49fa-9654-7008c3574cec/image.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/021f0cdf-57e1-49fa-9654-7008c3574cec/image.png\\</a>\" alt=\\\"Apple MacBook Air M3 13.6\\u0026quot; (24GB/512GB SSD) tối ưu hiệu suất, khả năng xử lý đồ họa ấn tượng \\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eApple MacBook Air M3 13.6\\\" (24GB/512GB SSD) tối ưu hiệu suất, khả năng xử lý đồ họa ấn tượng\\u0026nbsp;\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3\\u003e\\u003cstrong\\u003eMacBook Air M3 13.6\\\" thiết kế mỏng nhẹ, di động tối ưu\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eMacBook Air M3 13.6\\\" trọng lượng chỉ \\u003cstrong\\u003e1.24kg\\u003c/strong\\u003e, thiết kế \\u003cstrong\\u003ecực kỳ mỏng nhẹ chỉ 11.3mm\\u003c/strong\\u003e, người dùng dễ dàng mang theo mọi lúc mọi nơi. Khung máy được hoàn thiện từ nhôm nguyên khối cao cấp, không chỉ mang lại vẻ ngoài sang trọng mà còn đảm bảo độ bền cao. Với các tùy chọn màu sắc \\u003cstrong\\u003eStarlight, Silver và Space Gray\\u003c/strong\\u003e, MacBook Air M3 sẽ đáp ứng mọi phong cách của người dùng. Ngoài ra, thiết kế không quạt giúp máy vận hành một cách êm ái.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/b2064f72-3c0b-4835-b351-dbdd22aae24b/image.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/b2064f72-3c0b-4835-b351-dbdd22aae24b/image.png\\</a>\" alt=\\\"Apple MacBook Air M3 13.6\\u0026quot; (24GB/512GB SSD) thiết kế mỏng nhẹ có thể mang theo bất cứ đâu\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eApple MacBook Air M3 13.6\\\" (24GB/512GB SSD) thiết kế mỏng nhẹ có thể mang theo bất cứ đâu\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3\\u003e\\u003cstrong\\u003eMàn hình Liquid Retina 13.6\\\" viền mỏng mang lại trải nghiệm hiển thị rộng rãi, sắc nét\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003e\\u003cstrong\\u003eLiquid Retina 13.6 inch\\u003c/strong\\u003e với viền mỏng, mang đến trải nghiệm hiển thị rộng rãi và sắc nét cho MacBook Air M3 13.6\\\". Màn hình có độ phân giải \\u003cstrong\\u003e2560 x 1664 pixels\\u003c/strong\\u003e, cung cấp hình ảnh màu sắc chính xác, chi tiết và độ tương phản cao, nội dung trở nên sống động hơn. Công nghệ \\u003cstrong\\u003eTrue Tone\\u003c/strong\\u003e tự động điều chỉnh nhiệt độ màu theo môi trường, tạo cảm giác dễ chịu khi sử dụng trong thời gian dài. Độ sáng lên đến \\u003cstrong\\u003e500 nits\\u003c/strong\\u003e hiển thị rõ ràng ngay cả trong điều kiện ánh sáng mạnh. Nhờ viền màn hình mỏng, không gian hiển thị trở nên tối ưu hơn, giúp bạn tận hưởng trải nghiệm làm việc, giải trí và sáng tạo nội dung một cách trọn vẹn.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/57761e94-f249-490e-8399-733388b58d44/image.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/57761e94-f249-490e-8399-733388b58d44/image.png\\</a>\" alt=\\\"Apple MacBook Air M3 13.6\\u0026quot; (24GB/512GB SSD) màn hình Liquid Retina 13.6\\u0026quot; viền mỏng, hiển thị rõ nét\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eApple MacBook Air M3 13.6\\\" (24GB/512GB SSD) màn hình Liquid Retina 13.6\\\" viền mỏng, hiển thị rõ nét\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3\\u003e\\u003cstrong\\u003eRAM lên đến 24GB kết hợp với ổ cứng SSD 512GB\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eMacBook Air M3 13.6\\\" sở hữu \\u003cstrong\\u003eRAM lên đến 24GB\\u003c/strong\\u003e kết hợp cùng \\u003cstrong\\u003eổ cứng SSD 512GB\\u003c/strong\\u003e, hiệu suất mạnh mẽ và khả năng đa nhiệm mượt mà. Dung lượng RAM lớn giúp máy xử lý tốt các tác vụ nặng như thiết kế đồ họa, chỉnh sửa video 4K hay chạy nhiều ứng dụng cùng lúc mà không bị giật lag. Trong khi đó, ổ cứng SSD 512GB cung cấp tốc độ đọc/ghi nhanh, đảm bảo thời gian khởi động, mở ứng dụng và truy xuất dữ liệu nhanh chóng. Sự kết hợp giữa RAM dung lượng cao và bộ nhớ SSD tốc độ nhanh giúp MacBook Air M3 không chỉ mang đến trải nghiệm làm việc mượt mà mà còn tối ưu hóa hiệu suất cho người dùng chuyên nghiệp.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/80dffe50-b5f5-4651-8231-a4b98bf9b22c/image.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/80dffe50-b5f5-4651-8231-a4b98bf9b22c/image.png\\</a>\" alt=\\\"Apple MacBook Air M3 13.6\\u0026quot; (24GB/512GB SSD) RAM lên đến 24GB, ổ cứng SSD 512GB\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eApple MacBook Air M3 13.6\\\" (24GB/512GB SSD) RAM lên đến 24GB, ổ cứng SSD 512GB\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eMacBook Air M3 13.6\\\" sử dụng hệ điều hành macOS, trải nghiệm mượt mà và ổn định\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eMacOS cung cấp giao diện trực quan, dễ sử dụng cùng nhiều tính năng thông minh như \\u003cstrong\\u003eStage Manager\\u003c/strong\\u003e, \\u003cstrong\\u003eUniversal Control\\u003c/strong\\u003e, \\u003cstrong\\u003eHandoff\\u003c/strong\\u003e và \\u003cstrong\\u003eAirDrop\\u003c/strong\\u003e, tạo nên sự liền mạch giữa các thiết bị Apple trong quá trình làm việc. Ngoài ra, hệ điều hành này cũng tối ưu bảo mật với tính năng \\u003cstrong\\u003eFileVault\\u003c/strong\\u003e, \\u003cstrong\\u003eTouch ID\\u003c/strong\\u003e và cập nhật thường xuyên, đảm bảo an toàn cho dữ liệu cá nhân. Với sự tối ưu giữa phần cứng và phần mềm, macOS giúp MacBook Air M3 hoạt động bền bỉ, tiết kiệm năng lượng và khai thác tối đa sức mạnh của chip Apple M3.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/ab46506b-ff45-465e-afa4-6fa849ef31ce/image.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/ab46506b-ff45-465e-afa4-6fa849ef31ce/image.png\\</a>\" alt=\\\"Apple MacBook Air M3 13.6\\u0026quot; (24GB/512GB SSD) mang đến sự tối ưu, tiện nghi cho người dùng\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eApple MacBook Air M3 13.6\\\" (24GB/512GB SSD) mang đến sự tối ưu, tiện nghi cho người dùng\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eMacBook Air M3 13.6\\\" hệ thống kết nối toàn diện, đáp ứng tốt nhu cầu làm việc và giải trí\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eMacBook Air M3 13.6\\\" với\\u003cstrong\\u003e 2 cổng Thunderbolt 4\\u003c/strong\\u003e, hỗ trợ truyền dữ liệu tốc độ cao, xuất hình ảnh ra màn hình ngoài và sạc nhanh thông qua cổng USB-C. Thiết bị kết nối tai nghe hoặc loa ngoài tiện lợi thông qua \\u003cstrong\\u003ejack âm thanh 3.5mm (Audio Combo)\\u003c/strong\\u003e. Ngoài ra, sản phẩm hỗ trợ \\u003cstrong\\u003eWi-Fi 6E (802.11ax)\\u003c/strong\\u003e tốc độ kết nối nhanh hơn, độ trễ thấp hơn và khả năng duy trì mạng ổn định ngay cả trong môi trường nhiều thiết bị kết nối. Bên cạnh đó, \\u003cstrong\\u003eBluetooth 5.3\\u003c/strong\\u003e ghép nối với các thiết bị ngoại vi nhanh chóng như tai nghe, bàn phím, chuột hay iPhone.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/14555008-c3ba-422a-8a10-efe636db5075/image.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/14555008-c3ba-422a-8a10-efe636db5075/image.png\\</a>\" alt=\\\"Apple MacBook Air M3 13.6\\u0026quot; (24GB/512GB SSD) có các cổng kết nối linh hoạt\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eApple MacBook Air M3 13.6\\\" (24GB/512GB SSD) có các cổng kết nối linh hoạt\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eMacBook Air M3 13.6\\\" thời lượng pin ấn tượng, sạc nhanh tiện nghi\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eNgười dùng có thể làm việc và giải trí suốt cả ngày mà không lo hết pin khi chọn lựa MacBook Air M3 13.6\\\". Máy có thể \\u003cstrong\\u003exem phim trên Apple TV lên đến 18 giờ\\u003c/strong\\u003e và \\u003cstrong\\u003eduyệt web qua Wifi trong 15 giờ\\u003c/strong\\u003e với viên pin \\u003cstrong\\u003eLi-Po 52.6Wh\\u003c/strong\\u003e tối ưu hóa năng lượng. Bên cạnh đó, Apple cung cấp nhiều tùy chọn sạc linh hoạt để đáp ứng nhu cầu linh hoạt. Phiên bản \\u003cstrong\\u003eGPU 8 lõi\\u003c/strong\\u003e đi kèm \\u003cstrong\\u003ebộ tiếp hợp nguồn USB-C 30W\\u003c/strong\\u003e, trong khi phiên bản \\u003cstrong\\u003eGPU 10 lõi với dung lượng 512GB\\u003c/strong\\u003e được trang bị \\u003cstrong\\u003ebộ tiếp hợp nguồn USB-C kép 35W\\u003c/strong\\u003e (có thể tùy chọn cho bản GPU 8 lõi). MacBook Air M3 cũng hỗ trợ \\u003cstrong\\u003esạc nhanh với bộ tiếp hợp USB-C 70W\\u003c/strong\\u003e, giúp rút ngắn thời gian sạc đáng kể và đi kèm \\u003cstrong\\u003ecáp USB-C to MagSafe 3\\u003c/strong\\u003e kết nối sạc an toàn, dễ dàng tháo lắp.\\u0026nbsp;\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eChọn mua Apple MacBook Air M3 13.6\\\" (24GB/512GB SSD) chính hãng, giá tốt tại Phong Vũ\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eMacBook Air M3 13.6\\\" màn hình Liquid Retina sắc nét, chip Apple M3 mạnh mẽ cùng hệ điều hành MacOS sẽ mang đến trải nghiệm mượt mà và tiện lợi cho người dùng. Đặc biệt, sản phẩm còn có thời lượng pin dài, sạc nhanh linh hoạt cùng các tính năng bảo mật cao cấp giúp MacBook Air M3 trở thành lựa chọn lý tưởng cho những ai tìm kiếm một chiếc máy tính xách tay di động, bền bỉ và hiệu suất cao. Hãy đến ngay hệ thống showroom Phong Vũ để chọn mua các thiết bị điện tử chính hãng giá tốt nhé!\\u003c/p\\u003e</p>', '\"CPU: Apple M3\\u003cbr/\\u003eMàn hình: 13.6 inch (2560 x 1664) Liquid Retina\\u003cbr/\\u003eRAM: 24GB / 512GB SSD\\u003cbr/\\u003eHệ điều hành: macOS', 'Apple', '2025-09-14 19:14:19', '2025-09-14 19:14:19'),
(250512269, 'PC Dell Slim ECS1250 (Intel Core i5-14400/ 8GB DDR5/ 512GB SSD/ Windows 11)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625769/thgzunpiugfsau8mlhbm.webp', 3, 14990000, 10, 13491000, '<p>Đang cập nhật</p>', 'CPU: Intel Core i5-14400 (2.5 GHz - 4.7 GHz/20MB/10 nhân, 16 luồng)\\u003cbr/\\u003eĐồ họa: Intel UHD Graphics 730\\u003cbr/\\u003eRAM: 1 x 8GB DDR5 4800MHz (2 Khe cắm, Hỗ trợ tối đa 16GB)\\u003cbr/\\u003eLưu trữ: 512GB M.2 NVMe SSD \\u003cbr/\\u003eKeyboard + Mouse', 'Dell', '2025-09-23 04:11:19', '2025-09-23 04:11:19'),
(250646008, 'RAM desktop Kingston FURY Beast Black EXPO (1 x 16GB) DDR5 6000MHz (KF560C36BBE2-16WP)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758630446/vsf8nqmwajln9f2p3r7g.webp', 18, 1990000, 15, 1691500, '<p>Đang cập nhật</p>', 'Đang cập nhật', 'Kingston', '2025-09-23 05:27:54', '2025-09-23 05:27:54'),
(250718077, 'PC PV Gaming Hera H010 (Intel Ultra 9 285K/ GeForce RTX 5090/ 2 x 32GB/ 1TB SSD/ Free DOS)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758626101/us1w2q6psjoa8bfbvyor.webp', 1, 199990000, 13, 173991300, '<p>Đang cập nhật</p>', '\\u003cul\\u003e\\u003cli\\u003eCPU Intel Core Ultra 9 285K\\u003c/li\\u003e\\u003cli\\u003eMainboard ASUS ROG MAXIMUS Z890 HERO\\u003c/li\\u003e\\u003cli\\u003eRAM desktop Corsair Dominator Titanium Black 64GB(2x32GB) DDR5 6000MHz\\u003c/li\\u003e\\u003cli\\u003eSSD Samsung 990 Pro 1TB M2 PCIe 4.0\\u003c/li\\u003e\\u003cli\\u003eVGA ASUS ROG Astral GeForce RTX™ 5090 32GB GDDR7 OC Edition\\u0026nbsp;\\u003c/li\\u003e\\u003cli\\u003ePSU CoolerMaster V Platinum 1600 V2\\u003c/li\\u003e\\u003cli\\u003eCase ASUS ROG HYPERION GR701 / Đen\\u003c/li\\u003e\\u003cli\\u003eTản nhiệt nước Cooler ASUS ROG RYUO IV SLC 360 ARGB\\u003c/li\\u003e\\u003c/ul\\u003e', 'PV', '2025-09-23 04:16:26', '2025-09-23 04:16:26'),
(250803168, 'Máy tính xách tay/ Laptop Acer Nitro V 15 ProPanel ANV15-41-R7CR (AMD Ryzen 5-7535HS) (Đen)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758622261/c9dahiwck8zgjt9vyt1a.webp', 6, 24990000, 2, 24490200, '<p>\\u003cp style=\\\"text-align: justify;\\\"\\u003eLaptop Nitro V 15 ProPanel ANV15-41-R7CR là một chiếc \\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-acer-nitro\\&quot;\\u003e\\u003ci\\u003eAcer\">https://phongvu.vn/c/laptop-acer-nitro\\\"\\u003e\\u003ci\\u003eAcer</a> Nitro\\u003c/i\\u003e\\u003c/a\\u003e mạnh mẽ, được thiết kế để đáp ứng tối đa nhu cầu của game thủ và người dùng đa nhiệm. Với cấu hình AMD Ryzen™ 5 7535HS cùng card đồ họa RTX 4050 6GB, màn hình 180Hz mượt mà và khả năng nâng cấp vượt trội, đây là lựa chọn lý tưởng cho những ai tìm kiếm một chiếc \\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-gaming\\&quot;\\u003e\\u003ci\\u003elaptop\">https://phongvu.vn/c/laptop-gaming\\\"\\u003e\\u003ci\\u003elaptop</a> gaming\\u003c/i\\u003e\\u003c/a\\u003e tầm trung với hiệu năng ổn định.\\u003c/p\\u003e\\u003ch2 style=\\\"text-align: justify;\\\"\\u003eI. Đặc điểm nổi bật\\u003c/h2\\u003e\\u003cul style=\\\"text-align: justify;\\\"\\u003e\\u003cli\\u003e\\u003cstrong\\u003eHiệu năng mạnh mẽ:\\u003c/strong\\u003e Trang bị bộ vi xử lý AMD Ryzen™ 5 7535HS và card đồ họa NVIDIA GeForce RTX 4050, đảm bảo trải nghiệm chơi game mượt mà và xử lý các tác vụ đồ họa hiệu quả.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eMàn hình tốc độ cao:\\u003c/strong\\u003e Màn hình 15.6 inch Full HD IPS 180Hz cùng độ phủ màu 100% sRGB mang đến hình ảnh sắc nét, màu sắc chân thực và trải nghiệm thị giác siêu mượt.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eKhả năng đa nhiệm vượt trội:\\u003c/strong\\u003e Với 16GB RAM DDR5 4800MHz có thể nâng cấp lên đến 96GB và ổ cứng SSD 512GB NVMe, máy xử lý đa nhiệm và tải ứng dụng cực nhanh.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eThiết kế bền bỉ, tản nhiệt hiệu quả:\\u003c/strong\\u003e Vỏ nhựa chắc chắn, trọng lượng 2.1kg cùng hệ thống tản nhiệt được tối ưu giúp máy hoạt động ổn định trong thời gian dài.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eBàn phím tiện lợi:\\u003c/strong\\u003e Bàn phím có đèn LED và tích hợp phím Copilot, hỗ trợ tối đa cho cả công việc, học tập và giải trí trong mọi điều kiện ánh sáng.\\u003c/li\\u003e\\u003c/ul\\u003e\\u003ch2 style=\\\"text-align: justify;\\\"\\u003eII. Đánh giá chi tiết\\u003c/h2\\u003e\\u003ch3 style=\\\"text-align: justify;\\\"\\u003e1. Sức mạnh vượt trội với AMD Ryzen 5 và RTX 4050\\u003c/h3\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eLaptop Nitro V 15 ProPanel ANV15-41-R7CR sở hữu bộ vi xử lý AMD Ryzen™ 5 7535HS với 6 nhân, 12 luồng, xung nhịp cơ bản 3.3 GHz và có thể đạt tới 4.55 GHz. Kết hợp cùng card đồ họa NVIDIA GeForce \\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-rtx-4050\\&quot;\\u003e\\u003ci\\u003elaptop\">https://phongvu.vn/c/laptop-rtx-4050\\\"\\u003e\\u003ci\\u003elaptop</a> RTX 4050\\u003c/i\\u003e\\u003c/a\\u003e 6GB GDDR6, máy mang đến hiệu năng mạnh mẽ, đáp ứng tốt mọi tựa game phổ biến ở thiết lập đồ họa từ trung bình đến cao. Từ các trận chiến nảy lửa đến công việc sáng tạo nội dung cơ bản, Nitro V 15 ProPanel đều xử lý mượt mà và ổn định.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg alt=\\\"Hiệu năng mạnh mẽ của Laptop Nitro V 15 ProPanel ANV15-41-R7CR với chip AMD Ryzen 5 và card đồ họa RTX 4050\\\" src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh3.googleusercontent.com/GJ0P_2dLMBAVSVbCO9zOKc7np1VCFmQa9Wy_ioqiTQ9s3_d9iq2fKPSwZjWS7ZIVJkYjDlWEhop_E4sJETMs551F-ZE-ckMV=rw\\\">https://lh3.googleusercontent.com/GJ0P_2dLMBAVSVbCO9zOKc7np1VCFmQa9Wy_ioqiTQ9s3_d9iq2fKPSwZjWS7ZIVJkYjDlWEhop_E4sJETMs551F-ZE-ckMV=rw\\</a>\" height=\\\"757\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHiệu năng mạnh mẽ của Laptop Nitro V 15 ProPanel ANV15-41-R7CR với chip AMD Ryzen 5 và card đồ họa RTX 4050\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3 style=\\\"text-align: justify;\\\"\\u003e2. Trải nghiệm hình ảnh sống động trên màn hình 180Hz\\u003c/h3\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eMàn hình 15.6 inch Full HD (1920 x 1080) của Nitro V 15 ProPanel ANV15-41-R7CR là điểm nhấn đáng chú ý. Với tấm nền IPS, tần số quét 180Hz và độ sáng 300 nits, màn hình hiển thị hình ảnh cực kỳ mượt mà, loại bỏ hiện tượng xé hình trong các pha hành động nhanh. Độ phủ màu 100% sRGB đảm bảo màu sắc chính xác, sống động, rất phù hợp cho cả game thủ và những người làm công việc đòi hỏi độ chuẩn màu cao trên một chiếc \\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop\\&quot;\\u003e\\u003ci\\u003elaptop\\u003c/i\\u003e\\u003c/a\\u003e.\\u003c/p\\u003e\\u003cfigure\">https://phongvu.vn/c/laptop\\\"\\u003e\\u003ci\\u003elaptop\\u003c/i\\u003e\\u003c/a\\u003e.\\u003c/p\\u003e\\u003cfigure</a> class=\\\"image\\\"\\u003e\\u003cimg alt=\\\"Màn hình 15.6 inch Full HD IPS 180Hz trên Laptop Nitro V 15 ProPanel\\\" src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh3.googleusercontent.com/QTw59oJtE6toH-pV2yg2j9mZLmRE-oMkPm6zgRprYmYRsyPHV1jcIAnW6js9wPCAZCeFpMLRcmY8_lUrT83E8_HO41Nc18A=rw\\\">https://lh3.googleusercontent.com/QTw59oJtE6toH-pV2yg2j9mZLmRE-oMkPm6zgRprYmYRsyPHV1jcIAnW6js9wPCAZCeFpMLRcmY8_lUrT83E8_HO41Nc18A=rw\\</a>\" height=\\\"757\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eMàn hình 15.6 inch Full HD IPS 180Hz trên Laptop Nitro V 15 ProPanel\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3 style=\\\"text-align: justify;\\\"\\u003e3. Đa nhiệm mượt mà với RAM DDR5 và SSD NVMe tốc độ cao\\u003c/h3\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eKhả năng đa nhiệm của Nitro V 15 ProPanel ANV15-41-R7CR được tối ưu với 16GB RAM DDR5 4800MHz. Đặc biệt, máy hỗ trợ 2 khe cắm RAM, cho phép nâng cấp tối đa lên đến 96GB, đáp ứng mọi nhu cầu từ chơi game nặng đến chạy nhiều ứng dụng cùng lúc. Ổ cứng SSD M.2 NVMe 512GB mang lại tốc độ khởi động hệ thống và tải game, ứng dụng siêu nhanh, giúp bạn tiết kiệm thời gian chờ đợi đáng kể.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg alt=\\\"Khả năng nâng cấp RAM DDR5 và ổ cứng SSD NVMe của Nitro V 15 ProPanel\\\" src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh3.googleusercontent.com/FKG1zFqZvpeqgFYTSA_Pw9aS3IUncQVaIEZ9SLA8VKtouRmYrOWTvFiNNaFdJcfanB17esP51GIAYd5pa7IrVtQGWQcokuKMUw=rw\\\">https://lh3.googleusercontent.com/FKG1zFqZvpeqgFYTSA_Pw9aS3IUncQVaIEZ9SLA8VKtouRmYrOWTvFiNNaFdJcfanB17esP51GIAYd5pa7IrVtQGWQcokuKMUw=rw\\</a>\" height=\\\"757\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eKhả năng nâng cấp RAM DDR5 và ổ cứng SSD NVMe của Nitro V 15 ProPanel\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3 style=\\\"text-align: justify;\\\"\\u003e4. Thiết kế bền bỉ, đậm chất gaming\\u003c/h3\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eVề ngoại hình, Nitro V 15 ProPanel ANV15-41-R7CR khoác lên mình lớp vỏ màu đen cá tính, mang đậm phong cách gaming hiện đại. Với trọng lượng 2.1kg và độ dày 23.5 mm, chiếc máy này vẫn đảm bảo tính di động tương đối, phù hợp để mang theo đi học, đi làm hoặc tham gia các buổi offline gaming. Vỏ nhựa cứng cáp giúp máy có độ bền tốt, chống chịu va đập hiệu quả trong quá trình sử dụng hàng ngày.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg alt=\\\"Thiết kế bền bỉ và hiện đại của Laptop Nitro V 15 ProPanel\\\" src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh3.googleusercontent.com/pbcDsYOADLLAKo8i9-0tYBZhygjb50FeIAMKVTgQ7DbGFlqbxr3nkHtXEFpT54zubKk4jb8l_jzL90gJSrtu7Jj5WncoKGE=rw\\\">https://lh3.googleusercontent.com/pbcDsYOADLLAKo8i9-0tYBZhygjb50FeIAMKVTgQ7DbGFlqbxr3nkHtXEFpT54zubKk4jb8l_jzL90gJSrtu7Jj5WncoKGE=rw\\</a>\" height=\\\"757\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eThiết kế bền bỉ và hiện đại của Laptop Nitro V 15 ProPanel\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3 style=\\\"text-align: justify;\\\"\\u003e5. Kết nối đa dạng và thời lượng pin ổn định\\u003c/h3\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eNitro V 15 ProPanel ANV15-41-R7CR được trang bị đầy đủ các cổng kết nối hiện đại, bao gồm 1 x USB Type C (hỗ trợ DisplayPort), 3 x USB 3.2, Audio combo, 1 x HDMI và LAN 1 Gb/s. Kết nối không dây với WiFi 802.11ax (Wifi 6) và Bluetooth 5.1 đảm bảo đường truyền ổn định và tốc độ cao. Viên pin 4 cell 57 Wh cung cấp thời lượng sử dụng đủ dùng cho một buổi học, làm việc hoặc giải trí trên chiếc \\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-acer\\&quot;\\u003e\\u003ci\\u003elaptop\">https://phongvu.vn/c/laptop-acer\\\"\\u003e\\u003ci\\u003elaptop</a> Acer\\u003c/i\\u003e\\u003c/a\\u003e này.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg alt=\\\"Cổng kết nối đa dạng và pin 57 Wh trên Laptop Nitro V 15 ProPanel\\\" src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh3.googleusercontent.com/06GNe2mCK97aU3ahrHgg3w0CrmU6FNLxLYgDWDWK7QMxhXHQmWDx50gfjA_O2cJ-KU-F9FVnSX3O4WwQOyyg4lQ4i4Lk5tna=rw\\\">https://lh3.googleusercontent.com/06GNe2mCK97aU3ahrHgg3w0CrmU6FNLxLYgDWDWK7QMxhXHQmWDx50gfjA_O2cJ-KU-F9FVnSX3O4WwQOyyg4lQ4i4Lk5tna=rw\\</a>\" height=\\\"757\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eCổng kết nối đa dạng và pin 57 Wh trên Laptop Nitro V 15 ProPanel\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3 style=\\\"text-align: justify;\\\"\\u003e6. Bàn phím có đèn LED và phím Copilot tiện lợi\\u003c/h3\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eBàn phím Chiclet của Nitro V 15 ProPanel ANV15-41-R7CR có hành trình phím tốt, mang lại cảm giác gõ thoải mái và chính xác, phù hợp cho cả việc gõ văn bản lẫn chơi game. Đèn LED tích hợp không chỉ tăng thêm vẻ đẹp gaming mà còn giúp người dùng dễ dàng thao tác trong môi trường thiếu sáng. Đặc biệt, sự xuất hiện của phím Copilot là một điểm cộng lớn, hỗ trợ tối đa cho các tác vụ làm việc, học tập của \\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-sinh-vien\\&quot;\\u003e\\u003ci\\u003elaptop\">https://phongvu.vn/c/laptop-sinh-vien\\\"\\u003e\\u003ci\\u003elaptop</a> sinh viên\\u003c/i\\u003e\\u003c/a\\u003e và người dùng văn phòng.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg alt=\\\"Bàn phím có đèn LED và phím Copilot trên Laptop Nitro V 15 ProPanel ANV15-41-R7CR\\\" src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh3.googleusercontent.com/x1Oz_6BPwUBSNtIR-BHbf8gko64VBIesr4_pNZWGO94zy3PS1UKVdbbkJ6qiXS9QWm-s7YYlQgXLZnLlTsf5cFuwlMJIumvX=rw\\\">https://lh3.googleusercontent.com/x1Oz_6BPwUBSNtIR-BHbf8gko64VBIesr4_pNZWGO94zy3PS1UKVdbbkJ6qiXS9QWm-s7YYlQgXLZnLlTsf5cFuwlMJIumvX=rw\\</a>\" height=\\\"757\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eBàn phím có đèn LED và phím Copilot trên Laptop Nitro V 15 ProPanel ANV15-41-R7CR\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2 style=\\\"text-align: justify;\\\"\\u003eIII. Mua Laptop Nitro V 15 ProPanel ANV15-41-R7CR tại Phong Vũ | Giá tốt, chính hãng\\u003c/h2\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eTổng kết lại, Laptop Nitro V 15 ProPanel ANV15-41-R7CR là một sự lựa chọn xuất sắc trong phân khúc tầm trung, hội tụ đủ các yếu tố về hiệu năng mạnh mẽ, màn hình chất lượng cao, khả năng nâng cấp linh hoạt và thiết kế đậm chất gaming. Dù bạn là game thủ, sinh viên hay cần một chiếc \\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-van-phong\\&quot;\\u003e\\u003ci\\u003elaptop\">https://phongvu.vn/c/laptop-van-phong\\\"\\u003e\\u003ci\\u003elaptop</a> văn phòng\\u003c/i\\u003e\\u003c/a\\u003e với hiệu năng cao, sản phẩm này đều có thể đáp ứng tốt. Hãy đến ngay Phong Vũ để sở hữu Laptop Nitro V 15 ProPanel ANV15-41-R7CR chính hãng với mức giá ưu đãi cùng nhiều chương trình khuyến mãi hấp dẫn.\\u003c/p\\u003e</p>', 'CPU: AMD Ryzen™ 5 7535HS (3.3 GHz - 4.55 GHz/ 16MB/ 6 nhân, 12 luồng)\\u003cbr/\\u003eVGA: GeForce RTX™ 4050 6GB GDDR6, 194 AI TOPs\\u003cbr/\\u003eRAM:  1 x 16GB 4800MHz DDR5 (Hỗ trợ tối đa 96GB)\\u003cbr/\\u003eỔ cứng: 512GB SSD M.2 NVMe\\u003cbr/\\u003eMàn hình: 15.6\\\" Full HD  (1920 x 1080) IPS, 180Hz, 300 nits, Acer ComfyView, 100% sRGB\\u003cbr/\\u003eKhác: Bàn phím Chiclet với phím Copilot, HD webcam, AMD\\u003cbr/\\u003eOS: Windows 11 Home SL', 'Acer', '2025-09-23 03:13:51', '2025-09-23 03:13:51'),
(250803205, 'RAM desktop Corsair Grey Heatspreader DDR5 6000MHz 16GB (1x16GB) DIMM 1.35V (1 x 16GB) DDR5 6000MHz (CMH16GX5M1E6000Z36)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758626294/gb1uawxx1ysmepm8tanv.webp', 8, 1990000, 15, 1691500, '<p>Đang cập nhật</p>', '- Dung lượng: 1 x 16GB\\u003cbr/\\u003e- Thế hệ: DDR5\\u003cbr/\\u003e- Bus: 6000MHz\\u003cbr/\\u003e- Cas: 36', 'Corsair', '2025-09-23 04:20:15', '2025-09-23 04:20:15'),
(250803243, 'Máy tính xách tay/ Laptop Dell 15 DC15255 DC5R5802W1-Silver (AMD Ryzen 5-7530U) (Bạc)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757833471/qhcvdmxykjj2cfcszges.webp', 6, 16390000, 2, 16062200, '<p>Đang cập nhật</p>', 'CPU: AMD Ryzen™ 5 7530U (2.0 GHz - 4.5 GHz/ 16MB/ 6 nhân, 12 luồng)\\u003cbr/\\u003eVGA: Onboard graphics \\u003cbr/\\u003eRAM:  1 x 16GB 3200MHz DDR4 (Hỗ trợ tối đa 16GB)\\u003cbr/\\u003eỔ cứng: 512GB SSD M.2 NVMe\\u003cbr/\\u003eMàn hình: 15.6\\\" Full HD  (1920 x 1080) IPS, 120Hz, Màn hình chống lóa, 250 nits, 45% NTSC\\u003cbr/\\u003eKhác: Bàn phím thường, FHD webcam, Non-EVO\\u003cbr/\\u003eOS: Windows 11 Home SL + Office Home \\u0026 Student 2024', 'Dell', '2025-09-14 00:06:02', '2025-09-14 00:06:02');
INSERT INTO `products` (`sku`, `name`, `image_url`, `quantity`, `supplier_retail_price`, `discount_amount`, `sell_price`, `description`, `short_description`, `brand_name`, `created_at`, `updated_at`) VALUES
(250806252, 'Máy tính xách tay/ Laptop Lenovo ThinkPad T14 Gen 6 - 21QC0007VA (Core Ultra 7-255H) (Đen)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757833253/pw63ykciq1n2lz8ufglp.webp', 5, 36390000, 0, 36390000, '<p>\\u003cblockquote\\u003e\\u003cp\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-lenovo-thinkpad\\\">https://phongvu.vn/c/laptop-lenovo-thinkpad\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003e\\u003ci\\u003eLaptop Lenovo ThinkPad\\u003c/i\\u003e\\u003c/a\\u003e\\u003ci\\u003e T14 Gen 6 - 21QC0007VA là mẫu \\u003c/i\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-van-phong\\\">https://phongvu.vn/c/laptop-van-phong\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003e\\u003ci\\u003elaptop văn phòng\\u003c/i\\u003e\\u003c/a\\u003e\\u003ci\\u003e cao cấp, được thiết kế hướng đến đối tượng người dùng doanh nhân và sinh viên. Với bộ vi xử lý Intel Core Ultra 7-255H, RAM DDR5 tốc độ cao và GPU Intel Arc tích hợp, máy đảm bảo hiệu năng ổn định trong mọi tác vụ. ThinkPad T14 Gen 6 là lựa chọn đáng giá cho những ai cần một thiết bị bền bỉ và hiệu suất cao để xử lý công việc mọi lúc mọi nơi.\\u003c/i\\u003e\\u003c/p\\u003e\\u003c/blockquote\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eI. Đặc điểm nổi bật\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cul\\u003e\\u003cli\\u003e\\u003cstrong\\u003eHiệu năng mạnh mẽ\\u003c/strong\\u003e: Trang bị bộ vi xử lý Intel Core Ultra 7-255H, laptop xử lý mượt mà từ tác vụ văn phòng cơ bản đến các ứng dụng chuyên sâu.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eDung lượng lưu trữ\\u0026nbsp; lớn\\u003c/strong\\u003e: RAM 32GB DDR5 5600MHz và SSD NVMe 512GB, cho tốc độ khởi động và phản hồi ứng dụng nhanh chóng gần như tức thì.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eMàn hình 14 inch sắc nét\\u003c/strong\\u003e: Độ phân giải WUXGA 1920x1200, độ sáng 400 nits cùng công nghệ chống lóa giúp hiển thị hình ảnh rõ nét trong mọi hoàn cảnh.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eKết nối hiện đại\\u003c/strong\\u003e: Trang bị Wi-Fi 7, Bluetooth 5.4, 2 cổng Thunderbolt 4 và HDMI, hỗ trợ kết nối nhanh chóng, tiện lợi cho môi trường làm việc đa thiết bị.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eThiết kế gọn nhẹ, bền bỉ\\u003c/strong\\u003e: Trọng lượng chỉ 1.5kg, đạt chuẩn độ bền ThinkPad với bản lề chắc chắn, dễ dàng mang theo mọi lúc mọi nơi.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eBảo mật cao cấp\\u003c/strong\\u003e: Hỗ trợ vân tay, camera IR cho Windows Hello và giải pháp ThinkShield, bảo vệ an toàn dữ liệu cá nhân và doanh nghiệp.\\u003c/li\\u003e\\u003c/ul\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eII. Đánh giá chi tiết\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-lenovo\\\">https://phongvu.vn/c/laptop-lenovo\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003eLaptop Lenovo\\u003c/a\\u003e ThinkPad T14 Gen 6 - 21QC0007VA sở hữu thiết kế tinh tế và hiệu năng mạnh mẽ đáp ứng tốt mọi nhu cầu của người dùng. Đây không chỉ là một công cụ làm việc mà còn là người bạn đồng hành tin cậy trên mọi hành trình công việc của bạn.\\u003c/p\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e1. Thiết kế bền bỉ đạt chuẩn quân đội MIL-STD-810H\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eVỏ máy được hoàn thiện từ vật liệu cao cấp, phủ một lớp nhám tinh tế, giúp chống bám vân tay hiệu quả. Với kích thước 315.9 x 223.7 mm, trọng lượng 1.5kg và độ dày từ 10.9mm - 16.1mm máy đảm bảo mỏng nhẹ, dễ dàng nằm gọn trong túi xách hay balo. Máy sở hữu độ bền đạt chuẩn quân đội MIL-STD-810H, mang lại khả năng chống sốc, chịu nhiệt và chống tràn nước bàn phím hiệu quả.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/9b98d5e7-4904-4e13-8458-e051140e5e90/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eThiết\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/9b98d5e7-4904-4e13-8458-e051140e5e90/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eThiết</a> kế sang trọng, bền bỉ nhờ sử dụng vật liệu cao cấp\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp\\u003eBản lề chắc chắn cho phép mở đến 180 độ, thao tác một tay tiện lợi và đảm bảo sự ổn định khi gõ phím. Bàn phím ThinkPad được trang bị phím LED với hành trình sâu và độ phản hồi tốt, mang lại cảm giác gõ mượt mà, thoải mái. Touchpad lớn, độ nhạy cao và bề mặt nhẵn mịn, hỗ trợ thao tác đa điểm chính xác.\\u0026nbsp;\\u003c/p\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e2. Hiệu năng mượt mà nhờ chip Intel Core Ultra 7\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eThinkPad T14 Gen 6 trang bị chip Intel Core Ultra 7-255H với 16 nhân 16 luồng, xung nhịp tối đa 5.1GHz và bộ nhớ đệm 24MB cho hiệu năng vượt trội. GPU tích hợp Intel Arc Graphics cùng NPU AI Boost 13 TOPS, cho khả năng xử lý hiệu quả cả tác vụ trí tuệ nhân tạo lẫn đồ họa văn phòng. Kết quả benchmark Cinebench R23 đạt 2098 điểm đơn nhân và 17652 điểm đa nhân, cho thấy sức mạnh vượt trội hơn nhiều sản phẩm trong cùng phân khúc.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/f149149c-eab2-4981-b258-317c0b27f2fb/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eTrang\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/f149149c-eab2-4981-b258-317c0b27f2fb/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eTrang</a> bị chip Intel Core Ultra 7 cho hiệu năng xử lý ấn tượng\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp\\u003eĐặc biệt, RAM 32GB DDR5 5600MHz và SSD NVMe 512GB giúp tối ưu hiệu suất, rút ngắn thời gian khởi động và truy xuất dữ liệu. Người dùng có thể dễ dàng nâng cấp RAM tối đa 64GB nhờ 2 khe cắm và thay thế SSD dung lượng cao hơn khi cần. Máy duy trì nhiệt độ ổn định khi tải nặng, quạt tản nhiệt hoạt động êm, phù hợp cho môi trường văn phòng yên tĩnh.\\u003c/p\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e3. Pin 52Wh sử dụng thoải mái cả ngày dài\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eLaptop Lenovo ThinkPad T14 Gen 6 - 21QC0007VA được trang bị viên pin 52Wh liền, đảm bảo thời gian sử dụng ấn tượng cho cả ngày dài. Máy còn hỗ trợ công nghệ sạc nhanh Power Delivery qua USB-C, tiện lợi cho những ai cần làm việc gấp. Người dùng cũng có thể sạc bằng powerbank hỗ trợ PD, đảm bảo tính di động cao, phù hợp cho những ai thường xuyên di chuyển nhiều địa điểm khác nhau.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/586bccca-36bc-437b-a437-f5c5952ea92a/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eDung\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/586bccca-36bc-437b-a437-f5c5952ea92a/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eDung</a> lượng pin lớn đáp ứng tốt nhu cầu sử dụng liên tục của người dùng\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e4. Bảo mật và công nghệ thông minh\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eThinkPad T14 Gen 6 tích hợp hệ thống ThinkShield bảo mật toàn diện từ phần cứng đến phần mềm, kết hợp chip TPM 2.0 mã hóa dữ liệu doanh nghiệp. Camera IR cho phép đăng nhập bằng khuôn mặt với Windows Hello, nhanh chóng và chính xác. Ngoài ra, cảm biến vân tay một chạm được đặt ngay trên bàn phím, hỗ trợ đăng nhập nhanh và bảo mật gấp đôi.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/07e05dc3-ab98-4c64-9fc0-50372e88b318/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eTrang\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/07e05dc3-ab98-4c64-9fc0-50372e88b318/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eTrang</a> bị Camera IR hỗ trợ người dùng đăng nhập nhanh bằng khuôn mặt\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e5. Màn hình WUXGA hiển thị hình ảnh rõ nét\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-lenovo-14-inch\\\">https://phongvu.vn/c/laptop-lenovo-14-inch\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003eMàn hình 14 inch\\u003c/a\\u003e WUXGA (1920x1200) tỉ lệ 16:10 mang lại không gian làm việc rộng rãi cùng khả năng chống chói giúp làm việc thoải mái dưới ánh sáng mạnh. Tấm nền IPS cho góc nhìn rộng, màu sắc ổn định, độ sáng tối đa 400 nits đủ dùng trong nhiều môi trường sáng.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/d7349e87-1c31-48f7-ac1d-ace88365f9ec/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eMáy\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/d7349e87-1c31-48f7-ac1d-ace88365f9ec/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eMáy</a> sở hữu màn hình lớn với tấm nền IPS cho hình ảnh hiển thị sắc nét\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp\\u003eMàn hình đạt 45% NTSC có khả năng đáp ứng tốt các nhu cầu văn phòng, soạn thảo tài liệu, họp trực tuyến hay giải trí cơ bản. Cùng công nghệ lọc ánh sáng xanh và chứng nhận bảo vệ mắt giúp hạn chế mỏi mắt khi sử dụng lâu dài.\\u003c/p\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e6. Đa dạng cổng kết nối\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eThinkPad T14 Gen 6 được trang bị hệ thống kết nối đầy đủ cho môi trường làm việc chuyên nghiệp. Máy có 2 cổng USB 3.2, 2 cổng Thunderbolt 4 hỗ trợ DisplayPort và Power Delivery, 1 cổng HDMI cho trình chiếu, 1 cổng LAN 1Gbps và jack combo audio. Kết nối không dây tiên tiến với Wi-Fi 7 và Bluetooth 5.4, đảm bảo tốc độ truyền tải dữ liệu nhanh, ổn định.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/7b6a9b7d-cd1f-4569-bafa-67d5e05a9a33/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHệ\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/7b6a9b7d-cd1f-4569-bafa-67d5e05a9a33/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHệ</a> thống cổng kết nối đa dạng phù hợp cho mọi môi trường làm việc\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e7. Âm thanh rõ ràng, micro thông minh\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eÂm thanh Dolby Audio mang đến trải nghiệm trong trẻo, âm lượng đủ cho một phòng họp vừa. Loa được thiết kế hướng lên trên, tạo hiệu ứng âm thanh lan tỏa và cân bằng giữa bass, mid và treble giúp giọng nói được tái hiện rõ ràng, không bị lẫn tạp âm. Hệ thống micro kép hỗ trợ công nghệ khử ồn AI, loại bỏ tiếng gõ bàn phím hay tiếng ồn môi trường, đảm bảo hội thoại luôn rõ ràng.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/6b3c2467-3085-4fe5-af0f-7af3e117ae09/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHệ\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/6b3c2467-3085-4fe5-af0f-7af3e117ae09/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHệ</a> thống âm thanh rõ ràng, sống động phù hợp cho hội họp trực tuyến\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eIII. So sánh với sản phẩm cùng phân khúc\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cfigure class=\\\"table\\\"\\u003e\\u003ctable style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003ctbody\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eThông số\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eLenovo ThinkPad T14 Gen 6\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/laptop-asus-zenbook-14-ux3405ca-pz204ws--s250203201?selectPromotionId=924011\\&quot;\\u003e\\u003cstrong\\u003eAsus\">https://phongvu.vn/laptop-asus-zenbook-14-ux3405ca-pz204ws--s250203201?selectPromotionId=924011\\\"\\u003e\\u003cstrong\\u003eAsus</a> Zenbook 14 UX3405CA-PZ204WS\\u003c/strong\\u003e\\u003c/a\\u003e\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eCPU\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eIntel Core Ultra 7-255H (2.0 GHz - 5.1 GHz / 24MB / 16 nhân, 16 luồng)\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eIntel Core Ultra 9-285H (2.5 GHz - 5.4GHz / 36MB / 24 nhân, 24 luồng)\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eGPU\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eIntel Arc Graphics\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eIntel Arc Graphics\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eRAM\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e2 x 16GB DDR5 5600MHz ( 2 Khe cắm / Hỗ trợ tối đa 64GB )\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e32GB LPDDR5x onboard (không nâng cấp)\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eSSD\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e512GB NVMe\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e1TB NVMe\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eMàn hình\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e14 inch WUXGA, IPS, 60Hz, 400 nits, 45% NTSC\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e14 inch 3K OLED, 120Hz, 400 nits, 100% DCI-P3\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003ePin\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e52Wh\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e75Wh\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eTrọng lượng\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e1.5kg\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e1.3kg\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eCổng kết nối\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e2x USB 3.2, 2x Thunderbolt 4, HDMI, LAN, audio combo\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e1x USB 3.2, 2x Thunderbolt 4, HDMI, audio combo\\u003c/td\\u003e\\u003c/tr\\u003e\\u003c/tbody\\u003e\\u003c/table\\u003e\\u003c/figure\\u003e\\u003cp\\u003eTổng quan, Lenovo ThinkPad T14 Gen 6 vượt trội về độ bền, khả năng nâng cấp và bảo mật, phù hợp với môi trường doanh nghiệp và người dùng chuyên nghiệp. Trong khi đó, Asus Zenbook 14 lại nổi bật với màn hình OLED và pin lớn hơn, thích hợp cho người dùng đề cao giải trí đa phương tiện.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eIV. Sở hữu ngay Lenovo ThinkPad T14 Gen 6 tại Phong Vũ\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eLenovo ThinkPad T14 Gen 6 - 21QC0007VA là một cỗ máy làm việc mạnh mẽ, đáng tin cậy dành cho người dùng chuyên nghiệp. Với hiệu năng ấn tượng, thiết kế bền bỉ và các tính năng bảo mật hàng đầu, sản phẩm xứng đáng là người bạn đồng hành trong mọi công việc. Đây là lựa chọn đáng cân nhắc cho những ai cần một chiếc laptop mạnh mẽ, an toàn và ổn định trong môi trường làm việc cường độ cao.\\u0026nbsp;\\u003c/p\\u003e\\u003cp\\u003eTại Phong Vũ, bạn sẽ nhận được chính sách bảo hành chính hãng, hỗ trợ kỹ thuật tận tâm và ưu đãi giá hấp dẫn. Đừng bỏ lỡ cơ hội sở hữu siêu phẩm này, hãy đến ngay hệ thống Phong Vũ trên toàn quốc hoặc đặt hàng online ngay hôm nay!\\u003c/p\\u003e</p>', 'CPU: Intel® Core™ Ultra 7-255H (2.0 GHz - 5.1 GHz/ 24MB/ 16 nhân, 16 luồng)\\u003cbr/\\u003eNPU:  Intel® AI Boost 13 TOPS\\u003cbr/\\u003eVGA: Onboard graphics \\u003cbr/\\u003eRAM:  2 x 16GB 5600MHz DDR5 (Hỗ trợ tối đa 64GB)\\u003cbr/\\u003eỔ cứng: 512GB SSD M.2 NVMe\\u003cbr/\\u003eMàn hình: 14\\\" WUXGA  (1920 x 1200) IPS, 60Hz, Màn hình chống lóa, 400 nits, 45% NTSC\\u003cbr/\\u003eKhác: Bàn phím thường, HD webcam, Dolby Audio, Non-EVO\\u003cbr/\\u003eOS: Free DOS', 'Lenovo', '2025-09-14 00:03:08', '2025-09-14 00:03:08'),
(250807880, 'Máy tính xách tay/ Laptop Dell 15 DC15250 - 71073959 (i7-1355U) (Bạc)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758621817/uss3q5mwngjjwzhxis7k.webp', NULL, 21990000, 5, 20989455, '<p>Đang cập nhật</p>', 'CPU: Intel® Core™ i7-1355U (1.7 GHz - 5.0 GHz/ 12MB/ 10 nhân, 12 luồng)\\u003cbr/\\u003eVGA: Onboard graphics \\u003cbr/\\u003eRAM:  2 x 8GB 2666MHz DDR4 (Hỗ trợ tối đa 16GB)\\u003cbr/\\u003eỔ cứng: 512GB SSD M.2 NVMe\\u003cbr/\\u003eMàn hình: 15.6\\\" Full HD  (1920 x 1080) WVA, 120Hz, Màn hình chống lóa, 250 nits, \\u003cbr/\\u003eKhác: Bàn phím thường, HD webcam, Non-EVO\\u003cbr/\\u003eOS: Windows 11 Home + Office Home \\u0026 Student 2024 + Microsoft 365 Basic', 'Dell', '2025-09-23 03:06:11', '2025-09-23 03:06:11'),
(250809284, 'Máy tính để bàn /PC MSI MPG Infinite X3 AI 2 (Ultra 9 285K/ 32G/ 1TB/ GeForce RTX 5070 Ti 16G/ NO OS/ 2Y) (9S6-B94211-262) (Đen)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625415/oovv1ayarcgfxewsehwf.webp', 3, 79990000, NULL, 79990000, '<p>CPU: Intel Ultra 9 285K (3.7 GHz - 5.5 GHz/36MB/24 nhân, 24 luồng)\\u003cbr/\\u003eĐồ họa:  / GeForce RTX 5070Ti 16GB\\u003cbr/\\u003eRAM: 2 x 16GB DDR5 5600MHz (4 Khe cắm, Hỗ trợ tối đa 128GB)\\u003cbr/\\u003eLưu trữ: 1TB SSD</p>', 'Đang cập nhật', 'Msi', '2025-09-23 04:08:40', '2025-09-23 04:08:40'),
(250809296, 'Máy tính xách tay/ Laptop Asus ROG Zephyrus G16 GU605CX-QR147W (Core Ultra 9-285H) (Xám)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832532/fwuvjv7ta2newbintdsa.webp', 10, 12690000, 3, 12309300, '<p>Đang cập nhật</p>', 'CPU: Intel® Core™ Ultra 9-285H (2.5 GHz - 4.5 GHz/ 36MB/ 24 nhân, 24 luồng)\\u003cbr/\\u003eNPU:  Intel® AI Boost 13 TOPS\\u003cbr/\\u003eVGA: GeForce RTX™ 5090 24GB GDDR7, 3352 AI TOPs\\u003cbr/\\u003eRAM:  64GB Onbard 7467MHz LPDDR5x (Hỗ trợ tối đa 64GB)\\u003cbr/\\u003eỔ cứng: 2TB SSD M.2 NVMe\\u003cbr/\\u003eMàn hình: 16\\\" WQXGA  (2560 x 1600) OLED, 240Hz, Màn hình gương, 500 nits, G-Sync, 100% DCI-P3\\u003cbr/\\u003eKhác: Bàn phím Chiclet với phím Copilot, FHD webcam, Dolby Atmos, Intel AI\\u003cbr/\\u003eOS: Windows 11 Home', 'Asus', '2025-09-13 23:52:41', '2025-09-13 23:52:41'),
(250900200, 'Điện thoại Apple iPhone 17 Pro 256GB - Xanh Đậm (MG8J4ZP/A)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758623064/a04zltdk5sjbnmkfz74t.webp', 3, 34990000, NULL, 34990000, '<p>\\u003cp style=\\\"text-align: justify;\\\"\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/iphone-17-pro\\&quot;\\u003eiPhone\">https://phongvu.vn/c/iphone-17-pro\\\"\\u003eiPhone</a> 17 Pro\\u003c/a\\u003e là mẫu điện thoại cao cấp của Apple, gây ấn tượng mạnh với chip A19 Pro hiệu năng vượt trội, màn hình Super Retina XDR OLED 6,3 inch tần số quét 120Hz mượt mà và hệ thống camera Fusion 48MP tiên tiến. Thiết bị còn sở hữu thiết kế khung nhôm nguyên khối bền bỉ, tích hợp buồng hơi tản nhiệt hiệu quả, cùng lớp kính Ceramic Shield 2 chống trầy xước gấp 3 lần. Pin 4252 mAh cùng sạc nhanh USB-C mang lại trải nghiệm liền mạch.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eI. Đặc điểm nổi bật\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cul\\u003e\\u003cli style=\\\"text-align: justify;\\\"\\u003e\\u003cstrong\\u003eMàn hình Super Retina XDR OLED 6,3 inch\\u003c/strong\\u003e: Trải nghiệm hình ảnh mượt mà với công nghệ ProMotion 120Hz, độ sáng đỉnh 3000 nit ngoài trời và khả năng hiển thị màu sắc chính xác với dải màu rộng P3.\\u003c/li\\u003e\\u003cli style=\\\"text-align: justify;\\\"\\u003e\\u003cstrong\\u003eHiệu năng vượt trội với Apple A19 Pro\\u003c/strong\\u003e: Chip xử lý mới mang lại hiệu suất CPU và GPU cải thiện 40% so với thế hệ trước, xử lý mọi tác vụ từ game đồ họa nặng đến ứng dụng chuyên nghiệp.\\u003c/li\\u003e\\u003cli style=\\\"text-align: justify;\\\"\\u003e\\u003cstrong\\u003eHệ thống camera Fusion 48MP chuyên nghiệp\\u003c/strong\\u003e: Bộ ba camera sau được nâng cấp mạnh mẽ, đặc biệt là khả năng zoom quang học chất lượng lên đến 8x nhờ công nghệ tetraprism tiên tiến.\\u003c/li\\u003e\\u003cli style=\\\"text-align: justify;\\\"\\u003e\\u003cstrong\\u003eThiết kế bền bỉ, tản nhiệt hiệu quả\\u003c/strong\\u003e: Khung nhôm nguyên khối tích hợp buồng hơi tản nhiệt, cùng kính Ceramic Shield 2 chống trầy xước gấp 3 lần, tăng cường độ bền cho thiết bị.\\u003c/li\\u003e\\u003cli style=\\\"text-align: justify;\\\"\\u003e\\u003cstrong\\u003ePin lớn, sạc nhanh tiện lợi\\u003c/strong\\u003e: Dung lượng 4252 mAh hỗ trợ sạc nhanh USB-C và sạc không dây MagSafe, giúp thiết bị luôn sẵn sàng cho mọi hoạt động kéo dài.\\u003c/li\\u003e\\u003c/ul\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eII. Đánh giá chi tiết\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e1. Hiệu năng mạnh mẽ với chip Apple A19 Pro\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eTrung tâm sức mạnh của iPhone 17 Pro là chip \\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/san-pham-apple\\&quot;\\u003eApple\\u003c/a\\u003e\">https://phongvu.vn/c/san-pham-apple\\\"\\u003eApple\\u003c/a\\u003e</a> A19 Pro. Bộ vi xử lý được nâng cấp toàn diện, mang lại hiệu suất CPU và GPU vượt trội hơn 40% so với thế hệ tiền nhiệm. Kết hợp cùng 12GB RAM, thiết bị đảm bảo khả năng đa nhiệm mượt mà, xử lý mọi tác vụ từ các ứng dụng hàng ngày đến game đồ họa nặng hay chỉnh sửa video chuyên nghiệp.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg alt=\\\"Hiệu năng mạnh mẽ của iPhone 17 Pro 256GB với chip Apple A19 Pro\\\" src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh3.googleusercontent.com/fH-twKB6RQn6atE3WgWLEUqaCQQZlmw2DOzTAgbQAPJp_vWCtL_ZcSJ4bCcbcwapRhACYtv2GuirR-2R6g924LYiCoAL1Bs=w1000-rw\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHiệu\">https://lh3.googleusercontent.com/fH-twKB6RQn6atE3WgWLEUqaCQQZlmw2DOzTAgbQAPJp_vWCtL_ZcSJ4bCcbcwapRhACYtv2GuirR-2R6g924LYiCoAL1Bs=w1000-rw\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHiệu</a> năng mạnh mẽ của iPhone 17 Pro 256GB với chip Apple A19 Pro\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eSự kết hợp giữa phần cứng mạnh mẽ và hệ điều hành iOS 26 tối ưu hóa hiệu quả sử dụng năng lượng, giúp kéo dài thời lượng pin. Chip A19 Pro còn được thiết kế để hỗ trợ các tác vụ AI và máy học nâng cao, mở ra nhiều khả năng mới cho người dùng trong tương lai.\\u003c/p\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e2. Thiết kế đẳng cấp, bền bỉ cùng Ceramic Shield 2\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eThiết kế của \\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/iphone-17-series\\&quot;\\u003eiPhone\">https://phongvu.vn/c/iphone-17-series\\\"\\u003eiPhone</a> 17\\u003c/a\\u003e Pro thể hiện sự tinh tế và bền bỉ. Máy tích hợp khung nhôm nguyên khối cùng buồng hơi tản nhiệt (vapor chamber) giúp duy trì hiệu suất ổn định ngay cả khi hoạt động với cường độ cao. Mặt trước và mặt sau được bảo vệ bằng kính Ceramic Shield 2, tăng khả năng chống trầy xước gấp 3 lần.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg alt=\\\"Thiết kế khung nhôm và kính Ceramic Shield 2 trên iPhone 17 Pro\\\" src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh3.googleusercontent.com/-7XDiC1M3pfifpGpP-Fwva0utfE3kMu_B6DLfGGxCCyrn-nszvZMaDxXzipoLNMXr6Xly2hlxgaZobK8jCniGaDEDMrBfrg=w1000-rw\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eThiết\">https://lh3.googleusercontent.com/-7XDiC1M3pfifpGpP-Fwva0utfE3kMu_B6DLfGGxCCyrn-nszvZMaDxXzipoLNMXr6Xly2hlxgaZobK8jCniGaDEDMrBfrg=w1000-rw\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eThiết</a> kế khung nhôm và kính Ceramic Shield 2 trên iPhone 17 Pro\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eVới trọng lượng 206 gram, iPhone 17 Pro mang lại cảm giác cầm nắm chắc chắn nhưng vẫn thoải mái. Các tùy chọn màu sắc Bạc, Cam Vũ Trụ (Cosmic Orange) và Xanh Đậm (Deep Blue) tạo điểm nhấn thời trang. Thiết bị cũng đạt chuẩn kháng nước và bụi IP68, tăng cường độ bền trong nhiều môi trường sử dụng.\\u003c/p\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e3. Màn hình Super Retina XDR OLED 6,3 inch sống động\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eMàn hình Super Retina XDR OLED 6,3 inch của iPhone 17 Pro là một điểm nhấn ấn tượng. Độ phân giải 2622 x 1206 pixel với mật độ điểm ảnh 460 ppi mang lại hình ảnh sắc nét, chi tiết. Màn hình toàn phần cùng Dynamic Island và Always-On display tối ưu hóa trải nghiệm tương tác của người dùng.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg alt=\\\"Màn hình Super Retina XDR OLED của iPhone 17 Pro hiển thị sống động\\\" src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh3.googleusercontent.com/lOIRfvQuSMgnYkaFJLxekDvr8YE7cvUGqCizdp026OCa84MYUadPH_evde-KS69uu7rnwe8Bw292LP3D8A17ZsqXoYcKbbI=w1000-rw\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eMàn\">https://lh3.googleusercontent.com/lOIRfvQuSMgnYkaFJLxekDvr8YE7cvUGqCizdp026OCa84MYUadPH_evde-KS69uu7rnwe8Bw292LP3D8A17ZsqXoYcKbbI=w1000-rw\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eMàn</a> hình Super Retina XDR OLED của iPhone 17 Pro hiển thị sống động\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eCông nghệ ProMotion với tần số làm mới thích ứng lên tới 120Hz đảm bảo mọi chuyển động mượt mà. Màn hình hỗ trợ HDR, True Tone, dải màu rộng P3, cùng độ sáng tối đa 1000 nit (thông thường), 1600 nit (HDR) và đỉnh 3000 nit (ngoài trời) cho khả năng hiển thị tuyệt vời trong mọi điều kiện ánh sáng.\\u003c/p\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e4. Hệ thống camera Fusion 48MP chuyên nghiệp\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eHệ thống camera sau của \\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/iphone\\&quot;\\u003eiPhone\\u003c/a\\u003e\">https://phongvu.vn/c/iphone\\\"\\u003eiPhone\\u003c/a\\u003e</a> 17 Pro được nâng cấp mạnh mẽ với bộ ba camera 48MP Fusion. Bao gồm camera chính, Ultra Wide 48MP và Telephoto mới dạng \\\"tetraprism\\\". Công nghệ zoom quang học chất lượng lên đến 8x, sử dụng kỹ thuật crop cảm biến để đạt chất lượng quang học vượt trội, mang lại khả năng chụp ảnh từ xa sắc nét.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg alt=\\\"Hệ thống camera Fusion 48MP trên iPhone 17 Pro\\\" src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh3.googleusercontent.com/BEoe7SsPL23B0WPD3FrYtCHq2r4B1dIRtSwun86BRbKmRrTAtBnZ5Xji2wa6e301RJms09UbTCsVRDcM__WixlVwkkUM-0o=w1000-rw\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHệ\">https://lh3.googleusercontent.com/BEoe7SsPL23B0WPD3FrYtCHq2r4B1dIRtSwun86BRbKmRrTAtBnZ5Xji2wa6e301RJms09UbTCsVRDcM__WixlVwkkUM-0o=w1000-rw\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHệ</a> thống camera Fusion 48MP trên iPhone 17 Pro\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eCamera trước Center Stage 18MP với cảm biến hình vuông độc đáo hỗ trợ Dual Capture, cho phép selfie linh hoạt theo cả chiều ngang lẫn dọc. Khả năng ghi hình chuyên nghiệp với ProRes RAW, Apple Log 2 và Genlock hỗ trợ tối đa cho các nhà làm phim và sáng tạo nội dung cao cấp.\\u003c/p\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e5. Pin bền bỉ 4252 mAh và sạc nhanh tiện lợi\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eiPhone 17 Pro được trang bị viên pin dung lượng khoảng 4252 mAh, cung cấp thời lượng sử dụng ấn tượng. Thiết bị hỗ trợ sạc nhanh USB-C, cho phép sạc đạt 50% chỉ trong 20 phút, giúp người dùng nhanh chóng quay trở lại công việc hoặc giải trí mà không bị gián đoạn quá lâu.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg alt=\\\"Pin 4252 mAh và công nghệ sạc nhanh của iPhone 17 Pro 256GB\\\" src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://lh3.googleusercontent.com/1cgaMavXQmwUXG62lQLbiRxDoAojZaoBGG4GblG5NeXshH5rfrjLBxJb5y96RMwyvEyqULnCkhbVNyT0Lv9Zu0qdULkNAlD4=w1000-rw\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003ePin\">https://lh3.googleusercontent.com/1cgaMavXQmwUXG62lQLbiRxDoAojZaoBGG4GblG5NeXshH5rfrjLBxJb5y96RMwyvEyqULnCkhbVNyT0Lv9Zu0qdULkNAlD4=w1000-rw\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003ePin</a> 4252 mAh và công nghệ sạc nhanh của iPhone 17 Pro 256GB\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eNgoài ra, iPhone 17 Pro còn hỗ trợ sạc không dây MagSafe và Qi 2, mang lại sự tiện lợi tối đa. Các kết nối tiên tiến như eSIM kép (Nano-SIM + eSIM + eSIM), Wi-Fi 6, 5G và Bluetooth 5.3 đảm bảo khả năng kết nối ổn định và tốc độ cao trong mọi tình huống.\\u003c/p\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e6. iOS 26 và tính năng bảo mật Memory Integrity Enforcement\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eChạy trên hệ điều hành iOS 26 chính thức, iPhone 17 Pro mang đến trải nghiệm người dùng mượt mà, trực quan và bảo mật. Đặc biệt, tính năng bảo mật Memory Integrity Enforcement (MIE) là một lớp bảo vệ phần cứng và phần mềm nâng cao, chống lại mã độc và bảo vệ kernel cùng hơn 70 tiến trình hệ thống.\\u003c/p\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eHệ thống cảm biến đa dạng bao gồm Face ID, cảm biến tiệm cận, con quay hồi chuyển, la bàn kỹ thuật số, gia tốc kế và cảm biến ánh sáng môi trường, đảm bảo mọi thao tác và tương tác đều chính xác. Âm thanh spatial audio hỗ trợ Dolby Atmos mang đến trải nghiệm giải trí sống động.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eIII. Mua iPhone 17 Pro 256GB tại Phong Vũ | Giá tốt, chính hãng\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp style=\\\"text-align: justify;\\\"\\u003eiPhone 17 Pro 256GB mang đến sự kết hợp hoàn hảo giữa hiệu năng đỉnh cao, thiết kế sang trọng, màn hình sống động và hệ thống camera chuyên nghiệp, đáp ứng mọi nhu cầu từ giải trí đến công việc. Với những nâng cấp đáng giá từ chip A19 Pro đến công nghệ tản nhiệt buồng hơi và tính năng bảo mật MIE, đây chắc chắn là lựa chọn hàng đầu cho những ai tìm kiếm một chiếc điện thoại thông minh toàn diện. Để sở hữu sản phẩm chính hãng với mức giá tốt nhất, hãy truy cập \\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/\\\">https://phongvu.vn/\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003ePhong Vũ\\u003c/a\\u003e ngay.\\u003c/p\\u003e</p>', 'Chính hãng, Mới 100%, Nguyên seal\\u003cbr/\\u003eMàn hình: 6.3\\\" OLED Super Retina XDR\\u003cbr/\\u003eCamera sau: 3 x 48MP\\u003cbr/\\u003eCamera trước: 18MP\\u003cbr/\\u003eCPU: Apple A19 Pro\\u003cbr/\\u003eRAM: 12GB, bộ nhớ: 256GB\\u003cbr/\\u003eHệ điều hành: iOS', 'Apple', '2025-09-23 03:28:04', '2025-09-23 03:28:04'),
(250902473, 'Máy tính xách tay/ Laptop HP OmniBook 7 14-fr0033TU - C1MN2PA (Core Ultra 5-225U) (Bạc)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832852/aqxxfyjaqxzdgo8mc3ez.webp', 13, 25190000, 3, 24434300, '<p>Đang cập nhật</p>', 'CPU: Intel® Core™ Ultra 5-225U (3.8 GHz - 4.8 GHz/ 12MB/ 12 nhân, 14 luồng)\\u003cbr/\\u003eNPU:  Intel® AI Boost, up to 12 TOPS\\u003cbr/\\u003eVGA: Onboard graphics \\u003cbr/\\u003eRAM:  16GB Onboard 7467MHz LPDDR5 (Không nâng cấp được)\\u003cbr/\\u003eỔ cứng: 512GB SSD M.2 NVMe\\u003cbr/\\u003eMàn hình: 14\\\" WUXGA  (1920 x 1200) IPS, Màn hình chống lóa, 300 nits, 62.5% sRGB\\u003cbr/\\u003eKhác: Bàn phím thường, HD webcam, HP Audio Boost, Intel AI\\u003cbr/\\u003eOS: Windows 11 Home + Office Home \\u0026 Student 2024 + Microsoft 365 Basic 1 year Free Onedrive', 'HP', '2025-09-13 23:56:17', '2025-09-13 23:56:17'),
(250907823, 'Máy tính xách tay/ Laptop Lenovo ThinkPad E14 Gen 7 - 21SX002UVN (Core Ultra 5-225H) (Đen)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758621352/tgwanlwzh8mwop0h9l98.webp', 6, 25090000, NULL, 25090000, '<p>Đang cập nhật</p>', 'CPU: Intel® Core™ Ultra 5-225H (3.3GHz - 4.9GHz/ 20MB/ 10 nhân, 10 luồng)\\u003cbr/\\u003eNPU:  Intel® AI Boost 13 TOPS\\u003cbr/\\u003eVGA: Onboard graphics \\u003cbr/\\u003eRAM:  1 x 16GB 5600MHz DDR5 (Hỗ trợ tối đa 64GB)\\u003cbr/\\u003eỔ cứng: 512GB SSD M.2 NVMe\\u003cbr/\\u003eMàn hình: 14\\\" WUXGA  (1920 x 1200) IPS, 60Hz, Màn hình chống lóa, 300 nits, 45% NTSC\\u003cbr/\\u003eKhác: Bàn phím thường, FHD webcam, Dolby Atmos, Intel AI\\u003cbr/\\u003eOS: Windows 11 Home', 'Lenovo', '2025-09-23 02:59:37', '2025-09-23 02:59:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `attribute_id`, `created_at`, `updated_at`) VALUES
(11, 250809296, 8, NULL, NULL),
(12, 250809296, 22, NULL, NULL),
(13, 250809296, 23, NULL, NULL),
(14, 250809296, 24, NULL, NULL),
(15, 250809296, 19, NULL, NULL),
(16, 250902473, 8, NULL, NULL),
(17, 250902473, 11, NULL, NULL),
(18, 250902473, 14, NULL, NULL),
(19, 250902473, 15, NULL, NULL),
(20, 250902473, 18, NULL, NULL),
(21, 250902473, 19, NULL, NULL),
(22, 250806252, 31, NULL, NULL),
(23, 250806252, 29, NULL, NULL),
(24, 250806252, 28, NULL, NULL),
(25, 250806252, 32, NULL, NULL),
(26, 250803243, 8, NULL, NULL),
(27, 250803243, 14, NULL, NULL),
(28, 250803243, 15, NULL, NULL),
(29, 250309496, 23, NULL, NULL),
(30, 250309496, 15, NULL, NULL),
(31, 250309496, 14, NULL, NULL),
(32, 250300678, 8, NULL, NULL),
(35, 250907823, 15, NULL, NULL),
(36, 250907823, 23, NULL, NULL),
(37, 250907823, 28, NULL, NULL),
(38, 250907823, 29, NULL, NULL),
(39, 250907823, 31, NULL, NULL),
(40, 250807880, 42, NULL, NULL),
(41, 250807880, 41, NULL, NULL),
(42, 250807880, 40, NULL, NULL),
(43, 250807880, 39, NULL, NULL),
(44, 250807880, 27, NULL, NULL),
(45, 250807880, 26, NULL, NULL),
(46, 250807880, 14, NULL, NULL),
(47, 250807880, 15, NULL, NULL),
(48, 250807880, 33, NULL, NULL),
(49, 250807880, 36, NULL, NULL),
(50, 250803168, 47, NULL, NULL),
(51, 250803168, 45, NULL, NULL),
(52, 250803168, 42, NULL, NULL),
(53, 250803168, 41, NULL, NULL),
(54, 250803168, 26, NULL, NULL),
(55, 250803168, 20, NULL, NULL),
(56, 250803168, 28, NULL, NULL),
(57, 250803168, 24, NULL, NULL),
(58, 250803168, 8, NULL, NULL),
(59, 230903487, 54, NULL, NULL),
(60, 230903487, 53, NULL, NULL),
(61, 230903487, 52, NULL, NULL),
(62, 230903487, 51, NULL, NULL),
(63, 230903487, 40, NULL, NULL),
(64, 230903487, 20, NULL, NULL),
(65, 230903487, 57, NULL, NULL),
(66, 230903487, 55, NULL, NULL),
(67, 230903487, 36, NULL, NULL),
(68, 230903487, 8, NULL, NULL),
(69, 250900200, 65, NULL, NULL),
(70, 250900200, 64, NULL, NULL),
(71, 250900200, 63, NULL, NULL),
(72, 250900200, 61, NULL, NULL),
(73, 250900200, 60, NULL, NULL),
(74, 250900200, 59, NULL, NULL),
(75, 250900200, 58, NULL, NULL),
(76, 250809284, 65, NULL, NULL),
(77, 250809284, 63, NULL, NULL),
(78, 250809284, 72, NULL, NULL),
(79, 250809284, 71, NULL, NULL),
(80, 250809284, 8, NULL, NULL),
(81, 250809284, 24, NULL, NULL),
(82, 250809284, 28, NULL, NULL),
(83, 250512269, 8, NULL, NULL),
(84, 250512269, 15, NULL, NULL),
(85, 250512269, 28, NULL, NULL),
(86, 250306340, 8, NULL, NULL),
(87, 250306340, 15, NULL, NULL),
(88, 250306340, 22, NULL, NULL),
(89, 250306340, 28, NULL, NULL),
(90, 250718077, 8, NULL, NULL),
(93, 250803205, 8, NULL, NULL),
(96, 250116586, 8, NULL, NULL),
(97, 250718077, 45, NULL, NULL),
(98, 250718077, 72, NULL, NULL),
(99, 250718077, 73, NULL, NULL),
(100, 250718077, 63, NULL, NULL),
(101, 241002921, 8, NULL, NULL),
(102, 241003310, 8, NULL, NULL),
(103, 250646008, 8, NULL, NULL),
(105, 220700059, 8, NULL, NULL),
(110, 240502004, 8, NULL, NULL),
(111, 240501992, 8, NULL, NULL),
(112, 240501974, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(11, 250809296, 22, NULL, NULL),
(12, 250809296, 34, NULL, NULL),
(13, 250902473, 24, NULL, NULL),
(14, 250902473, 30, NULL, NULL),
(15, 250806252, 25, NULL, NULL),
(16, 250806252, 55, NULL, NULL),
(17, 250806252, 56, NULL, NULL),
(18, 250803243, 23, NULL, NULL),
(19, 250803243, 56, NULL, NULL),
(20, 250803243, 55, NULL, NULL),
(21, 250803243, 35, NULL, NULL),
(22, 250309496, 14, NULL, NULL),
(23, 250309496, 30, NULL, NULL),
(24, 250309496, 39, NULL, NULL),
(28, 250300678, 36, NULL, NULL),
(29, 250300678, 87, NULL, NULL),
(30, 250300678, 88, NULL, NULL),
(31, 250907823, 11, NULL, NULL),
(32, 250907823, 26, NULL, NULL),
(33, 250907823, 55, NULL, NULL),
(34, 250907823, 56, NULL, NULL),
(35, 250907823, 73, NULL, NULL),
(36, 250907823, 77, NULL, NULL),
(37, 250807880, 11, NULL, NULL),
(38, 250807880, 13, NULL, NULL),
(39, 250807880, 23, NULL, NULL),
(40, 250807880, 26, NULL, NULL),
(41, 250807880, 55, NULL, NULL),
(42, 250807880, 56, NULL, NULL),
(43, 250807880, 31, NULL, NULL),
(44, 250807880, 33, NULL, NULL),
(45, 250803168, 11, NULL, NULL),
(46, 250803168, 13, NULL, NULL),
(47, 250803168, 21, NULL, NULL),
(48, 250803168, 26, NULL, NULL),
(49, 250803168, 55, NULL, NULL),
(50, 250803168, 56, NULL, NULL),
(51, 250803168, 31, NULL, NULL),
(52, 250803168, 35, NULL, NULL),
(53, 250803168, 78, NULL, NULL),
(54, 250803168, 79, NULL, NULL),
(55, 230903487, 11, NULL, NULL),
(56, 230903487, 13, NULL, NULL),
(57, 230903487, 21, NULL, NULL),
(58, 230903487, 26, NULL, NULL),
(59, 230903487, 55, NULL, NULL),
(60, 230903487, 56, NULL, NULL),
(61, 250900200, 36, NULL, NULL),
(62, 250900200, 42, NULL, NULL),
(63, 250900200, 43, NULL, NULL),
(64, 250809284, 60, NULL, NULL),
(65, 250809284, 144, NULL, NULL),
(66, 250809284, 145, NULL, NULL),
(67, 250809284, 155, NULL, NULL),
(68, 250809284, 156, NULL, NULL),
(69, 250512269, 45, NULL, NULL),
(70, 250512269, 46, NULL, NULL),
(71, 250512269, 48, NULL, NULL),
(72, 250512269, 108, NULL, NULL),
(73, 250512269, 111, NULL, NULL),
(74, 250512269, 59, NULL, NULL),
(75, 250512269, 112, NULL, NULL),
(76, 250512269, 115, NULL, NULL),
(77, 250306340, 45, NULL, NULL),
(78, 250306340, 46, NULL, NULL),
(79, 250306340, 47, NULL, NULL),
(80, 250306340, 50, NULL, NULL),
(81, 250306340, 52, NULL, NULL),
(82, 250306340, 108, NULL, NULL),
(83, 250306340, 111, NULL, NULL),
(84, 250718077, 45, NULL, NULL),
(85, 250718077, 50, NULL, NULL),
(86, 250718077, 52, NULL, NULL),
(91, 250803205, 60, NULL, NULL),
(92, 250803205, 144, NULL, NULL),
(93, 250803205, 153, NULL, NULL),
(94, 250116586, 60, NULL, NULL),
(95, 250116586, 167, NULL, NULL),
(96, 250116586, 168, NULL, NULL),
(97, 241002921, 60, NULL, NULL),
(98, 241002921, 167, NULL, NULL),
(99, 241002921, 170, NULL, NULL),
(100, 241003310, 60, NULL, NULL),
(101, 241003310, 167, NULL, NULL),
(102, 241003310, 170, NULL, NULL),
(103, 250646008, 60, NULL, NULL),
(104, 250646008, 144, NULL, NULL),
(105, 250646008, 150, NULL, NULL),
(109, 220700059, 11, NULL, NULL),
(110, 220700059, 13, NULL, NULL),
(111, 220700059, 14, NULL, NULL),
(112, 220700059, 36, NULL, NULL),
(113, 220700059, 37, NULL, NULL),
(114, 220700059, 39, NULL, NULL),
(127, 240502004, 36, NULL, NULL),
(128, 240502004, 87, NULL, NULL),
(129, 240502004, 88, NULL, NULL),
(130, 240501992, 36, NULL, NULL),
(131, 240501992, 87, NULL, NULL),
(132, 240501992, 88, NULL, NULL),
(133, 240501974, 36, NULL, NULL),
(134, 240501974, 87, NULL, NULL),
(135, 240501974, 88, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `url`, `created_at`, `updated_at`) VALUES
(15, 250809296, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832666/fhrweickdcmnof1hqhr4.webp', '2025-09-13 23:52:41', '2025-09-13 23:52:41'),
(16, 250809296, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832667/yhxijjibq23xxhuliabm.webp', '2025-09-13 23:52:41', '2025-09-13 23:52:41'),
(17, 250809296, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832667/qhu1xgq569je95jn4pk3.webp', '2025-09-13 23:52:41', '2025-09-13 23:52:41'),
(18, 250809296, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832668/ahqlf9rgwdmnlxppklrj.webp', '2025-09-13 23:52:41', '2025-09-13 23:52:41'),
(19, 250809296, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832668/o5hyjbicxd19ofp00pnx.webp', '2025-09-13 23:52:41', '2025-09-13 23:52:41'),
(20, 250809296, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832669/f3ognlfkwhzy7itnxnwy.webp', '2025-09-13 23:52:41', '2025-09-13 23:52:41'),
(21, 250902473, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832859/fliplw9nidobjypy82lx.webp', '2025-09-13 23:56:17', '2025-09-13 23:56:17'),
(22, 250902473, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832869/agca3q7qzdqmdbvlbwfp.webp', '2025-09-13 23:56:17', '2025-09-13 23:56:17'),
(23, 250902473, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832870/aiqs3yymexoxoycss6kt.webp', '2025-09-13 23:56:17', '2025-09-13 23:56:17'),
(24, 250902473, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832870/cwkyczppkk2y7e8qwoaq.webp', '2025-09-13 23:56:17', '2025-09-13 23:56:17'),
(25, 250902473, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832871/itrgxanod7aqmj1zmz0o.webp', '2025-09-13 23:56:17', '2025-09-13 23:56:17'),
(26, 250806252, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757833265/apb0rcosrsjn1spjnyud.webp', '2025-09-14 00:03:08', '2025-09-14 00:03:08'),
(27, 250806252, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757833266/chzfehbomkfvrnw3xbgf.webp', '2025-09-14 00:03:08', '2025-09-14 00:03:08'),
(28, 250806252, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757833267/tq8epbo7hgjuqohofkf4.webp', '2025-09-14 00:03:08', '2025-09-14 00:03:08'),
(29, 250806252, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757833268/k2qqp7mf5ujkv9wtsyal.webp', '2025-09-14 00:03:08', '2025-09-14 00:03:08'),
(30, 250803243, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757833476/k3fcfqovusmyzxmojpzb.webp', '2025-09-14 00:06:02', '2025-09-14 00:06:02'),
(31, 250803243, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757833476/hfd1kfadalox98oehw0i.webp', '2025-09-14 00:06:02', '2025-09-14 00:06:02'),
(32, 250803243, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757833477/ssyycjj6ruhz7fahyggg.webp', '2025-09-14 00:06:02', '2025-09-14 00:06:02'),
(33, 250803243, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757833478/hffe8apofqecqjqxfzsc.webp', '2025-09-14 00:06:02', '2025-09-14 00:06:02'),
(34, 250309496, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757902412/jgnifnxhjuvnncjlup7b.webp', '2025-09-14 19:14:19', '2025-09-14 19:14:19'),
(35, 250309496, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757902412/cmjnvkjltycbn8m9z57s.webp', '2025-09-14 19:14:19', '2025-09-14 19:14:19'),
(36, 250309496, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757902413/thuby89zgjws6bvdspra.webp', '2025-09-14 19:14:19', '2025-09-14 19:14:19'),
(37, 250309496, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757902414/iyixrvrwlhmx4axru4im.webp', '2025-09-14 19:14:19', '2025-09-14 19:14:19'),
(41, 250907823, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758621491/urndpqoeesnqnc6g2tuf.webp', '2025-09-23 02:59:37', '2025-09-23 02:59:37'),
(42, 250907823, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758621492/r9cv3tvxusyz8kdaub0d.webp', '2025-09-23 02:59:37', '2025-09-23 02:59:37'),
(43, 250907823, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758621493/ogd7e0qghnczcly2td9n.webp', '2025-09-23 02:59:37', '2025-09-23 02:59:37'),
(44, 250907823, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758621494/j1exompqiwaonv21y7n1.webp', '2025-09-23 02:59:37', '2025-09-23 02:59:37'),
(45, 250907823, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758621495/uoxqibypvm4e9d3xiczy.webp', '2025-09-23 02:59:37', '2025-09-23 02:59:37'),
(46, 250807880, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758621820/yltkr2zajgacnjg7cwcb.webp', '2025-09-23 03:06:11', '2025-09-23 03:06:11'),
(47, 250807880, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758621821/mjj2wihyypn76ulweh40.webp', '2025-09-23 03:06:11', '2025-09-23 03:06:11'),
(48, 250807880, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758621821/qylnphheebsbe0hfoipi.webp', '2025-09-23 03:06:11', '2025-09-23 03:06:11'),
(49, 250807880, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758621822/cwzd7sdskjftltbtun1i.webp', '2025-09-23 03:06:11', '2025-09-23 03:06:11'),
(50, 250803168, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758622264/dvtyn5fnslm6wol3qpgr.webp', '2025-09-23 03:13:51', '2025-09-23 03:13:51'),
(51, 250803168, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758622265/anlpgm7ls8huowupgwkm.webp', '2025-09-23 03:13:51', '2025-09-23 03:13:51'),
(52, 250803168, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758622266/jliav2zhgu0c5vnmc23r.webp', '2025-09-23 03:13:51', '2025-09-23 03:13:51'),
(53, 250803168, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758622266/a63uvh6iyambwtn8snvj.webp', '2025-09-23 03:13:51', '2025-09-23 03:13:51'),
(54, 250803168, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758622267/guxygrima2n6brbo4azi.webp', '2025-09-23 03:13:51', '2025-09-23 03:13:51'),
(55, 230903487, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758622694/xnthas6s0aw5upplxqjh.webp', '2025-09-23 03:21:24', '2025-09-23 03:21:24'),
(56, 230903487, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758622695/fx9nw7s4aurz7dhw1tu3.webp', '2025-09-23 03:21:24', '2025-09-23 03:21:24'),
(57, 230903487, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758622696/cyzbjgrykfw5qfnhjmjf.webp', '2025-09-23 03:21:24', '2025-09-23 03:21:24'),
(58, 230903487, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758622697/qtt9knnyucryhewa66vz.webp', '2025-09-23 03:21:24', '2025-09-23 03:21:24'),
(59, 230903487, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758622698/wtpyi1bjkgiyje8cqquy.webp', '2025-09-23 03:21:24', '2025-09-23 03:21:24'),
(60, 250900200, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758623068/e0jd9ufojd9twg54qipk.webp', '2025-09-23 03:28:04', '2025-09-23 03:28:04'),
(61, 250900200, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758623068/wsw5u0kegbsahzpgxhyd.webp', '2025-09-23 03:28:04', '2025-09-23 03:28:04'),
(62, 250900200, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758623069/xj5qcrksdgmdaz8ku8ba.webp', '2025-09-23 03:28:04', '2025-09-23 03:28:04'),
(63, 250900200, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758623070/zs0qlo1pz5oopbobzq67.webp', '2025-09-23 03:28:04', '2025-09-23 03:28:04'),
(64, 250809284, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625417/zupq7qfdhyvyjqxu12he.webp', '2025-09-23 04:08:40', '2025-09-23 04:08:40'),
(65, 250809284, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625420/rx8jmnewt9ddzqjl92x6.webp', '2025-09-23 04:08:40', '2025-09-23 04:08:40'),
(66, 250809284, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625421/xxygxg9fwtzugtehsfow.webp', '2025-09-23 04:08:40', '2025-09-23 04:08:40'),
(67, 250809284, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625421/sonxtu4ozartojyxrqg3.webp', '2025-09-23 04:08:40', '2025-09-23 04:08:40'),
(68, 250809284, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625422/tq2udp2vjmpowkuxu5qt.webp', '2025-09-23 04:08:40', '2025-09-23 04:08:40'),
(69, 250512269, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625772/wnbc1ys2nlogryedxkgf.webp', '2025-09-23 04:11:19', '2025-09-23 04:11:19'),
(70, 250512269, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625773/lz79ip5uk9gr2lprdwg5.webp', '2025-09-23 04:11:19', '2025-09-23 04:11:19'),
(71, 250512269, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625774/pbhb86ah0bdewuvtozwy.webp', '2025-09-23 04:11:19', '2025-09-23 04:11:19'),
(72, 250306340, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625932/b4sfg8lfs82fiz4v5iub.webp', '2025-09-23 04:13:54', '2025-09-23 04:13:54'),
(73, 250306340, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625933/ewpxxkcw8vz086yd8fi7.webp', '2025-09-23 04:13:54', '2025-09-23 04:13:54'),
(74, 250306340, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758625933/erysmspzhzq7ft2smrba.webp', '2025-09-23 04:13:54', '2025-09-23 04:13:54'),
(79, 250116586, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758626645/lxo84xchxf0zfxm61xym.webp', '2025-09-23 04:24:42', '2025-09-23 04:24:42'),
(80, 250116586, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758626646/dvsi8egknhhtqw8druue.webp', '2025-09-23 04:24:42', '2025-09-23 04:24:42'),
(81, 250116586, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758626647/doobgtxqssvwzm8a3ssv.webp', '2025-09-23 04:24:42', '2025-09-23 04:24:42'),
(82, 241002921, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758630185/fxmmweiiovxstc3dep4v.webp', '2025-09-23 05:24:41', '2025-09-23 05:24:41'),
(83, 241002921, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758630186/mfrqzlgyptjijblu6k30.webp', '2025-09-23 05:24:41', '2025-09-23 05:24:41'),
(84, 241002921, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758630187/d6ac9sjx2xn1q283ca3z.webp', '2025-09-23 05:24:41', '2025-09-23 05:24:41'),
(85, 241002921, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758630188/n3ufszhptpgaskzotjcu.webp', '2025-09-23 05:24:41', '2025-09-23 05:24:41'),
(86, 241003310, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758630322/nm6xrpmxgikbpbtackwd.webp', '2025-09-23 05:26:15', '2025-09-23 05:26:15'),
(87, 241003310, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758630323/h60ecpirxtn07esjryxj.webp', '2025-09-23 05:26:15', '2025-09-23 05:26:15'),
(88, 241003310, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758630324/ihc6u6pf13f0uvjjm105.webp', '2025-09-23 05:26:15', '2025-09-23 05:26:15'),
(92, 220700059, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758633789/w15ssrpqbpzpgkudj6vr.webp', '2025-09-23 06:24:05', '2025-09-23 06:24:05'),
(93, 220700059, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758633790/rknzplmlk71fuazr7bu6.webp', '2025-09-23 06:24:05', '2025-09-23 06:24:05'),
(94, 220700059, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758633791/mdpmd86gftu6iorbkkxh.webp', '2025-09-23 06:24:05', '2025-09-23 06:24:05'),
(105, 240502004, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758635018/nuduibxkb7keqrjyoq7e.webp', '2025-09-23 06:44:04', '2025-09-23 06:44:04'),
(106, 240502004, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758635019/ac3s2lrpdcy3h6vvupbv.webp', '2025-09-23 06:44:04', '2025-09-23 06:44:04'),
(107, 240502004, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758635020/gxh5sllzun2jszxnq3zj.webp', '2025-09-23 06:44:04', '2025-09-23 06:44:04'),
(108, 240501992, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758635493/utwdxhn1ioacyklpcztl.webp', '2025-09-23 06:52:27', '2025-09-23 06:52:27'),
(109, 240501992, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758635494/pzonhgz2zcg5pwy3rvjv.webp', '2025-09-23 06:52:27', '2025-09-23 06:52:27'),
(110, 240501992, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758635495/xugjcq0ddye7kaiflkof.webp', '2025-09-23 06:52:27', '2025-09-23 06:52:27'),
(111, 240501974, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758635574/rahs6s0pimqhcqvafsos.webp', '2025-09-23 06:53:26', '2025-09-23 06:53:26'),
(112, 240501974, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758635575/cc6pvorgtrrgubcfnjdp.webp', '2025-09-23 06:53:26', '2025-09-23 06:53:26'),
(113, 240501974, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1758635576/ewtefrepdb6jaktzygub.webp', '2025-09-23 06:53:26', '2025-09-23 06:53:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`sku`);

--
-- Chỉ mục cho bảng `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_foreign` (`product_id`),
  ADD KEY `product_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_product_id_foreign` (`product_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`sku`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`sku`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`sku`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
