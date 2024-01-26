-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2024 at 04:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ggg_gg`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `role_value` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `fullname`, `dob`, `address`, `phone`, `email`, `username`, `password`, `profile_image`, `role_value`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Phan Đặng Hoàng Tiến', NULL, NULL, NULL, 'admin@gmail.com', '', '$2y$12$S8sCEvyqR7AIHW6zYNKdVe4Vh0aHwINmiXk5SiRLdtg06Pv4JeLeO', NULL, 0, 1, NULL, NULL, NULL),
(8, 'user 1', NULL, NULL, NULL, 'user1@gmail.com', '', '$2y$12$n34mxWFzG6bM8Sqcb9tZW.KB5GYvlosxlPLg49k6fiEK4dr.c0XmS', NULL, 2, 1, NULL, NULL, NULL),
(9, 'user 2', NULL, NULL, NULL, 'user2@gmail.com', '', '$2y$12$NdfXyhagYWlZJVd2oFFKROmAVi79TNjqK2zO0GkjrVY6efppgFNsa', NULL, 1, 1, NULL, NULL, NULL),
(10, 'user 3', NULL, NULL, NULL, 'user3@gmail.com', '', '$2y$12$OyL167gi0UpwLZLtqS4OZeVVDh3h0qIXOfqS96KyvY1r8s4jgoHIu', NULL, 1, 1, NULL, NULL, NULL),
(12, 'Test Full Name 2', '2000-01-01', 'HCM', '123456789', 'testuser2@gmail.com', 'testuser2', '$2y$12$P.paP9GQpqU2zhplT52iouggWAYH2ch65x4tekcAWCpvLRXbX/QLO', NULL, 2, 1, NULL, NULL, NULL),
(13, 'Test Full Name 1', '2000-01-01', 'HCM', '123456789', 'testuser1@gmail.com', 'testuser1', '$2y$12$4kvJK3PJ.dlLkOKFb5QaaOpvfH6v5evQqVERdxK.xWAskiCMW.E7a', 'default-profile-image.jpg', 2, 1, NULL, '2024-01-25 12:40:27', '2024-01-25 12:40:27'),
(14, 'Test Admin 1', '2000-01-01', 'HCM', '987654321', 'testadmin1@gmail.com', 'testadmin1', '$2y$12$g.KX6ixSEXQC4Rs53l4mxuO0BcMvABcPGjlm5JqXuZmDdhjFXvyDS', 'default-profile-image.jpg', 0, 1, NULL, '2024-01-25 12:44:12', '2024-01-25 12:44:12'),
(15, 'Test Admin 2', '2000-01-02', 'HCM-HCM', '987654321', 'testadmin2@gmail.com', 'testadmin2', '$2y$12$3DcesRKtjabA6r.wuQWYNe42py.L9MkF0mHyICbLSviyL/cEmC2CO', '1706193455_Hatchback.jpg', 1, 1, NULL, '2024-01-25 13:32:40', '2024-01-25 15:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `ads_banners`
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
-- Table structure for table `bill_detail`
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
-- Table structure for table `blogs`
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
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(255) NOT NULL,
  `type_id` int(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `year` int(255) NOT NULL,
  `seats` int(20) DEFAULT NULL,
  `price` float NOT NULL,
  `overview` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_status` tinyint(10) NOT NULL DEFAULT 1,
  `id_ratings` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `type_id`, `brand`, `name`, `color`, `year`, `seats`, `price`, `overview`, `thumbnail`, `images`, `created_at`, `updated_at`, `product_status`, `id_ratings`) VALUES
