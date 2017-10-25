-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2017 at 10:37 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `babyshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `alias`, `photo`, `mota`, `link`, `content`, `status`, `title`, `keyword`, `description`, `com`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, '', NULL, NULL, NULL, '<p>Trang giới thiệu gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n<p>Một v&agrave;i gợi &yacute; cho nội dung trang Giới thiệu:</p>\r\n<div>\r\n<ul>\r\n<li>Bạn l&agrave; ai</li>\r\n<li>Gi&aacute; trị kinh doanh của bạn l&agrave; g&igrave;</li>\r\n<li>Địa chỉ cửa h&agrave;ng</li>\r\n<li>Bạn đ&atilde; kinh doanh trong ng&agrave;nh h&agrave;ng n&agrave;y bao l&acirc;u rồi</li>\r\n<li>Bạn kinh doanh ng&agrave;nh h&agrave;ng online được bao l&acirc;u</li>\r\n<li>Đội ngũ của bạn gồm những ai</li>\r\n<li>Th&ocirc;ng tin li&ecirc;n hệ</li>\r\n<li>Li&ecirc;n kết đến c&aacute;c trang mạng x&atilde; hội (Twitter, Facebook)</li>\r\n</ul>\r\n</div>\r\n<p>Bạn c&oacute; thể chỉnh sửa hoặc xo&aacute; b&agrave;i viết n&agrave;y tại&nbsp;<a href=\"https://default-baby.myharavan.com/admin/page#/detail/1000280974\"><strong>đ&acirc;y</strong></a>&nbsp;hoặc th&ecirc;m những b&agrave;i viết mới trong phần quản l&yacute;&nbsp;<a href=\"https://default-baby.myharavan.com/admin/page#/new\"><strong>Trang nội dung</strong></a>.</p>', 1, 'gioi thieu', 'gioi thieu, thieu gioi', 'gioi thieu về công ty', NULL, '2017-10-24 02:12:59', '2017-10-23 19:12:59');

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`id`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, '1507946485_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN HẢI YẾN</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh Đống Đa</p>', '2017-10-14 02:01:25', '2017-10-13 19:01:25'),
(3, '1507946490_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN Ho&agrave;ng&nbsp;Hải</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh&nbsp;H&agrave; Nội</p>\r\n<p>&nbsp;</p>', '2017-10-14 02:01:30', '2017-10-13 19:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_content`
--

