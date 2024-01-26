-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 24, 2024 lúc 12:44 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demo_easycar`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role_value` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `fullname`, `dob`, `address`, `phone`, `email`, `password`, `photo`, `role_value`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Phan Đặng Hoàng Tiến', NULL, NULL, NULL, 'admin@gmail.com', '$2y$12$S8sCEvyqR7AIHW6zYNKdVe4Vh0aHwINmiXk5SiRLdtg06Pv4JeLeO', NULL, 0, 1, NULL, NULL, NULL),
(8, 'user 1', NULL, NULL, NULL, 'user1@gmail.com', '$2y$12$n34mxWFzG6bM8Sqcb9tZW.KB5GYvlosxlPLg49k6fiEK4dr.c0XmS', NULL, 1, 1, NULL, NULL, NULL),
(9, 'user 2', NULL, NULL, NULL, 'user2@gmail.com', '$2y$12$NdfXyhagYWlZJVd2oFFKROmAVi79TNjqK2zO0GkjrVY6efppgFNsa', NULL, 1, 1, NULL, NULL, NULL),
(10, 'user 3', NULL, NULL, NULL, 'user3@gmail.com', '$2y$12$OyL167gi0UpwLZLtqS4OZeVVDh3h0qIXOfqS96KyvY1r8s4jgoHIu', NULL, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ads_banners`
--

CREATE TABLE `ads_banners` (
  `id` int(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(255) NOT NULL,
  `rental_id` int(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `total_amount` float NOT NULL,
  `payment_in_advance` float NOT NULL,
  `paid` float NOT NULL,
  `note` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cars`
--

CREATE TABLE `cars` (
  `id` int(255) NOT NULL,
  `type_id` int(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `year` int(255) NOT NULL,
  `capacity` int(20) NOT NULL,
  `price` float NOT NULL,
  `overview` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_status` tinyint(10) NOT NULL DEFAULT 1,
  `id_ratings` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cars`
--

INSERT INTO `cars` (`id`, `type_id`, `brand`, `name`, `color`, `year`, `capacity`, `price`, `overview`, `thumbnail`, `image`, `created_at`, `updated_at`, `product_status`, `id_ratings`) VALUES
(11, 7, 'BMW', 'GLC', '0', 2020, 80, 5555, '<p>sdsadas</p>', NULL, '1705503565_product-3.jpg', '2024-01-17 07:59:25', '2024-01-17 07:59:25', 1, 0),
(12, 7, 'Audi', 'A18', '0', 2019, 150, 150, '<p>đang h&ecirc;́t hàng</p>', NULL, '1705504308_product-4.jpg', '2024-01-17 08:11:48', '2024-01-17 08:11:48', 0, 0),
(13, 7, 'BMW111', 'GLC', '0', 2019, 150, 66, '<p>ss</p>', NULL, '1705558490_product-7.jpg', '2024-01-17 23:14:50', '2024-01-17 23:14:50', 1, 0),
(14, 7, 'Audi', 'A18', '0', 2020, 80, 5555, '<p>xe mới nè&nbsp;</p>', NULL, '1705560138_xe_2.jpg', '2024-01-17 23:42:18', '2024-01-17 23:42:18', 1, 0),
(15, 7, 'PKL', 'Ducati', '0', 2020, 80, 66, '<p>m&acirc;̃u mới đ&acirc;y</p>', '[\"1705589728_at.product-2.jpg\",\"1705589728_at.product-3.jpg\",\"1705589728_at.product-4.jpg\"]', '1705589728_xe_2.jpg', '2024-01-18 07:55:28', '2024-01-18 07:55:28', 1, 0),
(16, 7, 'Mittsubishi', 'Xpander', 'Yellow', 2022, 80, 5700000, '<p>mới thay đ&ocirc;̉i</p>', '[\"1706089500_at.product-1 (1).jpg\",\"1706089500_at.product-2.jpg\",\"1706089500_at.product-3.jpg\",\"1706089500_at.product-4.jpg\",\"1706089500_at.product-5.jpg\"]', '1706089775_product-3.jpg', '2024-01-24 02:49:35', '2024-01-24 02:49:35', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `car_type`
--

CREATE TABLE `car_type` (
  `id` int(255) NOT NULL,
  `id_type` tinyint(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image_type` varchar(255) NOT NULL,
  `type_status` tinyint(10) NOT NULL DEFAULT 0,
  `create_date` timestamp NULL DEFAULT NULL,
  `create_up` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `car_type`
--

INSERT INTO `car_type` (`id`, `id_type`, `name`, `description`, `image_type`, `type_status`, `create_date`, `create_up`) VALUES
(3, 0, 'Suv Car', 'Suv Car', '1705425308_carousel-2.jpg', 1, '2024-01-16 23:47:08', '2024-01-16 23:47:08'),
(7, 1, 'Xe Xấu', 'quần áo', '1705498378_carousel-2.jpg', 1, '2024-01-17 06:32:58', '2024-01-17 06:32:58'),
(8, 2, 's', 'Jean111111111111', '1705504372_product-4.jpg', 0, '2024-01-17 08:12:52', '2024-01-17 08:12:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status_color` tinyint(10) NOT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `create_up` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(255) NOT NULL,
  `account_id` int(255) NOT NULL,
  `car_id` int(255) NOT NULL,
  `content` text NOT NULL,
  `reply` text NOT NULL,
  `reply_status` int(10) NOT NULL,
  `is_approved` int(10) NOT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(20) NOT NULL,
  `reply_status` int(10) NOT NULL,
  `content` text NOT NULL,
  `reply_content` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_login`
--

CREATE TABLE `history_login` (
  `id` int(255) NOT NULL,
  `account_id` int(255) NOT NULL,
  `login_datetime` datetime NOT NULL,
  `logout_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` int(255) NOT NULL,
  `car_account_id` int(255) NOT NULL,
  `car_product_id` int(255) NOT NULL,
  `stars_rated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `car_account_id`, `car_product_id`, `stars_rated`) VALUES
(1, 8, 15, 4),
(2, 8, 0, 2),
(3, 9, 14, 5),
(4, 9, 15, 4),
(5, 7, 14, 2),
(6, 10, 16, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rental`
--

CREATE TABLE `rental` (
  `id` int(255) NOT NULL,
  `car_id` int(255) NOT NULL,
  `account_id` int(255) NOT NULL,
  `pickup_date` date NOT NULL,
  `return_date` date NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `process_status` int(10) NOT NULL,
  `rental_status` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_account`
--

CREATE TABLE `role_account` (
  `id` int(255) NOT NULL,
  `value` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ads_banners`
--
ALTER TABLE `ads_banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rental_id` (`rental_id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_id_type` (`type_id`);

--
-- Chỉ mục cho bảng `car_type`
--
ALTER TABLE `car_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history_login`
--
ALTER TABLE `history_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_accout_id` (`car_account_id`);

--
-- Chỉ mục cho bảng `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `role_account`
--
ALTER TABLE `role_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `value` (`value`);

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
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `ads_banners`
--
ALTER TABLE `ads_banners`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `car_type`
--
ALTER TABLE `car_type`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `history_login`
--
ALTER TABLE `history_login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `rental`
--
ALTER TABLE `rental`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role_account`
--
ALTER TABLE `role_account`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`rental_id`) REFERENCES `rental` (`id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`);

--
-- Các ràng buộc cho bảng `history_login`
--
ALTER TABLE `history_login`
  ADD CONSTRAINT `history_login_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `fk_accout_id` FOREIGN KEY (`car_account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `rental`
--
ALTER TABLE `rental`
  ADD CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(255) NOT NULL,
  `type_id` int(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `year` int(255) NOT NULL,
  `capacity` int(20) NOT NULL,
  `price` float NOT NULL,
  `overview` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `rating_car` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_status` tinyint(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `type_id`, `brand`, `name`, `color`, `year`, `capacity`, `price`, `overview`, `thumbnail`, `image`, `rating_car`, `created_at`, `updated_at`, `product_status`) VALUES
(11, 7, 'BMW', 'GLC', 'Yellow', 2020, 80, 5555, '<p>sdsadas</p>', NULL, '1705503565_product-3.jpg', NULL, '2024-01-17 07:59:25', '2024-01-17 07:59:25', 1),
(12, 7, 'Audi', 'A18', 'White', 2019, 150, 150, '<p>đang h&ecirc;́t hàng</p>', NULL, '1705504308_product-4.jpg', NULL, '2024-01-17 08:11:48', '2024-01-17 08:11:48', 0),
(13, 7, 'BMW111', 'GLC', 'White', 2019, 150, 66, '<p>ss</p>', NULL, '1705558490_product-7.jpg', NULL, '2024-01-17 23:14:50', '2024-01-17 23:14:50', 1),
(14, 7, 'Audi', 'A18', 'Yellow', 2020, 80, 5555, '<p>xe mới nè&nbsp;</p>', NULL, '1705560138_xe_2.jpg', NULL, '2024-01-17 23:42:18', '2024-01-17 23:42:18', 1),
(15, 7, 'PKL', 'Ducati', 'White', 2020, 80, 66, '<p>m&acirc;̃u mới đ&acirc;y</p>', '[\"1705589728_at.product-2.jpg\",\"1705589728_at.product-3.jpg\",\"1705589728_at.product-4.jpg\"]', '1705589728_xe_2.jpg', NULL, '2024-01-18 07:55:28', '2024-01-18 07:55:28', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_id_type` (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