(21, 23, 'KIA', 'KIA Sportage', 'Moss green', 2023, 5, 800, '<p><strong>Ngoại thất đẳng cấp:&nbsp;</strong>Mẫu xe&nbsp;ứng dụng th&agrave;nh tố Bold for Nature &ndash; Đậm Chất Tự Nhi&ecirc;n trong triết l&yacute; thiết kế mới. Lấy cảm hứng từ thi&ecirc;n nhi&ecirc;n v&agrave; cuộc sống đương đại, Kia Sportage được nhấn mạnh bằng những đường n&eacute;t t&aacute;o bạo v&agrave; dứt kho&aacute;t, tạo n&ecirc;n một diện mạo đầy mạnh mẽ, hiện đại v&agrave; ấn tượng. Cụm đ&egrave;n định vị LED dạng boomerang đặc trưng ri&ecirc;ng biệt, tạo ấn tượng độc đ&aacute;o.&nbsp;Cụm đ&egrave;n hậu được tạo h&igrave;nh vuốt nhọn c&aacute;ch điệu năng động, mang lại hiệu ứng thị gi&aacute;c v&agrave; nhận diện ấn tượng từ ph&iacute;a sau.<br />\r\n<strong>Nội thất ấn tượng:&nbsp;</strong>Nội thất hiện đại v&agrave; rộng r&atilde;i với nhiều trang bị cao cấp.&nbsp;M&agrave;n h&igrave;nh đa th&ocirc;ng tin 12.3&rdquo; kết nối liền mạch với m&agrave;n h&igrave;nh giải tr&iacute; AVN 12.3&rdquo; gi&uacute;p n&acirc;ng tầm khoang l&aacute;i, mang đến kh&ocirc;ng gian cao cấp, hiện đại v&agrave; đậm chất c&ocirc;ng nghệ.&nbsp;Hệ thống điều h&ograve;a tự động hiện đại c&oacute; thể chuyển đổi linh hoạt th&agrave;nh giao diện điều khiển m&agrave;n h&igrave;nh giải tr&iacute;, thuận tiện hơn cho người d&ugrave;ng.</p>', '1706161788_kia-sportage-1.png', '[\"1706161788_at.kia-sportage-3.jpg\",\"1706161788_at.kia-sportage-2.jpg\",\"1706161788_at.kia-sportage-1.png\"]', '2024-01-25 05:49:48', '2024-01-25 05:49:48', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_type`
--

CREATE TABLE `car_type` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image_type` varchar(255) NOT NULL,
  `type_status` tinyint(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car_type`
--

INSERT INTO `car_type` (`id`, `name`, `description`, `image_type`, `type_status`, `created_at`, `updated_at`) VALUES
(23, 'SUV', 'A sport utility vehicle (SUV) is a car classification that combines elements of road-going passenger cars with features from off-road vehicles, such as raised ground clearance and four-wheel drive.', '1706155581_SUV.jpg', 1, '2024-01-25 04:06:22', '2024-01-25 04:06:22'),
(24, 'Sedan', 'A sedan is a car with a closed body (i.e. a fixed metal roof) with the engine, passengers, and cargo in separate compartments.', '1706155780_Sedan.jpg', 1, '2024-01-25 04:09:40', '2024-01-25 04:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
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
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
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
-- Table structure for table `history_login`
--

CREATE TABLE `history_login` (
  `id` int(255) NOT NULL,
  `account_id` int(255) NOT NULL,
  `login_datetime` datetime NOT NULL,
  `logout_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(255) NOT NULL,
  `account_id` int(255) NOT NULL,
  `car_id` int(255) NOT NULL,
  `stars_rated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `car_id` int(255) NOT NULL,
  `account_id` int(255) NOT NULL,
  `pickup_date` date NOT NULL,
  `return_date` date NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `processing` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`id`, `code`, `car_id`, `account_id`, `pickup_date`, `return_date`, `note`, `processing`, `status`, `created_at`, `updated_at`) VALUES
(5, '1706172138OZ14', 21, 8, '2024-01-29', '2024-01-30', NULL, 3, 1, '2024-01-25 08:42:46', '2024-01-25 08:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `role_account`
--

CREATE TABLE `role_account` (
  `id` int(255) NOT NULL,
  `value` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_account`
--

INSERT INTO `role_account` (`id`, `value`, `name`, `description`) VALUES
(1, 0, 'admin', 'admin can do all functions in admin dashboard'),
(2, 1, 'moderator', 'moderator can do some functions'),
(3, 2, 'user', 'user only interact with front-end');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_banners`
--
ALTER TABLE `ads_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rental_id` (`rental_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_id_type` (`type_id`);

--
-- Indexes for table `car_type`
--
ALTER TABLE `car_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_login`
--
ALTER TABLE `history_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_accout_id` (`account_id`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `role_account`
--
ALTER TABLE `role_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `value` (`value`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ads_banners`
--
ALTER TABLE `ads_banners`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `car_type`
--
ALTER TABLE `car_type`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_login`
--
ALTER TABLE `history_login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_account`
--
ALTER TABLE `role_account`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`rental_id`) REFERENCES `rental` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`);

--
-- Constraints for table `history_login`
--
ALTER TABLE `history_login`
  ADD CONSTRAINT `history_login_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `fk_accout_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rental`
--
ALTER TABLE `rental`
  ADD CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