INSERT INTO `banner_content` (`id`, `image`, `link`, `position`, `updated_at`, `created_at`) VALUES
(6, '1508903957_block_home_category1.jpg', NULL, 1, '2017-10-24 20:59:17', '2017-10-24 20:59:17'),
(7, '1508903962_block_home_category2.jpg', NULL, 1, '2017-10-24 20:59:22', '2017-10-24 20:59:22'),
(8, '1508903988_banner-top.jpg', NULL, 1, '2017-10-24 20:59:48', '2017-10-24 20:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '2017-09-20 08:29:24', '2017-09-20 01:29:24'),
(2, 'Tin tức', '2017-10-14 03:36:18', '2017-10-13 20:36:18'),
(3, 'Banner chạy dọc website', '2017-10-13 20:36:32', '2017-10-13 20:36:32'),
(4, 'Chi tiết tin tức', '2017-10-13 20:37:12', '2017-10-13 20:37:12'),
(5, 'Trang chi tiết sản phẩm', '2017-10-16 02:47:30', '2017-10-15 19:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `total` int(11) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `card_code` varchar(250) DEFAULT NULL,
  `payment` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `full_name`, `email`, `phone`, `address`, `province`, `district`, `note`, `status`, `total`, `detail`, `created_at`, `updated_at`, `card_code`, `payment`) VALUES
(1, 'Hoàng Hồng Chương', 'chuonghoanghong@gmail.com', '0987654321', 'Cầu Diễn, Từ Liêm, Hà Nội', '4', NULL, 'sdfs', 1, 15000000, '[{\"product_name\":\"Iphone 5 32GB\",\"product_numb\":\"5\",\"product_price\":3000000,\"product_img\":\"1507862089_shop-item-8.jpg\",\"product_code\":\"tsf3\"}]', '2017-10-25 02:12:25', '2017-10-24 19:12:25', NULL, 1),
(2, 'Hoàng Hồng Chương', 'chuong1194@yahoo.com', '09983292', NULL, NULL, NULL, 'sdfsdf', 0, 22000000, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m iphone 6 32GB\",\"product_numb\":\"6\",\"product_price\":2000000,\"product_img\":\"1508820259_upload_0dd04450f7694280ae3315e24e4256ce_large.jpg\",\"product_code\":null},{\"product_name\":\"HTC M8\",\"product_numb\":\"2\",\"product_price\":5000000,\"product_img\":\"1508820166_upload_f2b057cc8c454700a6cfd54fd6a27fc6_large.jpg\",\"product_code\":null}]', '2017-10-24 18:59:30', '2017-10-24 18:59:30', NULL, 0),
(4, 'Trần Văn A', 'admin@team.vn', '0987654321', 'Cầu Diễn, Từ Liêm, Hà Nội', NULL, NULL, 'sdasd', 3, 4000000, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m iphone 6 32GB\",\"product_numb\":\"2\",\"product_price\":2000000,\"product_img\":\"1508820259_upload_0dd04450f7694280ae3315e24e4256ce_large.jpg\",\"product_code\":null}]', '2017-10-25 02:12:37', '2017-10-24 19:12:37', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `campaign_type` int(2) DEFAULT NULL,
  `campaign_value` int(10) DEFAULT NULL,
  `campaign_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `card_numb` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `campaign_type`, `campaign_value`, `campaign_expired`, `created_at`, `updated_at`, `del_flg`, `card_numb`) VALUES
(1, 'Chào mừng giáng sinh', 1, 100000, '2017-09-30', '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0, 7),
(2, 'Chào thu', 2, 10, '2017-09-30', '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_cards`
--

CREATE TABLE `campaign_cards` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `card_code` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `del_flg` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_cards`
--

INSERT INTO `campaign_cards` (`id`, `campaign_id`, `card_code`, `is_active`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 1, 'hDXoOAI7BpxYJ', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(2, 1, 'FepHYPARhlTbe', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(3, 1, 'bpDe0nb31sZiN', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(4, 1, '0DK0VoB53JeJj', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(5, 1, 'hF3Ad1g7J411w', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(6, 1, '8PyZN6OTyAIwZ', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(7, 1, 'Zqy0atJII1nzS', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(8, 2, '3Qe06mci6qmMc', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(9, 2, 'vUrrWre9EN6iR', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(10, 2, 'IGzmLXBT9pDk5', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(11, 2, 'OXSiH6ooCzJj7', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chinhanh`
--

INSERT INTO `chinhanh` (`id`, `name`, `website`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Văn phòng Hà Nội', 'http://gco.vn/', '(04).32.033.033 - 32.026.026 - - 37.340.201', 'Tầng 2, tòa nhà Handico, Phạm Hùng, Nam Từ Liêm, Hà Nội', '2017-10-11 08:03:21', '2017-10-11 01:03:21'),
(2, 'Văn phòng đại diện', 'http://gco.vn/', '(04) - 38.36 00 88 – Fax: (04) – 38.36 00 88', 'Số 148 Nguyễn Thái Học, Điện Biên, Ba Đình, Hà Nội', '2017-10-11 08:03:26', '2017-10-11 01:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `content` text CHARACTER SET latin1,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `content`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Hoàng Hồng Chương', 'chuong1194@yahoo.com', NULL, 'dfs', 1, '2017-10-23 19:48:09', '2017-10-23 19:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(250) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `district_name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 4, '2017-09-24 18:03:47', '2017-09-24 18:03:47'),
(2, 'Từ Liêm', 4, '2017-09-24 18:04:29', '2017-09-24 18:04:29'),
(3, 'Hoàn Kiếm', 4, '2017-09-24 18:04:40', '2017-09-24 18:04:40'),
(4, 'Cầu giấy', 4, '2017-09-25 00:14:58', '2017-09-25 00:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `name`, `alias`, `photo`, `status`, `image_path`, `alt`, `stt`, `created_at`, `updated_at`) VALUES
(1, 16, NULL, NULL, '1502966468_noithatnhaodep4.png', 1, NULL, NULL, 0, '2017-08-17 10:41:08', '0000-00-00 00:00:00'),
(38, 10, NULL, NULL, '1508820503_s15_grande.jpg', 1, NULL, NULL, 0, '2017-10-24 04:48:23', '2017-10-24 04:48:23'),
(37, 3, NULL, NULL, '1508820445_s13_grande.gif', 1, NULL, NULL, 0, '2017-10-24 04:47:25', '2017-10-24 04:47:25'),
(40, 8, NULL, NULL, '1508820555_upload_4a649361ca15483b908c96246915f175_large.jpg', 1, NULL, NULL, 0, '2017-10-24 04:49:15', '2017-10-24 04:49:15'),
(49, 4, NULL, NULL, '1508904849_s14_grande.jpg', 1, NULL, NULL, 0, '2017-10-25 04:14:09', '2017-10-25 04:14:09'),
(50, 7, NULL, NULL, '1508904876_upload_3e7375be77c045c697b832dc04d83acc_large.jpg', 1, NULL, NULL, 0, '2017-10-25 04:14:36', '2017-10-25 04:14:36'),
(51, 6, NULL, NULL, '1508914601_upload_1a40f10151d041e3a934b15808a97249_master.jpg', 1, NULL, NULL, 0, '2017-10-25 06:56:41', '2017-10-25 06:56:41'),
(41, 2, NULL, NULL, '1508833231_upload_672c44d63b054b43a5f13d115d00b7b3_large.jpg', 1, NULL, NULL, 0, '2017-10-24 08:20:31', '2017-10-24 08:20:31'),
(39, 9, NULL, NULL, '1508820533_upload_d7c13133a57442c2b89aef58a065faa7_small.jpg', 1, NULL, NULL, 0, '2017-10-24 04:48:53', '2017-10-24 04:48:53'),
(31, 19, NULL, NULL, '1508820113_upload_f4d6260f9c484471ad30d72b2fd83770_large.jpg', 1, NULL, NULL, 0, '2017-10-24 04:41:53', '2017-10-24 04:41:53'),
(32, 18, NULL, NULL, '1508820166_upload_ec9e16203b47424a9a23e50fc8f635fc_large.jpg', 1, NULL, NULL, 0, '2017-10-24 04:42:46', '2017-10-24 04:42:46'),
(33, 17, NULL, NULL, '1508820232_upload_8b188104973f48069b553981cc9ec8a7_large.jpg', 1, NULL, NULL, 0, '2017-10-24 04:43:52', '2017-10-24 04:43:52'),
(44, 14, NULL, NULL, '1508835497_upload_5497d21a25894f40801e62c4a8f5db8d_large.jpg', 1, NULL, NULL, 0, '2017-10-24 08:58:17', '2017-10-24 08:58:17'),
(35, 13, NULL, NULL, '1508820314_s11_grande.jpg', 1, NULL, NULL, 0, '2017-10-24 04:45:14', '2017-10-24 04:45:14'),
(36, 11, NULL, NULL, '1508820394_s13_grande.gif', 1, NULL, NULL, 0, '2017-10-24 04:46:34', '2017-10-24 04:46:34'),
(45, 14, NULL, NULL, '1508835519_upload_2f6808d9cef247a4820a52b5a90b9966_small.jpg', 1, NULL, NULL, 0, '2017-10-24 08:58:39', '2017-10-24 08:58:39'),
(43, 14, NULL, NULL, '1508835441_upload_1e458a04950e4df28ee4546f2eecfeae_small.jpg', 1, NULL, NULL, 0, '2017-10-24 08:57:21', '2017-10-24 08:57:21'),
(46, 1, NULL, NULL, '1508898135_upload_3e7375be77c045c697b832dc04d83acc_large.jpg', 1, NULL, NULL, 0, '2017-10-25 02:22:15', '2017-10-25 02:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(4, 5, 'Slider 1', NULL, '1503972273_banner.png', NULL, NULL, 1, 0, 'slider', 1, '2017-08-29 02:04:33', '2017-08-28 19:04:33'),
(5, 5, 'Slider 2', 'http://gco.vn/', '1503972281_banner.png', NULL, NULL, 1, 0, 'slider', 2, '2017-08-29 02:04:41', '2017-08-28 19:04:41'),
(8, 5, 'Chị Thanh Lam', NULL, '1504774299_relation-3.png', NULL, NULL, 1, 0, 'cam-nhan', 1, '2017-09-07 08:51:40', '2017-09-07 01:51:40'),
(9, 5, 'Chị Lê Thu Thủy', 'http://gco.vn/', '1504774309_relation-4.png', NULL, NULL, 1, 0, 'cam-nhan', 2, '2017-09-07 08:51:49', '2017-09-07 01:51:49'),
(10, 5, 'Chị Khánh Ngọc', NULL, '1504774321_relation-1.png', NULL, NULL, 1, 0, 'cam-nhan', 3, '2017-09-07 08:52:01', '2017-09-07 01:52:01'),
(11, 5, 'Anh Tuấn Lâm Nhã', NULL, '1504774330_relation-2.png', NULL, NULL, 1, 0, 'cam-nhan', 4, '2017-09-07 08:52:10', '2017-09-07 01:52:10'),
(45, 5, 'right sidebar', NULL, '1505460187_qc.png', NULL, NULL, 1, 0, 'chuyen-muc', 1, '2017-09-15 00:23:07', '2017-09-15 00:23:07'),
(16, 5, 'Chi nhánh Hà Nội', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782745_bv3.jpg', 'Số 65 Cửa Bắc, Phường Trúc Bạch, Quận Ba Đình', '<p>X&atilde; Trưng Trắc, Huyện Văn L&acirc;m, Tỉnh Hưng Y&ecirc;n&nbsp;<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;<br />Email: chauhungjsc@hn.vnn.vn</p>', 1, 0, 'chi-nhanh', 1, '2017-09-05 09:34:50', '2017-09-05 02:34:50'),
(17, 5, 'Chi nhánh HCM', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782773_bv1.jpg', '85 Nguyễn Thị Thập(Khu dân cư Himlam, Phường Tân Hưng) Quận 7', '<p>144 Khuất Duy Tiến, P. Nh&acirc;n Ch&iacute;nh, Q. Thanh Xu&acirc;n, HN<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;</p>', 1, 0, 'chi-nhanh', 2, '2017-09-05 09:35:59', '2017-09-05 02:35:59'),
(25, 5, 'Đối tác 1', 'http://gco.vn/', '1503974583_dt3.png', NULL, NULL, 1, 0, 'doi-tac', 1, '2017-08-28 19:43:03', '2017-08-28 19:43:03'),
(26, 5, 'Đối tác 2', NULL, '1503974601_dt2.png', NULL, NULL, 1, 0, 'doi-tac', 2, '2017-08-28 19:43:21', '2017-08-28 19:43:21'),
(27, 5, 'Đối tác 3', NULL, '1503974611_dt4.png', NULL, NULL, 1, 0, 'doi-tac', 3, '2017-08-28 19:43:31', '2017-08-28 19:43:31'),
(28, 5, 'Đối tác 4', NULL, '1503974620_dt1.png', NULL, NULL, 1, 0, 'doi-tac', 4, '2017-08-28 19:43:40', '2017-08-28 19:43:40'),
(29, 5, 'Đối tác 5', 'http://gco.vn/', '1503974634_dt5.png', NULL, NULL, 1, 0, 'doi-tac', 5, '2017-08-28 19:43:54', '2017-08-28 19:43:54'),
(35, 5, 'Hình 1', 'http://gco.vn/', '1504230555_1.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2017-08-31 18:49:15', '2017-08-31 18:49:15'),
(36, 5, 'Hình ảnh 2', NULL, '1504230566_2.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2017-08-31 18:49:26', '2017-08-31 18:49:26'),
(38, 5, 'Tiêu chí 1', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 1, '2017-09-05 03:05:01', '2017-09-05 03:05:01'),
(39, 5, 'Tiêu chí 2', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 2, '2017-09-05 03:05:10', '2017-09-05 03:05:10'),
(40, 5, 'Tiêu chí 3', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 3, '2017-09-05 03:05:22', '2017-09-05 03:05:22'),
(41, 5, 'Tiêu chí 4', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 4, '2017-09-05 03:05:31', '2017-09-05 03:05:31'),
(46, 5, 'banner quảng cáo trang tin tức', 'http://gco.vn/', '1505460335_thumb2.png', NULL, NULL, 1, 0, 'chuyen-muc', 2, '2017-09-15 00:25:35', '2017-09-15 00:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `alias`, `photo`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Trang chủ', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 1, '2017-08-24 04:42:40', '2017-08-23 21:42:40'),
(2, 'Giới thiệu', 'gioi-thieu', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 2, '2017-09-01 01:33:58', '2017-08-31 18:33:58'),
(12, 'Sản phẩm', 'san-pham', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 3, '2017-09-01 01:34:21', '2017-08-31 18:34:21'),
(13, 'Tin tức', 'tin-tuc', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 4, '2017-08-24 04:17:41', '2017-08-23 21:17:41'),
(14, 'Liên hệ', 'lien-he', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 5, '2017-08-24 04:17:32', '2017-08-23 21:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `alias`, `photo`, `background`, `mota`, `content`, `status`, `noibat`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 0, 5, 'Tin tức 1', 'tin-tuc-1', '1507711266_news-list-5.jpg', '', NULL, NULL, 1, 1, NULL, NULL, NULL, 'tin-tuc', 1, '2017-10-11 09:51:46', '2017-10-11 02:51:46'),
(2, 0, 5, 'Đèn trang trí phòng khác', 'den-trang-tri-phong-khac', '1507711257_news-list-3.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2017-10-11 08:40:57', '2017-10-11 01:40:57'),
(3, 0, 5, 'Những chiếc smartphone  chụp ảnh đẹp nhất năm 2017', 'nhung-chiec-smartphone-chup-anh-dep-nhat-nam-2017', '1507711099_news-list-1.jpg', '', NULL, NULL, 1, 1, NULL, NULL, NULL, 'tin-tuc', 3, '2017-10-24 01:52:35', '2017-10-23 18:52:35'),
(4, 0, 5, 'Lễ ra mắt sony xperia', 'le-ra-mat-sony-xperia', '1507710912_news-item-4.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 4, '2017-10-11 08:35:12', '2017-10-11 01:35:12'),
(5, 0, 5, 'Lễ ra mắt Iphone 8', 'le-ra-mat-iphone-8', '1507710873_news-item-3.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 5, '2017-10-11 08:34:33', '2017-10-11 01:34:33'),
(6, 0, 5, 'Lễ ra mắt Galaxy s8', 'le-ra-mat-galaxy-s8', '1507710743_news-item-2.jpg', '', NULL, '<p class=\"the-article-summary cms-desc\">Bản S8+ c&oacute; gi&aacute; 20,49 triệu đồng. Như vậy, gi&aacute; b&aacute;n của m&aacute;y thấp hơn 500.000 đồng so với gi&aacute; dự kiến của c&aacute;c nh&agrave; b&aacute;n lẻ.</p>\r\n<div class=\"the-article-body cms-body\">\r\n<p>Sau sự kiện ra mắt ho&agrave;nh tr&aacute;ng cuối th&aacute;ng 3, Samsung Galaxy S8 v&agrave; S8+ sẽ ch&iacute;nh thức cập bến thị trường Việt Nam ng&agrave;y 19/4. Sự kiện được tổ chức tại TP.HCM với một s&acirc;n khấu lớn được gọi l&agrave; \"s&acirc;n khấu v&ocirc; cực\".</p>\r\n<p>M&agrave;n h&igrave;nh v&ocirc; cực (Infinity Display) cũng l&agrave; điểm nhấn đ&aacute;ng ch&uacute; &yacute; nhất tr&ecirc;n sản phẩm mới từ Samsung. Với thiết kế n&agrave;y, h&atilde;ng c&oacute; thể tạo ra những chiếc smartphone m&agrave;n h&igrave;nh si&ecirc;u lớn (lần lượt 5,8 inch v&agrave; 6,2 inch) nhưng vẫn đảm bảo k&iacute;ch thước nhỏ gọn, theo &ocirc;ng L&ecirc; Kh&ocirc;i Nguy&ecirc;n, Gi&aacute;m đốc chiến lược ng&agrave;nh h&agrave;ng Samsung.</p>\r\n<p>Camera của S8 giữ nguy&ecirc;n độ ph&acirc;n giải so với thế hệ trước nhưng được tinh chỉnh về phần mềm, cho tốc độ chụp nhanh hơn, hỗ trợ chỉnh sửa tốt hơn. Camera n&agrave;y c&oacute; độ ph&acirc;n giải 12 megapixel, khẩu độ f/1.7. Trong khi đ&oacute;, camera trước của m&aacute;y c&oacute; độ ph&acirc;n giải 8 megapixel, hỗ trợ lấy n&eacute;t tự động.</p>\r\n<p>Galaxy S8 v&agrave; S8+ hỗ trợ chuẩn chống nước IP68, d&ugrave;ng vi xử l&yacute; kiến tr&uacute;c 10 nm. Galaxy S8 c&oacute; gi&aacute; b&aacute;n 18,49 triệu đồng, S8+ gi&aacute; 20,49 triệu đồng với 3 m&agrave;u gồm đen huyền b&iacute;, v&agrave;ng hổ ph&aacute;ch, xanh san h&ocirc;. M&aacute;y l&ecirc;n kệ từ ng&agrave;y 5/5.</p>\r\n<p>Dưới đ&acirc;y l&agrave; diễn biến sự kiện:</p>\r\n<div id=\"livestream-2319\" class=\"\" data-choice=\"featured\">\r\n<div class=\"controller\"><a class=\"btnFeatured tooltipstered active\" href=\"https://news.zing.vn/galaxy-s8-ra-mat-tai-viet-nam-voi-gia-18-49-trieu-len-ke-ngay-55-post739065.html#featured\" data-choice=\"featured\"><strong>13</strong></a><a class=\"btnImage tooltipstered\" href=\"https://news.zing.vn/galaxy-s8-ra-mat-tai-viet-nam-voi-gia-18-49-trieu-len-ke-ngay-55-post739065.html#image\" data-choice=\"image\"><strong>18</strong></a><a class=\"btnVideo tooltipstered\" href=\"https://news.zing.vn/galaxy-s8-ra-mat-tai-viet-nam-voi-gia-18-49-trieu-len-ke-ngay-55-post739065.html#video\" data-choice=\"video\"><strong>1</strong></a><a class=\"btnSocial tooltipstered\" href=\"https://news.zing.vn/galaxy-s8-ra-mat-tai-viet-nam-voi-gia-18-49-trieu-len-ke-ngay-55-post739065.html#video\" data-choice=\"social\"><strong>3</strong></a></div>\r\n<div class=\"message ending\"><strong>Sự kiện đ&atilde; kết th&uacute;c.</strong>&nbsp;C&aacute;c nội dung quan trọng được t&oacute;m tắt b&ecirc;n dưới. Nhấn v&agrave;o c&aacute;c lựa chọn để xem đầy đủ.</div>\r\n<ul class=\"events\">\r\n<li id=\"112964\" class=\"comment featured picture\">\r\n<div class=\"event\">\r\n<div class=\"event-content\"><time datetime=\"2017-04-19 14:21+0700\">14:21 19/04</time>\r\n<p>H&agrave;ng trăm kh&aacute;ch mời v&agrave; người nổi tiếng c&oacute; mặt b&ecirc;n ngo&agrave;i kh&aacute;n ph&ograve;ng ở Gem Center chuẩn bị cho sự kiện ra mắt Galaxy S8. Đ&acirc;y l&agrave; lễ ra mắt lớn nhất của Samsung trong nhiều năm trở lại đ&acirc;y. Họ mời gần 100 người nổi tiếng c&ugrave;ng h&agrave;ng trăm ph&oacute;ng vi&ecirc;n, đối t&aacute;c b&aacute;n lẻ tham gia sự kiện.</p>\r\n<table class=\"picture\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"pic\"><img src=\"https://znews-photo-td.zadn.vn/w660/Uploaded/mzdyv/2017_04_19/57Samsung_Galaxy_S8_VietNam_zing.JPG\" alt=\"Galaxy S8 ra mat tai Viet Nam voi gia 18,49 trieu, len ke ngay 5/5 hinh anh 1\" width=\"1620\" height=\"1080\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"picture\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"pic\"><img src=\"https://znews-photo-td.zadn.vn/w660/Uploaded/mzdyv/2017_04_19/65Samsung_Galaxy_S8_VietNam_zing.JPG\" alt=\"Galaxy S8 ra mat tai Viet Nam voi gia 18,49 trieu, len ke ngay 5/5 hinh anh 2\" width=\"1620\" height=\"1080\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</li>\r\n<li id=\"112966\" class=\"comment featured\">\r\n<div class=\"event\">\r\n<div class=\"event-content\"><time datetime=\"2017-04-19 14:24+0700\">14:24 19/04</time>\r\n<p>Bộ đ&ocirc;i Galaxy S8 v&agrave; S8+ ch&iacute;nh thức ra mắt thị trường quốc tế ng&agrave;y 29/3. Điểm nổi bật của sản phẩm ch&iacute;nh l&agrave; m&agrave;n h&igrave;nh v&ocirc; cực (Infinity Display) với thiết kế tr&agrave;n viền. Model n&agrave;y cũng trang bị cấu h&igrave;nh mạnh mẽ nhất hiện nay c&ugrave;ng camera cải tiến so với thế hệ trước.</p>\r\n</div>\r\n</div>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>', 1, 0, NULL, NULL, NULL, 'tin-tuc', 6, '2017-10-13 06:48:57', '2017-10-12 23:48:57'),
(7, 0, 5, 'Hướng dẫn tập chống đẩy cho nữ giúp tăng vòng 1 và săn chắc cơ thể', 'huong-dan-tap-chong-day-cho-nu-giup-tang-vong-1-va-san-chac-co-the', '1507710693_news-item-1.jpg', '', 'Với nữ giới, tập chống đẩy không chỉ giúp kích thích tăng vòng 1 mà còn làm săn chắc cơ bắp hiệu quả. Sau đây, Thiên Trường Sport xin chia sẻ với bạn các bài tập chống đẩy cho nữ phù. Với nữ giới, tập chống đẩy không chỉ giúp kích thích tăng vòng 1 mà còn làm săn chắc cơ bắp hiệu quả. Sau đây, Thiên Trường Sport xin chia sẻ với bạn các bài tập chống đẩy cho nữ phù.', '<p class=\"general\">Sen l&agrave; lo&agrave;i hoa khiến nhiều phụ nữ y&ecirc;u th&iacute;ch bởi vẻ đẹp thanh cao, nhẹ nh&agrave;ng c&ugrave;ng sắc m&agrave;u trang nh&atilde;. Bạn kh&ocirc;ng cần phải sở hữu một ao vườn rộng r&atilde;i mới c&oacute; thể tự tay trồng lo&agrave;i hoa n&agrave;y. Tr&ecirc;n thị trường hiện nay đ&atilde; phổ biến rất nhiều hạt giống sen mini để bạn thỏa m&atilde;n đam m&ecirc;. Những hạt giống cho ra đời những b&ocirc;ng sen nhỏ hơn k&iacute;ch thước sen th&ocirc;ng thường n&ecirc;n tr&ocirc;ng rất xinh xắn v&agrave; c&oacute; thể trồng ngay trong ph&ograve;ng. Hai thời điểm trồng sen tốt nhất trong năm l&agrave; v&agrave;o vụ h&egrave; thu (th&aacute;ng 5 - th&aacute;ng 7) v&agrave; đ&ocirc;ng xu&acirc;n (th&aacute;ng 12 - th&aacute;ng 1). Ch&iacute;nh v&igrave; thế, m&ugrave;a h&egrave; n&agrave;y, những ai y&ecirc;u trồng hoa c&oacute; thể trải nghiệm với lo&agrave;i hoa xinh đẹp ấy. Đặc biệt hơn nữa, giống sen mini kh&ocirc;ng chỉ g&oacute;i gọn ở m&agrave;u hồng quen thuộc m&agrave; c&ograve;n c&oacute; th&ecirc;m rất nhiều m&agrave;u để bạn phối hợp ch&uacute;ng với nhau nữa đấy.&nbsp;<br />Hai thời điểm trồng sen tốt nhất trong năm l&agrave; v&agrave;o vụ h&egrave; thu (th&aacute;ng 5 - th&aacute;ng 7) v&agrave; đ&ocirc;ng xu&acirc;n (th&aacute;ng 12 - th&aacute;ng 1). Ch&iacute;nh v&igrave; thế, m&ugrave;a h&egrave; n&agrave;y, những ai y&ecirc;u trồng hoa c&oacute; thể trải nghiệm với lo&agrave;i hoa xinh đẹp ấy. Đặc biệt hơn nữa, giống sen mini kh&ocirc;ng chỉ g&oacute;i gọn ở m&agrave;u hồng quen thuộc m&agrave; c&ograve;n c&oacute; th&ecirc;m rất nhiều m&agrave;u để bạn phối hợp ch&uacute;ng với nhau nữa đấy.</p>\r\n<div class=\"row\">\r\n<div class=\"col-md-4\">\r\n<div class=\"handbook-img text-center\"><img title=\"\" src=\"http://localhost/lamp/admin/news/images/handdetail-1.png\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"col-md-8\">\r\n<div class=\"details\">\r\n<p>1. Chuẩn bị:<br /><br />Hạt giống: Những loại hạt giống hoa sen mini hiện được nhập về Việt Nam với rất nhiều m&agrave;u sắc phong ph&uacute; để bạn chọn lựa. Chẳng như c&aacute;c m&agrave;u đơn sắc gồm trắng, xanh l&aacute; c&acirc;y, xanh dương, hồng đậm, hồng phớt, v&agrave;ng, t&iacute;m, cam,&hellip; hoặc mỗi b&ocirc;ng được phối m&agrave;u viền nhẹ nh&agrave;ng. Gi&aacute; th&agrave;nh mỗi t&uacute;i (5 hạt giống m&agrave;u ngẫu nhi&ecirc;n) c&oacute; gi&aacute; khoảng 50.000 đồng, gi&aacute; sẽ giảm nếu bạn mua số lượng lớn.<br />Nơi trồng: Để trồng sen mini, ch&uacute;ng ta cần t&igrave;m mua&nbsp;<br />Hạt giống: Những loại hạt giống hoa sen mini hiện được nhập về Việt Nam với rất nhiều m&agrave;u sắc phong ph&uacute; để bạn chọn lựa. Chẳng như c&aacute;c m&agrave;u đơn sắc gồm trắng, xanh l&aacute; c&acirc;y, xanh dương, hồng đậm, hồng phớt, v&agrave;ng, t&iacute;m, cam,&hellip; hoặc mỗi b&ocirc;ng được phối m&agrave;u viền nhẹ nh&agrave;ng. Gi&aacute; th&agrave;nh mỗi t&uacute;i (5 hạt giống m&agrave;u ngẫu nhi&ecirc;n) c&oacute; gi&aacute; khoảng 50.000 đồng, gi&aacute; sẽ giảm nếu bạn mua số lượng lớn.<br />Nơi trồng: Để trồng sen mini, ch&uacute;ng ta cần t&igrave;m mua hoặc tận dụng những chiếc chum, vại, chậu gốm, chậu thủy tinh,&hellip; c&oacute; k&iacute;ch thước miệng rộng, đủ kh&ocirc;ng gian thuận lợi để c&acirc;y đẻ nh&aacute;nh v&agrave; ph&aacute;t triển. N&ecirc;n chọn loại bằng gốm sứ để tăng khả năng hấp thụ nhiệt. Những ai muốn trồng trong chậu thủy tinh (loại nu&ocirc;i c&aacute;) để ngắm hoa v&agrave; l&aacute; cũng được.<br /><br />Đất trồng v&agrave; ph&acirc;n b&oacute;n: L&yacute; tưởng hơn cả l&agrave; đất s&eacute;t pha với đất c&aacute;t b&ugrave;n theo tỷ lệ 2:1 hoặc lấy b&ugrave;n trực tiếp từ đầm lầy hoặc ruộng. Sử dụng ph&acirc;n NPK với liều lượng th&iacute;ch hợp để chăm b&oacute;n c&acirc;y.hoặc tận dụng những chiếc chum, vại, chậu gốm, chậu thủy tinh,&hellip; c&oacute; k&iacute;ch thước miệng rộng, đủ kh&ocirc;ng gian thuận lợi để c&acirc;y đẻ nh&aacute;nh v&agrave; ph&aacute;t triển. N&ecirc;n chọn loại bằng gốm sứ để tăng khả năng hấp thụ nhiệt. Những ai muốn trồng trong chậu thủy tinh (loại nu&ocirc;i c&aacute;) để ngắm hoa v&agrave; l&aacute; cũng được.<br />Đất trồng v&agrave; ph&acirc;n b&oacute;n: L&yacute; tưởng hơn cả l&agrave; đất s&eacute;t pha với đất c&aacute;t b&ugrave;n theo tỷ lệ 2:1 hoặc lấy b&ugrave;n trực tiếp từ đầm lầy hoặc ruộng. Sử dụng ph&acirc;n NPK với liều lượng th&iacute;ch hợp để chăm b&oacute;n c&acirc;y.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-md-8\">\r\n<div class=\"details\">\r\n<p>2. C&aacute;ch trồng:<br /><br />Hạt sen khi chưa ng&acirc;m để gieo th&igrave; vẫn ở trạng th&aacute;i kh&ocirc;, vỏ d&agrave;y. V&igrave; thế bạn n&ecirc;n sử dụng một tấm giấy nh&aacute;m hoặc dụng cụ giũa để m&agrave;i m&agrave;i m&ograve;n một b&ecirc;n của hạt cho đến khi phần thịt b&ecirc;n trong dần lộ ra. Thao t&aacute;c n&agrave;y sẽ gi&uacute;p hạt dễ nảy mầm hơn, giảm khả năng thối rữa.<br /><br />Tiếp đến, ng&acirc;m hạt giống trong cốc khoảng từ 3 - 5 ng&agrave;y, hạt sẽ bắt đầu mềm v&agrave; nở ra. Nước ng&acirc;m phải thay mỗi ng&agrave;y cho đến khi hạt nảy mầm, những hạt hỏng sẽ nổi l&ecirc;n mặt nước. D&ugrave;ng dao cắt một ch&uacute;t ở lớp vỏ cứng b&ecirc;n ngo&agrave;i như trong h&igrave;nh rồi tiếp tục ng&acirc;m cho đến khi hạt nở, nh&uacute; mầm.<br />Những hạt giống chắc khỏe sẽ xuất hiện mầm xanh non nh&uacute; ra. Bạn vẫn tiếp tục thay nước, thao t&aacute;c nhẹ nh&agrave;ng. Mầm của hạt sen sau khoảng 2 tuần ng&acirc;m sẽ c&oacute; k&iacute;ch thước khoảng 5 - 7 cm. Khi mầm con đạt chiều d&agrave;i khoảng 12 &ndash; 15 cm (tầm 20 ng&agrave;y) l&agrave; l&uacute;c ch&uacute;ng được chuyển sang &ldquo;nơi ở&rdquo; mới. Bạn đổ đất b&ugrave;n đ&atilde; chuẩn bị v&agrave;o chum/ vại/ chậu đ&atilde; chuẩn bị sẵn. Sau đ&oacute; đổ lớp nước b&ecirc;n tr&ecirc;n, cao hơn lượng đất khoảng 10 cm.<br />Hạt giống: Những loại hạt giống hoa sen mini hiện được nhập về Việt Nam với rất nhiều m&agrave;u sắc phong ph&uacute; để bạn chọn lựa. Chẳng như c&aacute;c m&agrave;u đơn sắc gồm trắng, xanh l&aacute; c&acirc;y, xanh dương, hồng đậm, hồng phớt, v&agrave;ng, t&iacute;m, cam,&hellip; hoặc mỗi b&ocirc;ng được phối m&agrave;u viền nhẹ nh&agrave;ng. Gi&aacute; th&agrave;nh mỗi t&uacute;i (5 hạt giống m&agrave;u ngẫu nhi&ecirc;n) c&oacute; gi&aacute; khoảng 50.000 đồng, gi&aacute; sẽ giảm nếu bạn mua số lượng lớn.<br />Nơi trồng: Để trồng sen mini, ch&uacute;ng ta cần t&igrave;m mua hoặc tận dụng những chiếc chum, vại, chậu gốm, chậu thủy tinh,&hellip; c&oacute; k&iacute;ch thước miệng rộng, đủ kh&ocirc;ng gian thuận lợi để c&acirc;y đẻ nh&aacute;nh v&agrave; ph&aacute;t triển. N&ecirc;n chọn loại bằng gốm sứ để tăng khả năng hấp thụ nhiệt. Những ai muốn trồng trong chậu thủy tinh (loại nu&ocirc;i c&aacute;) để ngắm hoa v&agrave; l&aacute; cũng được.<br />Đất trồng v&agrave; ph&acirc;n b&oacute;n: L&yacute; tưởng hơn cả l&agrave; đất s&eacute;t pha với đất c&aacute;t b&ugrave;n theo tỷ lệ 2:1 hoặc lấy b&ugrave;n trực tiếp từ đầm lầy hoặc ruộng. Sử dụng ph&acirc;n NPK với liều lượng th&iacute;ch hợp để chăm b&oacute;n c&acirc;y.</p>\r\n</div>\r\n</div>\r\n</div>', 1, 1, NULL, NULL, NULL, 'tin-tuc', 7, '2017-10-11 09:51:48', '2017-10-11 02:51:48'),
(8, 0, 5, 'Tin tuyển dụng 1', 'tin-tuyen-dung-1', '1507947364_home-item-1.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tuyen-dung', 1, '2017-10-14 02:20:41', '2017-10-13 19:16:04'),
(9, 0, 5, 'tin tuyen dụng hot', 'tin-tuyen-dung-hot', '1507947598_home-cate-2.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tuyen-dung', 2, '2017-10-14 02:20:47', '2017-10-13 19:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `user_id`, `name`, `link`, `email`, `phone`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(45, 0, NULL, NULL, 'chuonghoanghong@gmail.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2017-10-24 19:52:53', '2017-10-24 19:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `alias`, `photo`, `mota`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `background`, `updated_at`) VALUES
(3, 'Tin nội bộ', 'tin-noi-bo', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2017-08-07 21:52:19', NULL, '2017-08-08 00:13:28'),
(2, 'Tin thế giới', 'tin-the-gioi', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 1, '2017-08-07 21:36:29', NULL, '2017-08-08 00:13:31'),
(13, 'Cách thức thanh toán', 'cach-thuc-thanh-toan', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 1, '2017-08-29 04:05:32', NULL, '2017-08-28 21:05:32'),
(14, 'Quy định mua hàng', 'quy-dinh-mua-hang', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 2, '2017-08-29 04:05:44', NULL, '2017-08-28 21:05:44'),
(20, 'Không gian phòng ngủ', 'khong-gian-phong-ngu', '1504077747_1_19.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 1, '2017-08-30 07:48:00', NULL, '2017-08-30 00:48:00'),
(21, 'Không gian phòng khách', 'khong-gian-phong-khach', '1504078021_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 2, '2017-08-30 07:48:07', NULL, '2017-08-30 00:48:07'),
(22, 'Phòng bếp hiện đại', 'phong-bep-hien-dai', '1504078039_1_21.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 3, '2017-08-30 07:48:12', NULL, '2017-08-30 00:48:12'),
(23, 'Phòng ngủ châu âu', 'phong-ngu-chau-au', '1504078067_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 4, '2017-08-30 07:48:18', NULL, '2017-08-30 00:48:18'),
(31, 'Sản phẩm khác', 'san-pham-khac', '1505465773_sv3.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 3, '2017-09-15 09:49:21', '1505468961_dv4.png', '2017-09-15 02:49:21'),
(30, 'Canxi nano', 'canxi-nano', '1505465758_sv2.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 2, '2017-09-15 09:48:41', '1505468921_dv3.png', '2017-09-15 02:48:41'),
(29, 'Sản phẩm bảo vệ sức khỏe', 'san-pham-bao-ve-suc-khoe', '1505465729_sv1.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 1, '2017-09-16 04:14:59', '1505468944_dv4.png', '2017-09-15 21:14:59'),
(33, 'Sản phẩm mới nhập', 'san-pham-moi-nhap', '', NULL, 0, 0, 0, NULL, NULL, NULL, 'dich-vu', 4, '2017-09-18 01:49:43', '', '2017-09-17 18:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `hoten` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` text COLLATE utf8_unicode_ci NOT NULL,
  `totalprice` int(11) NOT NULL,
  `tonggia` int(11) NOT NULL,
  `donhang` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `tinhtrang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `code` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `price_old` int(11) DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `thuonghieu` text COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `baohanh` text COLLATE utf8_unicode_ci,
  `properties` text CHARACTER SET utf8,
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `quatang` text COLLATE utf8_unicode_ci,
  `huongdan` text COLLATE utf8_unicode_ci,
  `vanchuyen` text COLLATE utf8_unicode_ci,
  `noibat` int(11) NOT NULL DEFAULT '0',
  `spbc` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `code`, `stt`, `name`, `alias`, `photo`, `price`, `sale`, `price_old`, `mota`, `content`, `thuonghieu`, `tinhtrang`, `baohanh`, `properties`, `model`, `namsanxuat`, `quatang`, `huongdan`, `vanchuyen`, `noibat`, `spbc`, `status`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 5, 13, 'abcd', 1, 'Iphone 5 16GB', 'iphone-5-16gb', '1508898135_upload_5ec366ba30234f3981325400727fa6a6_large.jpg', 150000, 0, 200000, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-10-25 07:30:22', '2017-10-25 00:30:22'),
(2, 5, 13, 'tsf3', 2, 'Iphone 5 32GB', 'iphone-5-32gb', '1508833231_upload_2124fa400eed42239c2cf69a2c6a5d64_large.jpg', 3000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-10-24 08:20:31', '2017-10-24 01:20:31'),
(3, 5, 13, NULL, 3, 'Iphone 5 new', 'iphone-5-new', '1508820445_s14_grande.jpg', 5000000, 0, 0, NULL, NULL, NULL, 0, '2 năm', '', NULL, NULL, '<ul class=\"vk-list vk-list-icon\">\r\n<li>Trong hộp c&oacute;: Sạc, Tai nghe, S&aacute;ch hướng dẫn, Jack chuyển tai nghe 3.5mm, C&aacute;p, C&acirc;y lấy sim</li>\r\n<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, sạc 12 th&aacute;ng, tai nghe 12 th&aacute;ng</li>\r\n</ul>', NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-10-24 04:47:25', '2017-10-23 21:47:25'),
(4, 5, 2, 'sky2', 4, 'Điện thoại sky', 'dien-thoai-sky', '1508904849_s12_grande.jpg', 3000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-10-25 04:14:09', '2017-10-24 21:14:09'),
(6, 5, 2, '4JG4JN', 6, 'Điện thoại sky 2', 'dien-thoai-sky-2', '1508914601_upload_0fcd054a19bd49b9812d27e9c0d516e7_large.jpg', 1000000, 0, 0, NULL, '<p>Đ&egrave;n ch&ugrave;m trang tr&iacute; tạo kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch ấm c&uacute;ng v&agrave; sang trọng</p>\r\n<p>nh s&aacute;ng của đ&egrave;n ch&ugrave;m ph&ograve;ng kh&aacute;ch cực kỳ quan trọng trong việc trang tr&iacute; nội thất căn ph&ograve;ng. Ngo&agrave;i những c&ocirc;ng năng trang tr&iacute; chiếu s&aacute;ng th&ocirc;ng thường ch&uacute;ng c&ograve;n g&oacute;p phần t&ocirc;n l&ecirc;n vẻ đẹp sang trọng, ấm c&uacute;ng cho căn ph&ograve;ng kh&aacute;ch của bạn.</p>\r\n<p>Để tạo ra một ko gian ấm &aacute;p với &aacute;nh nguồn &aacute;nh s&aacute;ng dịu nhẹ, lan tỏa bạn cần treo một chiếc đ&egrave;n ch&ugrave;m trang tr&iacute; đảm bảo cường độ &aacute;nh s&aacute;ng vừa phải, nguồn &aacute;nh s&aacute;ng t&ocirc;ng v&agrave;ng sẽ mang lại một cảm gi&aacute;c ấm &aacute;p cho căn ph&ograve;ng v&agrave; đỡ tr&oacute;i mắt . Ngo&agrave;i ra treo một đ&egrave;n ch&ugrave;m pha l&ecirc; lớn tr&ecirc;n trần của ph&ograve;ng ăn cũng rất tốt v&igrave; n&oacute; tượng trưng cho năng lượng dương, rất tốt cho c&aacute;c bữa ăn.</p>\r\n<p>Lựa chọn đ&egrave;n trang tr&iacute; ph&ugrave; hợp cho ph&ograve;ng kh&aacute;ch Đ&egrave;n ch&ugrave;m ph&ograve;ng kh&aacute;ch phải tạo được cho căn ph&ograve;ng kh&ocirc;ng gian ấm c&uacute;ng v&agrave; sang trọng. C&oacute; thể bố tr&iacute; cho ph&ograve;ng kh&aacute;ch những ngọn đ&egrave;n ch&ugrave;m đẹp lấp l&aacute;nh sẽ l&agrave;m cho ph&ograve;ng kh&aacute;ch th&ecirc;m lung linh</p>\r\n<p>C&oacute; rất nhiều loại đ&egrave;n trang tr&iacute; nội thất như đ&egrave;n ch&ugrave;m, đ&egrave;n trần, đ&egrave;n b&agrave;n, ... mỗi loại c&oacute; một ưu điểm v&agrave; c&aacute;ch b&agrave;i tr&iacute; xắp đặt ri&ecirc;ng, v&igrave; k&iacute;ch cỡ mỗi loại kh&aacute;c nhau n&ecirc;n cần phải lụa chọn cho ph&ugrave; hợp với từng kh&ocirc;ng gian</p>\r\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; treo đ&egrave;n ch&ugrave;m trang tr&iacute; ph&ograve;ng kh&aacute;ch cần phải hiểu r&otilde; chức năng, biết lựa chọn đ&egrave;n c&oacute; k&iacute;ch thước ph&ugrave; hợp, ngo&agrave;i việc bạn cần hiểu về đặc điểm từng loại ra th&igrave; đ&egrave;n c&ograve;n phải gắn với kh&ocirc;ng gian kiến tr&uacute;c v&agrave; nội thất.</p>', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-10-25 06:56:41', '2017-10-24 23:56:41'),
(7, 5, 4, NULL, 7, 'Điện thoại sam sung 1', 'dien-thoai-sam-sung-1', '1508904876_upload_4a649361ca15483b908c96246915f175_large.jpg', 1000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-10-25 04:14:36', '2017-10-24 21:14:36'),
(8, 5, 3, NULL, 8, 'Điện thoại sam sung 2', 'dien-thoai-sam-sung-2', '1508820555_upload_3e7375be77c045c697b832dc04d83acc_large.jpg', 2000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-10-24 04:49:15', '2017-10-23 21:49:15'),
(9, 5, 3, NULL, 9, 'Điện thoại sam sung 3', 'dien-thoai-sam-sung-3', '1508820533_upload_dc7544e004304f92950987701c3b9b35_master.jpg', 3000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-10-24 04:48:53', '2017-10-23 21:48:53'),
(10, 5, 15, 'DH 312', 10, 'Xe đẩy Goodbay', 'xe-day-goodbay', '1508820503_s16_grande.jpg', 14000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, '<p class=\"_sale\">Giảm th&ecirc;m 800.000đ khi thanh to&aacute;n trực tuyến bằng MasterCard</p>\r\n<p class=\"_highlight\">* Kh&ocirc;ng &aacute;p dụng khi mua trả g&oacute;p 0% bằng thẻ t&iacute;n dụng HSBC</p>\r\n<p class=\"_highlight\">* 1 đổi 1 trong 1 th&aacute;ng với sản phẩm lỗi</p>', NULL, 0, 0, 1, NULL, NULL, NULL, '2017-10-25 06:53:49', '2017-10-24 23:53:49'),
(11, 5, 13, 'fs4s', 11, 'Iphone 5s 64GB', 'iphone-5s-64gb', '1508820394_s12_grande.jpg', 5000000, 0, 0, NULL, NULL, NULL, 0, NULL, 'Hãng sản xuất: Apple###sdf sf###sdf s sdf###Xuất xứ: Chính hãng', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-10-24 04:46:34', '2017-10-23 21:46:34'),
(13, 5, 14, NULL, 13, 'Iphone 6s 64GB', 'iphone-6s-64gb', '1508820314_s11_grande.jpg', 0, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, '<ul class=\"vk-list vk-list-icon\">\r\n<li>Trong hộp c&oacute;: Sạc, Tai nghe, S&aacute;ch hướng dẫn, Jack chuyển tai nghe 3.5mm, C&aacute;p, C&acirc;y lấy sim</li>\r\n<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: th&acirc;n m&aacute;y 12 th&aacute;ng, sạc 12 th&aacute;ng, tai nghe 12 th&aacute;ng</li>\r\n</ul>', '<p class=\"_sale\">Giảm th&ecirc;m 800.000đ khi thanh to&aacute;n trực tuyến bằng MasterCard</p>\r\n<p class=\"_highlight\">* Kh&ocirc;ng &aacute;p dụng khi mua trả g&oacute;p 0% bằng thẻ t&iacute;n dụng HSBC</p>\r\n<p class=\"_highlight\">* 1 đổi 1 trong 1 th&aacute;ng với sản phẩm lỗi</p>', NULL, 0, 0, 1, NULL, NULL, NULL, '2017-10-24 04:45:14', '2017-10-23 21:45:14'),
(14, 5, 6, NULL, 14, 'Sản phẩm iphone 6 32GB', 'san-pham-iphone-6-32gb', '1508820259_upload_0dd04450f7694280ae3315e24e4256ce_large.jpg', 2000000, 0, 0, NULL, NULL, NULL, 0, NULL, 'man hinh full hd###bo nho 32gb', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-10-24 08:36:42', '2017-10-24 01:36:42'),
(17, 5, 5, NULL, 16, 'Điện thoại HTC M10', 'dien-thoai-htc-m10', '1508820217_upload_cc00af45dbe94e8cb4d19a05f57970f6_large.jpg', 6000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-10-24 04:43:37', '2017-10-23 21:43:37'),
(18, 5, 5, NULL, 17, 'HTC M8', 'htc-m8', '1508820166_upload_f2b057cc8c454700a6cfd54fd6a27fc6_large.jpg', 5000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-10-24 04:42:46', '2017-10-23 21:42:46'),
(19, 5, 5, NULL, 18, 'HTC M7', 'htc-m7', '1508820089_upload_4bb7319a4d4146309d1c6ad256286999_large.jpg', 6500000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-10-24 04:41:29', '2017-10-23 21:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `stt` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `noibat` int(2) DEFAULT '0',
  `status` int(11) NOT NULL,
  `lever` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `alias`, `photo`, `noibat`, `status`, `lever`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Đồ chơi trẻ em', 'do-choi-tre-em', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-24 02:56:26', '2017-10-23 19:56:26'),
(2, 0, 2, 'Đồ sơ sinh cần thiết', 'do-so-sinh-can-thiet', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 19:56:40', '2017-10-23 19:56:40'),
(3, 0, 3, 'Thời trang trẻ em', 'thoi-trang-tre-em', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 19:57:18', '2017-10-23 19:57:18'),
(4, 0, 4, 'Cho bé đi chơi', 'cho-be-di-choi', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 19:57:46', '2017-10-23 19:57:46'),
(5, 0, 5, 'Bé khỏe & an toàn', 'be-khoe-an-toan', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 19:58:06', '2017-10-23 19:58:06'),
(6, 1, 6, 'Đồ  chơi mô hình', 'do-choi-mo-hinh', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 20:33:44', '2017-10-23 20:33:44'),
(7, 1, 7, 'Đồ chơi hướng nghiệp', 'do-choi-huong-nghiep', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 20:36:50', '2017-10-23 20:36:50'),
(8, 1, 8, 'Đồ chơi vận động', 'do-choi-van-dong', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 20:37:05', '2017-10-23 20:37:05'),
(9, 1, 9, 'Đồ chơi cho bé gái', 'do-choi-cho-be-gai', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 20:37:18', '2017-10-23 20:37:18'),
(10, 2, 10, 'Quần áo sơ sinh', 'quan-ao-so-sinh', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 20:37:43', '2017-10-23 20:37:43'),
(11, 2, 11, 'Bộ body cho bé sơ sinh', 'bo-body-cho-be-so-sinh', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 20:38:15', '2017-10-23 20:38:15'),
(12, 2, 12, 'Khăn cho bé sơ sinh', 'khan-cho-be-so-sinh', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 20:41:28', '2017-10-23 20:41:28'),
(13, 2, 13, 'Chăn gối sơ sinh', 'chan-goi-so-sinh', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 20:41:43', '2017-10-23 20:41:43'),
(14, 3, 14, 'Quần áo bé trai', 'quan-ao-be-trai', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 20:42:38', '2017-10-23 20:42:38'),
(15, 3, 15, 'Quần áo váy bé gái', 'quan-ao-vay-be-gai', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 20:42:56', '2017-10-23 20:42:56'),
(16, 3, 16, 'Bộ body trẻ em', 'bo-body-tre-em', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 20:43:05', '2017-10-23 20:43:05'),
(17, 3, 17, 'Phụ kiện thời trang', 'phu-kien-thoi-trang', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-23 20:43:23', '2017-10-23 20:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `province_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `province_name`, `created_at`, `updated_at`) VALUES
(2, 'hai phong', '2017-09-21 07:19:34', '2017-09-21 07:19:34'),
(4, 'Hà Nội', '2017-09-21 21:47:54', '2017-09-21 21:47:54'),
(5, 'Thái Bình', '2017-09-21 21:48:05', '2017-09-21 21:48:17'),
(6, 'Hồ Chí Minh', '2017-09-25 00:14:42', '2017-09-25 00:14:42'),
(7, 'Nam Định', '2017-10-13 20:09:01', '2017-10-13 20:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruitment`
--

INSERT INTO `recruitment` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Công ty Gco', 'trường chinh, thanh xuân, hà nội', '0943249', 'gco@gmail.com', '2017-09-15 04:21:08', '2017-09-14 21:21:08', 1),
(7, 'Hoàng Hồng Chương', 'Hà Nội', '0987654321', 'chuonghoanghong@gmail.com', '2017-09-17 20:31:17', '2017-09-17 20:31:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `facebook` text COLLATE utf8_unicode_ci NOT NULL,
  `twitter` text COLLATE utf8_unicode_ci NOT NULL,
  `google` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `title`, `company`, `website`, `address`, `phone`, `hotline`, `fax`, `email`, `photo`, `favico`, `title_index`, `mota`, `content`, `facebook`, `twitter`, `google`, `youtube`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Baby Shop', 'Baby Shop', 'Baby Shop', 'http://gco.vn/', 'Tầng 8, TOYOTA Thanh Xuân 315 Trường Chinh, Thanh Xuân, Hà Nội', '(04)6 290 8885', NULL, '(04)3 550 1492', 'support@gco.vn', '1508741457_logo.png', '1508741457_logo.png', NULL, NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', 'https://plus.google.com/?hl=vi', 'https://www.youtube.com/', 1, NULL, '© GCO 2017. All rights reserved. Design by duydoan.webdesign@gmail.com.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761617598985!2d105.82076241501875!3d21.00219068601275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac869cd63f89%3A0xa2e71c273579f51b!2zMzE1IFRyxrDhu51uZyBDaGluaA!5e0!3m2!1sen!2s!4v1505443560797\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2017-10-24 03:50:03', '2017-10-23 20:50:03');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(38, 5, 'Sản phẩm demo 12', NULL, '1504839494_gl-2.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 8, '2017-09-08 02:59:48', '2017-09-07 19:59:48'),
(39, 5, 'Sản phẩm demo 13', NULL, '1504839505_gl-1.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 7, '2017-09-08 02:59:41', '2017-09-07 19:59:41'),
(40, 5, 'Sản phẩm demo 14', NULL, '1504839600_gl-3.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 9, '2017-09-07 20:00:00', '2017-09-07 20:00:00'),
(41, 5, 'banner', NULL, '1508752335_slideshow_3.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2017-10-23 09:52:15', '2017-10-23 02:52:15'),
(32, 5, 'Hình 1', NULL, '1504780100_gl-1.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 6, '2017-09-08 02:59:34', '2017-09-07 19:59:34'),
(33, 5, 'Hình 2', NULL, '1504780109_gl-2.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 5, '2017-09-08 02:59:26', '2017-09-07 19:59:26'),
(34, 5, 'Hình 3', NULL, '1504780118_gl-3.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 4, '2017-09-08 02:59:18', '2017-09-07 19:59:18'),
(35, 5, 'Hình 4', NULL, '1504780134_gl-3.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 3, '2017-09-08 02:59:07', '2017-09-07 19:59:07'),
(36, 5, 'Quần jean nam', NULL, '1504780141_gl-1.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 2, '2017-09-08 02:59:00', '2017-09-07 19:59:00'),
(37, 5, 'Sản phẩm demo 1', NULL, '1504780160_gl-2.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 1, '2017-09-08 02:58:54', '2017-09-07 19:58:54'),
(29, 5, 'MIỄN PHÍ VẬN CHUYỂN', NULL, '1504143783_oto.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 1, '2017-08-31 01:44:03', '2017-08-30 18:44:03'),
(30, 5, 'ĐỔI TRẢ TRONG VÒNG 07 NGÀY', NULL, '1504143807_phone.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 2, '2017-08-30 18:43:27', '2017-08-30 18:43:27'),
(31, 5, 'HỖ TRỢ ONLINE 24/7', NULL, '1504143833_watch.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 3, '2017-08-30 18:43:53', '2017-08-30 18:43:53'),
(42, 5, 'New Arrivals', NULL, '1508751709_slideshow_2.jpg', '', 'Bé trai - bé gái', NULL, 1, 0, 'gioi-thieu', 2, '2017-10-23 09:51:25', '2017-10-23 02:51:25'),
(43, 5, 'Thời trang dạo phố', NULL, '1508913711_slideshow_1.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 3, '2017-10-25 06:41:51', '2017-10-24 23:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-06-14 23:42:39', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-06-16 02:51:34', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$Lm3vxVo0UYuWFSzJkpvmwOKecqZm5coQSy1D3QW/Tc8c569RgBNFK', 'Admin', 'gco@gmail.com', '0985431797', '315 Trường chinh, Thanh Xuân, Hà Nội', 1, '5.jpg', 1, 'zCkRF2boomcoF8VVxJkzGLhx18jheiMcFjjETNmCK4Bz5X1aDMD32M4w6Y9e', '2017-10-16 06:40:43', '2017-09-24 19:31:27'),
(6, 'hoangchuong', '$2y$10$hgK6I2IZypbAH4cQhCLGnuworUM5T2MO9R/wEOpYDzh1Igmw0tMES', 'Hoàng Hồng Chương', 'chuonghoanghong@gmail.com', NULL, NULL, 2, NULL, 1, 'JVbavXrhMLNRXMdcGx9MiZGhTwAGqFQmulGcRYwnQWkfYn0ZQu0OtN5o0j7J', '2017-10-13 01:18:31', '2017-10-12 18:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `link` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `link`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nvy3XBg-tmU\" frameborder=\"0\" allowfullscreen></iframe>', '2017-10-15 20:31:58', '2017-10-15 20:34:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
