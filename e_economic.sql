-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 18, 2025 lúc 04:58 PM
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
(32, 'Bảo hành', '36 tháng', 6, '2025-09-14 00:00:42', '2025-09-14 00:00:42');

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
(68, 'Hàng thanh lý', NULL, '2025-09-15 21:30:50', '2025-09-15 21:30:50');

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
(250300678, 'Máy tính bảng Apple iPad Gen 11 (A16) Wifi - 11 inch 256GB - Blue (MD4H4ZA/A)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757902744/pmiuinflxm0ess1phg5l.webp', 3, 12990000, 15, 10989540, '<p>Đang cập nhật</p>', '- Chính hãng, Mới 100%, Nguyên seal\\u003cbr/\\u003e- Màn hình: 11\\\" Liquid Retina IPS\\u003cbr/\\u003e- Camera sau: 12MP\\u003cbr/\\u003e- Camera trước: 12MP\\u003cbr/\\u003e- CPU: Apple A16\\u003cbr/\\u003e- Bộ nhớ: 256GB\\u003cbr/\\u003e- RAM: 6GB\\u003cbr/\\u003e- Hệ điều hành: iPadOS 18', 'Apple', '2025-09-14 19:20:08', '2025-09-14 19:20:08'),
(250309496, 'Máy tính Apple MacBook Air 13.6 inch (M3/8CPU/10GPU/24GB/512GB/70W) - Bạc (Z1HY00023)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757902330/m9myiuwdjk24cqis3u0f.webp', 5, 34890000, 12, 30703200, '<p>\\u003cp\\u003e\\u003ci\\u003eApple \\u003c/i\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-apple-macbook-air\\\">https://phongvu.vn/c/laptop-apple-macbook-air\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003e\\u003ci\\u003eMacBook Air \\u003c/i\\u003e\\u003c/a\\u003e\\u003ci\\u003eM3 13.6 inch sở hữu thiết kế siêu mỏng cùng hiệu năng mạnh mẽ, mang đến trải nghiệm làm việc và giải trí đỉnh cao. Sản phẩm này không chỉ đảm bảo tốc độ xử lý nhanh chóng mà còn hỗ trợ đa nhiệm mượt mà. Với màn hình Liquid Retina sắc nét, thời lượng pin ấn tượng, MacBook Air M3 chính là lựa chọn lý tưởng cho những ai yêu thích sự gọn nhẹ nhưng vẫn cần hiệu suất vượt trội. Hãy cùng tìm hiểu chi tiết những tính năng nổi bật của sản phẩm nhé!\\u003c/i\\u003e\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eApple MacBook Air M3 13.6\\\" chip Apple M3 tốc độ xử lý và hiệu năng mạnh mẽ\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eSản phẩm được trang bị \\u003cstrong\\u003echip Apple M3\\u003c/strong\\u003e tốc độ nhanh, khả năng xử lý đồ họa tốt hơn và tối ưu hóa hiệu suất khi chạy nhiều tác vụ cùng lúc. Sản xuất trên tiến trình 3nm tiên tiến,\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-apple-macbook\\\">https://phongvu.vn/c/laptop-apple-macbook\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003e MacBook\\u003c/a\\u003e Air M3 13.6\\\"\\u003cstrong\\u003e\\u0026nbsp;\\u003c/strong\\u003emang đến khả năng tiết kiệm năng lượng tối ưu. Với CPU 8 nhân, GPU 10 nhân và Neural Engine 16 nhân, máy xử lý mượt mà mọi tác vụ từ làm việc văn phòng, lập trình cho đến chỉnh sửa video 4K hay thiết kế đồ họa. So với thế hệ M1, hiệu suất CPU của M3 cao hơn và GPU nhanh hơn, giúp đa nhiệm hiệu quả và xử lý đồ họa chuyên sâu.\\u0026nbsp;\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/021f0cdf-57e1-49fa-9654-7008c3574cec/image.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/021f0cdf-57e1-49fa-9654-7008c3574cec/image.png\\</a>\" alt=\\\"Apple MacBook Air M3 13.6\\u0026quot; (24GB/512GB SSD) tối ưu hiệu suất, khả năng xử lý đồ họa ấn tượng \\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eApple MacBook Air M3 13.6\\\" (24GB/512GB SSD) tối ưu hiệu suất, khả năng xử lý đồ họa ấn tượng\\u0026nbsp;\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3\\u003e\\u003cstrong\\u003eMacBook Air M3 13.6\\\" thiết kế mỏng nhẹ, di động tối ưu\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eMacBook Air M3 13.6\\\" trọng lượng chỉ \\u003cstrong\\u003e1.24kg\\u003c/strong\\u003e, thiết kế \\u003cstrong\\u003ecực kỳ mỏng nhẹ chỉ 11.3mm\\u003c/strong\\u003e, người dùng dễ dàng mang theo mọi lúc mọi nơi. Khung máy được hoàn thiện từ nhôm nguyên khối cao cấp, không chỉ mang lại vẻ ngoài sang trọng mà còn đảm bảo độ bền cao. Với các tùy chọn màu sắc \\u003cstrong\\u003eStarlight, Silver và Space Gray\\u003c/strong\\u003e, MacBook Air M3 sẽ đáp ứng mọi phong cách của người dùng. Ngoài ra, thiết kế không quạt giúp máy vận hành một cách êm ái.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/b2064f72-3c0b-4835-b351-dbdd22aae24b/image.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/b2064f72-3c0b-4835-b351-dbdd22aae24b/image.png\\</a>\" alt=\\\"Apple MacBook Air M3 13.6\\u0026quot; (24GB/512GB SSD) thiết kế mỏng nhẹ có thể mang theo bất cứ đâu\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eApple MacBook Air M3 13.6\\\" (24GB/512GB SSD) thiết kế mỏng nhẹ có thể mang theo bất cứ đâu\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3\\u003e\\u003cstrong\\u003eMàn hình Liquid Retina 13.6\\\" viền mỏng mang lại trải nghiệm hiển thị rộng rãi, sắc nét\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003e\\u003cstrong\\u003eLiquid Retina 13.6 inch\\u003c/strong\\u003e với viền mỏng, mang đến trải nghiệm hiển thị rộng rãi và sắc nét cho MacBook Air M3 13.6\\\". Màn hình có độ phân giải \\u003cstrong\\u003e2560 x 1664 pixels\\u003c/strong\\u003e, cung cấp hình ảnh màu sắc chính xác, chi tiết và độ tương phản cao, nội dung trở nên sống động hơn. Công nghệ \\u003cstrong\\u003eTrue Tone\\u003c/strong\\u003e tự động điều chỉnh nhiệt độ màu theo môi trường, tạo cảm giác dễ chịu khi sử dụng trong thời gian dài. Độ sáng lên đến \\u003cstrong\\u003e500 nits\\u003c/strong\\u003e hiển thị rõ ràng ngay cả trong điều kiện ánh sáng mạnh. Nhờ viền màn hình mỏng, không gian hiển thị trở nên tối ưu hơn, giúp bạn tận hưởng trải nghiệm làm việc, giải trí và sáng tạo nội dung một cách trọn vẹn.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/57761e94-f249-490e-8399-733388b58d44/image.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/57761e94-f249-490e-8399-733388b58d44/image.png\\</a>\" alt=\\\"Apple MacBook Air M3 13.6\\u0026quot; (24GB/512GB SSD) màn hình Liquid Retina 13.6\\u0026quot; viền mỏng, hiển thị rõ nét\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eApple MacBook Air M3 13.6\\\" (24GB/512GB SSD) màn hình Liquid Retina 13.6\\\" viền mỏng, hiển thị rõ nét\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3\\u003e\\u003cstrong\\u003eRAM lên đến 24GB kết hợp với ổ cứng SSD 512GB\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eMacBook Air M3 13.6\\\" sở hữu \\u003cstrong\\u003eRAM lên đến 24GB\\u003c/strong\\u003e kết hợp cùng \\u003cstrong\\u003eổ cứng SSD 512GB\\u003c/strong\\u003e, hiệu suất mạnh mẽ và khả năng đa nhiệm mượt mà. Dung lượng RAM lớn giúp máy xử lý tốt các tác vụ nặng như thiết kế đồ họa, chỉnh sửa video 4K hay chạy nhiều ứng dụng cùng lúc mà không bị giật lag. Trong khi đó, ổ cứng SSD 512GB cung cấp tốc độ đọc/ghi nhanh, đảm bảo thời gian khởi động, mở ứng dụng và truy xuất dữ liệu nhanh chóng. Sự kết hợp giữa RAM dung lượng cao và bộ nhớ SSD tốc độ nhanh giúp MacBook Air M3 không chỉ mang đến trải nghiệm làm việc mượt mà mà còn tối ưu hóa hiệu suất cho người dùng chuyên nghiệp.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/80dffe50-b5f5-4651-8231-a4b98bf9b22c/image.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/80dffe50-b5f5-4651-8231-a4b98bf9b22c/image.png\\</a>\" alt=\\\"Apple MacBook Air M3 13.6\\u0026quot; (24GB/512GB SSD) RAM lên đến 24GB, ổ cứng SSD 512GB\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eApple MacBook Air M3 13.6\\\" (24GB/512GB SSD) RAM lên đến 24GB, ổ cứng SSD 512GB\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eMacBook Air M3 13.6\\\" sử dụng hệ điều hành macOS, trải nghiệm mượt mà và ổn định\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eMacOS cung cấp giao diện trực quan, dễ sử dụng cùng nhiều tính năng thông minh như \\u003cstrong\\u003eStage Manager\\u003c/strong\\u003e, \\u003cstrong\\u003eUniversal Control\\u003c/strong\\u003e, \\u003cstrong\\u003eHandoff\\u003c/strong\\u003e và \\u003cstrong\\u003eAirDrop\\u003c/strong\\u003e, tạo nên sự liền mạch giữa các thiết bị Apple trong quá trình làm việc. Ngoài ra, hệ điều hành này cũng tối ưu bảo mật với tính năng \\u003cstrong\\u003eFileVault\\u003c/strong\\u003e, \\u003cstrong\\u003eTouch ID\\u003c/strong\\u003e và cập nhật thường xuyên, đảm bảo an toàn cho dữ liệu cá nhân. Với sự tối ưu giữa phần cứng và phần mềm, macOS giúp MacBook Air M3 hoạt động bền bỉ, tiết kiệm năng lượng và khai thác tối đa sức mạnh của chip Apple M3.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/ab46506b-ff45-465e-afa4-6fa849ef31ce/image.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/ab46506b-ff45-465e-afa4-6fa849ef31ce/image.png\\</a>\" alt=\\\"Apple MacBook Air M3 13.6\\u0026quot; (24GB/512GB SSD) mang đến sự tối ưu, tiện nghi cho người dùng\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eApple MacBook Air M3 13.6\\\" (24GB/512GB SSD) mang đến sự tối ưu, tiện nghi cho người dùng\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eMacBook Air M3 13.6\\\" hệ thống kết nối toàn diện, đáp ứng tốt nhu cầu làm việc và giải trí\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eMacBook Air M3 13.6\\\" với\\u003cstrong\\u003e 2 cổng Thunderbolt 4\\u003c/strong\\u003e, hỗ trợ truyền dữ liệu tốc độ cao, xuất hình ảnh ra màn hình ngoài và sạc nhanh thông qua cổng USB-C. Thiết bị kết nối tai nghe hoặc loa ngoài tiện lợi thông qua \\u003cstrong\\u003ejack âm thanh 3.5mm (Audio Combo)\\u003c/strong\\u003e. Ngoài ra, sản phẩm hỗ trợ \\u003cstrong\\u003eWi-Fi 6E (802.11ax)\\u003c/strong\\u003e tốc độ kết nối nhanh hơn, độ trễ thấp hơn và khả năng duy trì mạng ổn định ngay cả trong môi trường nhiều thiết bị kết nối. Bên cạnh đó, \\u003cstrong\\u003eBluetooth 5.3\\u003c/strong\\u003e ghép nối với các thiết bị ngoại vi nhanh chóng như tai nghe, bàn phím, chuột hay iPhone.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/14555008-c3ba-422a-8a10-efe636db5075/image.png\\\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/4/10/14555008-c3ba-422a-8a10-efe636db5075/image.png\\</a>\" alt=\\\"Apple MacBook Air M3 13.6\\u0026quot; (24GB/512GB SSD) có các cổng kết nối linh hoạt\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eApple MacBook Air M3 13.6\\\" (24GB/512GB SSD) có các cổng kết nối linh hoạt\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eMacBook Air M3 13.6\\\" thời lượng pin ấn tượng, sạc nhanh tiện nghi\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eNgười dùng có thể làm việc và giải trí suốt cả ngày mà không lo hết pin khi chọn lựa MacBook Air M3 13.6\\\". Máy có thể \\u003cstrong\\u003exem phim trên Apple TV lên đến 18 giờ\\u003c/strong\\u003e và \\u003cstrong\\u003eduyệt web qua Wifi trong 15 giờ\\u003c/strong\\u003e với viên pin \\u003cstrong\\u003eLi-Po 52.6Wh\\u003c/strong\\u003e tối ưu hóa năng lượng. Bên cạnh đó, Apple cung cấp nhiều tùy chọn sạc linh hoạt để đáp ứng nhu cầu linh hoạt. Phiên bản \\u003cstrong\\u003eGPU 8 lõi\\u003c/strong\\u003e đi kèm \\u003cstrong\\u003ebộ tiếp hợp nguồn USB-C 30W\\u003c/strong\\u003e, trong khi phiên bản \\u003cstrong\\u003eGPU 10 lõi với dung lượng 512GB\\u003c/strong\\u003e được trang bị \\u003cstrong\\u003ebộ tiếp hợp nguồn USB-C kép 35W\\u003c/strong\\u003e (có thể tùy chọn cho bản GPU 8 lõi). MacBook Air M3 cũng hỗ trợ \\u003cstrong\\u003esạc nhanh với bộ tiếp hợp USB-C 70W\\u003c/strong\\u003e, giúp rút ngắn thời gian sạc đáng kể và đi kèm \\u003cstrong\\u003ecáp USB-C to MagSafe 3\\u003c/strong\\u003e kết nối sạc an toàn, dễ dàng tháo lắp.\\u0026nbsp;\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eChọn mua Apple MacBook Air M3 13.6\\\" (24GB/512GB SSD) chính hãng, giá tốt tại Phong Vũ\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eMacBook Air M3 13.6\\\" màn hình Liquid Retina sắc nét, chip Apple M3 mạnh mẽ cùng hệ điều hành MacOS sẽ mang đến trải nghiệm mượt mà và tiện lợi cho người dùng. Đặc biệt, sản phẩm còn có thời lượng pin dài, sạc nhanh linh hoạt cùng các tính năng bảo mật cao cấp giúp MacBook Air M3 trở thành lựa chọn lý tưởng cho những ai tìm kiếm một chiếc máy tính xách tay di động, bền bỉ và hiệu suất cao. Hãy đến ngay hệ thống showroom Phong Vũ để chọn mua các thiết bị điện tử chính hãng giá tốt nhé!\\u003c/p\\u003e</p>', '\"CPU: Apple M3\\u003cbr/\\u003eMàn hình: 13.6 inch (2560 x 1664) Liquid Retina\\u003cbr/\\u003eRAM: 24GB / 512GB SSD\\u003cbr/\\u003eHệ điều hành: macOS', 'Apple', '2025-09-14 19:14:19', '2025-09-14 19:14:19'),
(250803243, 'Máy tính xách tay/ Laptop Dell 15 DC15255 DC5R5802W1-Silver (AMD Ryzen 5-7530U) (Bạc)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757833471/qhcvdmxykjj2cfcszges.webp', 6, 16390000, 2, 16062200, '<p>Đang cập nhật</p>', 'CPU: AMD Ryzen™ 5 7530U (2.0 GHz - 4.5 GHz/ 16MB/ 6 nhân, 12 luồng)\\u003cbr/\\u003eVGA: Onboard graphics \\u003cbr/\\u003eRAM:  1 x 16GB 3200MHz DDR4 (Hỗ trợ tối đa 16GB)\\u003cbr/\\u003eỔ cứng: 512GB SSD M.2 NVMe\\u003cbr/\\u003eMàn hình: 15.6\\\" Full HD  (1920 x 1080) IPS, 120Hz, Màn hình chống lóa, 250 nits, 45% NTSC\\u003cbr/\\u003eKhác: Bàn phím thường, FHD webcam, Non-EVO\\u003cbr/\\u003eOS: Windows 11 Home SL + Office Home \\u0026 Student 2024', 'Dell', '2025-09-14 00:06:02', '2025-09-14 00:06:02'),
(250806252, 'Máy tính xách tay/ Laptop Lenovo ThinkPad T14 Gen 6 - 21QC0007VA (Core Ultra 7-255H) (Đen)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757833253/pw63ykciq1n2lz8ufglp.webp', 5, 36390000, 0, 36390000, '<p>\\u003cblockquote\\u003e\\u003cp\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-lenovo-thinkpad\\\">https://phongvu.vn/c/laptop-lenovo-thinkpad\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003e\\u003ci\\u003eLaptop Lenovo ThinkPad\\u003c/i\\u003e\\u003c/a\\u003e\\u003ci\\u003e T14 Gen 6 - 21QC0007VA là mẫu \\u003c/i\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-van-phong\\\">https://phongvu.vn/c/laptop-van-phong\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003e\\u003ci\\u003elaptop văn phòng\\u003c/i\\u003e\\u003c/a\\u003e\\u003ci\\u003e cao cấp, được thiết kế hướng đến đối tượng người dùng doanh nhân và sinh viên. Với bộ vi xử lý Intel Core Ultra 7-255H, RAM DDR5 tốc độ cao và GPU Intel Arc tích hợp, máy đảm bảo hiệu năng ổn định trong mọi tác vụ. ThinkPad T14 Gen 6 là lựa chọn đáng giá cho những ai cần một thiết bị bền bỉ và hiệu suất cao để xử lý công việc mọi lúc mọi nơi.\\u003c/i\\u003e\\u003c/p\\u003e\\u003c/blockquote\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eI. Đặc điểm nổi bật\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cul\\u003e\\u003cli\\u003e\\u003cstrong\\u003eHiệu năng mạnh mẽ\\u003c/strong\\u003e: Trang bị bộ vi xử lý Intel Core Ultra 7-255H, laptop xử lý mượt mà từ tác vụ văn phòng cơ bản đến các ứng dụng chuyên sâu.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eDung lượng lưu trữ\\u0026nbsp; lớn\\u003c/strong\\u003e: RAM 32GB DDR5 5600MHz và SSD NVMe 512GB, cho tốc độ khởi động và phản hồi ứng dụng nhanh chóng gần như tức thì.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eMàn hình 14 inch sắc nét\\u003c/strong\\u003e: Độ phân giải WUXGA 1920x1200, độ sáng 400 nits cùng công nghệ chống lóa giúp hiển thị hình ảnh rõ nét trong mọi hoàn cảnh.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eKết nối hiện đại\\u003c/strong\\u003e: Trang bị Wi-Fi 7, Bluetooth 5.4, 2 cổng Thunderbolt 4 và HDMI, hỗ trợ kết nối nhanh chóng, tiện lợi cho môi trường làm việc đa thiết bị.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eThiết kế gọn nhẹ, bền bỉ\\u003c/strong\\u003e: Trọng lượng chỉ 1.5kg, đạt chuẩn độ bền ThinkPad với bản lề chắc chắn, dễ dàng mang theo mọi lúc mọi nơi.\\u003c/li\\u003e\\u003cli\\u003e\\u003cstrong\\u003eBảo mật cao cấp\\u003c/strong\\u003e: Hỗ trợ vân tay, camera IR cho Windows Hello và giải pháp ThinkShield, bảo vệ an toàn dữ liệu cá nhân và doanh nghiệp.\\u003c/li\\u003e\\u003c/ul\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eII. Đánh giá chi tiết\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-lenovo\\\">https://phongvu.vn/c/laptop-lenovo\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003eLaptop Lenovo\\u003c/a\\u003e ThinkPad T14 Gen 6 - 21QC0007VA sở hữu thiết kế tinh tế và hiệu năng mạnh mẽ đáp ứng tốt mọi nhu cầu của người dùng. Đây không chỉ là một công cụ làm việc mà còn là người bạn đồng hành tin cậy trên mọi hành trình công việc của bạn.\\u003c/p\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e1. Thiết kế bền bỉ đạt chuẩn quân đội MIL-STD-810H\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eVỏ máy được hoàn thiện từ vật liệu cao cấp, phủ một lớp nhám tinh tế, giúp chống bám vân tay hiệu quả. Với kích thước 315.9 x 223.7 mm, trọng lượng 1.5kg và độ dày từ 10.9mm - 16.1mm máy đảm bảo mỏng nhẹ, dễ dàng nằm gọn trong túi xách hay balo. Máy sở hữu độ bền đạt chuẩn quân đội MIL-STD-810H, mang lại khả năng chống sốc, chịu nhiệt và chống tràn nước bàn phím hiệu quả.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/9b98d5e7-4904-4e13-8458-e051140e5e90/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eThiết\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/9b98d5e7-4904-4e13-8458-e051140e5e90/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eThiết</a> kế sang trọng, bền bỉ nhờ sử dụng vật liệu cao cấp\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp\\u003eBản lề chắc chắn cho phép mở đến 180 độ, thao tác một tay tiện lợi và đảm bảo sự ổn định khi gõ phím. Bàn phím ThinkPad được trang bị phím LED với hành trình sâu và độ phản hồi tốt, mang lại cảm giác gõ mượt mà, thoải mái. Touchpad lớn, độ nhạy cao và bề mặt nhẵn mịn, hỗ trợ thao tác đa điểm chính xác.\\u0026nbsp;\\u003c/p\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e2. Hiệu năng mượt mà nhờ chip Intel Core Ultra 7\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eThinkPad T14 Gen 6 trang bị chip Intel Core Ultra 7-255H với 16 nhân 16 luồng, xung nhịp tối đa 5.1GHz và bộ nhớ đệm 24MB cho hiệu năng vượt trội. GPU tích hợp Intel Arc Graphics cùng NPU AI Boost 13 TOPS, cho khả năng xử lý hiệu quả cả tác vụ trí tuệ nhân tạo lẫn đồ họa văn phòng. Kết quả benchmark Cinebench R23 đạt 2098 điểm đơn nhân và 17652 điểm đa nhân, cho thấy sức mạnh vượt trội hơn nhiều sản phẩm trong cùng phân khúc.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/f149149c-eab2-4981-b258-317c0b27f2fb/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eTrang\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/f149149c-eab2-4981-b258-317c0b27f2fb/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eTrang</a> bị chip Intel Core Ultra 7 cho hiệu năng xử lý ấn tượng\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp\\u003eĐặc biệt, RAM 32GB DDR5 5600MHz và SSD NVMe 512GB giúp tối ưu hiệu suất, rút ngắn thời gian khởi động và truy xuất dữ liệu. Người dùng có thể dễ dàng nâng cấp RAM tối đa 64GB nhờ 2 khe cắm và thay thế SSD dung lượng cao hơn khi cần. Máy duy trì nhiệt độ ổn định khi tải nặng, quạt tản nhiệt hoạt động êm, phù hợp cho môi trường văn phòng yên tĩnh.\\u003c/p\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e3. Pin 52Wh sử dụng thoải mái cả ngày dài\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eLaptop Lenovo ThinkPad T14 Gen 6 - 21QC0007VA được trang bị viên pin 52Wh liền, đảm bảo thời gian sử dụng ấn tượng cho cả ngày dài. Máy còn hỗ trợ công nghệ sạc nhanh Power Delivery qua USB-C, tiện lợi cho những ai cần làm việc gấp. Người dùng cũng có thể sạc bằng powerbank hỗ trợ PD, đảm bảo tính di động cao, phù hợp cho những ai thường xuyên di chuyển nhiều địa điểm khác nhau.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/586bccca-36bc-437b-a437-f5c5952ea92a/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eDung\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/586bccca-36bc-437b-a437-f5c5952ea92a/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eDung</a> lượng pin lớn đáp ứng tốt nhu cầu sử dụng liên tục của người dùng\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e4. Bảo mật và công nghệ thông minh\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eThinkPad T14 Gen 6 tích hợp hệ thống ThinkShield bảo mật toàn diện từ phần cứng đến phần mềm, kết hợp chip TPM 2.0 mã hóa dữ liệu doanh nghiệp. Camera IR cho phép đăng nhập bằng khuôn mặt với Windows Hello, nhanh chóng và chính xác. Ngoài ra, cảm biến vân tay một chạm được đặt ngay trên bàn phím, hỗ trợ đăng nhập nhanh và bảo mật gấp đôi.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/07e05dc3-ab98-4c64-9fc0-50372e88b318/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eTrang\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/07e05dc3-ab98-4c64-9fc0-50372e88b318/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eTrang</a> bị Camera IR hỗ trợ người dùng đăng nhập nhanh bằng khuôn mặt\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e5. Màn hình WUXGA hiển thị hình ảnh rõ nét\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/c/laptop-lenovo-14-inch\\\">https://phongvu.vn/c/laptop-lenovo-14-inch\\</a>\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\"\\u003eMàn hình 14 inch\\u003c/a\\u003e WUXGA (1920x1200) tỉ lệ 16:10 mang lại không gian làm việc rộng rãi cùng khả năng chống chói giúp làm việc thoải mái dưới ánh sáng mạnh. Tấm nền IPS cho góc nhìn rộng, màu sắc ổn định, độ sáng tối đa 400 nits đủ dùng trong nhiều môi trường sáng.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/d7349e87-1c31-48f7-ac1d-ace88365f9ec/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eMáy\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/d7349e87-1c31-48f7-ac1d-ace88365f9ec/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eMáy</a> sở hữu màn hình lớn với tấm nền IPS cho hình ảnh hiển thị sắc nét\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003cp\\u003eMàn hình đạt 45% NTSC có khả năng đáp ứng tốt các nhu cầu văn phòng, soạn thảo tài liệu, họp trực tuyến hay giải trí cơ bản. Cùng công nghệ lọc ánh sáng xanh và chứng nhận bảo vệ mắt giúp hạn chế mỏi mắt khi sử dụng lâu dài.\\u003c/p\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e6. Đa dạng cổng kết nối\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eThinkPad T14 Gen 6 được trang bị hệ thống kết nối đầy đủ cho môi trường làm việc chuyên nghiệp. Máy có 2 cổng USB 3.2, 2 cổng Thunderbolt 4 hỗ trợ DisplayPort và Power Delivery, 1 cổng HDMI cho trình chiếu, 1 cổng LAN 1Gbps và jack combo audio. Kết nối không dây tiên tiến với Wi-Fi 7 và Bluetooth 5.4, đảm bảo tốc độ truyền tải dữ liệu nhanh, ổn định.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/7b6a9b7d-cd1f-4569-bafa-67d5e05a9a33/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHệ\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/7b6a9b7d-cd1f-4569-bafa-67d5e05a9a33/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHệ</a> thống cổng kết nối đa dạng phù hợp cho mọi môi trường làm việc\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch3\\u003e\\u003cstrong\\u003e7. Âm thanh rõ ràng, micro thông minh\\u003c/strong\\u003e\\u003c/h3\\u003e\\u003cp\\u003eÂm thanh Dolby Audio mang đến trải nghiệm trong trẻo, âm lượng đủ cho một phòng họp vừa. Loa được thiết kế hướng lên trên, tạo hiệu ứng âm thanh lan tỏa và cân bằng giữa bass, mid và treble giúp giọng nói được tái hiện rõ ràng, không bị lẫn tạp âm. Hệ thống micro kép hỗ trợ công nghệ khử ồn AI, loại bỏ tiếng gõ bàn phím hay tiếng ồn môi trường, đảm bảo hội thoại luôn rõ ràng.\\u003c/p\\u003e\\u003cfigure class=\\\"image\\\"\\u003e\\u003cimg src=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/6b3c2467-3085-4fe5-af0f-7af3e117ae09/image.jpeg\\&quot;\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHệ\">https://storage.googleapis.com/teko-gae.appspot.com/media/image/2025/8/25/6b3c2467-3085-4fe5-af0f-7af3e117ae09/image.jpeg\\\"\\u003e\\u003cfigcaption\\u003e\\u003ci\\u003eHệ</a> thống âm thanh rõ ràng, sống động phù hợp cho hội họp trực tuyến\\u003c/i\\u003e\\u003c/figcaption\\u003e\\u003c/figure\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eIII. So sánh với sản phẩm cùng phân khúc\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cfigure class=\\\"table\\\"\\u003e\\u003ctable style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003ctbody\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eThông số\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eLenovo ThinkPad T14 Gen 6\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003ca href=\\\"<a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://phongvu.vn/laptop-asus-zenbook-14-ux3405ca-pz204ws--s250203201?selectPromotionId=924011\\&quot;\\u003e\\u003cstrong\\u003eAsus\">https://phongvu.vn/laptop-asus-zenbook-14-ux3405ca-pz204ws--s250203201?selectPromotionId=924011\\\"\\u003e\\u003cstrong\\u003eAsus</a> Zenbook 14 UX3405CA-PZ204WS\\u003c/strong\\u003e\\u003c/a\\u003e\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eCPU\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eIntel Core Ultra 7-255H (2.0 GHz - 5.1 GHz / 24MB / 16 nhân, 16 luồng)\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eIntel Core Ultra 9-285H (2.5 GHz - 5.4GHz / 36MB / 24 nhân, 24 luồng)\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eGPU\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eIntel Arc Graphics\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003eIntel Arc Graphics\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eRAM\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e2 x 16GB DDR5 5600MHz ( 2 Khe cắm / Hỗ trợ tối đa 64GB )\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e32GB LPDDR5x onboard (không nâng cấp)\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eSSD\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e512GB NVMe\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e1TB NVMe\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eMàn hình\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e14 inch WUXGA, IPS, 60Hz, 400 nits, 45% NTSC\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e14 inch 3K OLED, 120Hz, 400 nits, 100% DCI-P3\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003ePin\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e52Wh\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e75Wh\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eTrọng lượng\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e1.5kg\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e1.3kg\\u003c/td\\u003e\\u003c/tr\\u003e\\u003ctr\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e\\u003cstrong\\u003eCổng kết nối\\u003c/strong\\u003e\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e2x USB 3.2, 2x Thunderbolt 4, HDMI, LAN, audio combo\\u003c/td\\u003e\\u003ctd style=\\\"border:1px solid #d9d9d9;\\\"\\u003e1x USB 3.2, 2x Thunderbolt 4, HDMI, audio combo\\u003c/td\\u003e\\u003c/tr\\u003e\\u003c/tbody\\u003e\\u003c/table\\u003e\\u003c/figure\\u003e\\u003cp\\u003eTổng quan, Lenovo ThinkPad T14 Gen 6 vượt trội về độ bền, khả năng nâng cấp và bảo mật, phù hợp với môi trường doanh nghiệp và người dùng chuyên nghiệp. Trong khi đó, Asus Zenbook 14 lại nổi bật với màn hình OLED và pin lớn hơn, thích hợp cho người dùng đề cao giải trí đa phương tiện.\\u003c/p\\u003e\\u003ch2\\u003e\\u003cstrong\\u003eIV. Sở hữu ngay Lenovo ThinkPad T14 Gen 6 tại Phong Vũ\\u003c/strong\\u003e\\u003c/h2\\u003e\\u003cp\\u003eLenovo ThinkPad T14 Gen 6 - 21QC0007VA là một cỗ máy làm việc mạnh mẽ, đáng tin cậy dành cho người dùng chuyên nghiệp. Với hiệu năng ấn tượng, thiết kế bền bỉ và các tính năng bảo mật hàng đầu, sản phẩm xứng đáng là người bạn đồng hành trong mọi công việc. Đây là lựa chọn đáng cân nhắc cho những ai cần một chiếc laptop mạnh mẽ, an toàn và ổn định trong môi trường làm việc cường độ cao.\\u0026nbsp;\\u003c/p\\u003e\\u003cp\\u003eTại Phong Vũ, bạn sẽ nhận được chính sách bảo hành chính hãng, hỗ trợ kỹ thuật tận tâm và ưu đãi giá hấp dẫn. Đừng bỏ lỡ cơ hội sở hữu siêu phẩm này, hãy đến ngay hệ thống Phong Vũ trên toàn quốc hoặc đặt hàng online ngay hôm nay!\\u003c/p\\u003e</p>', 'CPU: Intel® Core™ Ultra 7-255H (2.0 GHz - 5.1 GHz/ 24MB/ 16 nhân, 16 luồng)\\u003cbr/\\u003eNPU:  Intel® AI Boost 13 TOPS\\u003cbr/\\u003eVGA: Onboard graphics \\u003cbr/\\u003eRAM:  2 x 16GB 5600MHz DDR5 (Hỗ trợ tối đa 64GB)\\u003cbr/\\u003eỔ cứng: 512GB SSD M.2 NVMe\\u003cbr/\\u003eMàn hình: 14\\\" WUXGA  (1920 x 1200) IPS, 60Hz, Màn hình chống lóa, 400 nits, 45% NTSC\\u003cbr/\\u003eKhác: Bàn phím thường, HD webcam, Dolby Audio, Non-EVO\\u003cbr/\\u003eOS: Free DOS', 'Lenovo', '2025-09-14 00:03:08', '2025-09-14 00:03:08'),
(250809296, 'Máy tính xách tay/ Laptop Asus ROG Zephyrus G16 GU605CX-QR147W (Core Ultra 9-285H) (Xám)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832532/fwuvjv7ta2newbintdsa.webp', 10, 12690000, 3, 12309300, '<p>Đang cập nhật</p>', 'CPU: Intel® Core™ Ultra 9-285H (2.5 GHz - 4.5 GHz/ 36MB/ 24 nhân, 24 luồng)\\u003cbr/\\u003eNPU:  Intel® AI Boost 13 TOPS\\u003cbr/\\u003eVGA: GeForce RTX™ 5090 24GB GDDR7, 3352 AI TOPs\\u003cbr/\\u003eRAM:  64GB Onbard 7467MHz LPDDR5x (Hỗ trợ tối đa 64GB)\\u003cbr/\\u003eỔ cứng: 2TB SSD M.2 NVMe\\u003cbr/\\u003eMàn hình: 16\\\" WQXGA  (2560 x 1600) OLED, 240Hz, Màn hình gương, 500 nits, G-Sync, 100% DCI-P3\\u003cbr/\\u003eKhác: Bàn phím Chiclet với phím Copilot, FHD webcam, Dolby Atmos, Intel AI\\u003cbr/\\u003eOS: Windows 11 Home', 'Asus', '2025-09-13 23:52:41', '2025-09-13 23:52:41'),
(250902473, 'Máy tính xách tay/ Laptop HP OmniBook 7 14-fr0033TU - C1MN2PA (Core Ultra 5-225U) (Bạc)', 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757832852/aqxxfyjaqxzdgo8mc3ez.webp', 13, 25190000, 3, 24434300, '<p>Đang cập nhật</p>', 'CPU: Intel® Core™ Ultra 5-225U (3.8 GHz - 4.8 GHz/ 12MB/ 12 nhân, 14 luồng)\\u003cbr/\\u003eNPU:  Intel® AI Boost, up to 12 TOPS\\u003cbr/\\u003eVGA: Onboard graphics \\u003cbr/\\u003eRAM:  16GB Onboard 7467MHz LPDDR5 (Không nâng cấp được)\\u003cbr/\\u003eỔ cứng: 512GB SSD M.2 NVMe\\u003cbr/\\u003eMàn hình: 14\\\" WUXGA  (1920 x 1200) IPS, Màn hình chống lóa, 300 nits, 62.5% sRGB\\u003cbr/\\u003eKhác: Bàn phím thường, HD webcam, HP Audio Boost, Intel AI\\u003cbr/\\u003eOS: Windows 11 Home + Office Home \\u0026 Student 2024 + Microsoft 365 Basic 1 year Free Onedrive', 'HP', '2025-09-13 23:56:17', '2025-09-13 23:56:17');

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
(33, 250300678, 15, NULL, NULL);

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
(25, 250300678, 14, NULL, NULL);

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
(38, 250300678, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757902749/eyaxtosm4c2qg3ddeeqt.webp', '2025-09-14 19:20:08', '2025-09-14 19:20:08'),
(39, 250300678, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757902750/bkb5i5nhfqghvmsc9ksk.webp', '2025-09-14 19:20:08', '2025-09-14 19:20:08'),
(40, 250300678, 'http://res.cloudinary.com/dh1cat2ri/image/upload/v1757902750/q068bsevtdygl8wgm8pc.webp', '2025-09-14 19:20:08', '2025-09-14 19:20:08');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
