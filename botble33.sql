-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2018 lúc 04:28 PM
-- Phiên bản máy phục vụ: 10.1.35-MariaDB
-- Phiên bản PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `botble33`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ZLKcLRxzQH9E8XMMWd6NITIH1J8Qdljb', 1, '2017-11-15 06:57:09', '2017-11-15 06:57:09', '2017-11-15 06:57:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `audit_history`
--

CREATE TABLE `audit_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `audit_history`
--

INSERT INTO `audit_history` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-09-29 10:41:48', '2018-09-29 10:41:48'),
(2, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Sang Nguyen', 'info', '2018-09-29 11:00:32', '2018-09-29 11:00:32'),
(3, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-09-29 11:13:26', '2018-09-29 11:13:26'),
(4, 1, 'simple-slider', '{\"_token\":\"Phr36MQ1Gv28TgmPMzP2Zj3ZMEUqKU2du9sOj3tn\",\"name\":\"Home-sliders\",\"key\":\"Home-sliders\",\"description\":\"Home-sliders\",\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Home-sliders', 'info', '2018-09-29 11:30:03', '2018-09-29 11:30:03'),
(5, 1, 'simple-slider-item', '{\"_token\":\"Phr36MQ1Gv28TgmPMzP2Zj3ZMEUqKU2du9sOj3tn\",\"simple_slider_id\":\"1\",\"title\":\"#\",\"link\":\"#\",\"description\":null,\"order\":\"0\",\"image\":\"\\/uploads\\/1\\/539606-175980519199395-1288067975-n.jpg\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, '#', 'info', '2018-09-29 11:30:44', '2018-09-29 11:30:44'),
(6, 1, 'simple-slider-item', '{\"_token\":\"Phr36MQ1Gv28TgmPMzP2Zj3ZMEUqKU2du9sOj3tn\",\"simple_slider_id\":\"1\",\"title\":\"#\",\"link\":\"#\",\"description\":null,\"order\":\"0\",\"image\":\"\\/uploads\\/1\\/472747-239731456157634-237940897-o.jpg\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 2, '#', 'info', '2018-09-29 11:31:01', '2018-09-29 11:31:01'),
(7, 1, 'simple-slider', '{\"_token\":\"Phr36MQ1Gv28TgmPMzP2Zj3ZMEUqKU2du9sOj3tn\",\"name\":\"Home-sliders\",\"key\":\"Home-sliders\",\"description\":\"Home-sliders\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Home-sliders', 'primary', '2018-09-29 11:31:07', '2018-09-29 11:31:07'),
(8, 1, 'simple-slider', '{\"_token\":\"Phr36MQ1Gv28TgmPMzP2Zj3ZMEUqKU2du9sOj3tn\",\"name\":\"Home-sliders\",\"key\":\"Home-slidersh\",\"description\":\"Home-sliders\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Home-sliders', 'primary', '2018-09-29 11:40:29', '2018-09-29 11:40:29'),
(9, 1, 'simple-slider-item', '{\"_token\":\"Phr36MQ1Gv28TgmPMzP2Zj3ZMEUqKU2du9sOj3tn\",\"simple_slider_id\":\"1\",\"title\":\"#\",\"link\":\"#\",\"description\":null,\"order\":\"1\",\"image\":\"\\/uploads\\/1\\/472747-239731456157634-237940897-o.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 2, '#', 'primary', '2018-09-29 11:48:13', '2018-09-29 11:48:13'),
(10, 1, 'member', '{\"_token\":\"Phr36MQ1Gv28TgmPMzP2Zj3ZMEUqKU2du9sOj3tn\",\"name\":\"nhoanhkhoquen\",\"email\":\"nhoanhkhoquen@gmail.com\",\"is_change_password\":\"1\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'nhoanhkhoquen', 'primary', '2018-09-29 12:04:09', '2018-09-29 12:04:09'),
(11, 1, 'member', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 2, 'Quản trị viên', 'danger', '2018-09-29 12:08:52', '2018-09-29 12:08:52'),
(12, 1, 'member', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'nhoanhkhoquen', 'danger', '2018-09-29 12:08:55', '2018-09-29 12:08:55'),
(13, 1, 'member', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'Quản trị viên', 'danger', '2018-09-29 12:10:09', '2018-09-29 12:10:09'),
(14, 1, 'member', '{\"ids\":[\"5\",\"4\"],\"class\":\"Botble\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 5, 'nhoanhkhoquen', 'danger', '2018-09-29 12:21:15', '2018-09-29 12:21:15'),
(15, 1, 'member', '{\"ids\":[\"5\",\"4\"],\"class\":\"Botble\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 4, 'Quản trị viên', 'danger', '2018-09-29 12:21:15', '2018-09-29 12:21:15'),
(16, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-09-30 07:52:11', '2018-09-30 07:52:11'),
(17, 1, 'simple-slider-item', '{\"_token\":\"wdFBGkWZZ5VSB4LVlIYY1R59Fx5vtrTucja7peJ7\",\"simple_slider_id\":\"1\",\"title\":\"#\",\"link\":\"#\",\"description\":null,\"order\":\"0\",\"image\":\"\\/uploads\\/1\\/co-nen-cho-cho-an-cac-loai-thit-song.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, '#', 'primary', '2018-09-30 08:18:17', '2018-09-30 08:18:17'),
(18, 1, 'simple-slider-item', '{\"_token\":\"wdFBGkWZZ5VSB4LVlIYY1R59Fx5vtrTucja7peJ7\",\"simple_slider_id\":\"1\",\"title\":\"#\",\"link\":\"#\",\"description\":null,\"order\":\"1\",\"image\":\"\\/uploads\\/1\\/huong-dan-day-cho-pitbull.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 2, '#', 'primary', '2018-09-30 08:18:29', '2018-09-30 08:18:29'),
(19, 1, 'simple-slider', '{\"_token\":\"wdFBGkWZZ5VSB4LVlIYY1R59Fx5vtrTucja7peJ7\",\"name\":\"Home-sliders\",\"key\":\"Home-slidersh\",\"description\":\"Home-sliders\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Home-sliders', 'primary', '2018-09-30 08:18:46', '2018-09-30 08:18:46'),
(20, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-01 08:29:39', '2018-10-01 08:29:39'),
(21, 1, 'simple-slider-item', '{\"_token\":\"4kvXO5ALNZahTyvPRpy2IYlEnvLe5yhFlHqGg2pC\",\"simple_slider_id\":\"1\",\"title\":\"#\",\"link\":\"#\",\"description\":null,\"order\":\"1\",\"image\":\"\\/uploads\\/1\\/slider111.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 2, '#', 'primary', '2018-10-01 08:31:15', '2018-10-01 08:31:15'),
(22, 1, 'simple-slider-item', '{\"_token\":\"4kvXO5ALNZahTyvPRpy2IYlEnvLe5yhFlHqGg2pC\",\"simple_slider_id\":\"1\",\"title\":\"#\",\"link\":\"#\",\"description\":null,\"order\":\"0\",\"image\":\"\\/uploads\\/1\\/slider2222.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, '#', 'primary', '2018-10-01 08:31:31', '2018-10-01 08:31:31'),
(23, 1, 'simple-slider-item', '{\"_token\":\"4kvXO5ALNZahTyvPRpy2IYlEnvLe5yhFlHqGg2pC\",\"simple_slider_id\":\"1\",\"title\":\"#\",\"link\":\"#\",\"description\":null,\"order\":\"0\",\"image\":\"\\/uploads\\/1\\/banner-slider-3.png\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, '#', 'info', '2018-10-01 08:31:52', '2018-10-01 08:31:52'),
(24, 1, 'simple-slider-item', '{\"_token\":\"4kvXO5ALNZahTyvPRpy2IYlEnvLe5yhFlHqGg2pC\",\"simple_slider_id\":\"1\",\"title\":\"#\",\"link\":\"#\",\"description\":null,\"order\":\"0\",\"image\":\"\\/uploads\\/1\\/33.png\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 4, '#', 'info', '2018-10-01 08:32:15', '2018-10-01 08:32:15'),
(25, 1, 'simple-slider', '{\"_token\":\"4kvXO5ALNZahTyvPRpy2IYlEnvLe5yhFlHqGg2pC\",\"name\":\"Home-sliders\",\"key\":\"Home-slidersh\",\"description\":\"Home-sliders\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Home-sliders', 'primary', '2018-10-01 08:32:24', '2018-10-01 08:32:24'),
(26, 1, 'simple-slider', '{\"_token\":\"4kvXO5ALNZahTyvPRpy2IYlEnvLe5yhFlHqGg2pC\",\"name\":\"Home-sliders\",\"key\":\"Home-slidersh\",\"description\":\"Home-sliders\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Home-sliders', 'primary', '2018-10-01 08:42:15', '2018-10-01 08:42:15'),
(27, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-03 04:27:09', '2018-10-03 04:27:09'),
(28, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-03 08:42:20', '2018-10-03 08:42:20'),
(29, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-04 05:49:59', '2018-10-04 05:49:59'),
(30, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-04 06:08:44', '2018-10-04 06:08:44'),
(31, 1, 'simple-slider-item', '{\"_token\":\"WXMSUGSQEuVLiBwseR0p7ecaoPJ4C6SiqSs5Chqd\",\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, '#', 'danger', '2018-10-04 06:34:32', '2018-10-04 06:34:32'),
(32, 1, 'simple-slider', '{\"_token\":\"WXMSUGSQEuVLiBwseR0p7ecaoPJ4C6SiqSs5Chqd\",\"name\":\"Home-sliders\",\"key\":\"Home-slidersh\",\"description\":\"Home-sliders\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Home-sliders', 'primary', '2018-10-04 06:34:38', '2018-10-04 06:34:38'),
(33, 1, 'simple-slider-item', '{\"_token\":\"WXMSUGSQEuVLiBwseR0p7ecaoPJ4C6SiqSs5Chqd\",\"simple_slider_id\":\"1\",\"title\":\"#\",\"link\":\"#\",\"description\":null,\"order\":\"2\",\"image\":\"\\/uploads\\/1\\/33.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 4, '#', 'primary', '2018-10-04 06:35:09', '2018-10-04 06:35:09'),
(34, 1, 'simple-slider', '{\"_token\":\"WXMSUGSQEuVLiBwseR0p7ecaoPJ4C6SiqSs5Chqd\",\"name\":\"Home-sliders\",\"key\":\"Home-slidersh\",\"description\":\"Home-sliders\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Home-sliders', 'primary', '2018-10-04 06:35:14', '2018-10-04 06:35:14'),
(35, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-04 06:44:50', '2018-10-04 06:44:50'),
(36, 1, 'menu', '{\"_token\":\"WXMSUGSQEuVLiBwseR0p7ecaoPJ4C6SiqSs5Chqd\",\"name\":\"Menu ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"600\\\",\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/vi\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"601\\\",\\\"title\\\":\\\"Mua ngay\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"https:\\/\\/codecanyon.net\\/item\\/botble-cms-php-platform-based-on-laravel-framework\\/16928182?ref=botble\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0110\\u1ea7u t\\u01b0\\\",\\\"relatedId\\\":\\\"17\\\",\\\"type\\\":\\\"category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"D\\u1ef1 \\u00e1n\\\",\\\"relatedId\\\":\\\"16\\\",\\\"type\\\":\\\"category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Doanh nghi\\u1ec7p\\\",\\\"relatedId\\\":\\\"14\\\",\\\"type\\\":\\\"category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"S\\u1ef1 ki\\u1ec7n\\\",\\\"relatedId\\\":\\\"13\\\",\\\"type\\\":\\\"category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":3,\\\"children\\\":[]}],\\\"position\\\":1},{\\\"id\\\":\\\"602\\\",\\\"title\\\":\\\"Tin t\\u1ee9c\\\",\\\"relatedId\\\":\\\"11\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"606\\\",\\\"title\\\":\\\"Th\\u01b0 vi\\u1ec7n \\u1ea3nh\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/vi\\/galleries\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"594\\\",\\\"title\\\":\\\"Li\\u00ean h\\u1ec7\\\",\\\"relatedId\\\":\\\"17\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Li\\u00ean h\\u1ec7\",\"custom-url\":\"\\/vi\\/galleries\",\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 10, 'Menu chính', 'primary', '2018-10-04 08:12:10', '2018-10-04 08:12:10'),
(37, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-05 05:48:28', '2018-10-05 05:48:28'),
(38, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-05 05:50:25', '2018-10-05 05:50:25'),
(39, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Sang Nguyen', 'info', '2018-10-05 06:28:11', '2018-10-05 06:28:11'),
(40, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-05 06:29:35', '2018-10-05 06:29:35'),
(41, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-08 06:10:52', '2018-10-08 06:10:52'),
(42, 1, 'category', '{\"ids\":[\"13\",\"16\",\"14\",\"17\",\"15\",\"18\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 13, 'Sự kiện', 'danger', '2018-10-08 06:11:17', '2018-10-08 06:11:17'),
(43, 1, 'category', '{\"ids\":[\"13\",\"16\",\"14\",\"17\",\"15\",\"18\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 16, 'Dự án', 'danger', '2018-10-08 06:11:17', '2018-10-08 06:11:17'),
(44, 1, 'category', '{\"ids\":[\"13\",\"16\",\"14\",\"17\",\"15\",\"18\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 14, 'Doanh nghiệp', 'danger', '2018-10-08 06:11:17', '2018-10-08 06:11:17'),
(45, 1, 'category', '{\"ids\":[\"13\",\"16\",\"14\",\"17\",\"15\",\"18\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 17, 'Đầu tư', 'danger', '2018-10-08 06:11:17', '2018-10-08 06:11:17'),
(46, 1, 'category', '{\"ids\":[\"13\",\"16\",\"14\",\"17\",\"15\",\"18\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 15, 'Tin tức & cập nhật', 'danger', '2018-10-08 06:11:17', '2018-10-08 06:11:17'),
(47, 1, 'category', '{\"ids\":[\"13\",\"16\",\"14\",\"17\",\"15\",\"18\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 18, 'Nguồn lực', 'danger', '2018-10-08 06:11:17', '2018-10-08 06:11:17'),
(48, 1, 'category', '{\"ids\":[\"6\",\"7\",\"9\",\"8\",\"11\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 6, 'Events', 'danger', '2018-10-08 06:11:26', '2018-10-08 06:11:26'),
(49, 1, 'category', '{\"ids\":[\"6\",\"7\",\"9\",\"8\",\"11\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 7, 'Projects', 'danger', '2018-10-08 06:11:26', '2018-10-08 06:11:26'),
(50, 1, 'category', '{\"ids\":[\"6\",\"7\",\"9\",\"8\",\"11\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 9, 'Business', 'danger', '2018-10-08 06:11:26', '2018-10-08 06:11:26'),
(51, 1, 'category', '{\"ids\":[\"6\",\"7\",\"9\",\"8\",\"11\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 8, 'Portfolio', 'danger', '2018-10-08 06:11:26', '2018-10-08 06:11:26'),
(52, 1, 'category', '{\"ids\":[\"6\",\"7\",\"9\",\"8\",\"11\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 11, 'New & Updates', 'danger', '2018-10-08 06:11:26', '2018-10-08 06:11:26'),
(53, 1, 'category', '{\"ids\":[\"6\",\"7\",\"9\",\"8\",\"11\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 10, 'Resources', 'danger', '2018-10-08 06:11:26', '2018-10-08 06:11:26'),
(54, 1, 'category', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u Chung\",\"slug\":\"gioi-thieu-chung\",\"slug_id\":\"0\",\"slug-screen\":\"category\",\"parent_id\":\"0\",\"description\":\"Gi\\u1edbi Thi\\u1ec7u Chung\",\"icon\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 19, 'Giới Thiệu Chung', 'info', '2018-10-08 06:13:15', '2018-10-08 06:13:15'),
(55, 1, 'category', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"C\\u01a1 c\\u1ea5u t\\u1ed5 ch\\u1ee9c\",\"slug\":\"co-cau-to-chuc\",\"slug_id\":\"0\",\"slug-screen\":\"category\",\"parent_id\":\"0\",\"description\":\"C\\u01a1 c\\u1ea5u t\\u1ed5 ch\\u1ee9c\",\"icon\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 20, 'Cơ cấu tổ chức', 'info', '2018-10-08 06:13:49', '2018-10-08 06:13:49'),
(56, 1, 'category', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Ch\\u1ee9c n\\u0103ng nhi\\u1ec7m v\\u1ee5\",\"slug\":\"chuc-nang-nhiem-vu\",\"slug_id\":\"0\",\"slug-screen\":\"category\",\"parent_id\":\"0\",\"description\":\"Ch\\u1ee9c n\\u0103ng nhi\\u1ec7m v\\u1ee5\",\"icon\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 21, 'Chức năng nhiệm vụ', 'info', '2018-10-08 06:13:59', '2018-10-08 06:13:59'),
(57, 1, 'category', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"H\\u1ec7 th\\u1ed1ng ph\\u00f2ng kh\\u00e1m\",\"slug\":\"he-thong-phong-kham\",\"slug_id\":\"0\",\"slug-screen\":\"category\",\"parent_id\":\"0\",\"description\":\"H\\u1ec7 th\\u1ed1ng ph\\u00f2ng kh\\u00e1m\",\"icon\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 22, 'Hệ thống phòng khám', 'info', '2018-10-08 06:14:26', '2018-10-08 06:14:26'),
(58, 1, 'category', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Gi\\u1edd l\\u00e0m vi\\u1ec7c\",\"slug\":\"gio-lam-viec\",\"slug_id\":\"0\",\"slug-screen\":\"category\",\"parent_id\":\"0\",\"description\":\"Gi\\u1edd l\\u00e0m vi\\u1ec7c\",\"icon\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 23, 'Giờ làm việc', 'info', '2018-10-08 06:14:39', '2018-10-08 06:14:39'),
(59, 1, 'category', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"T\\u01b0 v\\u1ea5n\",\"slug\":\"tu-van\",\"slug_id\":\"0\",\"slug-screen\":\"category\",\"parent_id\":\"0\",\"description\":\"T\\u01b0 v\\u1ea5n\",\"icon\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 24, 'Tư vấn', 'info', '2018-10-08 06:16:37', '2018-10-08 06:16:37'),
(60, 1, 'category', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"B\\u00e0i vi\\u1ebft chuy\\u00ean m\\u00f4n\",\"slug\":\"bai-viet-chuyen-mon\",\"slug_id\":\"0\",\"slug-screen\":\"category\",\"parent_id\":\"24\",\"description\":\"B\\u00e0i vi\\u1ebft chuy\\u00ean m\\u00f4n\",\"icon\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 25, 'Bài viết chuyên môn', 'info', '2018-10-08 06:16:50', '2018-10-08 06:16:50'),
(61, 1, 'category', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Tin n\\u1ed9i b\\u1ed9\",\"slug\":\"tin-noi-bo\",\"slug_id\":\"0\",\"slug-screen\":\"category\",\"parent_id\":\"24\",\"description\":\"Tin n\\u1ed9i b\\u1ed9\",\"icon\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 26, 'Tin nội bộ', 'info', '2018-10-08 06:17:05', '2018-10-08 06:17:05'),
(62, 1, 'category', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"B\\u00e1o ch\\u00ed\",\"slug\":\"bao-chi\",\"slug_id\":\"0\",\"slug-screen\":\"category\",\"parent_id\":\"24\",\"description\":\"B\\u00e1o ch\\u00ed\",\"icon\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 27, 'Báo chí', 'info', '2018-10-08 06:17:15', '2018-10-08 06:17:15'),
(63, 1, 'page', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"B\\u1ea3o hi\\u1ec3m\",\"slug\":\"bao-hiem\",\"slug_id\":\"0\",\"slug-screen\":\"page\",\"description\":\"B\\u1ea3o hi\\u1ec3m\",\"content\":\"<p>B\\u1ea3o hi\\u1ec3m<\\/p>\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 18, 'Bảo hiểm', 'info', '2018-10-08 06:18:11', '2018-10-08 06:18:11'),
(64, 1, 'page', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn kh\\u00e1m b\\u1ec7nh\",\"slug\":\"huong-dan-kham-benh\",\"slug_id\":\"0\",\"slug-screen\":\"page\",\"description\":\"H\\u01b0\\u1edbng d\\u1eabn kh\\u00e1m b\\u1ec7nh\",\"content\":\"<p>H\\u01b0\\u1edbng d\\u1eabn kh&aacute;m b\\u1ec7nh<\\/p>\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 19, 'Hướng dẫn khám bệnh', 'info', '2018-10-08 06:18:32', '2018-10-08 06:18:32'),
(65, 1, 'page', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Gi\\u1edbi thi\\u1ec7u chung\",\"slug\":\"gioi-thieu-chung-1\",\"slug_id\":\"0\",\"slug-screen\":\"page\",\"description\":\"Gi\\u1edbi thi\\u1ec7u chung\",\"content\":\"<p>Gi\\u1edbi thi\\u1ec7u chung<\\/p>\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 20, 'Giới thiệu chung', 'info', '2018-10-08 06:18:54', '2018-10-08 06:18:54'),
(66, 1, 'page', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"C\\u01a1 c\\u1ea5u t\\u1ed5 ch\\u1ee9c\",\"slug\":\"co-cau-to-chuc-1\",\"slug_id\":\"0\",\"slug-screen\":\"page\",\"description\":\"C\\u01a1 c\\u1ea5u t\\u1ed5 ch\\u1ee9c\",\"content\":\"<p>C\\u01a1 c\\u1ea5u t\\u1ed5 ch\\u1ee9c<\\/p>\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 21, 'Cơ cấu tổ chức', 'info', '2018-10-08 06:19:07', '2018-10-08 06:19:07'),
(67, 1, 'page', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Ch\\u1ee9c n\\u0103ng nhi\\u1ec7m v\\u1ee5\",\"slug\":\"chuc-nang-nhiem-vu-1\",\"slug_id\":\"0\",\"slug-screen\":\"page\",\"description\":\"Ch\\u1ee9c n\\u0103ng nhi\\u1ec7m v\\u1ee5\",\"content\":\"<p>Ch\\u1ee9c n\\u0103ng nhi\\u1ec7m v\\u1ee5<\\/p>\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 22, 'Chức năng nhiệm vụ', 'info', '2018-10-08 06:19:26', '2018-10-08 06:19:26'),
(68, 1, 'category', '{\"ids\":[\"19\",\"20\",\"21\",\"22\",\"23\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 19, 'Giới Thiệu Chung', 'danger', '2018-10-08 06:19:46', '2018-10-08 06:19:46'),
(69, 1, 'category', '{\"ids\":[\"19\",\"20\",\"21\",\"22\",\"23\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 20, 'Cơ cấu tổ chức', 'danger', '2018-10-08 06:19:46', '2018-10-08 06:19:46'),
(70, 1, 'category', '{\"ids\":[\"19\",\"20\",\"21\",\"22\",\"23\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 21, 'Chức năng nhiệm vụ', 'danger', '2018-10-08 06:19:46', '2018-10-08 06:19:46'),
(71, 1, 'category', '{\"ids\":[\"19\",\"20\",\"21\",\"22\",\"23\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 22, 'Hệ thống phòng khám', 'danger', '2018-10-08 06:19:46', '2018-10-08 06:19:46'),
(72, 1, 'category', '{\"ids\":[\"19\",\"20\",\"21\",\"22\",\"23\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 23, 'Giờ làm việc', 'danger', '2018-10-08 06:19:46', '2018-10-08 06:19:46'),
(73, 1, 'page', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"C\\u01a1 c\\u1ea5u t\\u1ed5 ch\\u1ee9c\",\"slug\":\"co-cau-to-chuc\",\"slug_id\":\"82\",\"slug-screen\":\"page\",\"description\":\"C\\u01a1 c\\u1ea5u t\\u1ed5 ch\\u1ee9c\",\"content\":\"<p>C\\u01a1 c\\u1ea5u t\\u1ed5 ch\\u1ee9c<\\/p>\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"Sample custom fields\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"A text box\\\",\\\"slug\\\":\\\"a_text_box\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":\\\"This text box come from custom field\\\",\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 21, 'Cơ cấu tổ chức', 'primary', '2018-10-08 06:19:59', '2018-10-08 06:19:59'),
(74, 1, 'page', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Ch\\u1ee9c n\\u0103ng nhi\\u1ec7m v\\u1ee5\",\"slug\":\"chuc-nang-nhiem-vu\",\"slug_id\":\"83\",\"slug-screen\":\"page\",\"description\":\"Ch\\u1ee9c n\\u0103ng nhi\\u1ec7m v\\u1ee5\",\"content\":\"<p>Ch\\u1ee9c n\\u0103ng nhi\\u1ec7m v\\u1ee5<\\/p>\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"Sample custom fields\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"A text box\\\",\\\"slug\\\":\\\"a_text_box\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":\\\"This text box come from custom field\\\",\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 22, 'Chức năng nhiệm vụ', 'primary', '2018-10-08 06:20:07', '2018-10-08 06:20:07'),
(75, 1, 'page', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Gi\\u1edbi thi\\u1ec7u chung\",\"slug\":\"gioi-thieu-chung\",\"slug_id\":\"81\",\"slug-screen\":\"page\",\"description\":\"Gi\\u1edbi thi\\u1ec7u chung\",\"content\":\"<p>Gi\\u1edbi thi\\u1ec7u chung<\\/p>\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"Sample custom fields\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"A text box\\\",\\\"slug\\\":\\\"a_text_box\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":\\\"This text box come from custom field\\\",\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 20, 'Giới thiệu chung', 'primary', '2018-10-08 06:20:48', '2018-10-08 06:20:48'),
(76, 1, 'page', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"H\\u1ec7 th\\u1ed1ng ph\\u00f2ng kh\\u00e1m\",\"slug\":\"he-thong-phong-kham\",\"slug_id\":\"0\",\"slug-screen\":\"page\",\"description\":\"H\\u1ec7 th\\u1ed1ng ph\\u00f2ng kh\\u00e1m\",\"content\":\"<p>H\\u1ec7 th\\u1ed1ng ph&ograve;ng kh&aacute;m<\\/p>\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 23, 'Hệ thống phòng khám', 'info', '2018-10-08 06:21:22', '2018-10-08 06:21:22'),
(77, 1, 'page', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Gi\\u1edd l\\u00e0m vi\\u1ec7c\",\"slug\":\"gio-lam-viec\",\"slug_id\":\"0\",\"slug-screen\":\"page\",\"description\":\"Gi\\u1edd l\\u00e0m vi\\u1ec7c\",\"content\":\"<p>Gi\\u1edd l&agrave;m vi\\u1ec7c<\\/p>\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 24, 'Giờ làm việc', 'info', '2018-10-08 06:21:47', '2018-10-08 06:21:47'),
(78, 1, 'category', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Tuy\\u1ec3n d\\u1ee5ng\",\"slug\":\"tuyen-dung\",\"slug_id\":\"0\",\"slug-screen\":\"category\",\"parent_id\":\"0\",\"description\":\"Tuy\\u1ec3n d\\u1ee5ng\",\"icon\":null,\"order\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 28, 'Tuyển dụng', 'info', '2018-10-08 06:23:06', '2018-10-08 06:23:06'),
(79, 1, 'menu', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Menu ch\\u00ednh\",\"deleted_nodes\":\"601 610 611 612 613 602 606\",\"menu_nodes\":\"[{\\\"id\\\":\\\"600\\\",\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/vi\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"594\\\",\\\"title\\\":\\\"Li\\u00ean h\\u1ec7\\\",\\\"relatedId\\\":\\\"17\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u chung\\\",\\\"relatedId\\\":\\\"20\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"C\\u01a1 c\\u1ea5u t\\u1ed5 ch\\u1ee9c\\\",\\\"relatedId\\\":\\\"21\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Ch\\u1ee9c n\\u0103ng nhi\\u1ec7m v\\u1ee5\\\",\\\"relatedId\\\":\\\"22\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"H\\u1ec7 th\\u1ed1ng ph\\u00f2ng kh\\u00e1m\\\",\\\"relatedId\\\":\\\"23\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Gi\\u1edd l\\u00e0m vi\\u1ec7c\\\",\\\"relatedId\\\":\\\"24\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"children\\\":[]}],\\\"position\\\":2},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"D\\u1ecbch v\\u1ee5\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"T\\u01b0 v\\u1ea5n\\\",\\\"relatedId\\\":\\\"24\\\",\\\"type\\\":\\\"category\\\",\\\"target\\\":\\\"_self\\\",\\\"children\\\":[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"B\\u00e0i vi\\u1ebft chuy\\u00ean m\\u00f4n\\\",\\\"relatedId\\\":\\\"25\\\",\\\"type\\\":\\\"category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"B\\u00e1o ch\\u00ed\\\",\\\"relatedId\\\":\\\"27\\\",\\\"type\\\":\\\"category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Tin n\\u1ed9i b\\u1ed9\\\",\\\"relatedId\\\":\\\"26\\\",\\\"type\\\":\\\"category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"children\\\":[]}],\\\"position\\\":4},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Chuy\\u00ean Gia\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Kh\\u00e1ch H\\u00e0ng\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"B\\u1ea3o hi\\u1ec3m\\\",\\\"relatedId\\\":\\\"18\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"H\\u01b0\\u1edbng d\\u1eabn kh\\u00e1m b\\u1ec7nh\\\",\\\"relatedId\\\":\\\"19\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]}],\\\"position\\\":6}]\",\"target\":\"_self\",\"title\":\"H\\u01b0\\u1edbng d\\u1eabn kh\\u00e1m b\\u1ec7nh\",\"custom-url\":\"#\",\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 10, 'Menu chính', 'primary', '2018-10-08 06:25:49', '2018-10-08 06:25:49'),
(80, 1, 'menu', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Menu ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"600\\\",\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/vi\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"594\\\",\\\"title\\\":\\\"Li\\u00ean h\\u1ec7\\\",\\\"relatedId\\\":\\\"17\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"614\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"615\\\",\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u chung\\\",\\\"relatedId\\\":\\\"20\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"616\\\",\\\"title\\\":\\\"C\\u01a1 c\\u1ea5u t\\u1ed5 ch\\u1ee9c\\\",\\\"relatedId\\\":\\\"21\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"617\\\",\\\"title\\\":\\\"Ch\\u1ee9c n\\u0103ng nhi\\u1ec7m v\\u1ee5\\\",\\\"relatedId\\\":\\\"22\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"618\\\",\\\"title\\\":\\\"H\\u1ec7 th\\u1ed1ng ph\\u00f2ng kh\\u00e1m\\\",\\\"relatedId\\\":\\\"23\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"619\\\",\\\"title\\\":\\\"Gi\\u1edd l\\u00e0m vi\\u1ec7c\\\",\\\"relatedId\\\":\\\"24\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}],\\\"position\\\":2},{\\\"id\\\":\\\"620\\\",\\\"title\\\":\\\"D\\u1ecbch v\\u1ee5\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"621\\\",\\\"title\\\":\\\"T\\u01b0 v\\u1ea5n\\\",\\\"relatedId\\\":\\\"24\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"622\\\",\\\"title\\\":\\\"B\\u00e0i vi\\u1ebft chuy\\u00ean m\\u00f4n\\\",\\\"relatedId\\\":\\\"25\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"623\\\",\\\"title\\\":\\\"B\\u00e1o ch\\u00ed\\\",\\\"relatedId\\\":\\\"27\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"624\\\",\\\"title\\\":\\\"Tin n\\u1ed9i b\\u1ed9\\\",\\\"relatedId\\\":\\\"26\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}],\\\"position\\\":4},{\\\"id\\\":\\\"625\\\",\\\"title\\\":\\\"Chuy\\u00ean Gia\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"626\\\",\\\"title\\\":\\\"Kh\\u00e1ch H\\u00e0ng\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"627\\\",\\\"title\\\":\\\"B\\u1ea3o hi\\u1ec3m\\\",\\\"relatedId\\\":\\\"18\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"628\\\",\\\"title\\\":\\\"H\\u01b0\\u1edbng d\\u1eabn kh\\u00e1m b\\u1ec7nh\\\",\\\"relatedId\\\":\\\"19\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]}],\\\"position\\\":6},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"T\\u00e0i li\\u1ec7u\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":7,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Tuy\\u1ec3n d\\u1ee5ng\\\",\\\"relatedId\\\":\\\"28\\\",\\\"type\\\":\\\"category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":8,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Li\\u00ean h\\u1ec7\\\",\\\"relatedId\\\":\\\"17\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":9,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Li\\u00ean h\\u1ec7\",\"custom-url\":\"#\",\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 10, 'Menu chính', 'primary', '2018-10-08 06:31:40', '2018-10-08 06:31:40'),
(81, 1, 'chuyengia', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"1\",\"submit\":\"apply\",\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/33.png\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, '1', 'info', '2018-10-08 06:41:11', '2018-10-08 06:41:11'),
(82, 1, 'chuyengia', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"1\",\"submit\":\"apply\",\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/33.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, '1', 'primary', '2018-10-08 06:41:20', '2018-10-08 06:41:20');
INSERT INTO `audit_history` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(83, 1, 'chuyengia', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"1\",\"submit\":\"apply\",\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, '1', 'primary', '2018-10-08 06:44:02', '2018-10-08 06:44:02'),
(84, 1, 'chuyengia', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"1\",\"slug\":\"1\",\"slug_id\":null,\"slug-screen\":\"chuyengia\",\"description\":null,\"content\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, '1', 'primary', '2018-10-08 06:53:17', '2018-10-08 06:53:17'),
(85, 1, 'chuyengia', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Chuy\\u00ean gia 1\",\"slug\":\"chuyen-gia-1\",\"slug_id\":null,\"slug-screen\":\"chuyengia\",\"description\":\"Chuy\\u00ean gia 1\",\"content\":\"<p>Chuy&ecirc;n gia 1<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Chuyên gia 1', 'primary', '2018-10-08 07:05:55', '2018-10-08 07:05:55'),
(86, 1, 'page', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"Li\\u00ean h\\u1ec7\",\"slug\":\"lien-he\",\"slug_id\":\"33\",\"slug-screen\":\"page\",\"description\":\"\\u0110\\u00e2y l\\u00e0 trang li\\u00ean h\\u1ec7\",\"content\":\"<p>[contact-form][\\/contact-form]<\\/p>\\r\\n\\r\\n<p>[google-map]332 khu 4 V\\u1ec7t H&ograve;a, Th&agrave;nh Ph\\u1ed1, H\\u1ea3i D\\u01b0\\u01a1ng[\\/google-map]<\\/p>\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"Sample custom fields\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"A text box\\\",\\\"slug\\\":\\\"a_text_box\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"text\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":\\\"This text box come from custom field\\\",\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default\",\"image\":\"https:\\/\\/s3-ap-southeast-1.amazonaws.com\\/botble\\/cms\\/galleries\\/1476513483-misty-mountains-1280x720.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 17, 'Liên hệ', 'primary', '2018-10-08 08:08:38', '2018-10-08 08:08:38'),
(87, 1, 'post', '{\"_token\":\"EfO77FF3Wp789vZG1Lxwl9VoPPoN7ZfU9v9Fy1df\",\"name\":\"\\u0110i t\\u00ecm h\\u1ed3i \\u1ee9c tu\\u1ed5i th\\u01a1\",\"slug\":\"di-tim-hoi-uc-tuoi-tho\",\"slug_id\":\"63\",\"slug-screen\":\"post\",\"description\":\"\\u0110i t\\u00ecm h\\u1ed3i \\u1ee9c tu\\u1ed5i th\\u01a1\",\"featured\":\"1\",\"content\":\"<p>[blog-posts paginate=&quot;4&quot;][\\/blog-posts]<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Hi m\\u1ecdi ng\\u01b0\\u1eddi, &nbsp;d\\u1ea1o g\\u1ea7n \\u0111&acirc;y m&igrave;nh kh&ocirc;ng vi\\u1ebft blog m\\u1edbi v&igrave; t\\u1eadp trung ph&aacute;t tri\\u1ec3n Botble CMS. Sau bao c\\u1ed1 g\\u1eafng th&igrave; h&ocirc;m nay m&igrave;nh \\u0111&atilde; c&oacute; th\\u1ec3 release version 2.0 v\\u1edbi nhi\\u1ec1u t&iacute;nh n\\u0103ng m\\u1edbi.<\\/p>\\r\\n\\r\\n<p>\\u1ede b\\u1ea3n 1.0, m&igrave;nh c\\u1ea3m th\\u1ea5y n&oacute; c&oacute; qu&aacute; nhi\\u1ec1u t&iacute;nh n\\u0103ng ph\\u1ee9c t\\u1ea1p, ch\\u1ec9 ph&ugrave; h\\u1ee3p v\\u1edbi h\\u1ec7 th\\u1ed1ng l\\u1edbn m&agrave; \\u0111a s\\u1ed1 c&aacute;c website nh\\u1ecf kh&ocirc;ng c\\u1ea7n \\u0111\\u1ebfn, v&igrave; v\\u1eady m&igrave;nh \\u0111&atilde; \\u0111\\u01a1n gi\\u1ea3n b\\u1edbt \\u0111i trong ph\\u1ea7n n&agrave;y v&agrave; t\\u1eadp trung l&agrave;m sao cho Botble CMS d\\u1ec5 s\\u1eed d\\u1ee5ng nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>Botble CMS \\u0111ang s\\u1eed d\\u1ee5ng Laravel&nbsp;phi&ecirc;n b\\u1ea3n m\\u1edbi nh\\u1ea5t t\\u1ea1i th\\u1eddi \\u0111i\\u1ec3m n&agrave;y 5.3.<\\/p>\\r\\n\\r\\n<h3>Demo:<\\/h3>\\r\\n\\r\\n<p>Homepage:&nbsp;<a href=\\\"http:\\/\\/cms.botble.com\\/\\\">http:\\/\\/cms.botble.com<\\/a><\\/p>\\r\\n\\r\\n<p>Admin:&nbsp;<a href=\\\"http:\\/\\/cms.botble.com\\/admin\\\">http:\\/\\/cms.botble.com\\/admin<\\/a><\\/p>\\r\\n\\r\\n<p>Account: botble - 159357<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h3>C\\u1ea5u tr&uacute;c th\\u01b0 m\\u1ee5c:<\\/h3>\\r\\n\\r\\n<p><img alt=\\\"core\\\" src=\\\"http:\\/\\/sangplus.com\\/wp-content\\/uploads\\/2016\\/10\\/Core-700x328.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Botble version 2 \\u0111&atilde; \\u0111\\u01b0\\u1ee3c t\\u1ed5 ch\\u1ee9c th&agrave;nh t\\u1eebng module theo d\\u1ea1ng HMVC v&agrave; n\\u1eb1m ho&agrave;n to&agrave;n trong th\\u01b0 m\\u1ee5c \\/core. Nh\\u1eefng th\\u01b0 m\\u1ee5c kh&aacute;c h\\u1ea7u h\\u1ebft \\u0111\\u01b0\\u1ee3c gi\\u1eef nguy&ecirc;n hi\\u1ec7n tr\\u1ea1ng nh\\u01b0 b\\u1ea3n c&agrave;i m\\u1edbi laravel. \\u0110i\\u1ec1u n&agrave;y gi&uacute;p d\\u1ec5 d&agrave;ng h\\u01a1n trong vi\\u1ec7c c\\u1eadp nh\\u1eadt, n&acirc;ng c\\u1ea5p sau n&agrave;y.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"theme\\\" src=\\\"http:\\/\\/sangplus.com\\/wp-content\\/uploads\\/2016\\/10\\/Theme-700x326.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>T&aacute;ch bi\\u1ec7t th\\u01b0 m\\u1ee5c theme v&agrave; chu\\u1ea9n c\\u1ea5u tr&uacute;c theme.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>M&igrave;nh xin n&oacute;i s\\u01a1 qua m\\u1ed9t s\\u1ed1 t&iacute;nh n\\u0103ng m\\u1edbi trong b\\u1ea3n n&agrave;y.<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<h3>H\\u1ed7 tr\\u1ee3 c&agrave;i \\u0111\\u1eb7t.<\\/h3>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Nhi\\u1ec1u ng\\u01b0\\u1eddi g\\u1eb7p kh&oacute; kh\\u0103n trong vi\\u1ec7c c&agrave;i \\u0111\\u1eb7t Botble, \\u0111a s\\u1ed1 \\u0111&oacute; l&agrave; nh\\u1eefng ng\\u01b0\\u1eddi m\\u1edbi l&agrave;m quen laravel. V&igrave; v\\u1eady m&igrave;nh \\u0111&atilde; vi\\u1ebft 1 \\u0111o\\u1ea1n script \\u0111\\u1ec3 h\\u1ed7 tr\\u1ee3 c&agrave;i \\u0111\\u1eb7t nhanh ch&oacute;ng qua command line.<\\/p>\\r\\n\\r\\n<p><iframe frameborder=\\\"0\\\" height=\\\"506\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/DAZe2V_A0wo?feature=oembed\\\" width=\\\"900\\\"><\\/iframe><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h3>2. T\\u1ea1o 1 module\\/plugin m\\u1edbi m\\u1ed9t c&aacute;ch nhanh ch&oacute;ng v\\u1edbi CRUD v&agrave; permissions.<\\/h3>\\r\\n\\r\\n<p><iframe frameborder=\\\"0\\\" height=\\\"506\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/8F4wfrS9svs?feature=oembed\\\" width=\\\"900\\\"><\\/iframe><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Vi\\u1ec7c lo\\u1ea1i b\\u1ecf 1 module kh&ocirc;ng c\\u1ea7n thi\\u1ebft c\\u0169ng \\u0111\\u01a1n gi\\u1ea3n h\\u01a1n bao gi\\u1edd h\\u1ebft.<\\/p>\\r\\n\\r\\n<p><iframe frameborder=\\\"0\\\" height=\\\"506\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/jmex2G4eC18?feature=oembed\\\" width=\\\"900\\\"><\\/iframe><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Do h\\u01a1i b\\u1eadn r\\u1ed9n n&ecirc;n m&igrave;nh ch\\u1ec9 c&oacute; th\\u1ec3 quay m\\u1ed9t s\\u1ed1 video h\\u01b0\\u1edbng d\\u1eabn tr&ecirc;n, s\\u1ebd b\\u1ed5 sung sau :D<\\/p>\\r\\n\\r\\n<h3>3. Theme m\\u1edbi<\\/h3>\\r\\n\\r\\n<p>Trong b\\u1ea3n c\\u1eadp nh\\u1eadt n&agrave;y, nh\\u1edd s\\u1ef1 gi&uacute;p \\u0111\\u1ee1 c\\u1ee7a b\\u1ea1n&nbsp;<a href=\\\"http:\\/\\/nghiadev.com\\/\\\">Minh Ngh\\u0129a<\\/a>, Botble front page \\u0111&atilde; \\u0111\\u01b0\\u1ee3c kho&aacute;c l&ecirc;n b\\u1ed9 &aacute;o m\\u1edbi m&agrave; m&igrave;nh \\u0111&aacute;nh gi&aacute; l&agrave; \\u0111\\u1eb9p h\\u01a1n r\\u1ea5t nhi\\u1ec1u so v\\u1edbi theme m\\u1eb7c \\u0111\\u1ecbnh c\\u0169.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t s\\u1ed1 h&igrave;nh \\u1ea3nh:<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/lh3.googleusercontent.com\\/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\\\" \\/><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/lh3.googleusercontent.com\\/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\\\" \\/><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/lh3.googleusercontent.com\\/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\\\" \\/><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/lh3.googleusercontent.com\\/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h3>4. Qu\\u1ea3n l&yacute; plugin<\\/h3>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/lh3.googleusercontent.com\\/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h3>5. S\\u1eed d\\u1ee5ng m\\u1ed9t s\\u1ed1 concept c\\u1ee7a Wordpress<\\/h3>\\r\\n\\r\\n<p>Nh\\u01b0 c&aacute;c b\\u1ea1n \\u0111&atilde; bi\\u1ebft, Wordpress c&oacute; r\\u1ea5t nhi\\u1ec1u t&iacute;nh n\\u0103ng hay. V&igrave; v\\u1eady m&igrave;nh \\u0111&atilde; &aacute;p d\\u1ee5ng Filter, Action hook v&agrave; Metabox v&agrave;o Botble \\u0111\\u1ec3 c&oacute; th\\u1ec3 d\\u1ec5 d&agrave;ng h\\u01a1n cho c&aacute;c b\\u1ea1n can thi\\u1ec7p v&agrave;o core sau n&agrave;y.<\\/p>\\r\\n\\r\\n<h3>K\\u1ebft lu\\u1eadn:<\\/h3>\\r\\n\\r\\n<p>Tr&ecirc;n \\u0111&acirc;y l&agrave; m\\u1ed9t s\\u1ed1 t&iacute;nh n\\u0103ng m\\u1edbi c\\u1ee7a Botble version 2.0, hi v\\u1ecdng c&aacute;c b\\u1ea1n c\\u1ea3m th\\u1ea5y h\\u1ee9ng th&uacute; v\\u1edbi CMS n&agrave;y.<\\/p>\\r\\n\\r\\n<p>C&aacute;c b\\u1ea1n c&oacute; th\\u1ec3 mua \\u1ee7ng h\\u1ed9 m&igrave;nh tr&ecirc;n Codecanyon https:\\/\\/codecanyon.net\\/item\\/botble-cms-php-platform-based-on-laravel-framework\\/16928182 ho\\u1eb7c li&ecirc;n h\\u1ec7 tr\\u1ef1c ti\\u1ebfp v\\u1edbi m&igrave;nh qua skype live:minsang2603 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c h\\u1ed7 tr\\u1ee3.<\\/p>\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"categories\":[\"12\"],\"image\":\"https:\\/\\/s3-ap-southeast-1.amazonaws.com\\/botble\\/cms\\/news\\/1476890036-hero05.jpg\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 55, 'Đi tìm hồi ức tuổi thơ', 'primary', '2018-10-08 09:38:18', '2018-10-08 09:38:18'),
(88, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-09 07:14:23', '2018-10-09 07:14:23'),
(89, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-10 04:34:27', '2018-10-10 04:34:27'),
(90, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":null,\"slug_id\":\"0\",\"slug-screen\":\"chuyengia\",\"description\":\"test qua\",\"content\":\"<p>test qua<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Quản trị viên', 'info', '2018-10-10 05:09:41', '2018-10-10 05:09:41'),
(91, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":null,\"slug_id\":null,\"slug-screen\":\"chuyengia\",\"description\":\"test qua\",\"content\":\"<p>test qua<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Quản trị viên', 'primary', '2018-10-10 05:09:48', '2018-10-10 05:09:48'),
(92, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":null,\"slug_id\":null,\"slug-screen\":\"chuyengia\",\"description\":\"test qua\",\"featured\":\"1\",\"content\":\"<p>test qua<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Quản trị viên', 'primary', '2018-10-10 05:10:41', '2018-10-10 05:10:41'),
(93, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":null,\"slug_id\":null,\"slug-screen\":\"chuyengia\",\"description\":\"test qua\",\"content\":\"<p>test qua<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Quản trị viên', 'primary', '2018-10-10 05:10:50', '2018-10-10 05:10:50'),
(94, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":null,\"slug_id\":null,\"slug-screen\":\"chuyengia\",\"description\":\"test qua\",\"content\":\"<p>test qua<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Quản trị viên', 'primary', '2018-10-10 05:11:46', '2018-10-10 05:11:46'),
(95, 1, 'post', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"\\u0110i t\\u00ecm h\\u1ed3i \\u1ee9c tu\\u1ed5i th\\u01a1\",\"slug\":\"di-tim-hoi-uc-tuoi-tho\",\"slug_id\":\"63\",\"slug-screen\":\"post\",\"description\":\"\\u0110i t\\u00ecm h\\u1ed3i \\u1ee9c tu\\u1ed5i th\\u01a1\",\"content\":\"<p>[blog-posts paginate=&quot;4&quot;][\\/blog-posts]<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Hi m\\u1ecdi ng\\u01b0\\u1eddi, &nbsp;d\\u1ea1o g\\u1ea7n \\u0111&acirc;y m&igrave;nh kh&ocirc;ng vi\\u1ebft blog m\\u1edbi v&igrave; t\\u1eadp trung ph&aacute;t tri\\u1ec3n Botble CMS. Sau bao c\\u1ed1 g\\u1eafng th&igrave; h&ocirc;m nay m&igrave;nh \\u0111&atilde; c&oacute; th\\u1ec3 release version 2.0 v\\u1edbi nhi\\u1ec1u t&iacute;nh n\\u0103ng m\\u1edbi.<\\/p>\\r\\n\\r\\n<p>\\u1ede b\\u1ea3n 1.0, m&igrave;nh c\\u1ea3m th\\u1ea5y n&oacute; c&oacute; qu&aacute; nhi\\u1ec1u t&iacute;nh n\\u0103ng ph\\u1ee9c t\\u1ea1p, ch\\u1ec9 ph&ugrave; h\\u1ee3p v\\u1edbi h\\u1ec7 th\\u1ed1ng l\\u1edbn m&agrave; \\u0111a s\\u1ed1 c&aacute;c website nh\\u1ecf kh&ocirc;ng c\\u1ea7n \\u0111\\u1ebfn, v&igrave; v\\u1eady m&igrave;nh \\u0111&atilde; \\u0111\\u01a1n gi\\u1ea3n b\\u1edbt \\u0111i trong ph\\u1ea7n n&agrave;y v&agrave; t\\u1eadp trung l&agrave;m sao cho Botble CMS d\\u1ec5 s\\u1eed d\\u1ee5ng nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>Botble CMS \\u0111ang s\\u1eed d\\u1ee5ng Laravel&nbsp;phi&ecirc;n b\\u1ea3n m\\u1edbi nh\\u1ea5t t\\u1ea1i th\\u1eddi \\u0111i\\u1ec3m n&agrave;y 5.3.<\\/p>\\r\\n\\r\\n<h3>Demo:<\\/h3>\\r\\n\\r\\n<p>Homepage:&nbsp;<a href=\\\"http:\\/\\/cms.botble.com\\/\\\">http:\\/\\/cms.botble.com<\\/a><\\/p>\\r\\n\\r\\n<p>Admin:&nbsp;<a href=\\\"http:\\/\\/cms.botble.com\\/admin\\\">http:\\/\\/cms.botble.com\\/admin<\\/a><\\/p>\\r\\n\\r\\n<p>Account: botble - 159357<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h3>C\\u1ea5u tr&uacute;c th\\u01b0 m\\u1ee5c:<\\/h3>\\r\\n\\r\\n<p><img alt=\\\"core\\\" src=\\\"http:\\/\\/sangplus.com\\/wp-content\\/uploads\\/2016\\/10\\/Core-700x328.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>Botble version 2 \\u0111&atilde; \\u0111\\u01b0\\u1ee3c t\\u1ed5 ch\\u1ee9c th&agrave;nh t\\u1eebng module theo d\\u1ea1ng HMVC v&agrave; n\\u1eb1m ho&agrave;n to&agrave;n trong th\\u01b0 m\\u1ee5c \\/core. Nh\\u1eefng th\\u01b0 m\\u1ee5c kh&aacute;c h\\u1ea7u h\\u1ebft \\u0111\\u01b0\\u1ee3c gi\\u1eef nguy&ecirc;n hi\\u1ec7n tr\\u1ea1ng nh\\u01b0 b\\u1ea3n c&agrave;i m\\u1edbi laravel. \\u0110i\\u1ec1u n&agrave;y gi&uacute;p d\\u1ec5 d&agrave;ng h\\u01a1n trong vi\\u1ec7c c\\u1eadp nh\\u1eadt, n&acirc;ng c\\u1ea5p sau n&agrave;y.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"theme\\\" src=\\\"http:\\/\\/sangplus.com\\/wp-content\\/uploads\\/2016\\/10\\/Theme-700x326.png\\\" \\/><\\/p>\\r\\n\\r\\n<p>T&aacute;ch bi\\u1ec7t th\\u01b0 m\\u1ee5c theme v&agrave; chu\\u1ea9n c\\u1ea5u tr&uacute;c theme.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>M&igrave;nh xin n&oacute;i s\\u01a1 qua m\\u1ed9t s\\u1ed1 t&iacute;nh n\\u0103ng m\\u1edbi trong b\\u1ea3n n&agrave;y.<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<h3>H\\u1ed7 tr\\u1ee3 c&agrave;i \\u0111\\u1eb7t.<\\/h3>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Nhi\\u1ec1u ng\\u01b0\\u1eddi g\\u1eb7p kh&oacute; kh\\u0103n trong vi\\u1ec7c c&agrave;i \\u0111\\u1eb7t Botble, \\u0111a s\\u1ed1 \\u0111&oacute; l&agrave; nh\\u1eefng ng\\u01b0\\u1eddi m\\u1edbi l&agrave;m quen laravel. V&igrave; v\\u1eady m&igrave;nh \\u0111&atilde; vi\\u1ebft 1 \\u0111o\\u1ea1n script \\u0111\\u1ec3 h\\u1ed7 tr\\u1ee3 c&agrave;i \\u0111\\u1eb7t nhanh ch&oacute;ng qua command line.<\\/p>\\r\\n\\r\\n<p><iframe frameborder=\\\"0\\\" height=\\\"506\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/DAZe2V_A0wo?feature=oembed\\\" width=\\\"900\\\"><\\/iframe><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h3>2. T\\u1ea1o 1 module\\/plugin m\\u1edbi m\\u1ed9t c&aacute;ch nhanh ch&oacute;ng v\\u1edbi CRUD v&agrave; permissions.<\\/h3>\\r\\n\\r\\n<p><iframe frameborder=\\\"0\\\" height=\\\"506\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/8F4wfrS9svs?feature=oembed\\\" width=\\\"900\\\"><\\/iframe><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Vi\\u1ec7c lo\\u1ea1i b\\u1ecf 1 module kh&ocirc;ng c\\u1ea7n thi\\u1ebft c\\u0169ng \\u0111\\u01a1n gi\\u1ea3n h\\u01a1n bao gi\\u1edd h\\u1ebft.<\\/p>\\r\\n\\r\\n<p><iframe frameborder=\\\"0\\\" height=\\\"506\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/jmex2G4eC18?feature=oembed\\\" width=\\\"900\\\"><\\/iframe><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Do h\\u01a1i b\\u1eadn r\\u1ed9n n&ecirc;n m&igrave;nh ch\\u1ec9 c&oacute; th\\u1ec3 quay m\\u1ed9t s\\u1ed1 video h\\u01b0\\u1edbng d\\u1eabn tr&ecirc;n, s\\u1ebd b\\u1ed5 sung sau :D<\\/p>\\r\\n\\r\\n<h3>3. Theme m\\u1edbi<\\/h3>\\r\\n\\r\\n<p>Trong b\\u1ea3n c\\u1eadp nh\\u1eadt n&agrave;y, nh\\u1edd s\\u1ef1 gi&uacute;p \\u0111\\u1ee1 c\\u1ee7a b\\u1ea1n&nbsp;<a href=\\\"http:\\/\\/nghiadev.com\\/\\\">Minh Ngh\\u0129a<\\/a>, Botble front page \\u0111&atilde; \\u0111\\u01b0\\u1ee3c kho&aacute;c l&ecirc;n b\\u1ed9 &aacute;o m\\u1edbi m&agrave; m&igrave;nh \\u0111&aacute;nh gi&aacute; l&agrave; \\u0111\\u1eb9p h\\u01a1n r\\u1ea5t nhi\\u1ec1u so v\\u1edbi theme m\\u1eb7c \\u0111\\u1ecbnh c\\u0169.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t s\\u1ed1 h&igrave;nh \\u1ea3nh:<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/lh3.googleusercontent.com\\/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\\\" \\/><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/lh3.googleusercontent.com\\/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\\\" \\/><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/lh3.googleusercontent.com\\/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\\\" \\/><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/lh3.googleusercontent.com\\/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h3>4. Qu\\u1ea3n l&yacute; plugin<\\/h3>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"https:\\/\\/lh3.googleusercontent.com\\/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h3>5. S\\u1eed d\\u1ee5ng m\\u1ed9t s\\u1ed1 concept c\\u1ee7a Wordpress<\\/h3>\\r\\n\\r\\n<p>Nh\\u01b0 c&aacute;c b\\u1ea1n \\u0111&atilde; bi\\u1ebft, Wordpress c&oacute; r\\u1ea5t nhi\\u1ec1u t&iacute;nh n\\u0103ng hay. V&igrave; v\\u1eady m&igrave;nh \\u0111&atilde; &aacute;p d\\u1ee5ng Filter, Action hook v&agrave; Metabox v&agrave;o Botble \\u0111\\u1ec3 c&oacute; th\\u1ec3 d\\u1ec5 d&agrave;ng h\\u01a1n cho c&aacute;c b\\u1ea1n can thi\\u1ec7p v&agrave;o core sau n&agrave;y.<\\/p>\\r\\n\\r\\n<h3>K\\u1ebft lu\\u1eadn:<\\/h3>\\r\\n\\r\\n<p>Tr&ecirc;n \\u0111&acirc;y l&agrave; m\\u1ed9t s\\u1ed1 t&iacute;nh n\\u0103ng m\\u1edbi c\\u1ee7a Botble version 2.0, hi v\\u1ecdng c&aacute;c b\\u1ea1n c\\u1ea3m th\\u1ea5y h\\u1ee9ng th&uacute; v\\u1edbi CMS n&agrave;y.<\\/p>\\r\\n\\r\\n<p>C&aacute;c b\\u1ea1n c&oacute; th\\u1ec3 mua \\u1ee7ng h\\u1ed9 m&igrave;nh tr&ecirc;n Codecanyon https:\\/\\/codecanyon.net\\/item\\/botble-cms-php-platform-based-on-laravel-framework\\/16928182 ho\\u1eb7c li&ecirc;n h\\u1ec7 tr\\u1ef1c ti\\u1ebfp v\\u1edbi m&igrave;nh qua skype live:minsang2603 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c h\\u1ed7 tr\\u1ee3.<\\/p>\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"categories\":[\"12\"],\"image\":\"https:\\/\\/s3-ap-southeast-1.amazonaws.com\\/botble\\/cms\\/news\\/1476890036-hero05.jpg\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 55, 'Đi tìm hồi ức tuổi thơ', 'primary', '2018-10-10 05:12:22', '2018-10-10 05:12:22'),
(96, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":null,\"slug_id\":null,\"slug-screen\":\"chuyengia\",\"description\":\"test qua\",\"content\":\"<p>test qua<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Quản trị viên', 'primary', '2018-10-10 05:14:04', '2018-10-10 05:14:04'),
(97, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":null,\"slug_id\":null,\"slug-screen\":\"chuyengia\",\"description\":\"test qua\",\"content\":\"<p>test qua<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Quản trị viên', 'primary', '2018-10-10 05:14:08', '2018-10-10 05:14:08'),
(98, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":null,\"slug-screen\":\"chuyengia\",\"description\":\"test qua\",\"featured\":\"1\",\"content\":\"<p>test qua<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Quản trị viên', 'primary', '2018-10-10 05:23:09', '2018-10-10 05:23:09'),
(99, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"TEST l\\u1ea7n 1\",\"slug\":null,\"slug_id\":\"0\",\"slug-screen\":\"chuyengia\",\"description\":\"TEST l\\u1ea7n 1\",\"featured\":\"1\",\"content\":\"<p>TEST l\\u1ea7n 1<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'TEST lần 1', 'info', '2018-10-10 05:54:48', '2018-10-10 05:54:48'),
(100, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"TEST l\\u1ea7n 1\",\"slug\":null,\"slug_id\":null,\"slug-screen\":\"chuyengia\",\"description\":\"TEST l\\u1ea7n 1\",\"content\":\"<p>TEST l\\u1ea7n 1<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'TEST lần 1', 'primary', '2018-10-10 05:54:51', '2018-10-10 05:54:51'),
(101, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"TEST l\\u1ea7n 1\",\"description\":\"TEST l\\u1ea7n 1\",\"featured\":\"1\",\"content\":\"<p>TEST l\\u1ea7n 1<\\/p>\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'TEST lần 1', 'primary', '2018-10-10 05:58:26', '2018-10-10 05:58:26'),
(102, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"TEST l\\u1ea7n 12\",\"description\":\"TEST l\\u1ea7n 1\",\"featured\":\"1\",\"content\":\"<p>TEST l\\u1ea7n 1<\\/p>\",\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'TEST lần 12', 'primary', '2018-10-10 05:59:00', '2018-10-10 05:59:00'),
(103, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":\"0\",\"slug-screen\":\"chuyengia\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Quản trị viên', 'info', '2018-10-10 06:14:33', '2018-10-10 06:14:33'),
(104, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean 2 2 2 2\",\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 2, 'Quản trị viên 2 2 2 2', 'info', '2018-10-10 06:22:44', '2018-10-10 06:22:44'),
(105, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean 2 2 2 2\",\"slug\":\"quan-tri-vien-2-2-2-2\",\"slug_id\":null,\"slug-screen\":\"chuyengia\",\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 2, 'Quản trị viên 2 2 2 2', 'primary', '2018-10-10 06:25:18', '2018-10-10 06:25:18'),
(106, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean 2 2 2 2\",\"slug\":\"quan-tri-vien-2-2-2-2\",\"slug_id\":\"92\",\"slug-screen\":\"chuyengia\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 2, 'Quản trị viên 2 2 2 2', 'primary', '2018-10-10 06:31:14', '2018-10-10 06:31:14'),
(107, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":\"91\",\"slug-screen\":\"chuyengia\",\"description\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"content\":\"<p>Qu\\u1ea3n tr\\u1ecb vi&ecirc;n<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Quản trị viên', 'primary', '2018-10-10 06:38:33', '2018-10-10 06:38:33'),
(108, 1, 'chuyengia', '{\"_token\":\"H0fQC79AbD44uxXTI7Sew6GLTUfFxcoc7HmEMEwf\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean 2 2 2 2\",\"slug\":\"quan-tri-vien-2-2-2-2\",\"slug_id\":\"92\",\"slug-screen\":\"chuyengia\",\"description\":null,\"content\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/new-logo-bvhb-20117-150x150.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 2, 'Quản trị viên 2 2 2 2', 'primary', '2018-10-10 06:38:50', '2018-10-10 06:38:50'),
(109, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-11 06:24:59', '2018-10-11 06:24:59'),
(110, 1, 'danhmucbvhb', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"test DM\",\"slug\":\"test-dm\",\"slug_id\":\"0\",\"slug-screen\":\"danhmucbvhb\",\"description\":\"test DM\",\"content\":\"<p>test DM<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'test DM', 'info', '2018-10-11 06:56:06', '2018-10-11 06:56:06'),
(111, 1, 'danhmucbvhb', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"test DM\",\"slug\":\"test-dm\",\"slug_id\":\"93\",\"slug-screen\":\"danhmucbvhb\",\"description\":\"test DM\",\"content\":\"<p>test DM<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/slider111.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'test DM', 'primary', '2018-10-11 06:56:13', '2018-10-11 06:56:13'),
(112, 1, 'danhmucbvhb', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'test DM', 'danger', '2018-10-11 06:57:57', '2018-10-11 06:57:57'),
(113, 1, 'chuyengia', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Quản trị viên', 'danger', '2018-10-11 07:03:28', '2018-10-11 07:03:28'),
(114, 1, 'chuyengia', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 2, 'Quản trị viên 2 2 2 2', 'danger', '2018-10-11 07:03:32', '2018-10-11 07:03:32'),
(115, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":\"0\",\"slug-screen\":\"chuyengia\",\"description\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"featured\":\"1\",\"content\":\"<p>Qu\\u1ea3n tr\\u1ecb vi&ecirc;n<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'Quản trị viên', 'info', '2018-10-11 07:04:24', '2018-10-11 07:04:24'),
(116, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"content\":\"<p>Qu\\u1ea3n tr\\u1ecb vi&ecirc;n<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'Quản trị viên', 'primary', '2018-10-11 07:04:40', '2018-10-11 07:04:40'),
(117, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"content\":\"<p>Qu\\u1ea3n tr\\u1ecb vi&ecirc;n<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'Quản trị viên', 'primary', '2018-10-11 07:04:43', '2018-10-11 07:04:43'),
(118, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"content\":\"<p>Qu\\u1ea3n tr\\u1ecb vi&ecirc;n<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'Quản trị viên', 'primary', '2018-10-11 07:09:44', '2018-10-11 07:09:44'),
(119, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"content\":\"<p>Qu\\u1ea3n tr\\u1ecb vi&ecirc;n<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'Quản trị viên', 'primary', '2018-10-11 07:13:40', '2018-10-11 07:13:40'),
(120, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"featured\":\"1\",\"content\":\"<p>Qu\\u1ea3n tr\\u1ecb vi&ecirc;n<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'Quản trị viên', 'primary', '2018-10-11 07:13:44', '2018-10-11 07:13:44'),
(121, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"content\":\"<p>Qu\\u1ea3n tr\\u1ecb vi&ecirc;n<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'Quản trị viên', 'primary', '2018-10-11 07:13:50', '2018-10-11 07:13:50'),
(122, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"chuyenkhoa\":\"C\\u1ea5p c\\u1ee9u h\\u1ed3i s\\u1ee9c t\\u00edch c\\u1ef1c v\\u00e0 ch\\u1ed1ng \\u0111\\u1ed9c\",\"content\":\"<p>Qu\\u1ea3n tr\\u1ecb vi&ecirc;n<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'Quản trị viên', 'primary', '2018-10-11 07:47:38', '2018-10-11 07:47:38'),
(123, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"chuyenkhoa\":\"Khoa S\\u1ea3n\",\"content\":\"<p>Qu\\u1ea3n tr\\u1ecb vi&ecirc;n<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'Quản trị viên', 'primary', '2018-10-11 07:47:46', '2018-10-11 07:47:46'),
(124, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"chuyenkhoa\":\"Khoa S\\u1ea3n\",\"hocvan\":\"BSCKI.\",\"content\":\"<p>Qu\\u1ea3n tr\\u1ecb vi&ecirc;n<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'Quản trị viên', 'primary', '2018-10-11 08:03:05', '2018-10-11 08:03:05'),
(125, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"slug\":\"quan-tri-vien\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"Qu\\u1ea3n tr\\u1ecb vi\\u00ean\",\"chuyenkhoa\":\"Khoa S\\u1ea3n\",\"hocvan\":\"CN.\",\"content\":\"<p>Qu\\u1ea3n tr\\u1ecb vi&ecirc;n<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'Quản trị viên', 'primary', '2018-10-11 08:03:10', '2018-10-11 08:03:10'),
(126, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"V\\u0168 V\\u0102N KHOA\",\"slug\":\"vu-van-khoa\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"chuyenkhoa\":\"Khoa Ngo\\u1ea1i - Ph\\u1eabu thu\\u1eadt g\\u00e2y m\\u00ea h\\u1ed3i s\\u1ee9c\",\"hocvan\":\"CN.\",\"content\":\"<p>Qu\\u1ea3n tr\\u1ecb vi&ecirc;n<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'VŨ VĂN KHOA', 'primary', '2018-10-11 08:12:57', '2018-10-11 08:12:57'),
(127, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"V\\u0168 V\\u0102N KHOA\",\"slug\":\"vu-van-khoa\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"chucvu\":\"Ph\\u00f3 tr\\u01b0\\u1edfng khoa Kh\\u00e1m x\\u01b0\\u01a1ng v\\u00e0 \\u0111i\\u1ec1u tr\\u1ecb ngo\\u1ea1i tr\\u00fa\",\"chuyenkhoa\":\"Khoa Ngo\\u1ea1i - Ph\\u1eabu thu\\u1eadt g\\u00e2y m\\u00ea h\\u1ed3i s\\u1ee9c\",\"hocvan\":\"TS. Bs.\",\"content\":\"<p>Nghi&ecirc;n c\\u1ee9u ph\\u01b0\\u01a1ng ph&aacute;p \\u0111i\\u1ec1u tr\\u1ecb ph\\u1ee9c t\\u1ea1p hai x\\u01b0\\u01a1ng c\\u0103ng ch&acirc;n b\\u1eb1ng \\u0111&oacute;ng \\u0111inh NT ki\\u1ec3u sign.<\\/p>\\r\\n\\r\\n<p>Nghi&ecirc;n c\\u1ee9u \\u1ee9ng d\\u1ee5ng x\\u01b0\\u01a1ng nh&acirc;n t\\u1ea1o \\u0111i\\u1ec1u tr\\u1ecb kh\\u1edbp gi\\u1ea3 x\\u01b0\\u01a1ng d&agrave;i chi d\\u01b0\\u1edbi.<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'VŨ VĂN KHOA', 'primary', '2018-10-11 08:15:34', '2018-10-11 08:15:34');
INSERT INTO `audit_history` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(128, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"V\\u0168 V\\u0102N KHOA\",\"slug\":\"vu-van-khoa\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"chucvu\":null,\"chuyenkhoa\":\"Khoa Ngo\\u1ea1i - Ph\\u1eabu thu\\u1eadt g\\u00e2y m\\u00ea h\\u1ed3i s\\u1ee9c\",\"hocvan\":\"TS. Bs.\",\"content\":\"<p>Nghi&ecirc;n c\\u1ee9u ph\\u01b0\\u01a1ng ph&aacute;p \\u0111i\\u1ec1u tr\\u1ecb ph\\u1ee9c t\\u1ea1p hai x\\u01b0\\u01a1ng c\\u0103ng ch&acirc;n b\\u1eb1ng \\u0111&oacute;ng \\u0111inh NT ki\\u1ec3u sign.<\\/p>\\r\\n\\r\\n<p>Nghi&ecirc;n c\\u1ee9u \\u1ee9ng d\\u1ee5ng x\\u01b0\\u01a1ng nh&acirc;n t\\u1ea1o \\u0111i\\u1ec1u tr\\u1ecb kh\\u1edbp gi\\u1ea3 x\\u01b0\\u01a1ng d&agrave;i chi d\\u01b0\\u1edbi.<\\/p>\",\"seo_meta\":{\"seo_title\":\"V\\u0168 V\\u0102N KHOA\",\"seo_description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\"},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'VŨ VĂN KHOA', 'primary', '2018-10-11 08:16:43', '2018-10-11 08:16:43'),
(129, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"V\\u0168 V\\u0102N KHOA\",\"slug\":\"vu-van-khoa\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"chucvu\":null,\"chuyenkhoa\":\"Khoa Ngo\\u1ea1i - Ph\\u1eabu thu\\u1eadt g\\u00e2y m\\u00ea h\\u1ed3i s\\u1ee9c\",\"hocvan\":\"TS. Bs.\",\"content\":\"<p>Nghi&ecirc;n c\\u1ee9u ph\\u01b0\\u01a1ng ph&aacute;p \\u0111i\\u1ec1u tr\\u1ecb ph\\u1ee9c t\\u1ea1p hai x\\u01b0\\u01a1ng c\\u0103ng ch&acirc;n b\\u1eb1ng \\u0111&oacute;ng \\u0111inh NT ki\\u1ec3u sign.<\\/p>\\r\\n\\r\\n<p>Nghi&ecirc;n c\\u1ee9u \\u1ee9ng d\\u1ee5ng x\\u01b0\\u01a1ng nh&acirc;n t\\u1ea1o \\u0111i\\u1ec1u tr\\u1ecb kh\\u1edbp gi\\u1ea3 x\\u01b0\\u01a1ng d&agrave;i chi d\\u01b0\\u1edbi.<\\/p>\",\"seo_meta\":{\"seo_title\":\"V\\u0168 V\\u0102N KHOA B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"seo_description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\"},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'VŨ VĂN KHOA', 'primary', '2018-10-11 08:17:16', '2018-10-11 08:17:16'),
(130, 1, 'menu', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"Menu ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"600\\\",\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/vi\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"594\\\",\\\"title\\\":\\\"Li\\u00ean h\\u1ec7\\\",\\\"relatedId\\\":\\\"17\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"614\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"615\\\",\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u chung\\\",\\\"relatedId\\\":\\\"20\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"616\\\",\\\"title\\\":\\\"C\\u01a1 c\\u1ea5u t\\u1ed5 ch\\u1ee9c\\\",\\\"relatedId\\\":\\\"21\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"617\\\",\\\"title\\\":\\\"Ch\\u1ee9c n\\u0103ng nhi\\u1ec7m v\\u1ee5\\\",\\\"relatedId\\\":\\\"22\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"618\\\",\\\"title\\\":\\\"H\\u1ec7 th\\u1ed1ng ph\\u00f2ng kh\\u00e1m\\\",\\\"relatedId\\\":\\\"23\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"619\\\",\\\"title\\\":\\\"Gi\\u1edd l\\u00e0m vi\\u1ec7c\\\",\\\"relatedId\\\":\\\"24\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}],\\\"position\\\":2},{\\\"id\\\":\\\"620\\\",\\\"title\\\":\\\"D\\u1ecbch v\\u1ee5\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"621\\\",\\\"title\\\":\\\"T\\u01b0 v\\u1ea5n\\\",\\\"relatedId\\\":\\\"24\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"622\\\",\\\"title\\\":\\\"B\\u00e0i vi\\u1ebft chuy\\u00ean m\\u00f4n\\\",\\\"relatedId\\\":\\\"25\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"623\\\",\\\"title\\\":\\\"B\\u00e1o ch\\u00ed\\\",\\\"relatedId\\\":\\\"27\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"624\\\",\\\"title\\\":\\\"Tin n\\u1ed9i b\\u1ed9\\\",\\\"relatedId\\\":\\\"26\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}],\\\"position\\\":4},{\\\"customUrl\\\":\\\"\\/chuyen-gia\\\",\\\"id\\\":\\\"625\\\",\\\"title\\\":\\\"Chuy\\u00ean Gia\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"626\\\",\\\"title\\\":\\\"Kh\\u00e1ch H\\u00e0ng\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"627\\\",\\\"title\\\":\\\"B\\u1ea3o hi\\u1ec3m\\\",\\\"relatedId\\\":\\\"18\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"628\\\",\\\"title\\\":\\\"H\\u01b0\\u1edbng d\\u1eabn kh\\u00e1m b\\u1ec7nh\\\",\\\"relatedId\\\":\\\"19\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]}],\\\"position\\\":6},{\\\"id\\\":\\\"629\\\",\\\"title\\\":\\\"T\\u00e0i li\\u1ec7u\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":7,\\\"children\\\":[]},{\\\"id\\\":\\\"630\\\",\\\"title\\\":\\\"Tuy\\u1ec3n d\\u1ee5ng\\\",\\\"relatedId\\\":\\\"28\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":8,\\\"children\\\":[]},{\\\"id\\\":\\\"631\\\",\\\"title\\\":\\\"Li\\u00ean h\\u1ec7\\\",\\\"relatedId\\\":\\\"17\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":9,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Li\\u00ean h\\u1ec7\",\"custom-url\":\"#\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 10, 'Menu chính', 'primary', '2018-10-11 08:17:54', '2018-10-11 08:17:54'),
(131, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"V\\u0168 V\\u0102N KHOA\",\"slug\":\"vu-van-khoa\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"chucvu\":\"PH\\u00d3 TR\\u01af\\u1edeNG KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"chuyenkhoa\":\"Khoa Ngo\\u1ea1i - Ph\\u1eabu thu\\u1eadt g\\u00e2y m\\u00ea h\\u1ed3i s\\u1ee9c\",\"hocvan\":\"TS. Bs.\",\"content\":\"<p>Nghi&ecirc;n c\\u1ee9u ph\\u01b0\\u01a1ng ph&aacute;p \\u0111i\\u1ec1u tr\\u1ecb ph\\u1ee9c t\\u1ea1p hai x\\u01b0\\u01a1ng c\\u0103ng ch&acirc;n b\\u1eb1ng \\u0111&oacute;ng \\u0111inh NT ki\\u1ec3u sign.<\\/p>\\r\\n\\r\\n<p>Nghi&ecirc;n c\\u1ee9u \\u1ee9ng d\\u1ee5ng x\\u01b0\\u01a1ng nh&acirc;n t\\u1ea1o \\u0111i\\u1ec1u tr\\u1ecb kh\\u1edbp gi\\u1ea3 x\\u01b0\\u01a1ng d&agrave;i chi d\\u01b0\\u1edbi.<\\/p>\",\"seo_meta\":{\"seo_title\":\"V\\u0168 V\\u0102N KHOA B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"seo_description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\"},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'VŨ VĂN KHOA', 'primary', '2018-10-11 08:29:34', '2018-10-11 08:29:34'),
(132, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"V\\u0168 V\\u0102N KHOA\",\"slug\":\"vu-van-khoa\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"chucvu\":\"Ph\\u00f3 tr\\u01b0\\u1edfng khoa Kh\\u00e1m x\\u01b0\\u01a1ng v\\u00e0 \\u0111i\\u1ec1u tr\\u1ecb ngo\\u1ea1i tr\\u00fa\",\"chuyenkhoa\":\"Khoa Ngo\\u1ea1i - Ph\\u1eabu thu\\u1eadt g\\u00e2y m\\u00ea h\\u1ed3i s\\u1ee9c\",\"hocvan\":\"TS. Bs.\",\"content\":\"<p>Nghi&ecirc;n c\\u1ee9u ph\\u01b0\\u01a1ng ph&aacute;p \\u0111i\\u1ec1u tr\\u1ecb ph\\u1ee9c t\\u1ea1p hai x\\u01b0\\u01a1ng c\\u0103ng ch&acirc;n b\\u1eb1ng \\u0111&oacute;ng \\u0111inh NT ki\\u1ec3u sign.<\\/p>\\r\\n\\r\\n<p>Nghi&ecirc;n c\\u1ee9u \\u1ee9ng d\\u1ee5ng x\\u01b0\\u01a1ng nh&acirc;n t\\u1ea1o \\u0111i\\u1ec1u tr\\u1ecb kh\\u1edbp gi\\u1ea3 x\\u01b0\\u01a1ng d&agrave;i chi d\\u01b0\\u1edbi.<\\/p>\",\"seo_meta\":{\"seo_title\":\"V\\u0168 V\\u0102N KHOA B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"seo_description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\"},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'VŨ VĂN KHOA', 'primary', '2018-10-11 08:30:10', '2018-10-11 08:30:10'),
(133, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"V\\u0168 V\\u0102N KHOA\",\"slug\":\"vu-van-khoa\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"chucvu\":\"Ph\\u00f3 tr\\u01b0\\u1edfng khoa Kh\\u00e1m x\\u01b0\\u01a1ng v\\u00e0 \\u0111i\\u1ec1u tr\\u1ecb ngo\\u1ea1i tr\\u00fa\",\"chuyenkhoa\":\"Khoa Ngo\\u1ea1i - Ph\\u1eabu thu\\u1eadt g\\u00e2y m\\u00ea h\\u1ed3i s\\u1ee9c\",\"hocvan\":\"TS. Bs.\",\"content\":\"<p><strong>C&ocirc;ng tr&igrave;nh Nghi&ecirc;n c\\u1ee9u khoa h\\u1ecdc:&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>Nghi&ecirc;n c\\u1ee9u ph\\u01b0\\u01a1ng ph&aacute;p \\u0111i\\u1ec1u tr\\u1ecb ph\\u1ee9c t\\u1ea1p hai x\\u01b0\\u01a1ng c\\u0103ng ch&acirc;n b\\u1eb1ng \\u0111&oacute;ng \\u0111inh NT ki\\u1ec3u sign.<\\/p>\\r\\n\\r\\n<p>Nghi&ecirc;n c\\u1ee9u \\u1ee9ng d\\u1ee5ng x\\u01b0\\u01a1ng nh&acirc;n t\\u1ea1o \\u0111i\\u1ec1u tr\\u1ecb kh\\u1edbp gi\\u1ea3 x\\u01b0\\u01a1ng d&agrave;i chi d\\u01b0\\u1edbi.<\\/p>\",\"seo_meta\":{\"seo_title\":\"V\\u0168 V\\u0102N KHOA B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"seo_description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\"},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'VŨ VĂN KHOA', 'primary', '2018-10-11 08:35:01', '2018-10-11 08:35:01'),
(134, 1, 'chuyengia', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"V\\u0168 V\\u0102N KHOA\",\"slug\":\"vu-van-khoa\",\"slug_id\":\"94\",\"slug-screen\":\"chuyengia\",\"description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"chucvu\":\"Ph\\u00f3 tr\\u01b0\\u1edfng khoa Kh\\u00e1m x\\u01b0\\u01a1ng v\\u00e0 \\u0111i\\u1ec1u tr\\u1ecb ngo\\u1ea1i tr\\u00fa\",\"chuyenkhoa\":\"Khoa Ngo\\u1ea1i - Ph\\u1eabu thu\\u1eadt g\\u00e2y m\\u00ea h\\u1ed3i s\\u1ee9c\",\"hocvan\":\"TS. Bs.\",\"content\":\"<h3><span style=\\\"font-size:24px;\\\"><strong>C&ocirc;ng tr&igrave;nh Nghi&ecirc;n c\\u1ee9u khoa h\\u1ecdc:<\\/strong><\\/span><\\/h3>\\r\\n\\r\\n<p>Nghi&ecirc;n c\\u1ee9u ph\\u01b0\\u01a1ng ph&aacute;p \\u0111i\\u1ec1u tr\\u1ecb ph\\u1ee9c t\\u1ea1p hai x\\u01b0\\u01a1ng c\\u0103ng ch&acirc;n b\\u1eb1ng \\u0111&oacute;ng \\u0111inh NT ki\\u1ec3u sign.<\\/p>\\r\\n\\r\\n<p>Nghi&ecirc;n c\\u1ee9u \\u1ee9ng d\\u1ee5ng x\\u01b0\\u01a1ng nh&acirc;n t\\u1ea1o \\u0111i\\u1ec1u tr\\u1ecb kh\\u1edbp gi\\u1ea3 x\\u01b0\\u01a1ng d&agrave;i chi d\\u01b0\\u1edbi.<\\/p>\",\"seo_meta\":{\"seo_title\":\"V\\u0168 V\\u0102N KHOA B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"seo_description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\"},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'VŨ VĂN KHOA', 'primary', '2018-10-11 08:53:22', '2018-10-11 08:53:22'),
(135, 1, 'menu', '{\"_token\":\"QsPBh3F1nMYl8cljZWGldKjURIaKGEerPJryC6IX\",\"name\":\"Menu ch\\u00ednh\",\"deleted_nodes\":\"594\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/vi\\\",\\\"id\\\":600,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"relatedId\\\":0,\\\"type\\\":\\\"custom-link\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"id\\\":614,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":0,\\\"type\\\":\\\"custom-link\\\",\\\"children\\\":[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":615,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u chung\\\",\\\"relatedId\\\":20,\\\"type\\\":\\\"page\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":616,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"C\\u01a1 c\\u1ea5u t\\u1ed5 ch\\u1ee9c\\\",\\\"relatedId\\\":21,\\\"type\\\":\\\"page\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":617,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Ch\\u1ee9c n\\u0103ng nhi\\u1ec7m v\\u1ee5\\\",\\\"relatedId\\\":22,\\\"type\\\":\\\"page\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":618,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"H\\u1ec7 th\\u1ed1ng ph\\u00f2ng kh\\u00e1m\\\",\\\"relatedId\\\":23,\\\"type\\\":\\\"page\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":619,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Gi\\u1edd l\\u00e0m vi\\u1ec7c\\\",\\\"relatedId\\\":24,\\\"type\\\":\\\"page\\\",\\\"position\\\":4,\\\"children\\\":[]}],\\\"position\\\":1},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"id\\\":620,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"D\\u1ecbch v\\u1ee5\\\",\\\"relatedId\\\":0,\\\"type\\\":\\\"custom-link\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":621,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"T\\u01b0 v\\u1ea5n\\\",\\\"relatedId\\\":24,\\\"type\\\":\\\"category\\\",\\\"children\\\":[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":622,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"B\\u00e0i vi\\u1ebft chuy\\u00ean m\\u00f4n\\\",\\\"relatedId\\\":25,\\\"type\\\":\\\"category\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":623,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"B\\u00e1o ch\\u00ed\\\",\\\"relatedId\\\":27,\\\"type\\\":\\\"category\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":624,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Tin n\\u1ed9i b\\u1ed9\\\",\\\"relatedId\\\":26,\\\"type\\\":\\\"category\\\",\\\"position\\\":2,\\\"children\\\":[]}],\\\"position\\\":3},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/chuyen-gia\\\",\\\"id\\\":625,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Chuy\\u00ean Gia\\\",\\\"relatedId\\\":0,\\\"type\\\":\\\"custom-link\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"id\\\":626,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Kh\\u00e1ch H\\u00e0ng\\\",\\\"relatedId\\\":0,\\\"type\\\":\\\"custom-link\\\",\\\"children\\\":[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":627,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"B\\u1ea3o hi\\u1ec3m\\\",\\\"relatedId\\\":18,\\\"type\\\":\\\"page\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":628,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"H\\u01b0\\u1edbng d\\u1eabn kh\\u00e1m b\\u1ec7nh\\\",\\\"relatedId\\\":19,\\\"type\\\":\\\"page\\\",\\\"position\\\":1,\\\"children\\\":[]}],\\\"position\\\":5},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"id\\\":629,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"T\\u00e0i li\\u1ec7u\\\",\\\"relatedId\\\":0,\\\"type\\\":\\\"custom-link\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":630,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Tuy\\u1ec3n d\\u1ee5ng\\\",\\\"relatedId\\\":28,\\\"type\\\":\\\"category\\\",\\\"position\\\":7,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\\",\\\"id\\\":631,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Li\\u00ean h\\u1ec7\\\",\\\"relatedId\\\":17,\\\"type\\\":\\\"page\\\",\\\"position\\\":8,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Li\\u00ean h\\u1ec7\",\"custom-url\":\"#\",\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 10, 'Menu chính', 'primary', '2018-10-11 08:57:42', '2018-10-11 08:57:42'),
(136, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-13 05:12:00', '2018-10-13 05:12:00'),
(137, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-13 08:46:39', '2018-10-13 08:46:39'),
(138, 1, 'chuyengia', '{\"_token\":\"e53TV1peDs29083EvtdfNq6IAi3Yjas8yAWQQogV\",\"name\":\"test\",\"slug\":\"test\",\"slug_id\":\"0\",\"slug-screen\":\"chuyengia\",\"description\":\"test\",\"chucvu\":\"test\",\"chuyenkhoa\":\"Khoa Kh\\u00e1m b\\u1ec7nh\",\"hocvan\":\"BSCKI.\",\"content\":\"<p>test<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 4, 'test', 'info', '2018-10-13 08:46:57', '2018-10-13 08:46:57'),
(139, 1, 'chuyengia', '{\"_token\":\"e53TV1peDs29083EvtdfNq6IAi3Yjas8yAWQQogV\",\"name\":\"test\",\"slug\":\"test-1\",\"slug_id\":\"0\",\"slug-screen\":\"chuyengia\",\"description\":\"test\",\"chucvu\":\"test\",\"chuyenkhoa\":\"C\\u1ea5p c\\u1ee9u h\\u1ed3i s\\u1ee9c t\\u00edch c\\u1ef1c v\\u00e0 ch\\u1ed1ng \\u0111\\u1ed9c\",\"hocvan\":\"TS.\",\"content\":\"<p>test<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 5, 'test', 'info', '2018-10-13 08:47:16', '2018-10-13 08:47:16'),
(140, 1, 'chuyengia', '{\"_token\":\"e53TV1peDs29083EvtdfNq6IAi3Yjas8yAWQQogV\",\"name\":\"test\",\"slug\":\"test-2\",\"slug_id\":\"0\",\"slug-screen\":\"chuyengia\",\"description\":\"test\",\"chucvu\":\"test\",\"chuyenkhoa\":\"C\\u1ea5p c\\u1ee9u h\\u1ed3i s\\u1ee9c t\\u00edch c\\u1ef1c v\\u00e0 ch\\u1ed1ng \\u0111\\u1ed9c\",\"hocvan\":\"BS.\",\"content\":\"<p>test<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 6, 'test', 'info', '2018-10-13 08:47:34', '2018-10-13 08:47:34'),
(141, 1, 'chuyengia', '{\"_token\":\"e53TV1peDs29083EvtdfNq6IAi3Yjas8yAWQQogV\",\"name\":\"test\",\"slug\":\"test-2\",\"slug_id\":\"97\",\"slug-screen\":\"chuyengia\",\"description\":\"test\",\"chucvu\":\"test\",\"chuyenkhoa\":\"C\\u1ea5p c\\u1ee9u h\\u1ed3i s\\u1ee9c t\\u00edch c\\u1ef1c v\\u00e0 ch\\u1ed1ng \\u0111\\u1ed9c\",\"hocvan\":\"BS.\",\"content\":\"<p>test<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 6, 'test', 'primary', '2018-10-13 08:47:49', '2018-10-13 08:47:49'),
(142, 1, 'chuyengia', '{\"_token\":\"e53TV1peDs29083EvtdfNq6IAi3Yjas8yAWQQogV\",\"name\":\"test\",\"slug\":\"test-2\",\"slug_id\":\"97\",\"slug-screen\":\"chuyengia\",\"description\":\"test\",\"chucvu\":\"test\",\"chuyenkhoa\":\"C\\u1ea5p c\\u1ee9u h\\u1ed3i s\\u1ee9c t\\u00edch c\\u1ef1c v\\u00e0 ch\\u1ed1ng \\u0111\\u1ed9c\",\"hocvan\":\"BS.\",\"content\":\"<p>test<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 6, 'test', 'primary', '2018-10-13 08:48:35', '2018-10-13 08:48:35'),
(143, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-10-17 05:50:31', '2018-10-17 05:50:31'),
(144, 1, 'danhmucbvhb', '{\"_token\":\"CmujSA8Ei5Qm9hIcAloxiL28LkwAFA7pUkzs3cdC\",\"name\":\"Danh m\\u1ee5c 1\",\"slug\":\"danh-muc-1\",\"slug_id\":\"0\",\"slug-screen\":\"danhmucbvhb\",\"description\":\"Danh m\\u1ee5c 1\",\"content\":\"<p>Danh m\\u1ee5c 1<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Danh mục 1', 'info', '2018-10-17 05:51:42', '2018-10-17 05:51:42'),
(145, 1, 'danhmucbvhb', '{\"_token\":\"CmujSA8Ei5Qm9hIcAloxiL28LkwAFA7pUkzs3cdC\",\"name\":\"Danh m\\u1ee5c 1\",\"slug\":\"danh-muc-1\",\"slug_id\":\"98\",\"slug-screen\":\"danhmucbvhb\",\"price_cates\":\"200000\",\"price_type\":\"1\",\"content\":\"<p>Danh m\\u1ee5c 1<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Danh mục 1', 'primary', '2018-10-17 06:13:46', '2018-10-17 06:13:46'),
(146, 1, 'danhmucbvhb', '{\"_token\":\"CmujSA8Ei5Qm9hIcAloxiL28LkwAFA7pUkzs3cdC\",\"name\":\"Danh m\\u1ee5c 1\",\"slug\":\"danh-muc-1\",\"slug_id\":\"98\",\"slug-screen\":\"danhmucbvhb\",\"price_cates\":\"200000\",\"price_type\":\"2\",\"content\":\"<p>Danh m\\u1ee5c 1<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Danh mục 1', 'primary', '2018-10-17 06:14:31', '2018-10-17 06:14:31'),
(147, 1, 'danhmucbvhb', '{\"_token\":\"CmujSA8Ei5Qm9hIcAloxiL28LkwAFA7pUkzs3cdC\",\"name\":\"Danh m\\u1ee5c 1\",\"slug\":\"danh-muc-1\",\"slug_id\":\"98\",\"slug-screen\":\"danhmucbvhb\",\"price_cates\":\"200000\",\"price_type\":\"giagoisan\",\"content\":\"<p>Danh m\\u1ee5c 1<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Danh mục 1', 'primary', '2018-10-17 06:15:53', '2018-10-17 06:15:53'),
(148, 1, 'danhmucbvhb', '{\"_token\":\"CmujSA8Ei5Qm9hIcAloxiL28LkwAFA7pUkzs3cdC\",\"name\":\"Danh m\\u1ee5c 1\",\"slug\":\"danh-muc-1\",\"slug_id\":\"98\",\"slug-screen\":\"danhmucbvhb\",\"price_cates\":\"200000\",\"price_type\":\"giaxetnghiem\",\"content\":\"<p>Danh m\\u1ee5c 1<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/chuyen-gia\\/tsbsvu-van-khoa.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 1, 'Danh mục 1', 'primary', '2018-10-17 06:16:04', '2018-10-17 06:16:04'),
(149, 1, 'danhmucbvhb', '{\"_token\":\"CmujSA8Ei5Qm9hIcAloxiL28LkwAFA7pUkzs3cdC\",\"name\":\"Danh m\\u1ee5c 2\",\"slug\":\"danh-muc-2\",\"slug_id\":\"0\",\"slug-screen\":\"danhmucbvhb\",\"price_cates\":\"200000\",\"price_type\":\"giagoisan\",\"content\":\"<p>200000<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 2, 'Danh mục 2', 'info', '2018-10-17 06:18:36', '2018-10-17 06:18:36'),
(150, 1, 'danhmucbvhb', '{\"_token\":\"CmujSA8Ei5Qm9hIcAloxiL28LkwAFA7pUkzs3cdC\",\"name\":\"Danh m\\u1ee5c 2\",\"slug\":\"danh-muc-2\",\"slug_id\":\"99\",\"slug-screen\":\"danhmucbvhb\",\"price_cates\":\"200000\",\"price_type\":\"giagoikhamsuckhoe\",\"content\":\"<p>200000<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 2, 'Danh mục 2', 'primary', '2018-10-17 06:35:06', '2018-10-17 06:35:06'),
(151, 1, 'danhmucbvhb', '{\"_token\":\"CmujSA8Ei5Qm9hIcAloxiL28LkwAFA7pUkzs3cdC\",\"name\":\"Danh m\\u1ee5c 2\",\"slug\":\"danh-muc-2\",\"slug_id\":\"99\",\"slug-screen\":\"danhmucbvhb\",\"price_cates\":\"200000\",\"price_type\":\"giagoisan\",\"content\":\"<p>200000<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 2, 'Danh mục 2', 'primary', '2018-10-17 06:35:12', '2018-10-17 06:35:12'),
(152, 1, 'danhmucbvhb', '{\"_token\":\"CmujSA8Ei5Qm9hIcAloxiL28LkwAFA7pUkzs3cdC\",\"name\":\"Danh m\\u1ee5c 3\",\"slug\":\"danh-muc-3\",\"slug_id\":\"0\",\"slug-screen\":\"danhmucbvhb\",\"price_cates\":\"200000\",\"price_type\":\"giagoikhamsuckhoe\",\"content\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 3, 'Danh mục 3', 'info', '2018-10-17 06:45:36', '2018-10-17 06:45:36'),
(153, 1, 'menu', '{\"_token\":\"CmujSA8Ei5Qm9hIcAloxiL28LkwAFA7pUkzs3cdC\",\"name\":\"Menu ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"600\\\",\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/vi\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"614\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"615\\\",\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u chung\\\",\\\"relatedId\\\":\\\"20\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"616\\\",\\\"title\\\":\\\"C\\u01a1 c\\u1ea5u t\\u1ed5 ch\\u1ee9c\\\",\\\"relatedId\\\":\\\"21\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"617\\\",\\\"title\\\":\\\"Ch\\u1ee9c n\\u0103ng nhi\\u1ec7m v\\u1ee5\\\",\\\"relatedId\\\":\\\"22\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"618\\\",\\\"title\\\":\\\"H\\u1ec7 th\\u1ed1ng ph\\u00f2ng kh\\u00e1m\\\",\\\"relatedId\\\":\\\"23\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"619\\\",\\\"title\\\":\\\"Gi\\u1edd l\\u00e0m vi\\u1ec7c\\\",\\\"relatedId\\\":\\\"24\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}],\\\"position\\\":1},{\\\"title\\\":\\\"D\\u1ecbch v\\u1ee5\\\",\\\"id\\\":\\\"620\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"danh-muc-bvdkhb\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"621\\\",\\\"title\\\":\\\"T\\u01b0 v\\u1ea5n\\\",\\\"relatedId\\\":\\\"24\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"622\\\",\\\"title\\\":\\\"B\\u00e0i vi\\u1ebft chuy\\u00ean m\\u00f4n\\\",\\\"relatedId\\\":\\\"25\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"623\\\",\\\"title\\\":\\\"B\\u00e1o ch\\u00ed\\\",\\\"relatedId\\\":\\\"27\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"624\\\",\\\"title\\\":\\\"Tin n\\u1ed9i b\\u1ed9\\\",\\\"relatedId\\\":\\\"26\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}],\\\"position\\\":3},{\\\"id\\\":\\\"625\\\",\\\"title\\\":\\\"Chuy\\u00ean Gia\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/chuyen-gia\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"626\\\",\\\"title\\\":\\\"Kh\\u00e1ch H\\u00e0ng\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"627\\\",\\\"title\\\":\\\"B\\u1ea3o hi\\u1ec3m\\\",\\\"relatedId\\\":\\\"18\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"628\\\",\\\"title\\\":\\\"H\\u01b0\\u1edbng d\\u1eabn kh\\u00e1m b\\u1ec7nh\\\",\\\"relatedId\\\":\\\"19\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]}],\\\"position\\\":5},{\\\"id\\\":\\\"629\\\",\\\"title\\\":\\\"T\\u00e0i li\\u1ec7u\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"id\\\":\\\"630\\\",\\\"title\\\":\\\"Tuy\\u1ec3n d\\u1ee5ng\\\",\\\"relatedId\\\":\\\"28\\\",\\\"type\\\":\\\"category\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":7,\\\"children\\\":[]},{\\\"id\\\":\\\"631\\\",\\\"title\\\":\\\"Li\\u00ean h\\u1ec7\\\",\\\"relatedId\\\":\\\"17\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":8,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Li\\u00ean h\\u1ec7\",\"custom-url\":\"#\",\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '127.0.0.1', 1, 10, 'Menu chính', 'primary', '2018-10-17 07:19:52', '2018-10-17 07:19:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `alias`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sample block', 'sample-block', 'This is a sample block', '<p><strong><span style=\"color: #ff6600;\">This block will be shown on the page has its shortcode!</span></strong></p>', 1, 1, '2017-06-15 07:27:06', '2017-06-15 07:27:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `user_id`, `icon`, `featured`, `order`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 0, 'Demo', 1, 0, '', 0, 0, 1, '2016-07-09 16:32:39', '2016-11-25 07:31:58'),
(12, 'Chưa phân loại', 0, 'Chuyên mục chưa phân loại', 1, 1, NULL, 0, 0, 1, '2018-04-13 09:02:12', '2018-04-13 09:02:12'),
(24, 'Tư vấn', 0, 'Tư vấn', 1, 1, NULL, 0, 0, 0, '2018-10-08 06:16:37', '2018-10-08 06:16:37'),
(25, 'Bài viết chuyên môn', 24, 'Bài viết chuyên môn', 1, 1, NULL, 0, 0, 0, '2018-10-08 06:16:50', '2018-10-08 06:16:50'),
(26, 'Tin nội bộ', 24, 'Tin nội bộ', 1, 1, NULL, 0, 0, 0, '2018-10-08 06:17:05', '2018-10-08 06:17:05'),
(27, 'Báo chí', 24, 'Báo chí', 1, 1, NULL, 0, 0, 0, '2018-10-08 06:17:15', '2018-10-08 06:17:15'),
(28, 'Tuyển dụng', 0, 'Tuyển dụng', 1, 1, NULL, 0, 0, 0, '2018-10-08 06:23:06', '2018-10-08 06:23:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyengias`
--

CREATE TABLE `chuyengias` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chucvu` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chuyenkhoa` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocvan` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `featured` tinyint(3) UNSIGNED DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuyengias`
--

INSERT INTO `chuyengias` (`id`, `name`, `description`, `chucvu`, `chuyenkhoa`, `hocvan`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(3, 'VŨ VĂN KHOA', 'BÁC SĨ CHUYÊN GIA, KHOA PHẪU THUẬT CHI DƯỚI, KHOA KHÁM XƯƠNG VÀ ĐIỀU TRỊ NGOẠI TRÚ', 'Phó trưởng khoa Khám xương và điều trị ngoại trú', 'Khoa Ngoại - Phẫu thuật gây mê hồi sức', 'TS. Bs.', '<h3><span style=\"font-size:24px;\"><strong>C&ocirc;ng tr&igrave;nh Nghi&ecirc;n cứu khoa học:</strong></span></h3>\r\n\r\n<p>Nghi&ecirc;n cứu phương ph&aacute;p điều trị phức tạp hai xương căng ch&acirc;n bằng đ&oacute;ng đinh NT kiểu sign.</p>\r\n\r\n<p>Nghi&ecirc;n cứu ứng dụng xương nh&acirc;n tạo điều trị khớp giả xương d&agrave;i chi dưới.</p>', 1, NULL, 0, '/uploads/1/chuyen-gia/tsbsvu-van-khoa.jpg', 0, NULL, '2018-10-11 07:04:24', '2018-10-11 08:53:22'),
(4, 'test', 'test', 'test', 'Khoa Khám bệnh', 'BSCKI.', '<p>test</p>', 1, NULL, 0, '/uploads/1/chuyen-gia/tsbsvu-van-khoa.jpg', 0, NULL, '2018-10-13 08:46:57', '2018-10-13 08:46:57'),
(5, 'test', 'test', 'test', 'Cấp cứu hồi sức tích cực và chống độc', 'TS.', '<p>test</p>', 1, NULL, 0, '/uploads/1/chuyen-gia/tsbsvu-van-khoa.jpg', 0, NULL, '2018-10-13 08:47:16', '2018-10-13 08:47:16'),
(6, 'test', 'test', 'test', 'Cấp cứu hồi sức tích cực và chống độc', 'BS.', '<p>test</p>', 1, NULL, 0, NULL, 0, NULL, '2018-10-13 08:47:34', '2018-10-13 08:48:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `content`, `subject`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'Demo contact', 'admin@admin.com', '0123456789', 'Somewhere in the world', 'The sample content', NULL, 0, '2017-01-15 21:19:27', '2017-01-15 21:25:47'),
(2, 'dŨNG Lương ngọc', 'luongngocdung.vina@gmail.com', '949844404', '332 việt hòa hải dương', 'jkljkljkljkljk', 'jhjhj', 0, '2018-10-08 08:08:57', '2018-10-08 08:08:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `use_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` int(10) UNSIGNED NOT NULL,
  `field_item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `use_for`, `use_for_id`, `field_item_id`, `type`, `slug`, `value`) VALUES
(1, 'page', 1, 1, 'text', 'a_text_box', ''),
(2, 'page', 21, 1, 'text', 'a_text_box', ''),
(3, 'page', 22, 1, 'text', 'a_text_box', ''),
(4, 'page', 20, 1, 'text', 'a_text_box', ''),
(5, 'page', 17, 1, 'text', 'a_text_box', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucbvhbs`
--

CREATE TABLE `danhmucbvhbs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_cates` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucbvhbs`
--

INSERT INTO `danhmucbvhbs` (`id`, `name`, `price_cates`, `price_type`, `description`, `content`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Danh mục 1', '200000', 'giaxetnghiem', 'Danh mục 1', '<p>Danh mục 1</p>', 1, '/uploads/1/chuyen-gia/tsbsvu-van-khoa.jpg', '2018-10-17 05:51:42', '2018-10-17 06:16:04'),
(2, 'Danh mục 2', '200000', 'giagoisan', NULL, '<p>200000</p>', 1, NULL, '2018-10-17 06:18:36', '2018-10-17 06:35:12'),
(3, 'Danh mục 3', '200000', 'giagoikhamsuckhoe', NULL, NULL, 1, NULL, '2018-10-17 06:45:35', '2018-10-17 06:45:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_posts_recent', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(2, 'widget_analytics_general', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(3, 'widget_analytics_page', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(4, 'widget_analytics_browser', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(5, 'widget_analytics_referrer', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(6, 'widget_audit_logs', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(7, 'widget_request_errors', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(8, 'widget_total_plugins', '2018-09-29 10:41:49', '2018-09-29 10:41:49'),
(9, 'widget_total_users', '2018-09-29 10:41:49', '2018-09-29 10:41:49'),
(10, 'widget_total_pages', '2018-09-29 10:41:49', '2018-09-29 10:41:49'),
(11, 'widget_total_themes', '2018-09-29 10:41:49', '2018-09-29 10:41:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 1, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:18'),
(2, NULL, 1, 3, 2, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:18'),
(3, NULL, 1, 4, 3, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:14'),
(4, NULL, 1, 5, 4, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:14'),
(5, NULL, 1, 6, 5, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:10'),
(6, NULL, 1, 7, 6, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:10'),
(7, NULL, 1, 2, 0, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:18'),
(8, NULL, 1, 8, 0, 1, '2018-10-04 10:27:46', '2018-10-04 10:27:46'),
(9, NULL, 1, 9, 0, 1, '2018-10-04 10:27:46', '2018-10-04 10:27:46'),
(10, NULL, 1, 10, 0, 1, '2018-10-04 10:27:46', '2018-10-04 10:27:46'),
(11, NULL, 1, 11, 110, 1, '2018-10-04 10:27:46', '2018-10-04 10:27:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `field_groups`
--

CREATE TABLE `field_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `field_groups`
--

INSERT INTO `field_groups` (`id`, `title`, `rules`, `order`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sample custom fields', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"default\"}]]', 0, 1, 1, 1, '2018-01-17 18:35:12', '2018-01-17 18:35:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `field_items`
--

CREATE TABLE `field_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_group_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `field_items`
--

INSERT INTO `field_items` (`id`, `field_group_id`, `parent_id`, `order`, `title`, `slug`, `type`, `instructions`, `options`) VALUES
(1, 1, NULL, 1, 'A text box', 'a_text_box', 'text', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":\"This text box come from custom field\",\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `status`, `featured`, `order`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Photography', 'This is description', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg', 1, '2016-10-13 09:49:13', '2017-12-16 09:48:19'),
(2, 'Nature', 'Nature gallery', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513483-misty-mountains-1280x720.jpg', 1, '2016-10-13 09:56:07', '2017-12-16 16:59:53'),
(3, 'New Day', 'This is demo gallery', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520418-supergirl-season-2-1280x720.jpg', 1, '2016-10-13 09:56:44', '2017-12-16 09:48:19'),
(4, 'Morning', 'Hello', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg', 1, '2016-10-13 09:57:30', '2017-12-16 09:48:19'),
(5, 'Happy day', 'Demo', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg', 1, '2016-10-13 09:58:11', '2017-12-16 09:48:19'),
(6, 'Perfect', 'This is perfect description', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg', 1, '2016-10-13 09:58:40', '2017-12-16 09:48:20'),
(7, 'Nhiếp ảnh', 'Bộ sưu tập nhiếp ảnh', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg', 1, '2017-12-16 17:02:39', '2017-12-16 17:03:25'),
(8, 'Thiên nhiên', 'Bộ sưu tập ảnh thiên nhiên', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513483-misty-mountains-1280x720.jpg', 1, '2017-12-16 17:03:19', '2017-12-16 17:03:19'),
(9, 'Ngày mới', 'Bộ sưu tập ảnh ngày mới', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520418-supergirl-season-2-1280x720.jpg', 1, '2017-12-16 17:03:48', '2017-12-16 17:03:48'),
(10, 'Buổi sáng', 'Bộ sưu tập ảnh buổi sáng', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg', 1, '2017-12-16 17:04:20', '2017-12-16 17:04:20'),
(11, 'Ngày hạnh phúc', 'Bộ sưu tập ảnh ngày hạnh phúc', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg', 1, '2017-12-16 17:04:43', '2017-12-16 17:04:43'),
(12, 'Hoàn hảo', 'Bộ sưu tập ảnh hoàn hảo', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg', 1, '2017-12-16 17:05:01', '2017-12-16 17:05:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `content_id`, `images`, `reference`, `created_at`, `updated_at`) VALUES
(70, 1, '[{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520418-supergirl-season-2-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513490-tulips-4k-8k-768x1280.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513483-misty-mountains-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg\",\"description\":null}]', 'gallery', '2017-12-16 10:00:24', '2018-01-17 18:33:32'),
(71, 2, '[{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520418-supergirl-season-2-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513490-tulips-4k-8k-768x1280.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513483-misty-mountains-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg\",\"description\":null}]', 'gallery', '2017-12-16 10:04:54', '2017-12-16 16:59:53'),
(72, 3, '[{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520418-supergirl-season-2-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513490-tulips-4k-8k-768x1280.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513483-misty-mountains-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg\",\"description\":null}]', 'gallery', '2017-12-16 10:05:05', '2017-12-16 10:05:05'),
(73, 4, '[{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520418-supergirl-season-2-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513490-tulips-4k-8k-768x1280.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513483-misty-mountains-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg\",\"description\":null}]', 'gallery', '2017-12-16 10:05:13', '2017-12-16 10:05:13'),
(74, 5, '[{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520418-supergirl-season-2-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513490-tulips-4k-8k-768x1280.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513483-misty-mountains-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg\",\"description\":null}]', 'gallery', '2017-12-16 10:05:21', '2017-12-16 10:05:21'),
(75, 6, '[{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520418-supergirl-season-2-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513490-tulips-4k-8k-768x1280.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513483-misty-mountains-1280x720.jpg\",\"description\":null},{\"img\":\"https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg\",\"description\":null}]', 'gallery', '2017-12-16 10:05:28', '2017-12-16 10:05:28'),
(77, 8, NULL, 'gallery', '2017-12-16 17:03:19', '2017-12-16 17:03:19'),
(78, 7, NULL, 'gallery', '2017-12-16 17:03:25', '2017-12-16 17:03:25'),
(79, 9, NULL, 'gallery', '2017-12-16 17:03:48', '2017-12-16 17:03:48'),
(80, 10, NULL, 'gallery', '2017-12-16 17:04:20', '2017-12-16 17:04:20'),
(81, 11, NULL, 'gallery', '2017-12-16 17:04:43', '2017-12-16 17:04:43'),
(82, 12, NULL, 'gallery', '2017-12-16 17:05:01', '2017-12-16 17:05:01'),
(85, 79, NULL, 'post', '2017-12-16 17:56:46', '2017-12-16 17:56:46'),
(86, 80, NULL, 'post', '2017-12-16 18:07:16', '2017-12-16 18:07:16'),
(87, 75, NULL, 'post', '2017-12-17 18:37:49', '2017-12-17 18:37:49'),
(88, 81, NULL, 'post', '2017-12-18 18:43:36', '2017-12-18 18:43:36'),
(89, 82, NULL, 'post', '2017-12-18 18:44:57', '2017-12-18 18:44:57'),
(91, 1, NULL, 'page', '2018-01-17 18:35:32', '2018-01-17 18:35:32'),
(92, 44, NULL, 'post', '2018-04-13 09:38:58', '2018-04-13 09:38:58'),
(94, 48, NULL, 'post', '2018-04-13 09:40:18', '2018-04-13 09:40:18'),
(96, 49, NULL, 'post', '2018-04-13 09:41:32', '2018-04-13 09:41:32'),
(98, 50, NULL, 'post', '2018-04-13 09:42:27', '2018-04-13 09:42:27'),
(122, 51, NULL, 'post', '2018-04-13 09:58:23', '2018-04-13 09:58:23'),
(123, 52, NULL, 'post', '2018-04-13 10:02:20', '2018-04-13 10:02:20'),
(125, 53, NULL, 'post', '2018-04-13 10:03:07', '2018-04-13 10:03:07'),
(129, 54, NULL, 'post', '2018-04-13 10:04:20', '2018-04-13 10:04:20'),
(131, 18, NULL, 'page', '2018-10-08 06:18:11', '2018-10-08 06:18:11'),
(132, 19, NULL, 'page', '2018-10-08 06:18:32', '2018-10-08 06:18:32'),
(136, 21, NULL, 'page', '2018-10-08 06:19:59', '2018-10-08 06:19:59'),
(137, 22, NULL, 'page', '2018-10-08 06:20:07', '2018-10-08 06:20:07'),
(138, 20, NULL, 'page', '2018-10-08 06:20:48', '2018-10-08 06:20:48'),
(139, 23, NULL, 'page', '2018-10-08 06:21:22', '2018-10-08 06:21:22'),
(140, 24, NULL, 'page', '2018-10-08 06:21:47', '2018-10-08 06:21:47'),
(141, 17, NULL, 'page', '2018-10-08 08:08:38', '2018-10-08 08:08:38'),
(143, 55, NULL, 'post', '2018-10-10 05:12:22', '2018-10-10 05:12:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(44, 'English', 'en', 'en_US', 'us', 0, 0, 0),
(45, 'Tiếng Việt', 'vi', 'vi', 'vn', 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_content_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_content_id`, `lang_meta_code`, `lang_meta_reference`, `lang_meta_origin`) VALUES
(3, 4, 'en_US', 'post', 'a9d40e38f773df46bfe3857c89404a5f'),
(4, 5, 'en_US', 'post', '9cf3508b0becc5829411b251ab1d7d68'),
(5, 6, 'en_US', 'post', '14ea2c977bff486d5d93caeeddb25433'),
(6, 7, 'en_US', 'post', '1e3d1a0e8a2d0b0a820f6fa5ff37913b'),
(7, 8, 'en_US', 'post', 'efa2fcd9b0bc7221fc37de650db1095d'),
(8, 9, 'en_US', 'post', '5aa291a9490cf5a6b770e4ef67eecf51'),
(9, 10, 'en_US', 'post', 'ddf6b2634ac599fca598c9f707d7e967'),
(10, 11, 'en_US', 'post', '0162b0f534be9b5c0de3a2c21ee12a22'),
(11, 12, 'en_US', 'post', '58d24bc8ca3ef58e26b6f5f2e97feb52'),
(13, 14, 'en_US', 'post', '6a95efc9f3493402f6edc17125a5f621'),
(14, 19, 'en_US', 'post', 'be26223edcf68e5f63a1a6437ba0be15'),
(15, 15, 'en_US', 'post', '36292b94b5bc330e88721f87c05e3d1c'),
(16, 16, 'en_US', 'post', 'e4bc15912ab7551f41dda75cab017005'),
(17, 17, 'en_US', 'post', '73bd326091a134d6eb79570db924bb3d'),
(18, 18, 'en_US', 'post', '77999a905526eb38febac6a1e0f1f5d9'),
(19, 20, 'en_US', 'post', '26af70c0ef781166972928bd181ab10b'),
(20, 21, 'en_US', 'post', '3856d68ccb4721e6432dcc1ee7001e20'),
(21, 44, 'vi', 'post', 'a9d40e38f773df46bfe3857c89404a5f'),
(22, 45, 'vi', 'post', '9cf3508b0becc5829411b251ab1d7d68'),
(23, 47, 'vi', 'post', '14ea2c977bff486d5d93caeeddb25433'),
(24, 46, 'vi', 'post', 'efa2fcd9b0bc7221fc37de650db1095d'),
(26, 1, 'en_US', 'category', 'ff750ed85cf1ac627f2b323889f78dd6'),
(32, 5, 'en_US', 'tag', 'f0698ed728cc9c18387840b72346e005'),
(33, 6, 'en_US', 'tag', 'e4ef34ee9099a01fcec8f45a79c5d4ba'),
(34, 1, 'en_US', 'gallery', 'b5956d5eec65f9edeb008fdd97771f3e'),
(35, 2, 'en_US', 'gallery', '4367a6d49e1eb6e5fb64d77052997e9c'),
(36, 3, 'en_US', 'gallery', '0cc8e19b35bb9b0a6b0b45d8a358ee6c'),
(37, 4, 'en_US', 'gallery', 'a2879f55a54f0e629851df6b48f61241'),
(38, 5, 'en_US', 'gallery', 'e6ceb4ae110f3d66f9444211a2ac8337'),
(39, 6, 'en_US', 'gallery', '9f2f8e1a4752378951cc1312b419c102'),
(40, 1, 'en_US', 'menu', '19848c17b2e0b8fd374ae6f4741599c4'),
(41, 3, 'en_US', 'menu', '5d79633980667117eaee456018277ad8'),
(42, 7, 'en_US', 'menu', 'b1ae8e07383b5d47e821dac905c86e6d'),
(43, 8, 'en_US', 'menu', '78d39e8989bebaa53bac83ff0fedc678'),
(44, 9, 'en_US', 'menu', '33a202bdbd1d82470cc1837e85622c5e'),
(45, 10, 'vi', 'menu', '19848c17b2e0b8fd374ae6f4741599c4'),
(47, 23, 'vi', 'page', '0bff9f3639cec70a3f65fc0149ad2b24'),
(48, 1, 'en_US', 'page', '3e971ce162e3737ae2b7af1e78c4bca2'),
(49, 17, 'vi', 'page', '3e971ce162e3737ae2b7af1e78c4bca2'),
(50, 7, 'vi', 'tag', 'f5a7aacaa745d7b1df533180f61bab95'),
(51, 1, 'en_US', 'block', '671424045986775272d0ceb6aab7139a'),
(52, 7, 'vi', 'gallery', 'b5956d5eec65f9edeb008fdd97771f3e'),
(53, 8, 'vi', 'gallery', '4367a6d49e1eb6e5fb64d77052997e9c'),
(54, 9, 'vi', 'gallery', '0cc8e19b35bb9b0a6b0b45d8a358ee6c'),
(55, 10, 'vi', 'gallery', 'a2879f55a54f0e629851df6b48f61241'),
(56, 11, 'vi', 'gallery', 'e6ceb4ae110f3d66f9444211a2ac8337'),
(57, 12, 'vi', 'gallery', '9f2f8e1a4752378951cc1312b419c102'),
(58, 12, 'vi', 'category', 'ff750ed85cf1ac627f2b323889f78dd6'),
(65, 48, 'vi', 'post', '1e3d1a0e8a2d0b0a820f6fa5ff37913b'),
(66, 49, 'vi', 'post', '5aa291a9490cf5a6b770e4ef67eecf51'),
(67, 50, 'vi', 'post', 'ddf6b2634ac599fca598c9f707d7e967'),
(68, 51, 'vi', 'post', '0162b0f534be9b5c0de3a2c21ee12a22'),
(69, 11, 'vi', 'tag', 'f0698ed728cc9c18387840b72346e005'),
(75, 24, 'vi', 'tag', 'e4ef34ee9099a01fcec8f45a79c5d4ba'),
(76, 25, 'en_US', 'tag', 'f5a7aacaa745d7b1df533180f61bab95'),
(77, 52, 'vi', 'post', '58d24bc8ca3ef58e26b6f5f2e97feb52'),
(78, 53, 'vi', 'post', '6a95efc9f3493402f6edc17125a5f621'),
(79, 54, 'vi', 'post', '36292b94b5bc330e88721f87c05e3d1c'),
(80, 55, 'vi', 'post', 'e4bc15912ab7551f41dda75cab017005'),
(81, 1, 'vi', 'simple-slider', '914f81b1fd2d00e343aca3f1bfcc3aa7'),
(87, 24, 'vi', 'category', '5ce57d67106d91ccb8267ea1e3c36405'),
(88, 25, 'vi', 'category', '6c4806eb5a6b4bc6c30b0b99d68df6cc'),
(89, 26, 'vi', 'category', '8beb30be7c84d9225a71cae0743b1d81'),
(90, 27, 'vi', 'category', 'a29d19c0715e499e47b75919589f283f'),
(91, 18, 'vi', 'page', 'eebc348df3b64dd6d1ad564db945a58c'),
(92, 19, 'vi', 'page', 'c9a058d48b7308a1315120534b021620'),
(93, 20, 'vi', 'page', '503f8b8f7ad0257d3ee242b84a44b3c6'),
(94, 21, 'vi', 'page', 'b162e7ff0d0686c9b2aa722c773ea6a8'),
(95, 22, 'vi', 'page', 'f1b8b8bb18abc02bbfb105345ac57b8f'),
(96, 24, 'vi', 'page', '2f35bf2c1c4160e47b39aa535a08de9f'),
(97, 28, 'vi', 'category', '983ed07fc1480c348f9f661c227641c2'),
(101, 3, 'vi', 'chuyengia', '21d9928ebaefc51f003b1b8464506905'),
(102, 4, 'vi', 'chuyengia', '690c83ebabb433410a2c4f23bdc93458'),
(103, 5, 'vi', 'chuyengia', '4ee11965533696a9f93904a93a7f0b59'),
(104, 6, 'vi', 'chuyengia', 'a844d754f8cdb9f94586f66c5984bfd6'),
(105, 1, 'vi', 'danhmucbvhb', 'ad7853039a8a72e05228d4d56ceaff45'),
(106, 2, 'vi', 'danhmucbvhb', '25c9c3607bbc0e681e49c6811c859ed5'),
(107, 3, 'vi', 'danhmucbvhb', '78d3915abe3779ff5c2c046360517d27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_files`
--

CREATE TABLE `media_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 1, '33', 0, 'image/png', 1974326, '/uploads/1/33.png', '[]', '2018-10-01 08:30:55', '2018-10-01 08:30:55', NULL),
(10, 1, 'slider111', 0, 'image/jpeg', 571668, '/uploads/1/slider111.jpg', '[]', '2018-10-01 08:31:00', '2018-10-01 08:31:00', NULL),
(11, 1, 'slider2222', 0, 'image/jpeg', 719360, '/uploads/1/slider2222.jpg', '[]', '2018-10-01 08:31:03', '2018-10-01 08:31:03', NULL),
(12, 1, 'new-logo-bvhb-20117-150x150', 0, 'image/png', 34095, '/uploads/1/new-logo-bvhb-20117-150x150.png', '[]', '2018-10-04 08:31:40', '2018-10-04 08:31:40', NULL),
(13, 1, 'slogan_BVHB', 0, 'image/png', 11807, '/uploads/1/slogan-bvhb.png', '[]', '2018-10-04 08:40:06', '2018-10-04 08:40:06', NULL),
(14, 1, 'TS.BS.Vũ Văn Khoa', 1, 'image/jpeg', 78407, '/uploads/1/chuyen-gia/tsbsvu-van-khoa.jpg', '[]', '2018-10-11 08:15:29', '2018-10-11 08:15:29', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_folders`
--

CREATE TABLE `media_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Chuyên Gia', 'chuyen-gia', 0, '2018-10-11 08:15:18', '2018-10-11 08:15:18', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_settings`
--

CREATE TABLE `media_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`, `dob`, `phone`, `confirmed_at`) VALUES
(6, 'nhoanhkhoquen', 'nhoanhkhoquen@gmail.com', '$2y$10$aMglblyfuidJJcX/9MZfNOvQe88y/QnOENt9fVaxID/wDr9QzeIZC', NULL, '4xoX7tWKkixDwJJzpTfNakhM38BZ8jCvjwZ2r8LKujBULN1OuS8m4jkx4DUP', '2018-09-29 12:21:38', '2018-09-29 12:22:21', NULL, NULL, '2018-09-29 19:22:21'),
(7, 'nhoanhkhoquen1', 'luongngocdung.bv@gmail.com', '$2y$10$3m0P1D.KYfWVxFJv3r/r.ucnoRPZTWCRF3V2wJQQkn3bl4RYvvrnm', NULL, NULL, '2018-10-05 04:11:27', '2018-10-05 04:11:27', NULL, NULL, NULL),
(8, 'nhoanhkhoquen2', 'luongngocdung.vina@gmail.com', '$2y$10$yLLoW3SoZZ4oRxkflZnXeeBi1BhwwhSUS6ek5qBnqIgbOym/htSIW', NULL, NULL, '2018-10-05 05:50:13', '2018-10-05 05:50:13', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member_password_resets`
--

CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 1, '2016-06-17 17:53:45', '2016-08-14 20:25:34'),
(3, 'Top Right Menu', 'right-menu', 1, '2016-08-03 03:20:10', '2016-09-27 08:30:46'),
(6, 'Social', 'social', 1, '2016-10-19 23:26:54', '2016-10-19 23:26:54'),
(7, 'Favorite website', 'favorite-website', 1, '2016-10-21 10:21:23', '2016-10-21 10:21:23'),
(8, 'My links', 'my-links', 1, '2016-10-21 10:24:36', '2016-10-21 10:24:36'),
(9, 'Featured Categories', 'featured-categories', 1, '2016-10-21 10:52:59', '2016-10-21 10:52:59'),
(10, 'Menu chính', 'menu-chinh', 1, '2016-11-15 00:56:14', '2016-11-15 00:56:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `related_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `related_id`, `type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(543, 3, 0, 5, 'page', '', '', 4, '', '', '_self', 0, '2016-09-27 08:40:29', '2016-11-06 18:35:31'),
(544, 3, 0, 1, 'page', '', '', 5, 'Contact', '', '_self', 0, '2016-09-27 08:40:29', '2016-10-15 18:45:57'),
(545, 1, 0, 0, 'custom-link', '', '', 0, 'Home', '', '_self', 0, '2016-09-27 09:16:52', '2016-09-27 09:27:13'),
(557, 3, 0, 7, 'category', '', '', 3, 'Projects', '', '_self', 0, '2016-09-27 09:31:43', '2016-10-15 18:45:57'),
(558, 3, 0, 8, 'category', '', '', 2, 'Portfolio', '', '_self', 0, '2016-09-27 09:32:22', '2016-10-15 18:45:57'),
(559, 3, 0, 0, 'custom-link', '/downloads', '', 1, 'Downloads', '', '_self', 0, '2016-09-30 21:32:32', '2016-10-15 18:45:57'),
(560, 3, 0, 0, 'custom-link', '/galleries', '', 0, 'Galleries', '', '_self', 0, '2016-10-15 18:45:57', '2016-10-15 18:45:57'),
(562, 1, 561, 6, 'category', '', '', 0, 'Events', '', '_self', 0, '2016-10-19 08:09:16', '2016-10-19 08:09:16'),
(563, 1, 566, 8, 'category', '', '', 0, 'Portfolio', '', '_self', 0, '2016-10-19 08:09:16', '2016-10-21 10:26:25'),
(564, 1, 566, 7, 'category', '', '', 1, 'Projects', '', '_self', 0, '2016-10-19 08:09:16', '2016-10-21 10:26:25'),
(565, 1, 561, 10, 'category', '', '', 2, 'Resources', '', '_self', 0, '2016-10-19 08:09:16', '2016-10-19 08:10:27'),
(566, 1, 0, 0, 'custom-link', '/galleries', '', 3, 'Galleries', '', '_self', 0, '2016-10-19 08:09:16', '2017-12-08 19:39:34'),
(567, 1, 561, 9, 'category', '', '', 1, 'Business', '', '_self', 0, '2016-10-19 08:09:50', '2016-10-19 08:09:50'),
(568, 1, 0, 1, 'page', '', '', 4, 'Contact', '', '_self', 0, '2016-10-19 08:10:27', '2017-12-08 19:39:34'),
(569, 1, 0, 0, 'custom-link', 'https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182?ref=botble', '', 1, 'Purchase', '', '_blank', 0, '2016-10-19 08:11:43', '2016-11-19 02:26:19'),
(571, 6, 0, 0, 'custom-link', 'https://facebook.com', 'fa fa-facebook', 0, 'Facebook', '', '_self', 0, '2016-10-19 23:28:25', '2016-10-19 23:28:25'),
(572, 6, 0, 0, 'custom-link', 'https://twitter.com', 'fa fa-twitter', 1, 'Twitter', '', '_self', 0, '2016-10-19 23:28:26', '2016-10-19 23:28:26'),
(573, 6, 0, 0, 'custom-link', 'https://plus.google.com', 'fa fa-google-plus', 2, 'Google Plus', '', '_self', 0, '2016-10-19 23:29:24', '2016-10-19 23:29:24'),
(574, 6, 0, 0, 'custom-link', 'https://github.com', 'fa fa-github', 3, 'Github', '', '_self', 0, '2016-10-19 23:29:24', '2016-10-19 23:29:24'),
(575, 7, 0, 0, 'custom-link', 'http://speckyboy.com', '', 0, 'Speckyboy Magazine', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16'),
(576, 7, 0, 0, 'custom-link', 'http://tympanus.com', '', 1, 'Tympanus-Codrops', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16'),
(577, 7, 0, 0, 'custom-link', 'https://kipalog.com/', '', 2, 'Kipalog Blog', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16'),
(578, 7, 0, 0, 'custom-link', 'http://www.sitepoint.com', '', 3, 'SitePoint', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16'),
(579, 7, 0, 0, 'custom-link', 'http://www.creativebloq.com/', '', 4, 'CreativeBloq', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16'),
(580, 7, 0, 0, 'custom-link', 'http://techtalk.vn', '', 5, 'Techtalk', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16'),
(581, 8, 0, 0, 'custom-link', '/', '', 0, 'Homepage', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49'),
(582, 8, 0, 11, 'category', '', '', 1, 'New & Updates', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49'),
(583, 8, 0, 0, 'custom-link', '/galleries', '', 2, 'Galleries', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49'),
(584, 8, 0, 1, 'page', '', '', 3, 'Contact', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49'),
(585, 8, 0, 11, 'category', '', '', 4, 'New & Updates', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49'),
(586, 8, 0, 7, 'category', '', '', 5, 'Projects', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49'),
(587, 9, 0, 9, 'category', '', '', 0, 'Business', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16'),
(588, 9, 0, 6, 'category', '', '', 1, 'Events', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16'),
(589, 9, 0, 11, 'category', '', '', 2, 'New & Updates', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16'),
(590, 9, 0, 8, 'category', '', '', 3, 'Portfolio', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16'),
(591, 9, 0, 7, 'category', '', '', 4, 'Projects', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16'),
(592, 9, 0, 10, 'category', '', '', 5, 'Resources', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16'),
(600, 10, 0, 0, 'custom-link', '/vi', '', 0, 'Trang chủ', '', '_self', 0, '2016-11-19 02:26:19', '2018-08-03 00:55:50'),
(603, 10, 602, 6, 'category', '', '', 0, 'Sự kiện', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21'),
(604, 10, 602, 9, 'category', '', '', 1, 'Doanh nghiệp', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21'),
(605, 10, 602, 10, 'category', '', '', 2, 'Tài nguyên', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21'),
(607, 10, 606, 8, 'category', '', '', 0, 'Cá nhân', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21'),
(608, 10, 606, 7, 'category', '', '', 1, 'Dự án', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21'),
(609, 1, 0, 11, 'category', '', '', 2, 'New & Updates', '', '_self', 0, '2017-12-08 19:39:34', '2018-01-17 18:35:53'),
(614, 10, 0, 0, 'custom-link', '#', '', 1, 'Giới Thiệu', '', '_self', 1, '2018-10-08 06:25:49', '2018-10-11 08:57:42'),
(615, 10, 614, 20, 'page', '', '', 0, 'Giới thiệu chung', '', '_self', 0, '2018-10-08 06:25:49', '2018-10-08 06:31:40'),
(616, 10, 614, 21, 'page', '', '', 1, 'Cơ cấu tổ chức', '', '_self', 0, '2018-10-08 06:25:49', '2018-10-08 06:31:40'),
(617, 10, 614, 22, 'page', '', '', 2, 'Chức năng nhiệm vụ', '', '_self', 0, '2018-10-08 06:25:49', '2018-10-08 06:31:40'),
(618, 10, 614, 23, 'page', '', '', 3, 'Hệ thống phòng khám', '', '_self', 0, '2018-10-08 06:25:49', '2018-10-08 06:31:40'),
(619, 10, 614, 24, 'page', '', '', 4, 'Giờ làm việc', '', '_self', 0, '2018-10-08 06:25:49', '2018-10-08 06:31:40'),
(620, 10, 0, 0, 'custom-link', 'danh-muc-bvdkhb', '', 2, 'Dịch vụ', '', '_self', 0, '2018-10-08 06:25:49', '2018-10-17 07:19:52'),
(621, 10, 0, 24, 'category', '', '', 3, 'Tư vấn', '', '_self', 1, '2018-10-08 06:25:49', '2018-10-11 08:57:42'),
(622, 10, 621, 25, 'category', '', '', 0, 'Bài viết chuyên môn', '', '_self', 0, '2018-10-08 06:25:49', '2018-10-08 06:31:40'),
(623, 10, 621, 27, 'category', '', '', 1, 'Báo chí', '', '_self', 0, '2018-10-08 06:25:49', '2018-10-08 06:31:40'),
(624, 10, 621, 26, 'category', '', '', 2, 'Tin nội bộ', '', '_self', 0, '2018-10-08 06:25:49', '2018-10-08 06:31:40'),
(625, 10, 0, 0, 'custom-link', '/chuyen-gia', '', 4, 'Chuyên Gia', '', '_self', 0, '2018-10-08 06:25:49', '2018-10-11 08:57:42'),
(626, 10, 0, 0, 'custom-link', '#', '', 5, 'Khách Hàng', '', '_self', 1, '2018-10-08 06:25:49', '2018-10-11 08:57:42'),
(627, 10, 626, 18, 'page', '', '', 0, 'Bảo hiểm', '', '_self', 0, '2018-10-08 06:25:49', '2018-10-08 06:31:40'),
(628, 10, 626, 19, 'page', '', '', 1, 'Hướng dẫn khám bệnh', '', '_self', 0, '2018-10-08 06:25:49', '2018-10-08 06:31:40'),
(629, 10, 0, 0, 'custom-link', '#', '', 6, 'Tài liệu', '', '_self', 0, '2018-10-08 06:31:40', '2018-10-11 08:57:42'),
(630, 10, 0, 28, 'category', '', '', 7, 'Tuyển dụng', '', '_self', 0, '2018-10-08 06:31:40', '2018-10-11 08:57:42'),
(631, 10, 0, 17, 'page', '', '', 8, 'Liên hệ', '', '_self', 0, '2018-10-08 06:31:40', '2018-10-11 08:57:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `content_id`, `meta_key`, `meta_value`, `reference`, `created_at`, `updated_at`) VALUES
(1, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2017-12-11 09:07:56', '2017-12-11 09:07:56'),
(2, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'page', '2018-01-17 18:35:24', '2018-01-17 18:35:24'),
(3, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'category', '2018-04-13 09:02:12', '2018-04-13 09:02:12'),
(10, 44, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-13 09:38:58', '2018-04-13 09:38:58'),
(11, 48, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-13 09:40:11', '2018-04-13 09:40:11'),
(12, 49, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-13 09:41:28', '2018-04-13 09:41:28'),
(13, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'tag', '2018-04-13 09:41:28', '2018-04-13 09:41:28'),
(14, 50, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-13 09:42:20', '2018-04-13 09:42:20'),
(15, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'tag', '2018-04-13 09:42:20', '2018-04-13 09:42:20'),
(16, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'tag', '2018-04-13 09:42:20', '2018-04-13 09:42:20'),
(17, 51, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-13 09:43:09', '2018-04-13 09:43:09'),
(18, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'tag', '2018-04-13 09:43:09', '2018-04-13 09:43:09'),
(19, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'tag', '2018-04-13 09:45:22', '2018-04-13 09:45:22'),
(22, 24, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'tag', '2018-04-13 09:59:52', '2018-04-13 09:59:52'),
(23, 25, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'tag', '2018-04-13 10:00:35', '2018-04-13 10:00:35'),
(24, 52, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-13 10:02:20', '2018-04-13 10:02:20'),
(25, 53, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-13 10:02:59', '2018-04-13 10:02:59'),
(26, 54, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-13 10:03:46', '2018-04-13 10:03:46'),
(27, 55, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'post', '2018-04-13 10:06:40', '2018-10-08 09:38:18'),
(33, 24, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'category', '2018-10-08 06:16:37', '2018-10-08 06:16:37'),
(34, 25, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'category', '2018-10-08 06:16:50', '2018-10-08 06:16:50'),
(35, 26, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'category', '2018-10-08 06:17:05', '2018-10-08 06:17:05'),
(36, 27, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'category', '2018-10-08 06:17:15', '2018-10-08 06:17:15'),
(37, 18, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'page', '2018-10-08 06:18:11', '2018-10-08 06:18:11'),
(38, 19, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'page', '2018-10-08 06:18:32', '2018-10-08 06:18:32'),
(39, 20, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'page', '2018-10-08 06:18:54', '2018-10-08 06:18:54'),
(40, 21, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'page', '2018-10-08 06:19:07', '2018-10-08 06:19:07'),
(41, 22, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'page', '2018-10-08 06:19:26', '2018-10-08 06:19:26'),
(42, 23, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'page', '2018-10-08 06:21:22', '2018-10-08 06:21:22'),
(43, 24, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'page', '2018-10-08 06:21:47', '2018-10-08 06:21:47'),
(44, 28, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'category', '2018-10-08 06:23:06', '2018-10-08 06:23:06'),
(46, 17, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'page', '2018-10-08 08:08:38', '2018-10-08 08:08:38'),
(49, 3, 'seo_meta', '[{\"seo_title\":\"V\\u0168 V\\u0102N KHOA B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\",\"seo_description\":\"B\\u00c1C S\\u0128 CHUY\\u00caN GIA, KHOA PH\\u1eaaU THU\\u1eacT CHI D\\u01af\\u1edaI, KHOA KH\\u00c1M X\\u01af\\u01a0NG V\\u00c0 \\u0110I\\u1ec0U TR\\u1eca NGO\\u1ea0I TR\\u00da\"}]', 'chuyengia', '2018-10-11 07:04:24', '2018-10-11 08:17:16'),
(50, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'chuyengia', '2018-10-13 08:46:57', '2018-10-13 08:46:57'),
(51, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'chuyengia', '2018-10-13 08:47:16', '2018-10-13 08:47:16'),
(52, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'chuyengia', '2018-10-13 08:47:34', '2018-10-13 08:47:34'),
(53, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'danhmucbvhb', '2018-10-17 05:51:42', '2018-10-17 05:51:42'),
(54, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'danhmucbvhb', '2018-10-17 06:18:36', '2018-10-17 06:18:36'),
(55, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'danhmucbvhb', '2018-10-17 06:45:36', '2018-10-17 06:45:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_10_230148_create_acl_tables', 1),
(5, '2016_06_14_230857_create_menus_table', 1),
(6, '2016_06_28_221418_create_pages_table', 1),
(7, '2016_10_05_074239_create_setting_table', 1),
(8, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(9, '2016_12_16_084601_create_widgets_table', 1),
(10, '2017_05_09_070343_create_media_tables', 1),
(11, '2017_10_04_140938_create_member_table', 1),
(12, '2015_06_18_033822_create_blog_table', 2),
(13, '2016_06_17_091537_create_contacts_table', 3),
(14, '2016_10_13_150201_create_galleries_table', 4),
(15, '2017_02_13_034601_create_blocks_table', 5),
(16, '2016_10_03_032336_create_languages_table', 6),
(17, '2015_06_29_025744_create_audit_history', 7),
(18, '2017_03_27_150646_re_create_custom_field_tables', 8),
(19, '2015_08_15_122343_create_notes_table', 9),
(20, '2016_05_28_112028_create_system_request_logs_table', 10),
(21, '2016_10_07_193005_create_translations_table', 11),
(22, '2017_10_22_010000_add_some_member_columns', 12),
(23, '2017_11_03_070450_create_slug_table', 12),
(24, '2017_11_16_160440_remove_slug_fields', 12),
(25, '2017_11_17_011800_remove_slug_column_table_page', 12),
(26, '2017_11_20_010816_remove_column_slug_in_galleries_table', 12),
(27, '2017_12_21_041602_update_menu_nodes_type', 13),
(28, '2017_12_21_041904_update_menu_nodes_type_for_blog', 13),
(29, '2018_01_24_002113_allow_column_password_null', 14),
(30, '2018_03_01_003229_remove_features_data', 15),
(31, '2018_03_01_004130_remove_invites_table', 15),
(32, '2018_03_14_081936_remove_table_plugins', 15),
(33, '2018_03_14_095112_remove_permissions_tables', 15),
(34, '2016_06_01_000001_create_oauth_auth_codes_table', 16),
(35, '2016_06_01_000002_create_oauth_access_tokens_table', 16),
(36, '2016_06_01_000003_create_oauth_refresh_tokens_table', 16),
(37, '2016_06_01_000004_create_oauth_clients_table', 16),
(38, '2016_06_01_000005_create_oauth_personal_access_clients_table', 16),
(39, '2018_04_07_004221_add_id_to_table_audit_history', 17),
(40, '2018_03_26_114237_create_table_configurations_table', 18),
(41, '2018_05_04_082848_add_confirmation_fields_to_members_table', 19),
(42, '2018_06_28_031301_remove_soft_delete_for_gallery', 20),
(43, '2018_05_31_024847_add_colunm_subject_to_contact', 21),
(44, '2018_06_07_070703_remove_timestamps_from_settings_table', 21),
(45, '2018_06_26_023537_add_column_module_to_table_settings', 21),
(46, '2018_06_26_101139_drop_column_module_on_table_settings', 21),
(47, '2018_06_28_025612_remove_soft_delete_for_acl', 21),
(48, '2018_06_28_025802_remove_soft_delete_for_menu', 21),
(49, '2018_06_28_030006_remove_soft_delete_for_page', 21),
(50, '2018_06_28_030057_remove_soft_delete_for_slug', 21),
(51, '2018_06_28_030251_remove_soft_delete_for_blog', 21),
(52, '2018_06_28_030628_remove_soft_delete_for_contact', 21),
(53, '2018_07_02_030853_add_prefix_to_table_slugs', 21),
(54, '2018_07_05_025330_remove_confirmation_code_columns', 21),
(55, '2018_07_14_083340_remove_some_columns_from_pages_table', 21),
(56, '2018_07_18_095045_modify_page_content_column', 21),
(57, '2018_08_06_093033_change_column_description_for_blog_tables', 22),
(58, '2016_03_01_193027_create_sent_emails_table', 23),
(59, '2016_09_07_193027_create_sent_emails_Url_Clicked_table', 23),
(60, '2016_11_10_213551_add-message-id-to-sent-emails-table', 23),
(61, '2017_07_11_140018_create_simple_slider_table', 24),
(62, '2018_04_09_030647_restructure_tables_for_simple_sliders_plugin', 24),
(63, '2018_10_08_133751_create_chuyengia_table', 25),
(64, '2018_10_08_163647_create_chuyengia_table', 26),
(65, '2018_10_10_163647_create_chuyengia_table', 27),
(66, '2018_10_10_160442_create_chuyengia_table', 28),
(68, '2018_10_11_135541_create_danhmucbvhb_table', 29);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'nPvD6nCdZ4u5VDofwCaCrg9DTBpkMOJopp2JjdjR', 'http://localhost', 1, 0, 0, '2018-03-20 21:07:20', '2018-03-20 21:07:20'),
(2, NULL, 'Laravel Password Grant Client', 'yoMn1m1jBDOZAAfwX7qOagkGrAoazmzujgLAfpyI', 'http://localhost', 0, 1, 0, '2018-03-20 21:07:20', '2018-03-20 21:07:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-03-20 21:07:20', '2018-03-20 21:07:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('09a880ccdf4f35761565b221378b611954a090fd48a2a710b1531feccced42a104d7208d38508258', '6ec25d436833eb08e9c574e208ce65ee59561517d49f0ac952d292eb80d976bfb11805a6e28f94dc', 0, '2018-04-20 04:08:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `status`, `user_id`, `image`, `template`, `parent_id`, `featured`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Contact', '<p>This is contact page</p>\r\n<p>[static-block alias=\"sample-block\"][/static-block]</p>\r\n<p>[contact-form][/contact-form]</p>', 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg', 'default', 0, 0, NULL, '2016-07-09 01:05:39', '2018-01-17 18:35:32'),
(17, 'Liên hệ', '<p>[contact-form][/contact-form]</p>\r\n\r\n<p>[google-map]332 khu 4 Vệt H&ograve;a, Th&agrave;nh Phố, Hải Dương[/google-map]</p>', 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513483-misty-mountains-1280x720.jpg', 'default', 0, 0, 'Đây là trang liên hệ', '2016-11-06 18:17:25', '2018-10-08 08:08:38'),
(18, 'Bảo hiểm', '<p>Bảo hiểm</p>', 1, 1, NULL, 'default', 0, 0, 'Bảo hiểm', '2018-10-08 06:18:11', '2018-10-08 06:18:11'),
(19, 'Hướng dẫn khám bệnh', '<p>Hướng dẫn kh&aacute;m bệnh</p>', 1, 1, NULL, 'default', 0, 0, 'Hướng dẫn khám bệnh', '2018-10-08 06:18:32', '2018-10-08 06:18:32'),
(20, 'Giới thiệu chung', '<p>Giới thiệu chung</p>', 1, 1, NULL, 'default', 0, 0, 'Giới thiệu chung', '2018-10-08 06:18:54', '2018-10-08 06:20:48'),
(21, 'Cơ cấu tổ chức', '<p>Cơ cấu tổ chức</p>', 1, 1, NULL, 'default', 0, 0, 'Cơ cấu tổ chức', '2018-10-08 06:19:07', '2018-10-08 06:19:59'),
(22, 'Chức năng nhiệm vụ', '<p>Chức năng nhiệm vụ</p>', 1, 1, NULL, 'default', 0, 0, 'Chức năng nhiệm vụ', '2018-10-08 06:19:26', '2018-10-08 06:20:07'),
(23, 'Hệ thống phòng khám', '<p>Hệ thống ph&ograve;ng kh&aacute;m</p>', 1, 1, NULL, 'default', 0, 0, 'Hệ thống phòng khám', '2018-10-08 06:21:22', '2018-10-08 06:21:22'),
(24, 'Giờ làm việc', '<p>Giờ l&agrave;m việc</p>', 1, 1, NULL, 'default', 0, 0, 'Giờ làm việc', '2018-10-08 06:21:47', '2018-10-08 06:21:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('minhsang2603@gmail.com', '$2y$10$kWX7Vm.TR02TvQ426QLR2uzK6/JjiYIwE.ruTXH6eBQdS8mV5aL0a', '2018-01-24 03:40:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(4, '13,000+ People Have Bought Our Theme', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p><iframe src=\"https://www.youtube.com/embed/7MxyPHjyu9A\" width=\"420\" height=\"315\"></iframe></p>\r\n<p>Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There’s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n<p> </p>\r\n<p>Still, she’s got a lot of spirit. I don’t know, what do you think? What!? I don’t know what you’re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan– What good is a reward if you ain’t around to use it? Besides, attacking that battle station ain’t my idea of courage. It’s more like…suicide.</p>\r\n<p>You don’t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going. What?! The Force is strong with this one. I have you now.</p>\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander. There’ll be no one to stop us this time! You’re all clear, kid. Let’s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n<ul>\r\n<li>Dantooine. They’re on Dantooine.</li>\r\n<li>He is here.</li>\r\n<li>Don’t underestimate the Force.</li>\r\n</ul>\r\n<p><img style=\"height: 683px; width: 1024px;\" alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master. But with the blast shield down, I can’t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can’t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n<p>Still, she’s got a lot of spirit. I don’t know, what do you think? What!? I don’t know what you’re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan– What good is a reward if you ain’t around to use it? Besides, attacking that battle station ain’t my idea of courage. It’s more like…suicide.<br /> You don’t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going. What?! The Force is strong with this one. I have you now.</p>\r\n<p> </p>\r\n<ol>\r\n<li>I care. So, what do you think of her, Han?</li>\r\n<li>You mean it controls your actions?</li>\r\n<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going.</li>\r\n<li>I’m trying not to, kid.</li>\r\n</ol>\r\n<h2>Revenge of the Sith</h2>\r\n<p><img style=\"height: 300px; width: 180px;\" alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can’t get involved! I’ve got work to do! It’s not that I like the Empire, I hate it, but there’s nothing I can do about it right now. It’s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I’m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can’t possibly…</p>\r\n<p>Your eyes can deceive you. Don’t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I’m trying not to, kid.</p>\r\n<p>I’m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They’re on Dantooine.</p>\r\n<p> </p>\r\n<p>Still, she’s got a lot of spirit. I don’t know, what do you think? What!? I don’t know what you’re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan– What good is a reward if you ain’t around to use it? Besides, attacking that battle station ain’t my idea of courage. It’s more like…suicide.</p>\r\n<p>Hey, Luke! May the Force be with you. Kid, I’ve flown from one side of this galaxy to the other. I’ve seen a lot of strange stuff, but I’ve never seen anything to make me believe there’s one all-powerful Force controlling everything. There’s no mystical energy field that controls my destiny. It’s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n<p>You don’t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going. What?! The Force is strong with this one. I have you now.</p>\r\n<p> </p>\r\n<p><img style=\"height: 563px; width: 1000px;\" alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n<p> </p>\r\n<p>Hey, Luke! May the Force be with you. Kid, I’ve flown from one side of this galaxy to the other. I’ve seen a lot of strange stuff, but I’ve never seen anything to make me believe there’s one all-powerful Force controlling everything. There’s no mystical energy field that controls my destiny. It’s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain’t in this for your revolution, and I’m not in it for you, Princess. I expect to be well paid. I’m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n<p>All right. Well, take care of yourself, Han. I guess that’s what you’re best at, ain’t it? Alderaan? I’m not going to Alderaan. I’ve got to go home. It’s late, I’m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n<p> </p>\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img style=\"height: 300px; width: 200px;\" alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n<p>WOW, Nice photo !</p>\r\n<p>I need your help, Luke. She needs your help. I’m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can’t possibly… As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going.</p>\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They’re on Dantooine. You’re all clear, kid. Let’s blow this thing and go home! I’m surprised you had the courage to take the responsibility yourself. I’m trying not to, kid.</p>\r\n<p>I care. So, what do you think of her, Han? Don’t underestimate the Force. I don’t know what you’re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan– I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n<p>You’re all clear, kid. Let’s blow this thing and go home! But with the blast shield down, I can’t even see! How am I supposed to fight? Alderaan? I’m not going to Alderaan. I’ve got to go home. It’s late, I’m in for it as it is.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476893533-02.jpg', 8, NULL, '2016-08-02 21:34:18', '2017-12-11 09:07:56'),
(5, 'Top Search Engine Optimization Strategies!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330.jpg', 6, NULL, '2016-08-02 21:36:45', '2017-04-30 19:59:58'),
(6, 'Which Company Would You Choose?', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476893532-01.jpg', 4, NULL, '2016-08-02 21:38:34', '2017-03-21 07:30:39'),
(7, 'Used Car Dealer Sales Tricks Exposed', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/old-car-660x330.jpg', 6, NULL, '2016-08-02 21:39:50', '2017-04-30 20:03:27'),
(8, '20 Ways To Sell Your Product Faster', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476890034-hero04.jpg', 3, NULL, '2016-08-02 21:40:56', '2017-03-21 07:25:09');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(9, 'The Secrets Of Rich And Famous Writers', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476890036-hero05.jpg', 0, NULL, '2016-08-02 21:42:45', '2017-03-21 07:26:07'),
(10, 'Imagine Losing 20 Pounds In 14 Days!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476890033-hero03.jpg', 6, NULL, '2016-08-02 21:44:20', '2016-12-10 12:19:54'),
(11, 'Are You Still Using That Slow, Old Typewriter?', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476890034-hero04.jpg', 12, NULL, '2016-08-02 21:45:16', '2017-07-06 08:16:25'),
(12, 'A Skin Cream That’s Proven To Work', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476890031-hero02.jpg', 12, NULL, '2016-08-02 21:46:22', '2017-12-10 18:07:55'),
(13, '10 Reasons To Start Your Own, Profitable Website!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476890029-hero01.jpg', 15, NULL, '2016-08-02 21:47:18', '2016-12-04 08:07:53');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(14, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/4381851322-d46fd7d75e-b-660x330.jpg', 0, NULL, '2016-08-02 21:50:39', '2017-04-30 20:15:49'),
(15, 'Apple iMac with Retina 5K display review', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476891195-02.jpg', 1, NULL, '2016-08-02 21:51:49', '2017-04-30 20:11:06'),
(16, '10 Reasons To Start Your Own, Profitable Website!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476891035-01.jpg', 3, NULL, '2016-08-02 21:52:39', '2017-04-30 20:10:12'),
(17, 'Unlock The Secrets Of Selling High Ticket Items', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476891198-04.jpg', 2, NULL, '2016-08-02 21:53:49', '2017-04-30 20:04:28'),
(18, '10,000 Web Site Visitors In One Month:Guaranteed', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476893533-02.jpg', 5, NULL, '2016-08-02 21:54:31', '2017-04-30 20:08:55');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(19, 'Are You Still Using That Slow, Old Typewriter?', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476891195-02.jpg', 3, NULL, '2016-08-02 21:55:28', '2017-04-30 20:15:13'),
(20, 'A Skin Cream That’s Proven To Work', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476890031-hero02.jpg', 11, NULL, '2016-08-02 21:56:32', '2018-07-26 00:59:21'),
(21, 'Top Search Engine Optimization Strategies!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476891035-01.jpg', 7, NULL, '2016-08-02 21:57:29', '2016-12-10 12:04:30'),
(44, '13000 người đã mua Theme của chúng tôi', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minhsang2603 để được hỗ trợ.</p>\r\n<p> </p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476893533-02.jpg', 2, NULL, '2016-11-12 18:25:08', '2018-09-29 17:44:52'),
(45, 'Lên trên Công cụ Tìm kiếm Tối ưu hóa các chiến lược!', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt=\"core\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt=\"theme\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330.jpg', 1, NULL, '2016-11-12 18:27:06', '2018-04-13 09:39:32');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(46, 'Bạn sẽ chọn công ty nào', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt=\"core\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt=\"theme\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476893532-01.jpg', 0, NULL, '2016-11-12 18:32:57', '2016-11-25 07:30:22'),
(47, 'Sử dụng xe Đại lý bán hàng Tricks xúc', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt=\"core\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt=\"theme\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/old-car-660x330.jpg', 4, NULL, '2016-11-12 18:35:25', '2016-11-28 22:10:54'),
(48, 'Chiến lược phát triển phần mềm', 'Chiến lược phát triển phần mềm', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/lock-660x330.jpg', 0, NULL, '2018-04-13 09:40:11', '2018-04-13 09:40:18'),
(49, 'Nền tảng mã nguồn mở PHP', 'Nền tảng', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/7998125906-4489ed8a2f-b-660x330.jpg', 0, NULL, '2018-04-13 09:41:28', '2018-04-13 09:41:32'),
(50, 'Xây dựng website một cách nhanh chóng', 'Nội dung mô tả', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476890033-hero03.jpg', 1, NULL, '2018-04-13 09:42:20', '2018-10-04 09:11:07'),
(51, 'Sản phẩm trí tuệ Việt Nam', 'Mô tả', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476891198-04.jpg', 0, NULL, '2018-04-13 09:43:09', '2018-04-13 09:58:23');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(52, 'Cuộc sống tuổi 30', 'Cuộc sống tuổi 30', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476890029-hero01.jpg', 0, NULL, '2018-04-13 10:02:20', '2018-04-13 10:02:20'),
(53, 'Hành trình tìm kiếm sự khác biệt', 'Hành trình tìm kiếm sự khác biệt', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476891195-02.jpg', 1, NULL, '2018-04-13 10:02:59', '2018-10-11 06:21:32'),
(54, 'Thế giới động vật muôn màu', 'Thế giới động vật muôn màu', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/7717834982-bbd7e12b8c-b-660x330.jpg', 4, NULL, '2018-04-13 10:03:46', '2018-10-17 07:09:41'),
(55, 'Đi tìm hồi ức tuổi thơ', 'Đi tìm hồi ức tuổi thơ', '<p>[blog-posts paginate=&quot;4&quot;][/blog-posts]</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt=\"core\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt=\"theme\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/1476890036-hero05.jpg', 1, NULL, '2018-04-13 10:06:40', '2018-10-10 05:12:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category`
--

CREATE TABLE `post_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category`
--

INSERT INTO `post_category` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(14, 1, 3, '2016-05-12 20:39:18', '2016-05-12 20:39:18'),
(37, 1, 1, '2016-07-09 15:35:49', '2016-07-09 15:35:49'),
(48, 1, 2, '2016-07-12 20:45:55', '2016-07-12 20:45:55'),
(94, 1, 22, '2016-08-14 19:12:55', '2016-08-14 19:12:55'),
(262, 1, 20, '2016-11-25 07:28:59', '2016-11-25 07:28:59'),
(263, 1, 21, '2016-11-25 07:29:03', '2016-11-25 07:29:03'),
(279, 1, 8, '2017-03-21 07:25:09', '2017-03-21 07:25:09'),
(289, 1, 5, '2017-04-30 19:59:58', '2017-04-30 19:59:58'),
(290, 1, 7, '2017-04-30 20:03:27', '2017-04-30 20:03:27'),
(308, 1, 19, '2017-04-30 20:15:13', '2017-04-30 20:15:13'),
(344, 12, 55, '2018-10-10 05:12:22', '2018-10-10 05:12:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_tag`
--

INSERT INTO `post_tag` (`id`, `tag_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2016-05-07 05:17:30', '2016-05-07 05:17:30'),
(2, 2, 2, '2016-05-07 05:17:30', '2016-05-07 05:17:30'),
(3, 3, 1, '2016-05-24 15:53:44', '2016-05-24 15:53:44'),
(4, 4, 1, '2016-05-24 15:53:44', '2016-05-24 15:53:44'),
(5, 1, 1, '2016-05-24 15:53:44', '2016-05-24 15:53:44'),
(6, 5, 6, '2016-08-02 21:38:34', '2016-08-02 21:38:34'),
(7, 6, 6, '2016-08-02 21:38:34', '2016-08-02 21:38:34'),
(8, 5, 8, '2016-08-02 21:40:56', '2016-08-02 21:40:56'),
(9, 6, 8, '2016-08-02 21:40:56', '2016-08-02 21:40:56'),
(10, 5, 9, '2016-08-02 21:42:45', '2016-08-02 21:42:45'),
(11, 6, 9, '2016-08-02 21:42:45', '2016-08-02 21:42:45'),
(12, 5, 10, '2016-08-02 21:44:20', '2016-08-02 21:44:20'),
(13, 6, 10, '2016-08-02 21:44:20', '2016-08-02 21:44:20'),
(14, 5, 11, '2016-08-02 21:45:16', '2016-08-02 21:45:16'),
(15, 6, 11, '2016-08-02 21:45:16', '2016-08-02 21:45:16'),
(16, 5, 12, '2016-08-02 21:46:22', '2016-08-02 21:46:22'),
(17, 6, 12, '2016-08-02 21:46:22', '2016-08-02 21:46:22'),
(18, 5, 13, '2016-08-02 21:47:18', '2016-08-02 21:47:18'),
(19, 6, 13, '2016-08-02 21:47:18', '2016-08-02 21:47:18'),
(20, 5, 14, '2016-08-02 21:50:39', '2016-08-02 21:50:39'),
(21, 6, 14, '2016-08-02 21:50:39', '2016-08-02 21:50:39'),
(22, 5, 15, '2016-08-02 21:51:49', '2016-08-02 21:51:49'),
(23, 6, 15, '2016-08-02 21:51:49', '2016-08-02 21:51:49'),
(24, 5, 16, '2016-08-02 21:52:39', '2016-08-02 21:52:39'),
(25, 6, 16, '2016-08-02 21:52:39', '2016-08-02 21:52:39'),
(26, 5, 17, '2016-08-02 21:53:49', '2016-08-02 21:53:49'),
(27, 6, 17, '2016-08-02 21:53:49', '2016-08-02 21:53:49'),
(28, 5, 18, '2016-08-02 21:54:31', '2016-08-02 21:54:31'),
(29, 6, 18, '2016-08-02 21:54:31', '2016-08-02 21:54:31'),
(30, 5, 19, '2016-08-02 21:55:28', '2016-08-02 21:55:28'),
(31, 6, 19, '2016-08-02 21:55:28', '2016-08-02 21:55:28'),
(32, 5, 20, '2016-08-02 21:56:32', '2016-08-02 21:56:32'),
(33, 6, 20, '2016-08-02 21:56:32', '2016-08-02 21:56:32'),
(34, 5, 21, '2016-08-02 21:57:29', '2016-08-02 21:57:29'),
(35, 6, 21, '2016-08-02 21:57:29', '2016-08-02 21:57:29'),
(36, 7, 22, '2016-08-14 19:12:55', '2016-08-14 19:12:55'),
(40, 7, 5, '2017-04-30 19:59:58', '2017-04-30 19:59:58'),
(41, 7, 7, '2017-04-30 20:03:27', '2017-04-30 20:03:27'),
(42, 7, 49, '2018-04-13 09:41:28', '2018-04-13 09:41:28'),
(43, 8, 50, '2018-04-13 09:42:20', '2018-04-13 09:42:20'),
(44, 9, 50, '2018-04-13 09:42:20', '2018-04-13 09:42:20'),
(92, 10, 51, '2018-04-13 09:58:23', '2018-04-13 09:58:23'),
(93, 12, 51, '2018-04-13 09:58:23', '2018-04-13 09:58:23'),
(94, 16, 51, '2018-04-13 09:58:23', '2018-04-13 09:58:23'),
(95, 17, 51, '2018-04-13 09:58:23', '2018-04-13 09:58:23'),
(96, 19, 51, '2018-04-13 09:58:23', '2018-04-13 09:58:23'),
(97, 23, 51, '2018-04-13 09:58:23', '2018-04-13 09:58:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `request_logs`
--

CREATE TABLE `request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 44, 1, 'featured', '0', '1', '2018-04-13 09:38:58', '2018-04-13 09:38:58'),
(2, 'Botble\\Blog\\Models\\Post', 48, 1, 'image', NULL, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/lock-660x330.jpg', '2018-04-13 09:40:18', '2018-04-13 09:40:18'),
(3, 'Botble\\Blog\\Models\\Post', 49, 1, 'featured', '0', '1', '2018-04-13 09:41:32', '2018-04-13 09:41:32'),
(4, 'Botble\\Blog\\Models\\Post', 50, 1, 'featured', '0', '1', '2018-04-13 09:42:27', '2018-04-13 09:42:27'),
(5, 'Botble\\Blog\\Models\\Post', 54, 1, 'featured', '1', '0', '2018-04-13 10:04:12', '2018-04-13 10:04:12'),
(6, 'Botble\\Blog\\Models\\Post', 54, 1, 'featured', '0', '1', '2018-04-13 10:04:20', '2018-04-13 10:04:20'),
(7, 'Botble\\Blog\\Models\\Post', 55, 1, 'featured', '1', '0', '2018-10-10 05:12:22', '2018-10-10 05:12:22'),
(8, 'Botble\\Chuyengia\\Models\\Chuyengia', 1, 1, 'description', NULL, 'Quản trị viên', '2018-10-10 06:38:33', '2018-10-10 06:38:33'),
(9, 'Botble\\Chuyengia\\Models\\Chuyengia', 1, 1, 'content', NULL, '<p>Quản trị vi&ecirc;n</p>', '2018-10-10 06:38:33', '2018-10-10 06:38:33'),
(10, 'Botble\\Chuyengia\\Models\\Chuyengia', 1, 1, 'image', NULL, '/uploads/1/new-logo-bvhb-20117-150x150.png', '2018-10-10 06:38:33', '2018-10-10 06:38:33'),
(11, 'Botble\\Chuyengia\\Models\\Chuyengia', 2, 1, 'image', NULL, '/uploads/1/new-logo-bvhb-20117-150x150.png', '2018-10-10 06:38:50', '2018-10-10 06:38:50'),
(12, 'Botble\\Danhmucbvhb\\Models\\Danhmucbvhb', 1, 1, 'image', NULL, '/uploads/1/slider111.jpg', '2018-10-11 06:56:13', '2018-10-11 06:56:13'),
(13, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'featured', '1', '0', '2018-10-11 07:13:40', '2018-10-11 07:13:40'),
(14, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'featured', '0', '1', '2018-10-11 07:13:44', '2018-10-11 07:13:44'),
(15, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'featured', '1', '0', '2018-10-11 07:13:50', '2018-10-11 07:13:50'),
(16, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'chuyenkhoa', '', 'Cấp cứu hồi sức tích cực và chống độc', '2018-10-11 07:47:38', '2018-10-11 07:47:38'),
(17, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'chuyenkhoa', 'Cấp cứu hồi sức tích cực và chống độc', 'Khoa Sản', '2018-10-11 07:47:46', '2018-10-11 07:47:46'),
(18, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'hocvan', '', 'BSCKI.', '2018-10-11 08:03:05', '2018-10-11 08:03:05'),
(19, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'hocvan', 'BSCKI.', 'CN.', '2018-10-11 08:03:10', '2018-10-11 08:03:10'),
(20, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'name', 'Quản trị viên', 'VŨ VĂN KHOA', '2018-10-11 08:12:57', '2018-10-11 08:12:57'),
(21, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'description', 'Quản trị viên', 'BÁC SĨ CHUYÊN GIA, KHOA PHẪU THUẬT CHI DƯỚI, KHOA KHÁM XƯƠNG VÀ ĐIỀU TRỊ NGOẠI TRÚ', '2018-10-11 08:12:57', '2018-10-11 08:12:57'),
(22, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'chuyenkhoa', 'Khoa Sản', 'Khoa Ngoại - Phẫu thuật gây mê hồi sức', '2018-10-11 08:12:57', '2018-10-11 08:12:57'),
(23, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'hocvan', 'CN.', 'TS. Bs.', '2018-10-11 08:15:34', '2018-10-11 08:15:34'),
(24, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'content', '<p>Quản trị vi&ecirc;n</p>', '<p>Nghi&ecirc;n cứu phương ph&aacute;p điều trị phức tạp hai xương căng ch&acirc;n bằng đ&oacute;ng đinh NT kiểu sign.</p>\r\n\r\n<p>Nghi&ecirc;n cứu ứng dụng xương nh&acirc;n tạo điều trị khớp giả xương d&agrave;i chi dưới.</p>', '2018-10-11 08:15:34', '2018-10-11 08:15:34'),
(25, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'image', NULL, '/uploads/1/chuyen-gia/tsbsvu-van-khoa.jpg', '2018-10-11 08:15:34', '2018-10-11 08:15:34'),
(26, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'chucvu', NULL, 'Phó trưởng khoa Khám xương và điều trị ngoại trú', '2018-10-11 08:30:10', '2018-10-11 08:30:10'),
(27, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'content', '<p>Nghi&ecirc;n cứu phương ph&aacute;p điều trị phức tạp hai xương căng ch&acirc;n bằng đ&oacute;ng đinh NT kiểu sign.</p>\r\n\r\n<p>Nghi&ecirc;n cứu ứng dụng xương nh&acirc;n tạo điều trị khớp giả xương d&agrave;i chi dưới.</p>', '<p><strong>C&ocirc;ng tr&igrave;nh Nghi&ecirc;n cứu khoa học:&nbsp;</strong></p>\r\n\r\n<p>Nghi&ecirc;n cứu phương ph&aacute;p điều trị phức tạp hai xương căng ch&acirc;n bằng đ&oacute;ng đinh NT kiểu sign.</p>\r\n\r\n<p>Nghi&ecirc;n cứu ứng dụng xương nh&acirc;n tạo điều trị khớp giả xương d&agrave;i chi dưới.</p>', '2018-10-11 08:35:01', '2018-10-11 08:35:01'),
(28, 'Botble\\Chuyengia\\Models\\Chuyengia', 3, 1, 'content', '<p><strong>C&ocirc;ng tr&igrave;nh Nghi&ecirc;n cứu khoa học:&nbsp;</strong></p>\r\n\r\n<p>Nghi&ecirc;n cứu phương ph&aacute;p điều trị phức tạp hai xương căng ch&acirc;n bằng đ&oacute;ng đinh NT kiểu sign.</p>\r\n\r\n<p>Nghi&ecirc;n cứu ứng dụng xương nh&acirc;n tạo điều trị khớp giả xương d&agrave;i chi dưới.</p>', '<h3><span style=\"font-size:24px;\"><strong>C&ocirc;ng tr&igrave;nh Nghi&ecirc;n cứu khoa học:</strong></span></h3>\r\n\r\n<p>Nghi&ecirc;n cứu phương ph&aacute;p điều trị phức tạp hai xương căng ch&acirc;n bằng đ&oacute;ng đinh NT kiểu sign.</p>\r\n\r\n<p>Nghi&ecirc;n cứu ứng dụng xương nh&acirc;n tạo điều trị khớp giả xương d&agrave;i chi dưới.</p>', '2018-10-11 08:53:22', '2018-10-11 08:53:22'),
(29, 'Botble\\Chuyengia\\Models\\Chuyengia', 6, 1, 'image', NULL, '/uploads/1/chuyen-gia/tsbsvu-van-khoa.jpg', '2018-10-13 08:47:49', '2018-10-13 08:47:49'),
(30, 'Botble\\Chuyengia\\Models\\Chuyengia', 6, 1, 'image', '/uploads/1/chuyen-gia/tsbsvu-van-khoa.jpg', NULL, '2018-10-13 08:48:35', '2018-10-13 08:48:35'),
(31, 'Botble\\Danhmucbvhb\\Models\\Danhmucbvhb', 1, 1, 'price_cates', NULL, '200000', '2018-10-17 06:13:46', '2018-10-17 06:13:46'),
(32, 'Botble\\Danhmucbvhb\\Models\\Danhmucbvhb', 1, 1, 'price_type', NULL, '1', '2018-10-17 06:13:46', '2018-10-17 06:13:46'),
(33, 'Botble\\Danhmucbvhb\\Models\\Danhmucbvhb', 1, 1, 'price_type', '1', '2', '2018-10-17 06:14:31', '2018-10-17 06:14:31'),
(34, 'Botble\\Danhmucbvhb\\Models\\Danhmucbvhb', 1, 1, 'price_type', '2', 'giagoisan', '2018-10-17 06:15:53', '2018-10-17 06:15:53'),
(35, 'Botble\\Danhmucbvhb\\Models\\Danhmucbvhb', 1, 1, 'price_type', 'giagoisan', 'giaxetnghiem', '2018-10-17 06:16:04', '2018-10-17 06:16:04'),
(36, 'Botble\\Danhmucbvhb\\Models\\Danhmucbvhb', 2, 1, 'price_type', 'giagoisan', 'giagoikhamsuckhoe', '2018-10-17 06:35:06', '2018-10-17 06:35:06'),
(37, 'Botble\\Danhmucbvhb\\Models\\Danhmucbvhb', 2, 1, 'price_type', 'giagoikhamsuckhoe', 'giagoisan', '2018-10-17 06:35:12', '2018-10-17 06:35:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'administrators', 'Administrators', '{\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"backups.list\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.delete\":true,\"block.list\":true,\"block.create\":true,\"block.edit\":true,\"block.delete\":true,\"categories.list\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.delete\":true,\"contacts.list\":true,\"contacts.create\":true,\"contacts.edit\":true,\"contacts.delete\":true,\"custom-fields.list\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.delete\":true,\"dashboard.index\":true,\"galleries.list\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.delete\":true,\"languages.list\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.delete\":true,\"logs.list\":true,\"logs.delete\":true,\"media.index\":true,\"files.list\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.delete\":true,\"folders.list\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.delete\":true,\"member.list\":true,\"member.create\":true,\"member.edit\":true,\"member.delete\":true,\"menus.list\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.delete\":true,\"pages.list\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.delete\":true,\"plugins.list\":true,\"posts.list\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.delete\":true,\"roles.list\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.delete\":true,\"settings.options\":true,\"tags.list\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.delete\":true,\"translations.list\":true,\"translations.create\":true,\"translations.edit\":true,\"translations.delete\":true,\"users.list\":true,\"users.create\":true,\"users.edit\":true,\"users.delete\":true,\"widgets.list\":true}', 'Highest role in system', 0, 1, 1, '2018-01-17 18:00:45', '2018-03-14 21:49:45'),
(2, 'members', 'Members', '{\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"block.list\":true,\"block.create\":true,\"block.edit\":true,\"block.delete\":true,\"categories.list\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.delete\":true,\"contacts.list\":true,\"contacts.create\":true,\"contacts.edit\":true,\"contacts.delete\":true,\"custom-fields.list\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.delete\":true,\"dashboard.index\":true,\"galleries.list\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.delete\":true,\"media.index\":true,\"files.list\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.delete\":true,\"folders.list\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.delete\":true,\"menus.list\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.delete\":true,\"pages.list\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.delete\":true,\"posts.list\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.delete\":true,\"tags.list\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.delete\":true}', 'Member role', 1, 1, 1, '2018-01-17 18:01:32', '2018-03-14 21:50:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_users`
--

CREATE TABLE `role_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, '2018-01-18 08:11:34', '2018-01-18 08:11:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sent_emails`
--

CREATE TABLE `sent_emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci,
  `sender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `opens` int(11) DEFAULT NULL,
  `clicks` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sent_emails_url_clicked`
--

CREATE TABLE `sent_emails_url_clicked` (
  `id` int(10) UNSIGNED NOT NULL,
  `sent_email_id` int(10) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `hash` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clicks` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'site_title', 'Bệnh Viện Đa Khoa Hòa Bình Tỉnh Hải Dương - Trị Bệnh Bằng Khối Óc Chăm Sóc Bằng Trái Tim'),
(2, 'copyright', '© 2016 Botble Technologies. All right reserved. Designed by <a href=\"http://nghiadev.com\" target=\"_blank\">Nghia Minh</a>'),
(3, 'admin_email', 'nhoanhkhoquen@gmail.com'),
(4, 'google_analytics', 'UA-42586526-15'),
(5, 'google_site_verification', 'hs2Js3WGGpf1pzyhUNehvVDSIrmO3XZpm7PggNZECxE'),
(6, 'seo_title', 'Bệnh Viện Đa Khoa Hòa Bình Tỉnh Hải Dương'),
(7, 'seo_description', 'Bệnh Viện Đa Khoa Hòa Bình - Trị Bệnh Bằng Khối Óc Chăm Sóc Bằng Trái Tim - Phố Phạm Xuân Huân phía đông nam cường Phường Hải Tân TP.Hải Dương Tỉnh Hải Dương'),
(8, 'seo_keywords', 'botble, botble team, botble platform, php platform, php framework, web development'),
(9, 'contact_address', 'Elinext Building, 37 Phan Xich Long, ward 3, Phu Nhuan district, Ho Chi Minh, Vietnam'),
(10, 'contact_email', 'sangnguyenplus@gmail.com'),
(11, 'email_support', 'sangnguyenplus@gmail.com'),
(12, 'contact_phone', '+84988606928'),
(13, 'contact_hotline', '+84988606928'),
(14, 'enable_captcha', '0'),
(15, 'about', '<p>Content here</p>\r\n'),
(16, 'show_admin_bar', '1'),
(17, 'theme', 'ripple'),
(18, 'enable_change_admin_theme', '1'),
(19, 'enable_multi_language_in_admin', '1'),
(20, 'enable_https', '0'),
(21, 'google_plus', 'https://plus.google.com'),
(22, 'facebook', 'https://www.facebook.com/botble.technologies'),
(23, 'twitter', 'https://twitter.com/botble'),
(24, 'enable_cache', '0'),
(25, 'cache_time', '10'),
(26, 'cache_time_site_map', '3600'),
(27, 'language_hide_default', '1'),
(28, 'language_switcher_display', 'dropdown'),
(29, 'language_display', 'all'),
(30, 'language_hide_languages', '[\"44\"]'),
(31, 'theme-ripple-site_title', '© 2016 Botble Technologies. All right reserved. Designed by <a href=\"http://nghiadev.com\" target=\"_blank\">Nghia Minh</a>'),
(34, 'theme-ripple-copyright', '© 2018 All right reserved.'),
(35, 'theme-newstv-copyright', '© Copyright 2017 Botble Technologies. All Rights Reserved.'),
(36, 'theme-newstv-theme_color', 'red'),
(37, 'theme-newstv-top_banner', '/themes/newstv/assets/images/banner.png'),
(38, 'theme-newstv-logo', 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/logo/logo.png'),
(39, 'rich_editor', 'ckeditor'),
(40, 'admin_logo', '/uploads/1/new-logo-bvhb-20117-150x150.png'),
(41, 'admin_title', 'Trang Quản Trị Bệnh Viện Đa Khoa Hòa Bình Tỉnh Hải Dương'),
(42, 'analytics_view_id', '125311257'),
(43, 'analytics_service_account_credentials', '{\r\n  \"type\": \"service_account\",\r\n  \"project_id\": \"botble-cms\",\r\n  \"private_key_id\": \"f40c1c44478ec4161e141731f2289639b0292500\",\r\n  \"private_key\": \"-----BEGIN PRIVATE KEY-----\\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCm5eDiIW363mtW\\na/omcDTBkMvJLGwrkslsza0mod3Z1OhBmTEPNKYXznlcguzWqg/i8mJJ+pxjt4AT\\nHyunwjTnw8bDjcawH9jH7jbNTPx1ZNlRjXL8e19k/TG09LfJ4jnX0ZbHNZGZCU3l\\nzNKD0pynhR/X+R634YzYN2P9aIG+7Fd8YmswLmvRub2QUC28m3wmJzsKP3hyAzYy\\nixP2ebAfyB0/H4SmODEliznqRD/WDWwqpUDaiMYhX0I+xF8bvzdot+4BmTZ+KCLj\\n+9kE+MHxLWNXjER+n8wCDjQSTQjyQHY0NVanNS7g6qJLZNo99q3BF52zoZVdD5Ee\\nloOjjQBXAgMBAAECggEAG3sIb1N/z2nmFKHM251oImMcGvDUkswlnGO1WgIXDHIR\\nGBQITu+lVZAqzX/FTYdM/FpassGwFH83eG6Oep3wpiTHSpXCnGdyA2GG5oEBpLbJ\\nTbNTtpz91RwXnisZRAWa7p1VDVIVujQc/nSeSRRZtP+ngaFEXJSn40YjkasuiegO\\nXETgRlF3fSlVZmPd3kGy1Bq9MAfp2iylbM/pwrKCKJk9ZQUmIciTU1eQ6mqxI3/x\\nEyarQ74Vc6RQ/wZxMbAJcLPHYWJgdZvSr8VUvvOeCgDGP8jyjP2/f2CnEZBPNpoO\\nknISU/s4y7pBwu+FTVz82Ac+XokGznHTNsap7JaPUQKBgQDT7UqxxkjoSfTqvaTF\\nxX7mD7jkOwt4X+IitNWUYy1s1QVPOCMl7CxM+xyDd99auJV8HuhBfJESz8KSXnen\\nv3ICCGVmAIHcAoNoopPJvzwXTu95eC6oV2pJmtc1s9a7eeSxBvjjc2WAjPdSppPV\\nfzb9sX5ZqQHQNWh43nlRfnnM6QKBgQDJm039nTFcwFRunxy0CyUBj0PR2ENaJZIU\\nnnB5IcBAFjpM0rXKAYIshjid9vJMJEBjLHWCQ2+8k9RsCuucYkZBJjfpXI0Mn3WO\\n7B7D/bpFS8xFq0m4w98rBtKh/BJoim3qID5+34I6p0osxAel5sNuXskbSjGRBfNN\\neL6wTN8bPwKBgHlknzidv/1u/5/G6a9vpXTa5Km3OKbHJZ2DwCOze72vd88c9OUw\\nF2AxJvAXphUtTlM+0QNR+zevUmDNQ/UOsJuBe7Ol7ry7o9I37jfOFvmy+XG26eL7\\nz6JB06yrSwEwnVLaD48Z9rZgCPuK93t/11wSY7GwIZ3GOgWiShPoQpShAoGAGXid\\nqeUqT2WdRTylC7o8uq23C9Qe7kzA4AoEe8lf2Lj2NK6KeTMnlyh+DrccdbI+0EjV\\nr9eFTnX+6IeYrPFdnu2NMtaWm3mqCJycZnawCgFBlavGbKmSkIUUJ5MJYFvc9y+L\\ntcvXUEHChVVfAf7dwhwHnIMLMB9oVeljbjLIHVECgYEAulBNrt+dIFnXNYrPhvY1\\nJ+Hx444lPIO7XnVrN7Q8d+stBk4CtbU3nPYkIiaV8uucgE5ZSxVG5Fef2clSbjOk\\n3wmltVSXSs21s40Ti8XKzvgg1QUrNLIQbHA3xoa5qFiFtxwV+m+IUZKvZmNj1y3l\\nbHAjWQ4Sj+EM1MXMrrEGZP0=\\n-----END PRIVATE KEY-----\\n\",\r\n  \"client_email\": \"botble-cms@botble-cms.iam.gserviceaccount.com\",\r\n  \"client_id\": \"113101231196374159892\",\r\n  \"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\",\r\n  \"token_uri\": \"https://accounts.google.com/o/oauth2/token\",\r\n  \"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\",\r\n  \"client_x509_cert_url\": \"https://www.googleapis.com/robot/v1/metadata/x509/botble-cms%40botble-cms.iam.gserviceaccount.com\"\r\n}'),
(44, 'activated_plugins', '[\"translation\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"custom-field\",\"member\",\"log-viewer\",\"language\",\"note\",\"request-log\",\"gallery\",\"social-login\",\"simple-slider\",\"maintenance-mode\",\"chuyengia\",\"danhmucbvhb\"]'),
(45, 'theme-ripple-vi-copyright', '© 2018 Botble Technologies. Tất cả quyền đã được bảo hộ. Thiết kế bởi <a href=\"http://nghiadev.com\" target=\"_blank\">Minh Nghĩa</a>'),
(47, 'theme-newstv-vi-copyright', '© 2017 Botble Technologies. Tất cả quyền đã được bảo hộ.'),
(48, 'theme-newstv-vi-theme_color', 'red'),
(49, 'theme-newstv-vi-top_banner', '/themes/newstv/assets/images/banner.png'),
(51, 'time_zone', 'UTC'),
(52, 'optimize_page_speed_enable', '0'),
(53, 'enable_send_error_reporting_via_email', '1'),
(54, 'default_admin_theme', 'default'),
(55, 'cache_admin_menu_enable', '0'),
(56, 'language_show_default_item_if_current_version_not_existed', '1'),
(57, 'show_site_name', '0'),
(59, 'backup_mysql_execute_path', 'C://xampp//htdocs//backup'),
(63, 'captcha_site_key', 'no-captcha-site-key'),
(64, 'captcha_secret', 'no-captcha-secret'),
(66, 'simple_slider_using_assets', '1'),
(67, 'social_login_enable', '1'),
(68, 'social_login_facebook_enable', '1'),
(69, 'social_login_facebook_app_id', 'botble'),
(70, 'social_login_facebook_app_secret', '159357'),
(71, 'social_login_google_enable', '0'),
(74, 'social_login_github_enable', '0'),
(76, 'theme-ripple-logo', '/uploads/1/new-logo-bvhb-20117-150x150.png'),
(77, 'theme-ripple-slogan', '/uploads/1/slogan-bvhb.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home-sliders', 'Home-slidersh', 'Home-sliders', 1, '2018-09-29 11:30:03', '2018-09-29 11:40:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `simple_slider_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `title`, `image`, `link`, `description`, `simple_slider_id`, `order`, `created_at`, `updated_at`) VALUES
(1, '#', '/uploads/1/slider2222.jpg', '#', NULL, 1, 0, '2018-09-29 11:30:44', '2018-10-01 08:31:30'),
(2, '#', '/uploads/1/slider111.jpg', '#', NULL, 1, 1, '2018-09-29 11:31:01', '2018-10-01 08:31:15'),
(4, '#', '/uploads/1/33.png', '#', NULL, 1, 2, '2018-10-01 08:32:15', '2018-10-04 06:35:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slugs`
--

CREATE TABLE `slugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(11) NOT NULL,
  `reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference`, `created_at`, `updated_at`, `prefix`) VALUES
(1, '13000-people-have-bought-our-theme', 4, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(2, 'top-search-engine-optimization-strategies', 5, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(3, 'which-company-would-you-choose', 6, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(4, 'used-car-dealer-sales-tricks-exposed', 7, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(5, '20-ways-to-sell-your-product-faster', 8, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(6, 'the-secrets-of-rich-and-famous-writers', 9, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(7, 'imagine-losing-20-pounds-in-14-days', 10, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(8, 'are-you-still-using-that-slow-old-typewriter', 11, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(9, 'a-skin-cream-thats-proven-to-work', 12, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(10, '10-reasons-to-start-your-own-profitable-website', 13, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(11, 'simple-ways-to-reduce', 14, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(12, 'apple-imac-with-retina-5k-display-review', 15, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(13, '10-reasons-to-start-your-own-profitable-website-1', 16, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(14, 'unlock-the-secrets-of-selling-high-ticket-items', 17, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(15, '10000-web-site-visitors-in-one-monthguaranteed', 18, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(16, 'are-you-still-using-that-slow-old-typewriter-1', 19, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(17, 'a-skin-cream-thats-proven-to-work-1', 20, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(18, 'top-search-engine-optimization-strategies-1', 21, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(19, '13000-nguoi-da-mua-theme-cua-chung-toi', 44, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(20, 'len-tren-cong-cu-tim-kiem-toi-uu-hoa-cac-chien-luoc', 45, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(21, 'ban-se-chon-cong-ty-nao', 46, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(22, 'su-dung-xe-dai-ly-ban-hang-tricks-xuc', 47, 'post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(23, 'uncategorized', 1, 'category', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(30, 'botble', 5, 'tag', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(31, 'botble-cms', 6, 'tag', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(32, 'contact', 1, 'page', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(33, 'lien-he', 17, 'page', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(34, 'photography', 1, 'gallery', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(35, 'selfie', 2, 'gallery', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(36, 'new-day', 3, 'gallery', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(37, 'morning', 4, 'gallery', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(38, 'happy-day', 5, 'gallery', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(39, 'perfect', 6, 'gallery', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(40, 'chua-phan-loai', 12, 'category', '2018-04-13 09:02:12', '2018-04-13 09:02:12', ''),
(47, 'chien-luoc-phat-trien-phan-mem', 48, 'post', '2018-04-13 09:40:11', '2018-04-13 09:40:11', ''),
(48, 'nen-tang-ma-nguon-mo-php', 49, 'post', '2018-04-13 09:41:28', '2018-04-13 09:41:28', ''),
(49, 'nen-tang-ma-nguon-mo-php-1', 7, 'tag', '2018-04-13 09:41:28', '2018-04-13 09:41:28', ''),
(50, 'xay-dung-website-mot-cach-nhanh-chong', 50, 'post', '2018-04-13 09:42:20', '2018-04-13 09:42:20', ''),
(51, 'xay-dung-website-mot-cach-nhanh-chong-1', 8, 'tag', '2018-04-13 09:42:20', '2018-04-13 09:42:20', ''),
(52, 'xay-dung-website-mot-cach-nhanh-chong-2', 9, 'tag', '2018-04-13 09:42:20', '2018-04-13 09:42:20', ''),
(53, 'san-pham-tri-tue-viet-nam', 51, 'post', '2018-04-13 09:43:09', '2018-04-13 09:43:09', ''),
(54, 'san-pham-tri-tue-viet-nam-1', 10, 'tag', '2018-04-13 09:43:09', '2018-04-13 09:43:09', ''),
(55, 'tai-ve', 11, 'tag', '2018-04-13 09:45:22', '2018-04-13 09:45:22', ''),
(58, 'tag-su-kien', 24, 'tag', '2018-04-13 09:59:52', '2018-04-13 09:59:52', ''),
(59, 'popular', 25, 'tag', '2018-04-13 10:00:35', '2018-04-13 10:00:35', ''),
(60, 'cuoc-song-tuoi-30', 52, 'post', '2018-04-13 10:02:20', '2018-04-13 10:02:20', ''),
(61, 'hanh-trinh-tim-kiem-su-khac-biet', 53, 'post', '2018-04-13 10:02:59', '2018-04-13 10:02:59', ''),
(62, 'the-gioi-dong-vat-muon-mau', 54, 'post', '2018-04-13 10:03:46', '2018-04-13 10:03:46', ''),
(63, 'di-tim-hoi-uc-tuoi-tho', 55, 'post', '2018-04-13 10:06:40', '2018-04-13 10:06:40', ''),
(64, 'nhiep-anh', 7, 'gallery', '2018-05-11 07:44:54', '2018-05-11 07:44:54', ''),
(65, 'thien-nhien', 8, 'gallery', '2018-05-11 07:45:11', '2018-05-11 07:45:11', ''),
(66, 'ngay-moi', 9, 'gallery', '2018-05-11 07:45:36', '2018-05-11 07:45:36', ''),
(67, 'buoi-sang', 10, 'gallery', '2018-05-11 07:45:42', '2018-05-11 07:45:42', ''),
(68, 'ngay-hanh-phuc', 11, 'gallery', '2018-05-11 07:45:46', '2018-05-11 07:45:46', ''),
(69, 'hoan-hao', 12, 'gallery', '2018-05-11 07:45:51', '2018-05-11 07:45:51', ''),
(75, 'tu-van', 24, 'category', '2018-10-08 06:16:37', '2018-10-08 06:16:37', ''),
(76, 'bai-viet-chuyen-mon', 25, 'category', '2018-10-08 06:16:50', '2018-10-08 06:16:50', ''),
(77, 'tin-noi-bo', 26, 'category', '2018-10-08 06:17:05', '2018-10-08 06:17:05', ''),
(78, 'bao-chi', 27, 'category', '2018-10-08 06:17:15', '2018-10-08 06:17:15', ''),
(79, 'bao-hiem', 18, 'page', '2018-10-08 06:18:11', '2018-10-08 06:18:11', ''),
(80, 'huong-dan-kham-benh', 19, 'page', '2018-10-08 06:18:32', '2018-10-08 06:18:32', ''),
(81, 'gioi-thieu-chung', 20, 'page', '2018-10-08 06:18:54', '2018-10-08 06:20:48', ''),
(82, 'co-cau-to-chuc', 21, 'page', '2018-10-08 06:19:07', '2018-10-08 06:19:59', ''),
(83, 'chuc-nang-nhiem-vu', 22, 'page', '2018-10-08 06:19:26', '2018-10-08 06:20:07', ''),
(84, 'he-thong-phong-kham', 23, 'page', '2018-10-08 06:21:22', '2018-10-08 06:21:22', ''),
(85, 'gio-lam-viec', 24, 'page', '2018-10-08 06:21:47', '2018-10-08 06:21:47', ''),
(86, 'tuyen-dung', 28, 'category', '2018-10-08 06:23:06', '2018-10-08 06:23:06', ''),
(94, 'vu-van-khoa', 3, 'chuyengia', '2018-10-11 07:04:24', '2018-10-11 08:12:57', ''),
(95, 'test', 4, 'chuyengia', '2018-10-13 08:46:57', '2018-10-13 08:46:57', ''),
(96, 'test-1', 5, 'chuyengia', '2018-10-13 08:47:16', '2018-10-13 08:47:16', ''),
(97, 'test-2', 6, 'chuyengia', '2018-10-13 08:47:34', '2018-10-13 08:47:34', ''),
(98, 'danh-muc-1', 1, 'danhmucbvhb', '2018-10-17 05:51:42', '2018-10-17 05:51:42', ''),
(99, 'danh-muc-2', 2, 'danhmucbvhb', '2018-10-17 06:18:36', '2018-10-17 06:18:36', ''),
(100, 'danh-muc-3', 3, 'danhmucbvhb', '2018-10-17 06:45:36', '2018-10-17 06:45:36', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_configurations`
--

CREATE TABLE `table_configurations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activated_columns` text COLLATE utf8mb4_unicode_ci,
  `request_filters` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `user_id`, `description`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(5, 'download', 1, '', 0, 1, '2016-08-02 21:38:34', '2016-09-27 09:30:37'),
(6, 'event', 1, '', 0, 1, '2016-08-02 21:38:34', '2016-09-27 09:30:50'),
(7, 'nổi bật', 1, NULL, 0, 1, '2018-04-13 09:41:28', '2018-04-13 10:00:09'),
(11, 'tải về', 1, NULL, 0, 1, '2018-04-13 09:45:22', '2018-04-13 09:45:22'),
(24, 'sự kiện', 1, NULL, 0, 1, '2018-04-13 09:59:52', '2018-04-13 09:59:52'),
(25, 'popular', 1, NULL, 0, 1, '2018-04-13 10:00:35', '2018-04-13 10:00:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(2, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(3, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(4, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(5, 1, 'en', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(7, 1, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(8, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(9, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(10, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(11, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(12, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(13, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(14, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(15, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(16, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(17, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(18, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(19, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(20, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(21, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(22, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(23, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(24, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(25, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(26, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(27, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(28, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(29, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(30, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(31, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(32, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(33, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(34, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(35, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(36, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(37, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(38, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(39, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(40, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(41, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(42, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(43, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(44, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(45, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(46, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(47, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(48, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(49, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(50, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(51, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(52, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(53, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(54, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(55, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(56, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(57, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(58, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(59, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(60, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(61, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(62, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(63, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(64, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(65, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(66, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(67, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(68, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(69, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(70, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(71, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(72, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(73, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(74, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(75, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(76, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(77, 1, 'en', 'core.acl/api', 'api_clients', 'API Clients', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(78, 1, 'en', 'core.acl/api', 'create_new_client', 'Create new client', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(79, 1, 'en', 'core.acl/api', 'create_new_client_success', 'Create new client successfully!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(80, 1, 'en', 'core.acl/api', 'edit_client', 'Edit client \":name\"', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(81, 1, 'en', 'core.acl/api', 'edit_client_success', 'Updated client successfully!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(82, 1, 'en', 'core.acl/api', 'delete_success', 'Deleted client successfully!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(83, 1, 'en', 'core.acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(84, 1, 'en', 'core.acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(85, 1, 'en', 'core.acl/api', 'cancel_delete', 'No', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(86, 1, 'en', 'core.acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(87, 1, 'en', 'core.acl/api', 'name', 'Name', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(88, 1, 'en', 'core.acl/api', 'cancel', 'Cancel', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(89, 1, 'en', 'core.acl/api', 'save', 'Save', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(90, 1, 'en', 'core.acl/api', 'edit', 'Edit', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(91, 1, 'en', 'core.acl/api', 'delete', 'Delete', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(92, 1, 'en', 'core.acl/api', 'client_id', 'Client ID', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(93, 1, 'en', 'core.acl/api', 'secret', 'Secret', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(94, 1, 'en', 'core.acl/auth', 'login.username', 'Username', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(95, 1, 'en', 'core.acl/auth', 'login.email', 'Email', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(96, 1, 'en', 'core.acl/auth', 'login.password', 'Password', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(97, 1, 'en', 'core.acl/auth', 'login.title', 'User Login', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(98, 1, 'en', 'core.acl/auth', 'login.remember', 'Remember me?', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(99, 1, 'en', 'core.acl/auth', 'login.login', 'Sign in', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(100, 1, 'en', 'core.acl/auth', 'login.placeholder.username', 'Please enter your username', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(101, 1, 'en', 'core.acl/auth', 'login.placeholder.email', 'Please enter your email', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(102, 1, 'en', 'core.acl/auth', 'login.success', 'Login successfully!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(103, 1, 'en', 'core.acl/auth', 'login.fail', 'Wrong username or password.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(104, 1, 'en', 'core.acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(105, 1, 'en', 'core.acl/auth', 'login.banned', 'This account is banned.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(106, 1, 'en', 'core.acl/auth', 'login.logout_success', 'Logout successfully!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(107, 1, 'en', 'core.acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(108, 1, 'en', 'core.acl/auth', 'forgot_password.title', 'Lost password', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(109, 1, 'en', 'core.acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(110, 1, 'en', 'core.acl/auth', 'forgot_password.submit', 'Submit', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(111, 1, 'en', 'core.acl/auth', 'reset.new_password', 'New password', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(112, 1, 'en', 'core.acl/auth', 'reset.repassword', 'Confirm new password', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(113, 1, 'en', 'core.acl/auth', 'reset.email', 'Email', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(114, 1, 'en', 'core.acl/auth', 'reset.title', 'Reset your password', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(115, 1, 'en', 'core.acl/auth', 'reset.update', 'Update', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(116, 1, 'en', 'core.acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(117, 1, 'en', 'core.acl/auth', 'reset.user_not_found', 'This username is not exist.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(118, 1, 'en', 'core.acl/auth', 'reset.success', 'Reset password successfully!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(119, 1, 'en', 'core.acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(120, 1, 'en', 'core.acl/auth', 'reset.reset.title', 'Email reset password', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(121, 1, 'en', 'core.acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(122, 1, 'en', 'core.acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(123, 1, 'en', 'core.acl/auth', 'reset.new-password', 'New password', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(124, 1, 'en', 'core.acl/auth', 'email.reminder.title', 'Email reset password', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(125, 1, 'en', 'core.acl/auth', 'repassword', 'Password confirm', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(126, 1, 'en', 'core.acl/auth', 'failed', 'Failed', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(127, 1, 'en', 'core.acl/auth', 'throttle', 'Throttle', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(128, 1, 'en', 'core.acl/auth', 'not_member', 'Not a member yet?', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(129, 1, 'en', 'core.acl/auth', 'register_now', 'Register now', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(130, 1, 'en', 'core.acl/auth', 'lost_your_password', 'Lost your password?', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(131, 1, 'en', 'core.acl/auth', 'login_title', 'Login to system', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(132, 1, 'en', 'core.acl/auth', 'login_via_social', 'Login with social networks', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(133, 1, 'en', 'core.acl/auth', 'back_to_login', 'Back to login page', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(134, 1, 'en', 'core.acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(135, 1, 'en', 'core.acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(136, 1, 'en', 'core.acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(137, 1, 'en', 'core.acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(138, 1, 'en', 'core.acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(139, 1, 'en', 'core.acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(140, 1, 'en', 'core.acl/permissions', 'notices.create_success', 'The new role was successfully created', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(141, 1, 'en', 'core.acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(142, 1, 'en', 'core.acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(143, 1, 'en', 'core.acl/permissions', 'notices.not_found', 'Role not found', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(144, 1, 'en', 'core.acl/permissions', 'list', 'List Permissions', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(145, 1, 'en', 'core.acl/permissions', 'name', 'Name', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(146, 1, 'en', 'core.acl/permissions', 'current_role', 'Current Role', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(147, 1, 'en', 'core.acl/permissions', 'no_role_assigned', 'No role assigned', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(148, 1, 'en', 'core.acl/permissions', 'role_assigned', 'Assigned Role', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(149, 1, 'en', 'core.acl/permissions', 'create_role', 'Create New Role', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(150, 1, 'en', 'core.acl/permissions', 'role_name', 'Name', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(151, 1, 'en', 'core.acl/permissions', 'role_description', 'Description', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(152, 1, 'en', 'core.acl/permissions', 'permission_flags', 'Permission Flags', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(153, 1, 'en', 'core.acl/permissions', 'cancel', 'Cancel', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(154, 1, 'en', 'core.acl/permissions', 'reset', 'Reset', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(155, 1, 'en', 'core.acl/permissions', 'save', 'Save', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(156, 1, 'en', 'core.acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(157, 1, 'en', 'core.acl/permissions', 'details', 'Details', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(158, 1, 'en', 'core.acl/permissions', 'duplicate', 'Duplicate', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(159, 1, 'en', 'core.acl/permissions', 'all', 'All Permissions', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(160, 1, 'en', 'core.acl/permissions', 'list_role', 'List Roles', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(161, 1, 'en', 'core.acl/permissions', 'created_on', 'Created On', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(162, 1, 'en', 'core.acl/permissions', 'created_by', 'Created By', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(163, 1, 'en', 'core.acl/permissions', 'actions', 'Actions', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(164, 1, 'en', 'core.acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(165, 1, 'en', 'core.acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(166, 1, 'en', 'core.acl/permissions', 'delete_global_role', 'Can not delete global role', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(167, 1, 'en', 'core.acl/permissions', 'delete_success', 'Delete role successfully', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(168, 1, 'en', 'core.acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(169, 1, 'en', 'core.acl/permissions', 'not_found', 'No role found!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(170, 1, 'en', 'core.acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(171, 1, 'en', 'core.acl/permissions', 'modified_success', 'Modified successfully', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(172, 1, 'en', 'core.acl/permissions', 'create_success', 'Create successfully', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(173, 1, 'en', 'core.acl/permissions', 'duplicated_success', 'Duplicated successfully', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(174, 1, 'en', 'core.acl/permissions', 'options', 'Options', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(175, 1, 'en', 'core.acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(176, 1, 'en', 'core.acl/permissions', 'roles', 'Roles', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(177, 1, 'en', 'core.acl/permissions', 'role_permission', 'Roles and Permissions', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(178, 1, 'en', 'core.acl/permissions', 'user_management', 'User Management', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(179, 1, 'en', 'core.acl/permissions', 'super_user_management', 'Super User Management', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(180, 1, 'en', 'core.acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(181, 1, 'en', 'core.acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(182, 1, 'en', 'core.acl/reminders', 'token', 'This password reset token is invalid.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(183, 1, 'en', 'core.acl/reminders', 'sent', 'Password reminder sent!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(184, 1, 'en', 'core.acl/reminders', 'reset', 'Password has been reset!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(185, 1, 'en', 'core.acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(186, 1, 'en', 'core.acl/users', 'no_select', 'Please select at least one record to take this action!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(187, 1, 'en', 'core.acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(188, 1, 'en', 'core.acl/users', 'update_success', 'Update status successfully!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(189, 1, 'en', 'core.acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(190, 1, 'en', 'core.acl/users', 'not_found', 'User not found', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(191, 1, 'en', 'core.acl/users', 'email_exist', 'That email address already belongs to an existing account', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(192, 1, 'en', 'core.acl/users', 'username_exist', 'That username address already belongs to an existing account', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(193, 1, 'en', 'core.acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(194, 1, 'en', 'core.acl/users', 'password_update_success', 'Password successfully changed', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(195, 1, 'en', 'core.acl/users', 'current_password_not_valid', 'Current password is not valid', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(196, 1, 'en', 'core.acl/users', 'user_exist_in', 'User is already a member', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(197, 1, 'en', 'core.acl/users', 'email', 'Email', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(198, 1, 'en', 'core.acl/users', 'role', 'Role', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(199, 1, 'en', 'core.acl/users', 'username', 'Username', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(200, 1, 'en', 'core.acl/users', 'last_name', 'Last Name', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(201, 1, 'en', 'core.acl/users', 'first_name', 'First Name', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(202, 1, 'en', 'core.acl/users', 'message', 'Message', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(203, 1, 'en', 'core.acl/users', 'cancel_btn', 'Cancel', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(204, 1, 'en', 'core.acl/users', 'change_password', 'Change password', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(205, 1, 'en', 'core.acl/users', 'current_password', 'Current password', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(206, 1, 'en', 'core.acl/users', 'new_password', 'New Password', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(207, 1, 'en', 'core.acl/users', 'confirm_new_password', 'Confirm New Password', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(208, 1, 'en', 'core.acl/users', 'password', 'Password', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(209, 1, 'en', 'core.acl/users', 'save', 'Save', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(210, 1, 'en', 'core.acl/users', 'cannot_delete', 'User could not be deleted', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(211, 1, 'en', 'core.acl/users', 'deleted', 'User deleted', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(212, 1, 'en', 'core.acl/users', 'last_login', 'Last Login', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(213, 1, 'en', 'core.acl/users', 'error_update_profile_image', 'Error when update profile image', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(214, 1, 'en', 'core.acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(215, 1, 'en', 'core.acl/users', 'change_profile_image', 'Change Profile Image', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(216, 1, 'en', 'core.acl/users', 'new_image', 'New Image', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(217, 1, 'en', 'core.acl/users', 'loading', 'Loading', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(218, 1, 'en', 'core.acl/users', 'close', 'Close', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(219, 1, 'en', 'core.acl/users', 'update', 'Update', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(220, 1, 'en', 'core.acl/users', 'read_image_failed', 'Failed to read the image file', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(221, 1, 'en', 'core.acl/users', 'users', 'Users', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(222, 1, 'en', 'core.acl/users', 'update_avatar_success', 'Update profile image successfully!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(223, 1, 'en', 'core.acl/users', 'info.title', 'User profile', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(224, 1, 'en', 'core.acl/users', 'info.first_name', 'First Name', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(225, 1, 'en', 'core.acl/users', 'info.last_name', 'Last Name', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(226, 1, 'en', 'core.acl/users', 'info.email', 'Email', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(227, 1, 'en', 'core.acl/users', 'info.second_email', 'Secondary Email', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(228, 1, 'en', 'core.acl/users', 'info.address', 'Address', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(229, 1, 'en', 'core.acl/users', 'info.second_address', 'Secondary Address', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(230, 1, 'en', 'core.acl/users', 'info.birth_day', 'Date of birth', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(231, 1, 'en', 'core.acl/users', 'info.job', 'Job Position', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(232, 1, 'en', 'core.acl/users', 'info.mobile_number', 'Mobile Number', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(233, 1, 'en', 'core.acl/users', 'info.second_mobile_number', 'Secondary Phone', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(234, 1, 'en', 'core.acl/users', 'info.interes', 'Interests', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(235, 1, 'en', 'core.acl/users', 'info.about', 'About', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(236, 1, 'en', 'core.acl/users', 'gender.title', 'Gender', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(237, 1, 'en', 'core.acl/users', 'gender.male', 'Male', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(238, 1, 'en', 'core.acl/users', 'gender.female', 'Female', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(239, 1, 'en', 'core.acl/users', 'total_users', 'Total users', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(240, 1, 'vi', 'core.acl/api', 'api_clients', 'API Clients', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(241, 1, 'vi', 'core.acl/api', 'create_new_client', 'Tạo client mới', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(242, 1, 'vi', 'core.acl/api', 'create_new_client_success', 'Tạo client mới thành công!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(243, 1, 'vi', 'core.acl/api', 'edit_client', 'Sửa client \":name\"', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(244, 1, 'vi', 'core.acl/api', 'edit_client_success', 'Cập nhật client thành công!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(245, 1, 'vi', 'core.acl/api', 'delete_success', 'Xoá client thành công!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(246, 1, 'vi', 'core.acl/api', 'confirm_delete_title', 'Xoá client \":name\"', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(247, 1, 'vi', 'core.acl/api', 'confirm_delete_description', 'Bạn có chắc chắn muốn xoá client \":name\"?', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(248, 1, 'vi', 'core.acl/api', 'cancel_delete', 'Không', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(249, 1, 'vi', 'core.acl/api', 'continue_delete', 'Có, tiếp tục xoá!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(250, 1, 'vi', 'core.acl/api', 'name', 'Tên', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(251, 1, 'vi', 'core.acl/api', 'cancel', 'Huỷ bỏ', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(252, 1, 'vi', 'core.acl/api', 'save', 'Lưu', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(253, 1, 'vi', 'core.acl/api', 'edit', 'Sửa', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(254, 1, 'vi', 'core.acl/api', 'delete', 'Xoá', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(255, 1, 'vi', 'core.acl/api', 'client_id', 'Client ID', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(256, 1, 'vi', 'core.acl/api', 'secret', 'Chuỗi bí mật', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(257, 1, 'vi', 'core.acl/auth', 'login.username', 'Tên truy cập', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(258, 1, 'vi', 'core.acl/auth', 'login.password', 'Mật khẩu', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(259, 1, 'vi', 'core.acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(260, 1, 'vi', 'core.acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(261, 1, 'vi', 'core.acl/auth', 'login.login', 'Đăng nhập', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(262, 1, 'vi', 'core.acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(263, 1, 'vi', 'core.acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(264, 1, 'vi', 'core.acl/auth', 'login.success', 'Đăng nhập thành công!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(265, 1, 'vi', 'core.acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(266, 1, 'vi', 'core.acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(267, 1, 'vi', 'core.acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(268, 1, 'vi', 'core.acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(269, 1, 'vi', 'core.acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(270, 1, 'vi', 'core.acl/auth', 'login.email', 'Email', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(271, 1, 'vi', 'core.acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(272, 1, 'vi', 'core.acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(273, 1, 'vi', 'core.acl/auth', 'forgot_password.submit', 'Hoàn tất', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(274, 1, 'vi', 'core.acl/auth', 'reset.new_password', 'Mật khẩu mới', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(275, 1, 'vi', 'core.acl/auth', 'reset.repassword', 'Xác nhận mật khẩu mới', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(276, 1, 'vi', 'core.acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(277, 1, 'vi', 'core.acl/auth', 'reset.update', 'Cập nhật', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(278, 1, 'vi', 'core.acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(279, 1, 'vi', 'core.acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(280, 1, 'vi', 'core.acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(281, 1, 'vi', 'core.acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(282, 1, 'vi', 'core.acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(283, 1, 'vi', 'core.acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(284, 1, 'vi', 'core.acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(285, 1, 'vi', 'core.acl/auth', 'reset.new-password', 'Mật khẩu mới', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(286, 1, 'vi', 'core.acl/auth', 'reset.email', 'Email', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(287, 1, 'vi', 'core.acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(288, 1, 'vi', 'core.acl/auth', 'failed', 'Không thành công', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(289, 1, 'vi', 'core.acl/auth', 'repassword', 'Xác nhận mật khẩu', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(290, 1, 'vi', 'core.acl/auth', 'throttle', 'Throttle', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(291, 1, 'vi', 'core.acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(292, 1, 'vi', 'core.acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(293, 1, 'vi', 'core.acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(294, 1, 'vi', 'core.acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(295, 1, 'vi', 'core.acl/auth', 'not_member', 'Chưa là thành viên?', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(296, 1, 'vi', 'core.acl/auth', 'register_now', 'Đăng ký ngay', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(297, 1, 'vi', 'core.acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(298, 1, 'vi', 'core.acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(299, 1, 'vi', 'core.acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(300, 1, 'vi', 'core.acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(301, 1, 'vi', 'core.acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(302, 1, 'vi', 'core.acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(303, 1, 'vi', 'core.acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(304, 1, 'vi', 'core.acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(305, 1, 'vi', 'core.acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(306, 1, 'vi', 'core.acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(307, 1, 'vi', 'core.acl/permissions', 'list', 'Danh sách phân quyền', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(308, 1, 'vi', 'core.acl/permissions', 'name', 'Tên', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(309, 1, 'vi', 'core.acl/permissions', 'current_role', 'Quyền hiện tại', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(310, 1, 'vi', 'core.acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(311, 1, 'vi', 'core.acl/permissions', 'role_assigned', 'Quyền đã được gán', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(312, 1, 'vi', 'core.acl/permissions', 'create_role', 'Tạo quyền mới', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(313, 1, 'vi', 'core.acl/permissions', 'role_name', 'Tên', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(314, 1, 'vi', 'core.acl/permissions', 'role_description', 'Mô tả', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(315, 1, 'vi', 'core.acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(316, 1, 'vi', 'core.acl/permissions', 'cancel', 'Hủy bỏ', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(317, 1, 'vi', 'core.acl/permissions', 'reset', 'Làm lại', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(318, 1, 'vi', 'core.acl/permissions', 'save', 'Lưu', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(319, 1, 'vi', 'core.acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(320, 1, 'vi', 'core.acl/permissions', 'details', 'Chi tiết', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(321, 1, 'vi', 'core.acl/permissions', 'duplicate', 'Nhân bản', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(322, 1, 'vi', 'core.acl/permissions', 'all', 'Tất cả phân quyền', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(323, 1, 'vi', 'core.acl/permissions', 'list_role', 'Danh sách quyền', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(324, 1, 'vi', 'core.acl/permissions', 'created_on', 'Ngày tạo', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(325, 1, 'vi', 'core.acl/permissions', 'created_by', 'Được tạo bởi', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(326, 1, 'vi', 'core.acl/permissions', 'actions', 'Tác vụ', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(327, 1, 'vi', 'core.acl/permissions', 'create_success', 'Tạo thành công!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(328, 1, 'vi', 'core.acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(329, 1, 'vi', 'core.acl/permissions', 'delete_success', 'Xóa quyền thành công', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(330, 1, 'vi', 'core.acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(331, 1, 'vi', 'core.acl/permissions', 'modified_success', 'Sửa thành công', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(332, 1, 'vi', 'core.acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(333, 1, 'vi', 'core.acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(334, 1, 'vi', 'core.acl/permissions', 'options', 'Tùy chọn', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(335, 1, 'vi', 'core.acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(336, 1, 'vi', 'core.acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(337, 1, 'vi', 'core.acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(338, 1, 'vi', 'core.acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(339, 1, 'vi', 'core.acl/permissions', 'roles', 'Quyền', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(340, 1, 'vi', 'core.acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(341, 1, 'vi', 'core.acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(342, 1, 'vi', 'core.acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(343, 1, 'vi', 'core.acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(344, 1, 'vi', 'core.acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(345, 1, 'vi', 'core.acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(346, 1, 'vi', 'core.acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(347, 1, 'vi', 'core.acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(348, 1, 'vi', 'core.acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(349, 1, 'vi', 'core.acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(350, 1, 'vi', 'core.acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(351, 1, 'vi', 'core.acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(352, 1, 'vi', 'core.acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(353, 1, 'vi', 'core.acl/users', 'not_found', 'Không tìm thấy người dùng', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(354, 1, 'vi', 'core.acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(355, 1, 'vi', 'core.acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(356, 1, 'vi', 'core.acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(357, 1, 'vi', 'core.acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(358, 1, 'vi', 'core.acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(359, 1, 'vi', 'core.acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(360, 1, 'vi', 'core.acl/users', 'email', 'Email', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(361, 1, 'vi', 'core.acl/users', 'username', 'Tên đăng nhập', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(362, 1, 'vi', 'core.acl/users', 'role', 'Phân quyền', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(363, 1, 'vi', 'core.acl/users', 'first_name', 'Họ', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(364, 1, 'vi', 'core.acl/users', 'last_name', 'Tên', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(365, 1, 'vi', 'core.acl/users', 'message', 'Thông điệp', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(366, 1, 'vi', 'core.acl/users', 'cancel_btn', 'Hủy bỏ', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(367, 1, 'vi', 'core.acl/users', 'password', 'Mật khẩu', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(368, 1, 'vi', 'core.acl/users', 'new_password', 'Mật khẩu mới', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(369, 1, 'vi', 'core.acl/users', 'save', 'Lưu', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(370, 1, 'vi', 'core.acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(371, 1, 'vi', 'core.acl/users', 'deleted', 'Xóa thành viên thành công', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(372, 1, 'vi', 'core.acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(373, 1, 'vi', 'core.acl/users', 'list', 'Danh sách thành viên', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(374, 1, 'vi', 'core.acl/users', 'last_login', 'Lần cuối đăng nhập', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(375, 1, 'vi', 'core.acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(376, 1, 'vi', 'core.acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(377, 1, 'vi', 'core.acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(378, 1, 'vi', 'core.acl/users', 'new_image', 'Ảnh mới', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(379, 1, 'vi', 'core.acl/users', 'loading', 'Đang tải', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(380, 1, 'vi', 'core.acl/users', 'close', 'Đóng', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(381, 1, 'vi', 'core.acl/users', 'update', 'Cập nhật', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(382, 1, 'vi', 'core.acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(383, 1, 'vi', 'core.acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(384, 1, 'vi', 'core.acl/users', 'users', 'Thành viên', '2018-09-12 18:39:20', '2018-09-12 18:39:20');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(385, 1, 'vi', 'core.acl/users', 'info.title', 'Thông tin người dùng', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(386, 1, 'vi', 'core.acl/users', 'info.first_name', 'Họ', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(387, 1, 'vi', 'core.acl/users', 'info.last_name', 'Tên', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(388, 1, 'vi', 'core.acl/users', 'info.email', 'Email', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(389, 1, 'vi', 'core.acl/users', 'info.second_email', 'Email dự phòng', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(390, 1, 'vi', 'core.acl/users', 'info.address', 'Địa chỉ', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(391, 1, 'vi', 'core.acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(392, 1, 'vi', 'core.acl/users', 'info.birth_day', 'Ngày sinh', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(393, 1, 'vi', 'core.acl/users', 'info.job', 'Nghề nghiệp', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(394, 1, 'vi', 'core.acl/users', 'info.mobile_number', 'Số điện thoại di động', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(395, 1, 'vi', 'core.acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(396, 1, 'vi', 'core.acl/users', 'info.interes', 'Sở thích', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(397, 1, 'vi', 'core.acl/users', 'info.about', 'Giới thiệu', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(398, 1, 'vi', 'core.acl/users', 'gender.title', 'Giới tính', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(399, 1, 'vi', 'core.acl/users', 'gender.male', 'nam', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(400, 1, 'vi', 'core.acl/users', 'gender.female', 'nữ', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(401, 1, 'vi', 'core.acl/users', 'change_password', 'Thay đổi mật khẩu', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(402, 1, 'vi', 'core.acl/users', 'current_password', 'Mật khẩu hiện tại', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(403, 1, 'CN', 'core.acl/zh/auth', 'login.username', '用户名', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(404, 1, 'CN', 'core.acl/zh/auth', 'login.email', '电子邮件', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(405, 1, 'CN', 'core.acl/zh/auth', 'login.password', '密码', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(406, 1, 'CN', 'core.acl/zh/auth', 'login.title', '用户登录', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(407, 1, 'CN', 'core.acl/zh/auth', 'login.remember', '记住我?', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(408, 1, 'CN', 'core.acl/zh/auth', 'login.login', '登录', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(409, 1, 'CN', 'core.acl/zh/auth', 'login.placeholder.username', '请输入用户名', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(410, 1, 'CN', 'core.acl/zh/auth', 'login.placeholder.email', '请输入Email', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(411, 1, 'CN', 'core.acl/zh/auth', 'login.success', '登录成功!', '2018-09-12 18:39:20', '2018-09-12 18:39:20'),
(412, 1, 'CN', 'core.acl/zh/auth', 'login.fail', '错误的用户名或密码.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(413, 1, 'CN', 'core.acl/zh/auth', 'login.not_active', '您的账户已激活!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(414, 1, 'CN', 'core.acl/zh/auth', 'login.banned', '此账户已被禁用.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(415, 1, 'CN', 'core.acl/zh/auth', 'login.logout_success', '成功退出!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(416, 1, 'CN', 'core.acl/zh/auth', 'login.dont_have_account', '您在此系统无账户，请联系管理员!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(417, 1, 'CN', 'core.acl/zh/auth', 'forgot_password.title', '忘记密码', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(418, 1, 'CN', 'core.acl/zh/auth', 'forgot_password.message', '<p>是否忘记密码?</p><p>请输入您的Email账户，系统会发送邮件让您重设密码.</p>', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(419, 1, 'CN', 'core.acl/zh/auth', 'forgot_password.submit', '提交', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(420, 1, 'CN', 'core.acl/zh/auth', 'reset.new_password', '新密码', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(421, 1, 'CN', 'core.acl/zh/auth', 'reset.repassword', '确认新密码', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(422, 1, 'CN', 'core.acl/zh/auth', 'reset.email', 'Email', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(423, 1, 'CN', 'core.acl/zh/auth', 'reset.title', '重设密码', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(424, 1, 'CN', 'core.acl/zh/auth', 'reset.update', '更新', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(425, 1, 'CN', 'core.acl/zh/auth', 'reset.wrong_token', '此链接不存在或已过期，请再次尝试重设密码.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(426, 1, 'CN', 'core.acl/zh/auth', 'reset.user_not_found', '用户名不存在.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(427, 1, 'CN', 'core.acl/zh/auth', 'reset.success', '密码重设成功!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(428, 1, 'CN', 'core.acl/zh/auth', 'reset.fail', '重设密码链接已过期!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(429, 1, 'CN', 'core.acl/zh/auth', 'reset.reset.title', 'Email重设密码', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(430, 1, 'CN', 'core.acl/zh/auth', 'reset.send.success', 'Email已经发送，请检查邮件完成重设密码.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(431, 1, 'CN', 'core.acl/zh/auth', 'reset.send.fail', '无法发送Email，请稍候重试.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(432, 1, 'CN', 'core.acl/zh/auth', 'reset.new-password', '密码', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(433, 1, 'CN', 'core.acl/zh/auth', 'email.reminder.title', 'Email重设密码', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(434, 1, 'CN', 'core.acl/zh/auth', 'repassword', '密码确认', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(435, 1, 'CN', 'core.acl/zh/auth', 'failed', '失败', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(436, 1, 'CN', 'core.acl/zh/auth', 'throttle', 'Throttle', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(437, 1, 'CN', 'core.acl/zh/auth', 'not_member', '还不是会员?', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(438, 1, 'CN', 'core.acl/zh/auth', 'register_now', '现在注册', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(439, 1, 'CN', 'core.acl/zh/auth', 'lost_your_password', '忘记密码?', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(440, 1, 'CN', 'core.acl/zh/auth', 'login_title', '系统登录', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(441, 1, 'CN', 'core.acl/zh/auth', 'login_via_social', '使用社交账户登录', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(442, 1, 'CN', 'core.acl/zh/auth', 'back_to_login', '回到登录界面', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(443, 1, 'CN', 'core.acl/zh/permissions', 'notices.role_in_use', '无法删除此角色，仍在使用中!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(444, 1, 'CN', 'core.acl/zh/permissions', 'notices.role_delete_belong_user', '此角色无法删除，仍有用户与之关联!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(445, 1, 'CN', 'core.acl/zh/permissions', 'notices.role_edit_belong_user', '无法修改此角色，仍有用户与之关联!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(446, 1, 'CN', 'core.acl/zh/permissions', 'notices.delete_global_role', '无法删除全局角色!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(447, 1, 'CN', 'core.acl/zh/permissions', 'notices.delete_success', '所选角色已删除!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(448, 1, 'CN', 'core.acl/zh/permissions', 'notices.modified_success', '所选角色已更新!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(449, 1, 'CN', 'core.acl/zh/permissions', 'notices.create_success', '新角色创建成功', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(450, 1, 'CN', 'core.acl/zh/permissions', 'notices.duplicated_success', '所选角色复制成功', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(451, 1, 'CN', 'core.acl/zh/permissions', 'notices.no_select', '请至少选择一个角色操作!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(452, 1, 'CN', 'core.acl/zh/permissions', 'notices.not_found', '角色未找到', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(453, 1, 'CN', 'core.acl/zh/permissions', 'list', '权限列表', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(454, 1, 'CN', 'core.acl/zh/permissions', 'name', '名称', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(455, 1, 'CN', 'core.acl/zh/permissions', 'current_role', '当前角色', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(456, 1, 'CN', 'core.acl/zh/permissions', 'no_role_assigned', '未分配角色', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(457, 1, 'CN', 'core.acl/zh/permissions', 'role_assigned', '角色已分配', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(458, 1, 'CN', 'core.acl/zh/permissions', 'create_role', '创建新角色', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(459, 1, 'CN', 'core.acl/zh/permissions', 'role_name', '名称', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(460, 1, 'CN', 'core.acl/zh/permissions', 'role_description', '描述', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(461, 1, 'CN', 'core.acl/zh/permissions', 'permission_flags', '权限标记', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(462, 1, 'CN', 'core.acl/zh/permissions', 'cancel', '取消', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(463, 1, 'CN', 'core.acl/zh/permissions', 'reset', '重设', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(464, 1, 'CN', 'core.acl/zh/permissions', 'save', '保存', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(465, 1, 'CN', 'core.acl/zh/permissions', 'global_role_msg', '全局权限无法修改，您可以复制此权限的副本进行修改.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(466, 1, 'CN', 'core.acl/zh/permissions', 'details', '详情', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(467, 1, 'CN', 'core.acl/zh/permissions', 'duplicate', '复制', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(468, 1, 'CN', 'core.acl/zh/permissions', 'all', '所有权限', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(469, 1, 'CN', 'core.acl/zh/permissions', 'list_role', '权限列表', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(470, 1, 'CN', 'core.acl/zh/permissions', 'created_on', '创建时间', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(471, 1, 'CN', 'core.acl/zh/permissions', 'created_by', '创建人', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(472, 1, 'CN', 'core.acl/zh/permissions', 'actions', '操作', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(473, 1, 'CN', 'core.acl/zh/permissions', 'role_in_use', '无法删除此角色，仍在使用中!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(474, 1, 'CN', 'core.acl/zh/permissions', 'role_delete_belong_user', '此角色无法删除，仍有用户与之关联!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(475, 1, 'CN', 'core.acl/zh/permissions', 'delete_global_role', '无法删除全局角色!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(476, 1, 'CN', 'core.acl/zh/permissions', 'delete_success', '所选角色已删除!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(477, 1, 'CN', 'core.acl/zh/permissions', 'no_select', '请至少选择一个角色操作!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(478, 1, 'CN', 'core.acl/zh/permissions', 'not_found', '角色未找到!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(479, 1, 'CN', 'core.acl/zh/permissions', 'role_edit_belong_user', '无法修改此角色，仍有用户与之关联!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(480, 1, 'CN', 'core.acl/zh/permissions', 'modified_success', '所选角色已更新!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(481, 1, 'CN', 'core.acl/zh/permissions', 'create_success', '新角色创建成功', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(482, 1, 'CN', 'core.acl/zh/permissions', 'duplicated_success', '所选角色复制成功', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(483, 1, 'CN', 'core.acl/zh/permissions', 'options', '选项', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(484, 1, 'CN', 'core.acl/zh/permissions', 'access_denied_message', '无操作权限', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(485, 1, 'CN', 'core.acl/zh/permissions', 'roles', '角色组', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(486, 1, 'CN', 'core.acl/zh/permissions', 'role_permission', '角色组及权限', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(487, 1, 'CN', 'core.acl/zh/permissions', 'user_management', '用户管理', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(488, 1, 'CN', 'core.acl/zh/permissions', 'super_user_management', '超级用户管理', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(489, 1, 'CN', 'core.acl/zh/reminders', 'password', '密码至少需要6个字符，且输入一致！', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(490, 1, 'CN', 'core.acl/zh/reminders', 'user', '无法找到此Email相关的用户.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(491, 1, 'CN', 'core.acl/zh/reminders', 'token', '密码重设令牌失效', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(492, 1, 'CN', 'core.acl/zh/reminders', 'sent', '密码提醒已发送!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(493, 1, 'CN', 'core.acl/zh/reminders', 'reset', '密码已重设!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(494, 1, 'CN', 'core.acl/zh/users', 'delete_user_logged_in', '已登录用户无法删除!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(495, 1, 'CN', 'core.acl/zh/users', 'no_select', '请至少选择一条数据操作!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(496, 1, 'CN', 'core.acl/zh/users', 'lock_user_logged_in', '已登录用户无法锁定!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(497, 1, 'CN', 'core.acl/zh/users', 'update_success', '状态已更新!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(498, 1, 'CN', 'core.acl/zh/users', 'save_setting_failed', '设置保存时出错', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(499, 1, 'CN', 'core.acl/zh/users', 'not_found', '无此用户', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(500, 1, 'CN', 'core.acl/zh/users', 'email_exist', 'Email地址与用户关联', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(501, 1, 'CN', 'core.acl/zh/users', 'username_exist', '用户名已存在', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(502, 1, 'CN', 'core.acl/zh/users', 'update_profile_success', '您的个人信息已保存', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(503, 1, 'CN', 'core.acl/zh/users', 'password_update_success', '密码已更换', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(504, 1, 'CN', 'core.acl/zh/users', 'current_password_not_valid', '当前密码不可用', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(505, 1, 'CN', 'core.acl/zh/users', 'user_exist_in', '用户已存在', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(506, 1, 'CN', 'core.acl/zh/users', 'email', 'Email', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(507, 1, 'CN', 'core.acl/zh/users', 'role', '角色', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(508, 1, 'CN', 'core.acl/zh/users', 'username', '用户名', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(509, 1, 'CN', 'core.acl/zh/users', 'last_name', '名', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(510, 1, 'CN', 'core.acl/zh/users', 'first_name', '姓', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(511, 1, 'CN', 'core.acl/zh/users', 'message', '信息', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(512, 1, 'CN', 'core.acl/zh/users', 'cancel_btn', '取消', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(513, 1, 'CN', 'core.acl/zh/users', 'change_password', '更改密码', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(514, 1, 'CN', 'core.acl/zh/users', 'current_password', '当前密码', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(515, 1, 'CN', 'core.acl/zh/users', 'new_password', '新密码', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(516, 1, 'CN', 'core.acl/zh/users', 'confirm_new_password', '确认新密码', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(517, 1, 'CN', 'core.acl/zh/users', 'password', '密码', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(518, 1, 'CN', 'core.acl/zh/users', 'save', '保存', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(519, 1, 'CN', 'core.acl/zh/users', 'cannot_delete', '用户无法删除', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(520, 1, 'CN', 'core.acl/zh/users', 'deleted', '用户已删除', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(521, 1, 'CN', 'core.acl/zh/users', 'list', '用户列表', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(522, 1, 'CN', 'core.acl/zh/users', 'last_login', '上次登录', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(523, 1, 'CN', 'core.acl/zh/users', 'error_update_profile_image', '更新头像出错', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(524, 1, 'CN', 'core.acl/zh/users', 'email_reminder_template', '<h3>:name 您好</h3><p>系统已收到恢复密码的请求, 请点击链接.</p><p><a href=\":link\">现在重设密码</a></p><p>如果不是您本人要求，请忽略此邮件。</p><p>此邮件60分钟内有效.</p>', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(525, 1, 'CN', 'core.acl/zh/users', 'change_profile_image', '更改头像', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(526, 1, 'CN', 'core.acl/zh/users', 'new_image', '新图像', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(527, 1, 'CN', 'core.acl/zh/users', 'loading', '载入', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(528, 1, 'CN', 'core.acl/zh/users', 'close', '关闭', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(529, 1, 'CN', 'core.acl/zh/users', 'update', '更新', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(530, 1, 'CN', 'core.acl/zh/users', 'read_image_failed', '读取图像出错', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(531, 1, 'CN', 'core.acl/zh/users', 'users', '用户', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(532, 1, 'CN', 'core.acl/zh/users', 'update_avatar_success', '成功更新头像!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(533, 1, 'CN', 'core.acl/zh/users', 'info.title', '用户信息', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(534, 1, 'CN', 'core.acl/zh/users', 'info.first_name', '姓', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(535, 1, 'CN', 'core.acl/zh/users', 'info.last_name', '名', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(536, 1, 'CN', 'core.acl/zh/users', 'info.email', 'Email', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(537, 1, 'CN', 'core.acl/zh/users', 'info.second_email', '备用Email', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(538, 1, 'CN', 'core.acl/zh/users', 'info.address', '地址', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(539, 1, 'CN', 'core.acl/zh/users', 'info.second_address', '备用地址', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(540, 1, 'CN', 'core.acl/zh/users', 'info.birth_day', '生日', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(541, 1, 'CN', 'core.acl/zh/users', 'info.job', '职位', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(542, 1, 'CN', 'core.acl/zh/users', 'info.mobile_number', '手机', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(543, 1, 'CN', 'core.acl/zh/users', 'info.second_mobile_number', '备用手机', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(544, 1, 'CN', 'core.acl/zh/users', 'info.interes', '爱好', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(545, 1, 'CN', 'core.acl/zh/users', 'info.about', '关于我...', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(546, 1, 'CN', 'core.acl/zh/users', 'gender.title', '性别', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(547, 1, 'CN', 'core.acl/zh/users', 'gender.male', '男', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(548, 1, 'CN', 'core.acl/zh/users', 'gender.female', '女', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(549, 1, 'en', 'core.base/cache', 'cache_management', 'Cache management', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(550, 1, 'en', 'core.base/cache', 'cache_commands', 'Clear cache commands', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(551, 1, 'en', 'core.base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(552, 1, 'en', 'core.base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(553, 1, 'en', 'core.base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(554, 1, 'en', 'core.base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(555, 1, 'en', 'core.base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(556, 1, 'en', 'core.base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(557, 1, 'en', 'core.base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(558, 1, 'en', 'core.base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(559, 1, 'en', 'core.base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(560, 1, 'en', 'core.base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(561, 1, 'en', 'core.base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(562, 1, 'en', 'core.base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(563, 1, 'en', 'core.base/cache', 'commands.clear_log.title', 'Clear log', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(564, 1, 'en', 'core.base/cache', 'commands.clear_log.description', 'Clear system log files', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(565, 1, 'en', 'core.base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(566, 1, 'en', 'core.base/errors', '401_title', 'Permission Denied', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(567, 1, 'en', 'core.base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(568, 1, 'en', 'core.base/errors', '404_title', 'Page could not be found', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(569, 1, 'en', 'core.base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(570, 1, 'en', 'core.base/errors', '500_title', 'Page could not be loaded', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(571, 1, 'en', 'core.base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(572, 1, 'en', 'core.base/errors', 'reasons', 'This may have occurred because of several reasons', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(573, 1, 'en', 'core.base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the dashboard by <a href=\"http://botble.local/admin\">clicking here</a>.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(574, 1, 'en', 'core.base/forms', 'choose_image', 'Choose image', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(575, 1, 'en', 'core.base/forms', 'actions', 'Actions', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(576, 1, 'en', 'core.base/forms', 'save', 'Save', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(577, 1, 'en', 'core.base/forms', 'save_and_continue', 'Save & Edit', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(578, 1, 'en', 'core.base/forms', 'image', 'Image', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(579, 1, 'en', 'core.base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(580, 1, 'en', 'core.base/forms', 'create', 'Create', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(581, 1, 'en', 'core.base/forms', 'edit', 'Edit', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(582, 1, 'en', 'core.base/forms', 'permalink', 'Permalink', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(583, 1, 'en', 'core.base/forms', 'ok', 'OK', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(584, 1, 'en', 'core.base/forms', 'cancel', 'Cancel', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(585, 1, 'en', 'core.base/forms', 'character_remain', 'character(s) remain', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(586, 1, 'en', 'core.base/forms', 'template', 'Template', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(587, 1, 'en', 'core.base/forms', 'choose_file', 'Choose file', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(588, 1, 'en', 'core.base/forms', 'file', 'File', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(589, 1, 'en', 'core.base/forms', 'content', 'Content', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(590, 1, 'en', 'core.base/forms', 'description', 'Description', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(591, 1, 'en', 'core.base/forms', 'name', 'Name', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(592, 1, 'en', 'core.base/forms', 'slug', 'Slug', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(593, 1, 'en', 'core.base/forms', 'title', 'Title', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(594, 1, 'en', 'core.base/forms', 'value', 'Value', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(595, 1, 'en', 'core.base/forms', 'name_placeholder', 'Name', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(596, 1, 'en', 'core.base/forms', 'alias_placeholder', 'Alias', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(597, 1, 'en', 'core.base/forms', 'description_placeholder', 'Short description', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(598, 1, 'en', 'core.base/forms', 'parent', 'Parent', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(599, 1, 'en', 'core.base/forms', 'icon', 'Icon', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(600, 1, 'en', 'core.base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(601, 1, 'en', 'core.base/forms', 'order_by', 'Order by', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(602, 1, 'en', 'core.base/forms', 'order_by_placeholder', 'Order by', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(603, 1, 'en', 'core.base/forms', 'featured', 'Is featured?', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(604, 1, 'en', 'core.base/forms', 'is_default', 'Is default?', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(605, 1, 'en', 'core.base/forms', 'update', 'Update', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(606, 1, 'en', 'core.base/forms', 'publish', 'Publish', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(607, 1, 'en', 'core.base/forms', 'remove_image', 'Remove image', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(608, 1, 'en', 'core.base/forms', 'remove_file', 'Remove file', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(609, 1, 'en', 'core.base/forms', 'order', 'Order', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(610, 1, 'en', 'core.base/forms', 'alias', 'Alias', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(611, 1, 'en', 'core.base/forms', 'basic_information', 'Basic information', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(612, 1, 'en', 'core.base/forms', 'short_code', 'Shortcode', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(613, 1, 'en', 'core.base/forms', 'add_short_code', 'Add a shortcode', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(614, 1, 'en', 'core.base/forms', 'add', 'Add', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(615, 1, 'en', 'core.base/forms', 'link', 'Link', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(616, 1, 'en', 'core.base/forms', 'show_hide_editor', 'Show/Hide Editor', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(617, 1, 'en', 'core.base/forms', 'basic_info_title', 'Basic information', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(618, 1, 'en', 'core.base/layouts', 'platform_admin', 'Platform Administration', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(619, 1, 'en', 'core.base/layouts', 'dashboard', 'Dashboard', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(620, 1, 'en', 'core.base/layouts', 'appearance', 'Appearance', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(621, 1, 'en', 'core.base/layouts', 'menu', 'Menu', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(622, 1, 'en', 'core.base/layouts', 'widgets', 'Widgets', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(623, 1, 'en', 'core.base/layouts', 'theme_options', 'Theme options', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(624, 1, 'en', 'core.base/layouts', 'plugins', 'Plugins', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(625, 1, 'en', 'core.base/layouts', 'settings', 'Settings', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(626, 1, 'en', 'core.base/layouts', 'setting_general', 'General', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(627, 1, 'en', 'core.base/layouts', 'setting_email', 'Email', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(628, 1, 'en', 'core.base/layouts', 'system_information', 'System information', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(629, 1, 'en', 'core.base/layouts', 'theme', 'Theme', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(630, 1, 'en', 'core.base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(631, 1, 'en', 'core.base/layouts', 'profile', 'Profile', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(632, 1, 'en', 'core.base/layouts', 'logout', 'Logout', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(633, 1, 'en', 'core.base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(634, 1, 'en', 'core.base/layouts', 'home', 'Home', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(635, 1, 'en', 'core.base/layouts', 'search', 'Search', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(636, 1, 'en', 'core.base/layouts', 'add_new', 'Add new', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(637, 1, 'en', 'core.base/layouts', 'n_a', 'N/A', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(638, 1, 'en', 'core.base/layouts', 'page_loaded_time', 'Page loaded in', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(639, 1, 'en', 'core.base/layouts', 'view_website', 'View website', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(640, 1, 'en', 'core.base/mail', 'send-fail', 'Send email failed', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(641, 1, 'en', 'core.base/mail', 'happy_birthday', 'Happy birthday!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(642, 1, 'en', 'core.base/notices', 'create_success_message', 'Created successfully', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(643, 1, 'en', 'core.base/notices', 'update_success_message', 'Updated successfully', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(644, 1, 'en', 'core.base/notices', 'delete_success_message', 'Deleted successfully', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(645, 1, 'en', 'core.base/notices', 'success_header', 'Success!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(646, 1, 'en', 'core.base/notices', 'error_header', 'Error!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(647, 1, 'en', 'core.base/notices', 'cannot_delete', 'Can not delete this record!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(648, 1, 'en', 'core.base/notices', 'no_select', 'Please select at least one record to perform this action!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(649, 1, 'en', 'core.base/notices', 'processing_request', 'We are processing your request.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(650, 1, 'en', 'core.base/notices', 'error', 'Error!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(651, 1, 'en', 'core.base/notices', 'success', 'Success!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(652, 1, 'en', 'core.base/notices', 'info', 'Info!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(653, 1, 'en', 'core.base/system', 'no_select', 'Please select at least one record to take this action!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(654, 1, 'en', 'core.base/system', 'cannot_find_user', 'Unable to find specified user', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(655, 1, 'en', 'core.base/system', 'supper_revoked', 'Super user access revoked', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(656, 1, 'en', 'core.base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(657, 1, 'en', 'core.base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(658, 1, 'en', 'core.base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(659, 1, 'en', 'core.base/system', 'supper_granted', 'Super user access granted', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(660, 1, 'en', 'core.base/system', 'delete_log_success', 'Delete log file successfully!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(661, 1, 'en', 'core.base/system', 'get_member_success', 'Member list retrieved successfully', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(662, 1, 'en', 'core.base/system', 'error_occur', 'The following errors occurred', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(663, 1, 'en', 'core.base/system', 'user_management', 'User Management', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(664, 1, 'en', 'core.base/system', 'user_management_description', 'Manage users.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(665, 1, 'en', 'core.base/system', 'role_and_permission', 'Roles and Permissions', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(666, 1, 'en', 'core.base/system', 'role_and_permission_description', 'Manage the available roles.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(667, 1, 'en', 'core.base/system', 'user.list_super', 'List Super Users', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(668, 1, 'en', 'core.base/system', 'user.email', 'Email', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(669, 1, 'en', 'core.base/system', 'user.last_login', 'Last Login', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(670, 1, 'en', 'core.base/system', 'user.username', 'Username', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(671, 1, 'en', 'core.base/system', 'user.add_user', 'Add Super User', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(672, 1, 'en', 'core.base/system', 'user.cancel', 'Cancel', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(673, 1, 'en', 'core.base/system', 'user.create', 'Create', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(674, 1, 'en', 'core.base/system', 'options.features', 'Feature Access Control', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(675, 1, 'en', 'core.base/system', 'options.feature_description', 'Manage the available.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(676, 1, 'en', 'core.base/system', 'options.manage_super', 'Super User Management', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(677, 1, 'en', 'core.base/system', 'options.manage_super_description', 'Add/remove super users.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(678, 1, 'en', 'core.base/system', 'options.info', 'System information', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(679, 1, 'en', 'core.base/system', 'options.info_description', 'All information about current system configuration.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(680, 1, 'en', 'core.base/system', 'info.title', 'System information', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(681, 1, 'en', 'core.base/system', 'info.cache', 'Cache', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(682, 1, 'en', 'core.base/system', 'info.locale', 'Active locale', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(683, 1, 'en', 'core.base/system', 'info.environment', 'Environment', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(684, 1, 'en', 'core.base/system', 'enabled', 'Enabled', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(685, 1, 'en', 'core.base/system', 'deactivated', 'Deactivated', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(686, 1, 'en', 'core.base/system', 'activated', 'Activated', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(687, 1, 'en', 'core.base/system', 'activate', 'Activate', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(688, 1, 'en', 'core.base/system', 'deactivate', 'Deactivate', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(689, 1, 'en', 'core.base/system', 'author', 'By', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(690, 1, 'en', 'core.base/system', 'update_plugin_status_success', 'Update plugin successfully', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(691, 1, 'en', 'core.base/system', 'disabled_in_demo_mode', 'You can not do it in demo mode!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(692, 1, 'en', 'core.base/system', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(693, 1, 'en', 'core.base/system', 'version', 'Version', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(694, 1, 'en', 'core.base/system', 'report_description', 'Please share this information for troubleshooting', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(695, 1, 'en', 'core.base/system', 'get_system_report', 'Get System Report', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(696, 1, 'en', 'core.base/system', 'system_environment', 'System Environment', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(697, 1, 'en', 'core.base/system', 'framework_version', 'Framework Version', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(698, 1, 'en', 'core.base/system', 'timezone', 'Timezone', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(699, 1, 'en', 'core.base/system', 'debug_mode', 'Debug Mode', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(700, 1, 'en', 'core.base/system', 'storage_dir_writable', 'Storage Dir Writable', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(701, 1, 'en', 'core.base/system', 'cache_dir_writable', 'Cache Dir Writable', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(702, 1, 'en', 'core.base/system', 'app_size', 'App Size', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(703, 1, 'en', 'core.base/system', 'server_environment', 'Server Environment', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(704, 1, 'en', 'core.base/system', 'php_version', 'PHP Version', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(705, 1, 'en', 'core.base/system', 'server_software', 'Server Software', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(706, 1, 'en', 'core.base/system', 'server_os', 'Server OS', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(707, 1, 'en', 'core.base/system', 'database', 'Database', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(708, 1, 'en', 'core.base/system', 'ssl_installed', 'SSL Installed', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(709, 1, 'en', 'core.base/system', 'cache_driver', 'Cache Driver', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(710, 1, 'en', 'core.base/system', 'session_driver', 'Session Driver', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(711, 1, 'en', 'core.base/system', 'mbstring_ext', 'Mbstring Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(712, 1, 'en', 'core.base/system', 'openssl_ext', 'OpenSSL Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(713, 1, 'en', 'core.base/system', 'pdo_ext', 'PDO Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(714, 1, 'en', 'core.base/system', 'curl_ext', 'CURL Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(715, 1, 'en', 'core.base/system', 'exif_ext', 'Exif Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(716, 1, 'en', 'core.base/system', 'file_info_ext', 'File info Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(717, 1, 'en', 'core.base/system', 'tokenizer_ext', 'Tokenizer Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(718, 1, 'en', 'core.base/system', 'extra_stats', 'Extra Stats', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(719, 1, 'en', 'core.base/system', 'installed_packages', 'Installed Packages and their version numbers', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(720, 1, 'en', 'core.base/system', 'extra_information', 'Extra Information', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(721, 1, 'en', 'core.base/system', 'copy_report', 'Copy Report', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(722, 1, 'en', 'core.base/system', 'package_name', 'Package Name', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(723, 1, 'en', 'core.base/system', 'dependency_name', 'Dependency Name', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(724, 1, 'en', 'core.base/system', 'plugins', 'Plugins', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(725, 1, 'en', 'core.base/system', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(726, 1, 'en', 'core.base/system', 'remove', 'Remove', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(727, 1, 'en', 'core.base/system', 'remove_plugin_success', 'Remove plugin successfully!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(728, 1, 'en', 'core.base/system', 'remove_plugin', 'Remove plugin', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(729, 1, 'en', 'core.base/system', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(730, 1, 'en', 'core.base/system', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(731, 1, 'en', 'core.base/system', 'total_plugins', 'Total plugins', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(732, 1, 'en', 'core.base/tables', 'filter_enabled', 'Advanced search filters enabled.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(733, 1, 'en', 'core.base/tables', 'id', 'ID', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(734, 1, 'en', 'core.base/tables', 'name', 'Name', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(735, 1, 'en', 'core.base/tables', 'slug', 'Slug', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(736, 1, 'en', 'core.base/tables', 'title', 'Title', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(737, 1, 'en', 'core.base/tables', 'order_by', 'Order By', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(738, 1, 'en', 'core.base/tables', 'order', 'Order', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(739, 1, 'en', 'core.base/tables', 'status', 'Status', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(740, 1, 'en', 'core.base/tables', 'created_at', 'Created At', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(741, 1, 'en', 'core.base/tables', 'updated_at', 'Updated At', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(742, 1, 'en', 'core.base/tables', 'description', 'Description', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(743, 1, 'en', 'core.base/tables', 'operations', 'Operations', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(744, 1, 'en', 'core.base/tables', 'loading_data', 'Loading data from server', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(745, 1, 'en', 'core.base/tables', 'url', 'URL', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(746, 1, 'en', 'core.base/tables', 'author', 'Author', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(747, 1, 'en', 'core.base/tables', 'notes', 'Notes', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(748, 1, 'en', 'core.base/tables', 'column', 'Column', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(749, 1, 'en', 'core.base/tables', 'origin', 'Origin', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(750, 1, 'en', 'core.base/tables', 'after_change', 'After changes', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(751, 1, 'en', 'core.base/tables', 'views', 'Views', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(752, 1, 'en', 'core.base/tables', 'browser', 'Browser', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(753, 1, 'en', 'core.base/tables', 'session', 'Session', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(754, 1, 'en', 'core.base/tables', 'activated', 'activated', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(755, 1, 'en', 'core.base/tables', 'deactivated', 'deactivated', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(756, 1, 'en', 'core.base/tables', 'is_featured', 'Is featured', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(757, 1, 'en', 'core.base/tables', 'edit', 'Edit', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(758, 1, 'en', 'core.base/tables', 'delete', 'Delete', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(759, 1, 'en', 'core.base/tables', 'restore', 'Restore', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(760, 1, 'en', 'core.base/tables', 'activate', 'Activate', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(761, 1, 'en', 'core.base/tables', 'deactivate', 'Deactivate', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(762, 1, 'en', 'core.base/tables', 'filter', 'Type to filter...', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(763, 1, 'en', 'core.base/tables', 'excel', 'Excel', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(764, 1, 'en', 'core.base/tables', 'export', 'Export', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(765, 1, 'en', 'core.base/tables', 'csv', 'CSV', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(766, 1, 'en', 'core.base/tables', 'pdf', 'PDF', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(767, 1, 'en', 'core.base/tables', 'print', 'Print', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(768, 1, 'en', 'core.base/tables', 'reset', 'Reset', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(769, 1, 'en', 'core.base/tables', 'reload', 'Reload', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(770, 1, 'en', 'core.base/tables', 'display', 'Display', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(771, 1, 'en', 'core.base/tables', 'all', 'All', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(772, 1, 'en', 'core.base/tables', 'add_new', 'Add New', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(773, 1, 'en', 'core.base/tables', 'action', 'Actions', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(774, 1, 'en', 'core.base/tables', 'delete_entry', 'Delete Entry', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(775, 1, 'en', 'core.base/tables', 'view', 'View Detail', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(776, 1, 'en', 'core.base/tables', 'save', 'Save', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(777, 1, 'en', 'core.base/tables', 'show_from', 'Show from', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(778, 1, 'en', 'core.base/tables', 'to', 'to', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(779, 1, 'en', 'core.base/tables', 'in', 'in', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(780, 1, 'en', 'core.base/tables', 'records', 'records', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(781, 1, 'en', 'core.base/tables', 'no_data', 'No data to display', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(782, 1, 'en', 'core.base/tables', 'no_record', 'No record', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(783, 1, 'en', 'core.base/tables', 'filtered_from', 'filtered from', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(784, 1, 'en', 'core.base/tables', 'loading', 'Loading data from server', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(785, 1, 'en', 'core.base/tables', 'confirm_delete', 'Confirm delete', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(786, 1, 'en', 'core.base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(787, 1, 'en', 'core.base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(788, 1, 'en', 'core.base/tables', 'cancel', 'Cancel', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(789, 1, 'en', 'core.base/tables', 'template', 'Template', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(790, 1, 'en', 'core.base/tables', 'email', 'Email', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(791, 1, 'en', 'core.base/tables', 'last_login', 'Last login', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(792, 1, 'en', 'core.base/tables', 'shortcode', 'Shortcode', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(793, 1, 'en', 'core.base/tables', 'image', 'Image', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(794, 1, 'en', 'core.base/tables', 'bulk_changes', 'Bulk changes', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(795, 1, 'en', 'core.base/tables', 'submit', 'Submit', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(796, 1, 'en', 'core.base/tabs', 'detail', 'Detail', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(797, 1, 'en', 'core.base/tabs', 'file', 'Files', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(798, 1, 'en', 'core.base/tabs', 'record_note', 'Record Note', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(799, 1, 'en', 'core.base/tabs', 'revision', 'Revision History', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(800, 1, 'vi', 'core.base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(801, 1, 'vi', 'core.base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(802, 1, 'vi', 'core.base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(803, 1, 'vi', 'core.base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(804, 1, 'vi', 'core.base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(805, 1, 'vi', 'core.base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(806, 1, 'vi', 'core.base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(807, 1, 'vi', 'core.base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(808, 1, 'vi', 'core.base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2018-09-12 18:39:21', '2018-09-12 18:39:21');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(809, 1, 'vi', 'core.base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(810, 1, 'vi', 'core.base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(811, 1, 'vi', 'core.base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(812, 1, 'vi', 'core.base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(813, 1, 'vi', 'core.base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(814, 1, 'vi', 'core.base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(815, 1, 'vi', 'core.base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(816, 1, 'vi', 'core.base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(817, 1, 'vi', 'core.base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(818, 1, 'vi', 'core.base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(819, 1, 'vi', 'core.base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(820, 1, 'vi', 'core.base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(821, 1, 'vi', 'core.base/errors', '500_title', 'Không thể tải trang', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(822, 1, 'vi', 'core.base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(823, 1, 'vi', 'core.base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(824, 1, 'vi', 'core.base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(825, 1, 'vi', 'core.base/forms', 'choose_image', 'Chọn ảnh', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(826, 1, 'vi', 'core.base/forms', 'actions', 'Tác vụ', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(827, 1, 'vi', 'core.base/forms', 'save', 'Lưu', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(828, 1, 'vi', 'core.base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(829, 1, 'vi', 'core.base/forms', 'image', 'Hình ảnh', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(830, 1, 'vi', 'core.base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(831, 1, 'vi', 'core.base/forms', 'create', 'Tạo mới', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(832, 1, 'vi', 'core.base/forms', 'edit', 'Sửa', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(833, 1, 'vi', 'core.base/forms', 'permalink', 'Đường dẫn', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(834, 1, 'vi', 'core.base/forms', 'ok', 'OK', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(835, 1, 'vi', 'core.base/forms', 'cancel', 'Hủy bỏ', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(836, 1, 'vi', 'core.base/forms', 'character_remain', 'kí tự còn lại', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(837, 1, 'vi', 'core.base/forms', 'template', 'Template', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(838, 1, 'vi', 'core.base/forms', 'choose_file', 'Chọn tập tin', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(839, 1, 'vi', 'core.base/forms', 'file', 'Tập tin', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(840, 1, 'vi', 'core.base/forms', 'content', 'Nội dung', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(841, 1, 'vi', 'core.base/forms', 'description', 'Mô tả', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(842, 1, 'vi', 'core.base/forms', 'name', 'Tên', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(843, 1, 'vi', 'core.base/forms', 'name_placeholder', 'Nhập tên', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(844, 1, 'vi', 'core.base/forms', 'description_placeholder', 'Mô tả ngắn', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(845, 1, 'vi', 'core.base/forms', 'parent', 'Cha', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(846, 1, 'vi', 'core.base/forms', 'icon', 'Biểu tượng', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(847, 1, 'vi', 'core.base/forms', 'order_by', 'Sắp xếp', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(848, 1, 'vi', 'core.base/forms', 'order_by_placeholder', 'Sắp xếp', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(849, 1, 'vi', 'core.base/forms', 'slug', 'Slug', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(850, 1, 'vi', 'core.base/forms', 'featured', 'Nổi bật?', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(851, 1, 'vi', 'core.base/forms', 'is_default', 'Mặc định?', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(852, 1, 'vi', 'core.base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(853, 1, 'vi', 'core.base/forms', 'update', 'Cập nhật', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(854, 1, 'vi', 'core.base/forms', 'publish', 'Xuất bản', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(855, 1, 'vi', 'core.base/forms', 'remove_image', 'Xoá ảnh', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(856, 1, 'vi', 'core.base/forms', 'add', 'Thêm', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(857, 1, 'vi', 'core.base/forms', 'add_short_code', 'Thêm shortcode', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(858, 1, 'vi', 'core.base/forms', 'alias', 'Mã thay thế', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(859, 1, 'vi', 'core.base/forms', 'alias_placeholder', 'Mã thay thế', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(860, 1, 'vi', 'core.base/forms', 'basic_information', 'Thông tin cơ bản', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(861, 1, 'vi', 'core.base/forms', 'link', 'Liên kết', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(862, 1, 'vi', 'core.base/forms', 'order', 'Thứ tự', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(863, 1, 'vi', 'core.base/forms', 'short_code', 'Shortcode', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(864, 1, 'vi', 'core.base/forms', 'title', 'Tiêu đề', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(865, 1, 'vi', 'core.base/forms', 'value', 'Giá trị', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(866, 1, 'vi', 'core.base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(867, 1, 'vi', 'core.base/forms', 'basic_info_title', 'Thông tin cơ bản', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(868, 1, 'vi', 'core.base/layouts', 'platform_admin', 'Quản trị hệ thống', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(869, 1, 'vi', 'core.base/layouts', 'dashboard', 'Bảng điều khiển', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(870, 1, 'vi', 'core.base/layouts', 'appearance', 'Hiển thị', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(871, 1, 'vi', 'core.base/layouts', 'menu', 'Trình đơn', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(872, 1, 'vi', 'core.base/layouts', 'widgets', 'Tiện ích', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(873, 1, 'vi', 'core.base/layouts', 'theme_options', 'Tuỳ chọn giao diện', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(874, 1, 'vi', 'core.base/layouts', 'plugins', 'Tiện ích mở rộng', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(875, 1, 'vi', 'core.base/layouts', 'settings', 'Cài đặt', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(876, 1, 'vi', 'core.base/layouts', 'setting_general', 'Cơ bản', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(877, 1, 'vi', 'core.base/layouts', 'system_information', 'Thông tin hệ thống', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(878, 1, 'vi', 'core.base/layouts', 'theme', 'Giao diện', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(879, 1, 'vi', 'core.base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(880, 1, 'vi', 'core.base/layouts', 'profile', 'Thông tin cá nhân', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(881, 1, 'vi', 'core.base/layouts', 'logout', 'Đăng xuất', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(882, 1, 'vi', 'core.base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(883, 1, 'vi', 'core.base/layouts', 'home', 'Trang chủ', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(884, 1, 'vi', 'core.base/layouts', 'search', 'Tìm kiếm', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(885, 1, 'vi', 'core.base/layouts', 'add_new', 'Thêm mới', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(886, 1, 'vi', 'core.base/layouts', 'n_a', 'N/A', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(887, 1, 'vi', 'core.base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(888, 1, 'vi', 'core.base/layouts', 'view_website', 'Xem trang ngoài', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(889, 1, 'vi', 'core.base/layouts', 'setting_email', 'Email', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(890, 1, 'vi', 'core.base/mail', 'send-fail', 'Gửi email không thành công', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(891, 1, 'vi', 'core.base/mail', 'happy_birthday', 'Chúc mừng sinh nhật!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(892, 1, 'vi', 'core.base/notices', 'create_success_message', 'Tạo thành công', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(893, 1, 'vi', 'core.base/notices', 'update_success_message', 'Cập nhật thành công', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(894, 1, 'vi', 'core.base/notices', 'delete_success_message', 'Xóa thành công', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(895, 1, 'vi', 'core.base/notices', 'success_header', 'Thành công!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(896, 1, 'vi', 'core.base/notices', 'error_header', 'Lỗi!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(897, 1, 'vi', 'core.base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(898, 1, 'vi', 'core.base/notices', 'cannot_delete', 'Không thể xóa bản ghi này', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(899, 1, 'vi', 'core.base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(900, 1, 'vi', 'core.base/notices', 'error', 'Lỗi!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(901, 1, 'vi', 'core.base/notices', 'success', 'Thành công!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(902, 1, 'vi', 'core.base/notices', 'info', 'Thông tin!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(903, 1, 'vi', 'core.base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(904, 1, 'vi', 'core.base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(905, 1, 'vi', 'core.base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(906, 1, 'vi', 'core.base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(907, 1, 'vi', 'core.base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(908, 1, 'vi', 'core.base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(909, 1, 'vi', 'core.base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(910, 1, 'vi', 'core.base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(911, 1, 'vi', 'core.base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(912, 1, 'vi', 'core.base/system', 'error_occur', 'Có lỗi dưới đây', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(913, 1, 'vi', 'core.base/system', 'role_and_permission', 'Phân quyền hệ thống', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(914, 1, 'vi', 'core.base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(915, 1, 'vi', 'core.base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(916, 1, 'vi', 'core.base/system', 'user.username', 'Tên đăng nhập', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(917, 1, 'vi', 'core.base/system', 'user.email', 'Email', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(918, 1, 'vi', 'core.base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(919, 1, 'vi', 'core.base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(920, 1, 'vi', 'core.base/system', 'user.cancel', 'Hủy bỏ', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(921, 1, 'vi', 'core.base/system', 'user.create', 'Thêm', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(922, 1, 'vi', 'core.base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(923, 1, 'vi', 'core.base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(924, 1, 'vi', 'core.base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(925, 1, 'vi', 'core.base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(926, 1, 'vi', 'core.base/system', 'options.info', 'Thông tin hệ thống', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(927, 1, 'vi', 'core.base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(928, 1, 'vi', 'core.base/system', 'info.title', 'Thông tin hệ thống', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(929, 1, 'vi', 'core.base/system', 'info.cache', 'Bộ nhớ đệm', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(930, 1, 'vi', 'core.base/system', 'info.environment', 'Môi trường', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(931, 1, 'vi', 'core.base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(932, 1, 'vi', 'core.base/system', 'activate', 'Kích hoạt', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(933, 1, 'vi', 'core.base/system', 'author', 'Tác giả', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(934, 1, 'vi', 'core.base/system', 'deactivate', 'Hủy kích hoạt', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(935, 1, 'vi', 'core.base/system', 'deactivated', 'Đã vô hiệu', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(936, 1, 'vi', 'core.base/system', 'disabled_in_demo_mode', 'Bạn không thể thực hiện hành động này ở chế độ demo', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(937, 1, 'vi', 'core.base/system', 'enabled', 'Kích hoạt', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(938, 1, 'vi', 'core.base/system', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(939, 1, 'vi', 'core.base/system', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(940, 1, 'vi', 'core.base/system', 'user_management', 'Quản lý thành viên', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(941, 1, 'vi', 'core.base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(942, 1, 'vi', 'core.base/system', 'version', 'Phiên bản', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(943, 1, 'vi', 'core.base/system', 'activated', 'Đã kích hoạt', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(944, 1, 'vi', 'core.base/system', 'app_size', 'Kích thước ứng dụng', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(945, 1, 'vi', 'core.base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(946, 1, 'vi', 'core.base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(947, 1, 'vi', 'core.base/system', 'copy_report', 'Sao chép báo cáo', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(948, 1, 'vi', 'core.base/system', 'curl_ext', 'CURL Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(949, 1, 'vi', 'core.base/system', 'database', 'Hệ thống dữ liệu', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(950, 1, 'vi', 'core.base/system', 'debug_mode', 'Chế độ sửa lỗi', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(951, 1, 'vi', 'core.base/system', 'dependency_name', 'Tên gói', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(952, 1, 'vi', 'core.base/system', 'exif_ext', 'Exif Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(953, 1, 'vi', 'core.base/system', 'extra_information', 'Thông tin mở rộng', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(954, 1, 'vi', 'core.base/system', 'extra_stats', 'Thống kê thêm', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(955, 1, 'vi', 'core.base/system', 'file_info_ext', 'File info Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(956, 1, 'vi', 'core.base/system', 'framework_version', 'Phiên bản framework', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(957, 1, 'vi', 'core.base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(958, 1, 'vi', 'core.base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(959, 1, 'vi', 'core.base/system', 'mbstring_ext', 'Mbstring Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(960, 1, 'vi', 'core.base/system', 'missing_required_plugins', 'Vui lòng kích hoạt các tiện ích mở rộng :plugins trước khi kích hoạt tiện ích này', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(961, 1, 'vi', 'core.base/system', 'openssl_ext', 'OpenSSL Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(962, 1, 'vi', 'core.base/system', 'package_name', 'Tên gói', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(963, 1, 'vi', 'core.base/system', 'pdo_ext', 'PDO Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(964, 1, 'vi', 'core.base/system', 'php_version', 'Phiên bản PHP', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(965, 1, 'vi', 'core.base/system', 'plugins', 'Tiện ích mở rộng', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(966, 1, 'vi', 'core.base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(967, 1, 'vi', 'core.base/system', 'server_environment', 'Môi trường máy chủ', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(968, 1, 'vi', 'core.base/system', 'server_os', 'Hệ điều hành của máy chủ', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(969, 1, 'vi', 'core.base/system', 'server_software', 'Phần mềm', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(970, 1, 'vi', 'core.base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(971, 1, 'vi', 'core.base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(972, 1, 'vi', 'core.base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(973, 1, 'vi', 'core.base/system', 'system_environment', 'Môi trường hệ thống', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(974, 1, 'vi', 'core.base/system', 'timezone', 'Múi giờ', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(975, 1, 'vi', 'core.base/system', 'tokenizer_ext', 'Tokenizer Ext', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(976, 1, 'vi', 'core.base/tables', 'filter_enabled', 'Tìm kiếm nâng cao đã được kích hoạt', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(977, 1, 'vi', 'core.base/tables', 'id', 'ID', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(978, 1, 'vi', 'core.base/tables', 'name', 'Tên', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(979, 1, 'vi', 'core.base/tables', 'order_by', 'Thứ tự', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(980, 1, 'vi', 'core.base/tables', 'status', 'Trạng thái', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(981, 1, 'vi', 'core.base/tables', 'created_at', 'Ngày tạo', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(982, 1, 'vi', 'core.base/tables', 'updated_at', 'Ngày cập nhật', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(983, 1, 'vi', 'core.base/tables', 'operations', 'Tác vụ', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(984, 1, 'vi', 'core.base/tables', 'loading_data', 'Đang tải dữ liệu từ server', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(985, 1, 'vi', 'core.base/tables', 'url', 'URL', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(986, 1, 'vi', 'core.base/tables', 'author', 'Người tạo', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(987, 1, 'vi', 'core.base/tables', 'column', 'Cột', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(988, 1, 'vi', 'core.base/tables', 'origin', 'Bản cũ', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(989, 1, 'vi', 'core.base/tables', 'after_change', 'Sau khi thay đổi', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(990, 1, 'vi', 'core.base/tables', 'notes', 'Ghi chú', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(991, 1, 'vi', 'core.base/tables', 'activated', 'kích hoạt', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(992, 1, 'vi', 'core.base/tables', 'browser', 'Trình duyệt', '2018-09-12 18:39:21', '2018-09-12 18:39:21'),
(993, 1, 'vi', 'core.base/tables', 'deactivated', 'hủy kích hoạt', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(994, 1, 'vi', 'core.base/tables', 'description', 'Mô tả', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(995, 1, 'vi', 'core.base/tables', 'session', 'Phiên', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(996, 1, 'vi', 'core.base/tables', 'views', 'Lượt xem', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(997, 1, 'vi', 'core.base/tables', 'restore', 'Khôi phục', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(998, 1, 'vi', 'core.base/tables', 'edit', 'Sửa', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(999, 1, 'vi', 'core.base/tables', 'delete', 'Xóa', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1000, 1, 'vi', 'core.base/tables', 'action', 'Hành động', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1001, 1, 'vi', 'core.base/tables', 'activate', 'Kích hoạt', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1002, 1, 'vi', 'core.base/tables', 'add_new', 'Thêm mới', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1003, 1, 'vi', 'core.base/tables', 'all', 'Tất cả', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1004, 1, 'vi', 'core.base/tables', 'cancel', 'Hủy bỏ', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1005, 1, 'vi', 'core.base/tables', 'confirm_delete', 'Xác nhận xóa', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1006, 1, 'vi', 'core.base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1007, 1, 'vi', 'core.base/tables', 'csv', 'CSV', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1008, 1, 'vi', 'core.base/tables', 'deactivate', 'Hủy kích hoạt', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1009, 1, 'vi', 'core.base/tables', 'delete_entry', 'Xóa bản ghi', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1010, 1, 'vi', 'core.base/tables', 'display', 'Hiển thị', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1011, 1, 'vi', 'core.base/tables', 'excel', 'Excel', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1012, 1, 'vi', 'core.base/tables', 'export', 'Xuất bản', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1013, 1, 'vi', 'core.base/tables', 'filter', 'Nhập từ khóa...', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1014, 1, 'vi', 'core.base/tables', 'filtered_from', 'được lọc từ', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1015, 1, 'vi', 'core.base/tables', 'in', 'trong tổng số', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1016, 1, 'vi', 'core.base/tables', 'loading', 'Đang tải dữ liệu từ hệ thống', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1017, 1, 'vi', 'core.base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1018, 1, 'vi', 'core.base/tables', 'no_record', 'Không có dữ liệu', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1019, 1, 'vi', 'core.base/tables', 'pdf', 'PDF', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1020, 1, 'vi', 'core.base/tables', 'print', 'In', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1021, 1, 'vi', 'core.base/tables', 'records', 'bản ghi', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1022, 1, 'vi', 'core.base/tables', 'reload', 'Tải lại', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1023, 1, 'vi', 'core.base/tables', 'reset', 'Làm mới', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1024, 1, 'vi', 'core.base/tables', 'save', 'Lưu', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1025, 1, 'vi', 'core.base/tables', 'show_from', 'Hiển thị từ', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1026, 1, 'vi', 'core.base/tables', 'template', 'Giao diện', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1027, 1, 'vi', 'core.base/tables', 'to', 'đến', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1028, 1, 'vi', 'core.base/tables', 'view', 'Xem chi tiết', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1029, 1, 'vi', 'core.base/tables', 'email', 'Email', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1030, 1, 'vi', 'core.base/tables', 'image', 'Hình ảnh', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1031, 1, 'vi', 'core.base/tables', 'is_featured', 'Nổi bật', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1032, 1, 'vi', 'core.base/tables', 'last_login', 'Lần cuối đăng nhập', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1033, 1, 'vi', 'core.base/tables', 'order', 'Thứ tự', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1034, 1, 'vi', 'core.base/tables', 'shortcode', 'Shortcode', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1035, 1, 'vi', 'core.base/tables', 'slug', 'Slug', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1036, 1, 'vi', 'core.base/tables', 'title', 'Tiêu đề', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1037, 1, 'vi', 'core.base/tabs', 'detail', 'Chi tiết', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1038, 1, 'vi', 'core.base/tabs', 'file', 'Tập tin', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1039, 1, 'vi', 'core.base/tabs', 'record_note', 'Ghi chú', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1040, 1, 'vi', 'core.base/tabs', 'revision', 'Lịch sử thay đổi', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1041, 1, 'CN', 'core.base/zh/cache', 'cache_management', '缓存管理', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1042, 1, 'CN', 'core.base/zh/cache', 'cache_commands', '清理缓存', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1043, 1, 'CN', 'core.base/zh/cache', 'commands.clear_cms_cache.title', '清理所有内容缓存', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1044, 1, 'CN', 'core.base/zh/cache', 'commands.clear_cms_cache.description', '清理内容数据库缓存，静态数据缓存...当您更新数据后前台无法显示时请运行此命令。', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1045, 1, 'CN', 'core.base/zh/cache', 'commands.clear_cms_cache.success_msg', '缓存已清理', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1046, 1, 'CN', 'core.base/zh/cache', 'commands.refresh_compiled_views.title', '清理视图缓存', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1047, 1, 'CN', 'core.base/zh/cache', 'commands.refresh_compiled_views.description', '清理编译视图缓存。', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1048, 1, 'CN', 'core.base/zh/cache', 'commands.refresh_compiled_views.success_msg', '视图缓存已更新', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1049, 1, 'CN', 'core.base/zh/cache', 'commands.clear_config_cache.title', '清理配置缓存', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1050, 1, 'CN', 'core.base/zh/cache', 'commands.clear_config_cache.description', '当您在生产环境中更新数据后，可能需要刷新配置缓存。', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1051, 1, 'CN', 'core.base/zh/cache', 'commands.clear_config_cache.success_msg', '配置缓存已更新。', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1052, 1, 'CN', 'core.base/zh/cache', 'commands.clear_route_cache.title', '清理路由缓存', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1053, 1, 'CN', 'core.base/zh/cache', 'commands.clear_route_cache.description', '清理路由缓存', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1054, 1, 'CN', 'core.base/zh/cache', 'commands.clear_route_cache.success_msg', '路由缓存已更新', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1055, 1, 'CN', 'core.base/zh/cache', 'commands.clear_log.title', '清理log', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1056, 1, 'CN', 'core.base/zh/cache', 'commands.clear_log.description', '清理系统log文件', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1057, 1, 'CN', 'core.base/zh/cache', 'commands.clear_log.success_msg', '系统log文件已清理', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1058, 1, 'CN', 'core.base/zh/errors', '401_title', '无此权限', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1059, 1, 'CN', 'core.base/zh/errors', '401_msg', '<li>您未取得授权阅读所选内容。</li>\n	                <li>您的账户类型错误。</li>\n	                <li>您无权限读取相关资源。</li>\n	                <li>您的订阅已过期。</li>', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1060, 1, 'CN', 'core.base/zh/errors', '404_title', '无法找到此页面', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1061, 1, 'CN', 'core.base/zh/errors', '404_msg', '<li>页面不存在。</li>\n	                <li>链接不存在。</li>\n	                <li>页面已移动至新地址。</li>\n	                <li>页面出错。</li>\n	                <li>您无权限读取相关资源。</li>', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1062, 1, 'CN', 'core.base/zh/errors', '500_title', '页面无法载入', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1063, 1, 'CN', 'core.base/zh/errors', '500_msg', '<li>页面不存在。</li>\n	                <li>链接不存在。</li>\n	                <li>页面已移动至新地址。</li>\n	                <li>页面出错。</li>\n	                <li>您无权限读取相关资源。</li>', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1064, 1, 'CN', 'core.base/zh/errors', 'reasons', '可能包含下列一个或多个原因', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1065, 1, 'CN', 'core.base/zh/errors', 'try_again', '请几分钟后重试，或重新登录后台<a href=\"http://botbal.demo.lauway.com/admin\">点击</a>.', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1066, 1, 'CN', 'core.base/zh/forms', 'choose_image', '选择图片', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1067, 1, 'CN', 'core.base/zh/forms', 'actions', '操作', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1068, 1, 'CN', 'core.base/zh/forms', 'save', '保存', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1069, 1, 'CN', 'core.base/zh/forms', 'save_and_continue', '保存并退出', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1070, 1, 'CN', 'core.base/zh/forms', 'image', '图片', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1071, 1, 'CN', 'core.base/zh/forms', 'image_placeholder', '输入图片目录或点击上传按钮', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1072, 1, 'CN', 'core.base/zh/forms', 'create', '新建', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1073, 1, 'CN', 'core.base/zh/forms', 'edit', '编辑', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1074, 1, 'CN', 'core.base/zh/forms', 'permalink', '永久链接', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1075, 1, 'CN', 'core.base/zh/forms', 'ok', '确定', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1076, 1, 'CN', 'core.base/zh/forms', 'cancel', '取消', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1077, 1, 'CN', 'core.base/zh/forms', 'character_remain', '剩余字符数', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1078, 1, 'CN', 'core.base/zh/forms', 'template', '模板', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1079, 1, 'CN', 'core.base/zh/forms', 'choose_file', '选择文件', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1080, 1, 'CN', 'core.base/zh/forms', 'file', '文件', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1081, 1, 'CN', 'core.base/zh/forms', 'content', '内容', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1082, 1, 'CN', 'core.base/zh/forms', 'description', '描述', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1083, 1, 'CN', 'core.base/zh/forms', 'name', '名称', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1084, 1, 'CN', 'core.base/zh/forms', 'slug', 'Slug', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1085, 1, 'CN', 'core.base/zh/forms', 'title', '名称', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1086, 1, 'CN', 'core.base/zh/forms', 'value', '值', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1087, 1, 'CN', 'core.base/zh/forms', 'name_placeholder', '名称', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1088, 1, 'CN', 'core.base/zh/forms', 'alias_placeholder', '别名', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1089, 1, 'CN', 'core.base/zh/forms', 'description_placeholder', '描述', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1090, 1, 'CN', 'core.base/zh/forms', 'parent', '父项', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1091, 1, 'CN', 'core.base/zh/forms', 'icon', '图标', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1092, 1, 'CN', 'core.base/zh/forms', 'icon_placeholder', '如: fa fa-home', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1093, 1, 'CN', 'core.base/zh/forms', 'order_by', '排序', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1094, 1, 'CN', 'core.base/zh/forms', 'order_by_placeholder', '排序', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1095, 1, 'CN', 'core.base/zh/forms', 'featured', '精选?', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1096, 1, 'CN', 'core.base/zh/forms', 'is_default', '默认?', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1097, 1, 'CN', 'core.base/zh/forms', 'update', '更新', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1098, 1, 'CN', 'core.base/zh/forms', 'publish', '发布', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1099, 1, 'CN', 'core.base/zh/forms', 'remove_image', '移除图像', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1100, 1, 'CN', 'core.base/zh/forms', 'order', '顺序', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1101, 1, 'CN', 'core.base/zh/forms', 'alias', '别名', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1102, 1, 'CN', 'core.base/zh/forms', 'basic_information', '基本信息', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1103, 1, 'CN', 'core.base/zh/forms', 'short_code', '短码', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1104, 1, 'CN', 'core.base/zh/forms', 'add_short_code', '增加短码', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1105, 1, 'CN', 'core.base/zh/forms', 'add', '新增', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1106, 1, 'CN', 'core.base/zh/forms', 'link', '链接', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1107, 1, 'CN', 'core.base/zh/layouts', 'platform_admin', '后台管理', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1108, 1, 'CN', 'core.base/zh/layouts', 'dashboard', '仪表盘', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1109, 1, 'CN', 'core.base/zh/layouts', 'appearance', '显示', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1110, 1, 'CN', 'core.base/zh/layouts', 'menu', '菜单', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1111, 1, 'CN', 'core.base/zh/layouts', 'widgets', '小工具', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1112, 1, 'CN', 'core.base/zh/layouts', 'theme_options', '模板配置', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1113, 1, 'CN', 'core.base/zh/layouts', 'plugins', '插件', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1114, 1, 'CN', 'core.base/zh/layouts', 'settings', '设置', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1115, 1, 'CN', 'core.base/zh/layouts', 'setting_general', '通用', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1116, 1, 'CN', 'core.base/zh/layouts', 'setting_email', '电子邮件', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1117, 1, 'CN', 'core.base/zh/layouts', 'system_information', '系统信息', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1118, 1, 'CN', 'core.base/zh/layouts', 'theme', '模板', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1119, 1, 'CN', 'core.base/zh/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1120, 1, 'CN', 'core.base/zh/layouts', 'profile', '个人信息', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1121, 1, 'CN', 'core.base/zh/layouts', 'logout', '退出', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1122, 1, 'CN', 'core.base/zh/layouts', 'no_search_result', '无匹配结果，请使用其他关键字', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1123, 1, 'CN', 'core.base/zh/layouts', 'home', '主页', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1124, 1, 'CN', 'core.base/zh/layouts', 'search', '查找', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1125, 1, 'CN', 'core.base/zh/layouts', 'add_new', '新增', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1126, 1, 'CN', 'core.base/zh/layouts', 'n_a', 'N/A', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1127, 1, 'CN', 'core.base/zh/layouts', 'page_loaded_time', '页面载入时间', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1128, 1, 'CN', 'core.base/zh/layouts', 'view_website', '查看网站', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1129, 1, 'CN', 'core.base/zh/mail', 'send-fail', '邮件发送失败', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1130, 1, 'CN', 'core.base/zh/mail', 'happy_birthday', '生日快乐?!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1131, 1, 'CN', 'core.base/zh/notices', 'create_success_message', '创建成功', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1132, 1, 'CN', 'core.base/zh/notices', 'update_success_message', '更新成功', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1133, 1, 'CN', 'core.base/zh/notices', 'delete_success_message', '删除成功', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1134, 1, 'CN', 'core.base/zh/notices', 'success_header', '成功!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1135, 1, 'CN', 'core.base/zh/notices', 'error_header', '错误!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1136, 1, 'CN', 'core.base/zh/notices', 'cannot_delete', '无法删除此记录!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1137, 1, 'CN', 'core.base/zh/notices', 'no_select', '请选择至少一条记录执行此操作!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1138, 1, 'CN', 'core.base/zh/notices', 'processing_request', '我们正在处理您的请求！', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1139, 1, 'CN', 'core.base/zh/notices', 'error', '错误!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1140, 1, 'CN', 'core.base/zh/notices', 'success', '成功!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1141, 1, 'CN', 'core.base/zh/notices', 'info', '信息!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1142, 1, 'CN', 'core.base/zh/system', 'no_select', '请至少选择一条记录进行此操作!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1143, 1, 'CN', 'core.base/zh/system', 'cannot_find_user', '无法找到指定的用户', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1144, 1, 'CN', 'core.base/zh/system', 'supper_revoked', '超级用户访问被取消', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1145, 1, 'CN', 'core.base/zh/system', 'cannot_revoke_yourself', '无法自行撤销超级用户访问权限!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1146, 1, 'CN', 'core.base/zh/system', 'cant_remove_supper', '你没有权限删除这个超级用户', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1147, 1, 'CN', 'core.base/zh/system', 'cant_find_user_with_email', '无法找到指定电子邮件地址的用户', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1148, 1, 'CN', 'core.base/zh/system', 'supper_granted', '授予超级用户访问权限', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1149, 1, 'CN', 'core.base/zh/system', 'delete_log_success', '删除日志文件成功!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1150, 1, 'CN', 'core.base/zh/system', 'get_member_success', '用户列表成功获取', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1151, 1, 'CN', 'core.base/zh/system', 'error_occur', '发生了以下错误', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1152, 1, 'CN', 'core.base/zh/system', 'user_management', '用户管理', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1153, 1, 'CN', 'core.base/zh/system', 'user_management_description', '管理用户.', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1154, 1, 'CN', 'core.base/zh/system', 'role_and_permission', '角色和权限', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1155, 1, 'CN', 'core.base/zh/system', 'role_and_permission_description', '管理可用角色.', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1156, 1, 'CN', 'core.base/zh/system', 'user.list_super', '列出超级用户', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1157, 1, 'CN', 'core.base/zh/system', 'user.email', '电子邮件', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1158, 1, 'CN', 'core.base/zh/system', 'user.last_login', '上次登录', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1159, 1, 'CN', 'core.base/zh/system', 'user.username', '用户名', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1160, 1, 'CN', 'core.base/zh/system', 'user.add_user', '添加超级用户', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1161, 1, 'CN', 'core.base/zh/system', 'user.cancel', '取消', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1162, 1, 'CN', 'core.base/zh/system', 'user.create', '创建', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1163, 1, 'CN', 'core.base/zh/system', 'options.features', '功能访问控制', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1164, 1, 'CN', 'core.base/zh/system', 'options.feature_description', '可用性管理。', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1165, 1, 'CN', 'core.base/zh/system', 'options.manage_super', '超级用户管理', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1166, 1, 'CN', 'core.base/zh/system', 'options.manage_super_description', '添加/删除超级用户。', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1167, 1, 'CN', 'core.base/zh/system', 'options.info', '系统信息', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1168, 1, 'CN', 'core.base/zh/system', 'options.info_description', '关于当前系统配置的所有信息', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1169, 1, 'CN', 'core.base/zh/system', 'info.title', '系统信息', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1170, 1, 'CN', 'core.base/zh/system', 'info.cache', '缓存', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1171, 1, 'CN', 'core.base/zh/system', 'info.locale', '区域', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1172, 1, 'CN', 'core.base/zh/system', 'info.environment', '环境', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1173, 1, 'CN', 'core.base/zh/system', 'enabled', '已启用', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1174, 1, 'CN', 'core.base/zh/system', 'deactivated', '已禁用', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1175, 1, 'CN', 'core.base/zh/system', 'activated', '已激活', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1176, 1, 'CN', 'core.base/zh/system', 'activate', '激活', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1177, 1, 'CN', 'core.base/zh/system', 'deactivate', '禁用', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1178, 1, 'CN', 'core.base/zh/system', 'author', '作者', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1179, 1, 'CN', 'core.base/zh/system', 'update_plugin_status_success', '插件更新成功', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1180, 1, 'CN', 'core.base/zh/system', 'disabled_in_demo_mode', '您无法在演示模式下执行此操作!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1181, 1, 'CN', 'core.base/zh/system', 'invalid_plugin', '这个插件不是一个有效的插件，请再次检查！', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1182, 1, 'CN', 'core.base/zh/system', 'version', '版本', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1183, 1, 'CN', 'core.base/zh/system', 'report_description', '请分享此信息进行故障排除', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1184, 1, 'CN', 'core.base/zh/system', 'get_system_report', '获取系统报告', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1185, 1, 'CN', 'core.base/zh/system', 'system_environment', '系统环境', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1186, 1, 'CN', 'core.base/zh/system', 'framework_version', '框架版本', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1187, 1, 'CN', 'core.base/zh/system', 'timezone', '时区', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1188, 1, 'CN', 'core.base/zh/system', 'debug_mode', '调试模式', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1189, 1, 'CN', 'core.base/zh/system', 'storage_dir_writable', '存储目录可写', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1190, 1, 'CN', 'core.base/zh/system', 'cache_dir_writable', '缓存目录可写', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1191, 1, 'CN', 'core.base/zh/system', 'app_size', '程序大小', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1192, 1, 'CN', 'core.base/zh/system', 'server_environment', '服务器环境', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1193, 1, 'CN', 'core.base/zh/system', 'php_version', 'PHP版本', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1194, 1, 'CN', 'core.base/zh/system', 'server_software', '服务器软件', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1195, 1, 'CN', 'core.base/zh/system', 'server_os', '服务器操作系统', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1196, 1, 'CN', 'core.base/zh/system', 'database', '数据库', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1197, 1, 'CN', 'core.base/zh/system', 'ssl_installed', '已安装SSL', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1198, 1, 'CN', 'core.base/zh/system', 'cache_driver', '缓存驱动程序', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1199, 1, 'CN', 'core.base/zh/system', 'session_driver', '会话驱动程序', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1200, 1, 'CN', 'core.base/zh/system', 'mbstring_ext', 'Mbstring扩展', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1201, 1, 'CN', 'core.base/zh/system', 'openssl_ext', 'OpenSSL扩展', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1202, 1, 'CN', 'core.base/zh/system', 'pdo_ext', 'PDO扩展', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1203, 1, 'CN', 'core.base/zh/system', 'curl_ext', 'CURL扩展', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1204, 1, 'CN', 'core.base/zh/system', 'exif_ext', 'Exif扩展', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1205, 1, 'CN', 'core.base/zh/system', 'file_info_ext', 'File info扩展', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1206, 1, 'CN', 'core.base/zh/system', 'tokenizer_ext', 'Tokenizer扩展', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1207, 1, 'CN', 'core.base/zh/system', 'extra_stats', '其他状态', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1208, 1, 'CN', 'core.base/zh/system', 'installed_packages', '安装的软件包及其版本号', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1209, 1, 'CN', 'core.base/zh/system', 'extra_information', '额外信息', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1210, 1, 'CN', 'core.base/zh/system', 'copy_report', '复制报告', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1211, 1, 'CN', 'core.base/zh/system', 'package_name', '包名', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1212, 1, 'CN', 'core.base/zh/system', 'dependency_name', '依赖包', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1213, 1, 'CN', 'core.base/zh/system', 'plugins', '插件', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1214, 1, 'CN', 'core.base/zh/system', 'missing_required_plugins', '请在激活此插件前激活插件: :plugins!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1215, 1, 'CN', 'core.base/zh/tables', 'filter_enabled', '高级筛选', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1216, 1, 'CN', 'core.base/zh/tables', 'id', 'ID', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1217, 1, 'CN', 'core.base/zh/tables', 'name', '名称', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1218, 1, 'CN', 'core.base/zh/tables', 'slug', 'Slug', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1219, 1, 'CN', 'core.base/zh/tables', 'title', '标题', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1220, 1, 'CN', 'core.base/zh/tables', 'order_by', '排序', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1221, 1, 'CN', 'core.base/zh/tables', 'order', '排序', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1222, 1, 'CN', 'core.base/zh/tables', 'status', '状态', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1223, 1, 'CN', 'core.base/zh/tables', 'created_at', '创建时间', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1224, 1, 'CN', 'core.base/zh/tables', 'updated_at', '更新时间', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1225, 1, 'CN', 'core.base/zh/tables', 'description', '描述', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1226, 1, 'CN', 'core.base/zh/tables', 'operations', '操作', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1227, 1, 'CN', 'core.base/zh/tables', 'loading_data', '从服务器载入数据', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1228, 1, 'CN', 'core.base/zh/tables', 'url', 'URL', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1229, 1, 'CN', 'core.base/zh/tables', 'author', '作者', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1230, 1, 'CN', 'core.base/zh/tables', 'notes', '备注', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1231, 1, 'CN', 'core.base/zh/tables', 'column', '列', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1232, 1, 'CN', 'core.base/zh/tables', 'origin', '来源', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1233, 1, 'CN', 'core.base/zh/tables', 'after_change', '更改后', '2018-09-12 18:39:22', '2018-09-12 18:39:22');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1234, 1, 'CN', 'core.base/zh/tables', 'views', '视图', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1235, 1, 'CN', 'core.base/zh/tables', 'browser', '浏览', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1236, 1, 'CN', 'core.base/zh/tables', 'session', '会话', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1237, 1, 'CN', 'core.base/zh/tables', 'activated', '已激活', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1238, 1, 'CN', 'core.base/zh/tables', 'deactivated', '已禁用', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1239, 1, 'CN', 'core.base/zh/tables', 'is_featured', '精选', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1240, 1, 'CN', 'core.base/zh/tables', 'edit', '编辑', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1241, 1, 'CN', 'core.base/zh/tables', 'delete', '删除', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1242, 1, 'CN', 'core.base/zh/tables', 'restore', '恢复', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1243, 1, 'CN', 'core.base/zh/tables', 'activate', '激活', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1244, 1, 'CN', 'core.base/zh/tables', 'deactivate', '禁用', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1245, 1, 'CN', 'core.base/zh/tables', 'filter', '输入字符筛选...', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1246, 1, 'CN', 'core.base/zh/tables', 'excel', 'Excel', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1247, 1, 'CN', 'core.base/zh/tables', 'export', '导出', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1248, 1, 'CN', 'core.base/zh/tables', 'csv', 'CSV', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1249, 1, 'CN', 'core.base/zh/tables', 'pdf', 'PDF', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1250, 1, 'CN', 'core.base/zh/tables', 'print', '打印', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1251, 1, 'CN', 'core.base/zh/tables', 'reset', '重设', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1252, 1, 'CN', 'core.base/zh/tables', 'reload', '重载', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1253, 1, 'CN', 'core.base/zh/tables', 'display', '显示', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1254, 1, 'CN', 'core.base/zh/tables', 'all', '全部', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1255, 1, 'CN', 'core.base/zh/tables', 'add_new', '新增', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1256, 1, 'CN', 'core.base/zh/tables', 'action', '操作', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1257, 1, 'CN', 'core.base/zh/tables', 'delete_entry', '删除', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1258, 1, 'CN', 'core.base/zh/tables', 'view', '查看详情', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1259, 1, 'CN', 'core.base/zh/tables', 'save', '保存', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1260, 1, 'CN', 'core.base/zh/tables', 'show_from', '显示', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1261, 1, 'CN', 'core.base/zh/tables', 'to', '到', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1262, 1, 'CN', 'core.base/zh/tables', 'in', '共', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1263, 1, 'CN', 'core.base/zh/tables', 'records', '记录', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1264, 1, 'CN', 'core.base/zh/tables', 'no_data', '无数据', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1265, 1, 'CN', 'core.base/zh/tables', 'no_record', '无记录', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1266, 1, 'CN', 'core.base/zh/tables', 'filtered_from', '筛选', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1267, 1, 'CN', 'core.base/zh/tables', 'loading', '从服务器载入数据', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1268, 1, 'CN', 'core.base/zh/tables', 'confirm_delete', '确认删除', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1269, 1, 'CN', 'core.base/zh/tables', 'confirm_delete_msg', '是否确定删除此记录?', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1270, 1, 'CN', 'core.base/zh/tables', 'cancel', '取消', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1271, 1, 'CN', 'core.base/zh/tables', 'template', '模板', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1272, 1, 'CN', 'core.base/zh/tables', 'email', 'Email', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1273, 1, 'CN', 'core.base/zh/tables', 'last_login', '上次登录', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1274, 1, 'CN', 'core.base/zh/tables', 'shortcode', '代码', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1275, 1, 'CN', 'core.base/zh/tables', 'image', '图片', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1276, 1, 'CN', 'core.base/zh/tabs', 'detail', '详情', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1277, 1, 'CN', 'core.base/zh/tabs', 'file', '文件', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1278, 1, 'CN', 'core.base/zh/tabs', 'record_note', '备注', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1279, 1, 'CN', 'core.base/zh/tabs', 'revision', '版本历史', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1280, 1, 'en', 'core.dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1281, 1, 'en', 'core.dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1282, 1, 'en', 'core.dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1283, 1, 'en', 'core.dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1284, 1, 'en', 'core.dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1285, 1, 'en', 'core.dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1286, 1, 'en', 'core.dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1287, 1, 'en', 'core.dashboard/dashboard', 'hide', 'Hide', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1288, 1, 'en', 'core.dashboard/dashboard', 'reload', 'Reload', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1289, 1, 'en', 'core.dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1290, 1, 'en', 'core.dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1291, 1, 'en', 'core.dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1292, 1, 'en', 'core.dashboard/dashboard', 'fullscreen', 'Full screen', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1293, 1, 'en', 'core.dashboard/dashboard', 'title', 'Dashboard', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1294, 1, 'vi', 'core.dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1295, 1, 'vi', 'core.dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1296, 1, 'vi', 'core.dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1297, 1, 'vi', 'core.dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1298, 1, 'vi', 'core.dashboard/dashboard', 'hide', 'Ẩn', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1299, 1, 'vi', 'core.dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1300, 1, 'vi', 'core.dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1301, 1, 'vi', 'core.dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1302, 1, 'vi', 'core.dashboard/dashboard', 'reload', 'Làm mới', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1303, 1, 'vi', 'core.dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1304, 1, 'vi', 'core.dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1305, 1, 'vi', 'core.dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1306, 1, 'vi', 'core.dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1307, 1, 'vi', 'core.dashboard/dashboard', 'title', 'Trang quản trị', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1308, 1, 'CN', 'core.dashboard/zh/dashboard', 'update_position_success', '更新小部件位置成功！', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1309, 1, 'CN', 'core.dashboard/zh/dashboard', 'hide_success', '更新小部件成功', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1310, 1, 'CN', 'core.dashboard/zh/dashboard', 'confirm_hide', '你确定吗？', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1311, 1, 'CN', 'core.dashboard/zh/dashboard', 'hide_message', '你真的想隐藏这个小部件吗？它会在仪表板上消失！', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1312, 1, 'CN', 'core.dashboard/zh/dashboard', 'confirm_hide_btn', '是的，隐藏这个小部件', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1313, 1, 'CN', 'core.dashboard/zh/dashboard', 'cancel_hide_btn', '取消', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1314, 1, 'CN', 'core.dashboard/zh/dashboard', 'collapse_expand', '折叠/展开', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1315, 1, 'CN', 'core.dashboard/zh/dashboard', 'hide', '隐藏', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1316, 1, 'CN', 'core.dashboard/zh/dashboard', 'reload', '重新加载', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1317, 1, 'CN', 'core.dashboard/zh/dashboard', 'save_setting_success', '保存小部件设置成功！', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1318, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_not_exists', '小部件不存在!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1319, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_posts_recent', '最近新闻', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1320, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_analytics_page', '最常访问页面', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1321, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_analytics_browser', '浏览器排名', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1322, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_analytics_referrer', '推荐人排名', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1323, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_analytics_general', '站点分析', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1324, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_audit_logs', '管理日志', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1325, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_request_errors', '请求错误', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1326, 1, 'CN', 'core.dashboard/zh/dashboard', 'manage_widgets', '管理小工具', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1327, 1, 'CN', 'core.dashboard/zh/dashboard', 'fullscreen', '全屏', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1328, 1, 'CN', 'core.dashboard/zh/dashboard', 'title', '仪表盘', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1329, 1, 'en', 'core.menu/menu', 'name', 'Menu', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1330, 1, 'en', 'core.menu/menu', 'key_name', 'Menu name (key: :key)', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1331, 1, 'en', 'core.menu/menu', 'basic_info', 'Basic information', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1332, 1, 'en', 'core.menu/menu', 'add_to_menu', 'Add to menu', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1333, 1, 'en', 'core.menu/menu', 'custom_link', 'Custom link', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1334, 1, 'en', 'core.menu/menu', 'add_link', 'Add link', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1335, 1, 'en', 'core.menu/menu', 'structure', 'Menu structure', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1336, 1, 'en', 'core.menu/menu', 'remove', 'Remove', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1337, 1, 'en', 'core.menu/menu', 'cancel', 'Cancel', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1338, 1, 'en', 'core.menu/menu', 'title', 'Title', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1339, 1, 'en', 'core.menu/menu', 'icon', 'Icon', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1340, 1, 'en', 'core.menu/menu', 'url', 'URL', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1341, 1, 'en', 'core.menu/menu', 'target', 'Target', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1342, 1, 'en', 'core.menu/menu', 'css_class', 'CSS class', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1343, 1, 'en', 'core.menu/menu', 'self_open_link', 'Open link directly', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1344, 1, 'en', 'core.menu/menu', 'blank_open_link', 'Open link in new tab', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1345, 1, 'en', 'core.menu/menu', 'create', 'Create menu', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1346, 1, 'en', 'core.menu/menu', 'edit', 'Edit menu', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1347, 1, 'vi', 'core.menu/menu', 'name', 'Menu', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1348, 1, 'vi', 'core.menu/menu', 'cancel', 'Hủy bỏ', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1349, 1, 'vi', 'core.menu/menu', 'add_link', 'Thêm liên kết', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1350, 1, 'vi', 'core.menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1351, 1, 'vi', 'core.menu/menu', 'basic_info', 'Thông tin cơ bản', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1352, 1, 'vi', 'core.menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1353, 1, 'vi', 'core.menu/menu', 'css_class', 'CSS class', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1354, 1, 'vi', 'core.menu/menu', 'custom_link', 'Liên kết tùy chọn', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1355, 1, 'vi', 'core.menu/menu', 'icon', 'Biểu tượng', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1356, 1, 'vi', 'core.menu/menu', 'key_name', 'Tên menu (key::key)', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1357, 1, 'vi', 'core.menu/menu', 'remove', 'Xóa', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1358, 1, 'vi', 'core.menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1359, 1, 'vi', 'core.menu/menu', 'structure', 'Cấu trúc trình đơn', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1360, 1, 'vi', 'core.menu/menu', 'target', 'Target', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1361, 1, 'vi', 'core.menu/menu', 'title', 'Tiêu đề', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1362, 1, 'vi', 'core.menu/menu', 'url', 'URL', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1363, 1, 'vi', 'core.menu/menu', 'create', 'Tạo trình đơn', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1364, 1, 'vi', 'core.menu/menu', 'edit', 'Sửa trình đơn', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1365, 1, 'CN', 'core.menu/zh/menu', 'name', '菜单', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1366, 1, 'CN', 'core.menu/zh/menu', 'key_name', '菜单名称 (主键: :key)', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1367, 1, 'CN', 'core.menu/zh/menu', 'basic_info', '基本信息', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1368, 1, 'CN', 'core.menu/zh/menu', 'add_to_menu', '加入菜单', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1369, 1, 'CN', 'core.menu/zh/menu', 'custom_link', '自定义链接', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1370, 1, 'CN', 'core.menu/zh/menu', 'add_link', '新增链接', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1371, 1, 'CN', 'core.menu/zh/menu', 'structure', '菜单结构', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1372, 1, 'CN', 'core.menu/zh/menu', 'remove', '删除', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1373, 1, 'CN', 'core.menu/zh/menu', 'cancel', '取消', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1374, 1, 'CN', 'core.menu/zh/menu', 'title', '标题', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1375, 1, 'CN', 'core.menu/zh/menu', 'icon', '图标', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1376, 1, 'CN', 'core.menu/zh/menu', 'url', '超链接', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1377, 1, 'CN', 'core.menu/zh/menu', 'target', '目的窗口', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1378, 1, 'CN', 'core.menu/zh/menu', 'css_class', 'CSS类', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1379, 1, 'CN', 'core.menu/zh/menu', 'self_open_link', '直接打开链接', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1380, 1, 'CN', 'core.menu/zh/menu', 'blank_open_link', '在新的标签页打开', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1381, 1, 'CN', 'core.menu/zh/menu', 'create', '创建菜单', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1382, 1, 'CN', 'core.menu/zh/menu', 'edit', '编辑菜单', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1383, 1, 'en', 'core.page/pages', 'model', 'Page', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1384, 1, 'en', 'core.page/pages', 'models', 'Pages', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1385, 1, 'en', 'core.page/pages', 'list', 'List Pages', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1386, 1, 'en', 'core.page/pages', 'create', 'Create new page', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1387, 1, 'en', 'core.page/pages', 'edit', 'Edit page', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1388, 1, 'en', 'core.page/pages', 'form.name', 'Name', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1389, 1, 'en', 'core.page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1390, 1, 'en', 'core.page/pages', 'form.content', 'Content', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1391, 1, 'en', 'core.page/pages', 'form.note', 'Note content', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1392, 1, 'en', 'core.page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1393, 1, 'en', 'core.page/pages', 'notices.update_success_message', 'Update successfully', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1394, 1, 'en', 'core.page/pages', 'cannot_delete', 'Page could not be deleted', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1395, 1, 'en', 'core.page/pages', 'deleted', 'Page deleted', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1396, 1, 'en', 'core.page/pages', 'pages', 'Pages', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1397, 1, 'en', 'core.page/pages', 'menu', 'Pages', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1398, 1, 'en', 'core.page/pages', 'menu_name', 'Pages', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1399, 1, 'en', 'core.page/pages', 'edit_this_page', 'Edit this page', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1400, 1, 'en', 'core.page/pages', 'total_pages', 'Total pages', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1401, 1, 'vi', 'core.page/pages', 'model', 'Trang', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1402, 1, 'vi', 'core.page/pages', 'models', 'Trang', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1403, 1, 'vi', 'core.page/pages', 'list', 'Danh sách trang', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1404, 1, 'vi', 'core.page/pages', 'create', 'Thêm trang', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1405, 1, 'vi', 'core.page/pages', 'edit', 'Sửa trang', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1406, 1, 'vi', 'core.page/pages', 'form.name', 'Tiêu đề trang', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1407, 1, 'vi', 'core.page/pages', 'form.note', 'Nội dung ghi chú', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1408, 1, 'vi', 'core.page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1409, 1, 'vi', 'core.page/pages', 'form.content', 'Nội dung', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1410, 1, 'vi', 'core.page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1411, 1, 'vi', 'core.page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1412, 1, 'vi', 'core.page/pages', 'deleted', 'Xóa trang thành công', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1413, 1, 'vi', 'core.page/pages', 'cannot_delete', 'Không thể xóa trang', '2018-09-12 18:39:22', '2018-09-12 18:39:22'),
(1414, 1, 'vi', 'core.page/pages', 'menu', 'Trang', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1415, 1, 'vi', 'core.page/pages', 'menu_name', 'Trang', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1416, 1, 'vi', 'core.page/pages', 'edit_this_page', 'Sửa trang này', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1417, 1, 'vi', 'core.page/pages', 'pages', 'Trang', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1418, 1, 'CN', 'core.page/zh/pages', 'model', '页面', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1419, 1, 'CN', 'core.page/zh/pages', 'models', '页面', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1420, 1, 'CN', 'core.page/zh/pages', 'list', '页面列表', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1421, 1, 'CN', 'core.page/zh/pages', 'create', '新建页面', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1422, 1, 'CN', 'core.page/zh/pages', 'edit', '编辑页面', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1423, 1, 'CN', 'core.page/zh/pages', 'form.name', '名称', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1424, 1, 'CN', 'core.page/zh/pages', 'form.name_placeholder', '页面名称 (最多120字符)', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1425, 1, 'CN', 'core.page/zh/pages', 'form.content', '内容', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1426, 1, 'CN', 'core.page/zh/pages', 'form.note', '备注内容', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1427, 1, 'CN', 'core.page/zh/pages', 'notices.no_select', '请至少选择一项纪录!', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1428, 1, 'CN', 'core.page/zh/pages', 'notices.update_success_message', '更新成功', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1429, 1, 'CN', 'core.page/zh/pages', 'cannot_delete', '页面无法删除', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1430, 1, 'CN', 'core.page/zh/pages', 'deleted', '页面已删除', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1431, 1, 'CN', 'core.page/zh/pages', 'pages', '页面', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1432, 1, 'CN', 'core.page/zh/pages', 'menu', '页面', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1433, 1, 'CN', 'core.page/zh/pages', 'menu_name', '页面', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1434, 1, 'CN', 'core.page/zh/pages', 'edit_this_page', '编辑此页面', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1435, 1, 'en', 'core.setting/setting', 'title', 'Settings', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1436, 1, 'en', 'core.setting/setting', 'email_setting_title', 'Email settings', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1437, 1, 'en', 'core.setting/setting', 'general.theme', 'Theme', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1438, 1, 'en', 'core.setting/setting', 'general.description', 'Setting site information', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1439, 1, 'en', 'core.setting/setting', 'general.title', 'General', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1440, 1, 'en', 'core.setting/setting', 'general.general_block', 'General Information', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1441, 1, 'en', 'core.setting/setting', 'general.rich_editor', 'Rich Editor', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1442, 1, 'en', 'core.setting/setting', 'general.site_title', 'Site title', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1443, 1, 'en', 'core.setting/setting', 'general.admin_email', 'Admin Email', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1444, 1, 'en', 'core.setting/setting', 'general.seo_block', 'SEO Configuration', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1445, 1, 'en', 'core.setting/setting', 'general.seo_title', 'SEO Title', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1446, 1, 'en', 'core.setting/setting', 'general.seo_description', 'SEO Description', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1447, 1, 'en', 'core.setting/setting', 'general.seo_keywords', 'SEO Keywords', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1448, 1, 'en', 'core.setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1449, 1, 'en', 'core.setting/setting', 'general.google_site_verification', 'Google site verification', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1450, 1, 'en', 'core.setting/setting', 'general.show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website) ?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1451, 1, 'en', 'core.setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1452, 1, 'en', 'core.setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1453, 1, 'en', 'core.setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1454, 1, 'en', 'core.setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1455, 1, 'en', 'core.setting/setting', 'general.placeholder.seo_keywords', 'SEO Keywords (maximum 60 characters, separate by \",\" character)', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1456, 1, 'en', 'core.setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1457, 1, 'en', 'core.setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1458, 1, 'en', 'core.setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1459, 1, 'en', 'core.setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1460, 1, 'en', 'core.setting/setting', 'general.optimize_page_speed', 'Optimize page speed (minify HTML output, inline CSS, remove comments ..)', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1461, 1, 'en', 'core.setting/setting', 'general.time_zone', 'Timezone', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1462, 1, 'en', 'core.setting/setting', 'general.default_admin_theme', 'Default admin theme', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1463, 1, 'en', 'core.setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1464, 1, 'en', 'core.setting/setting', 'general.enable_multi_language_in_admin', 'Enable multi language in admin area?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1465, 1, 'en', 'core.setting/setting', 'general.enable', 'Enable', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1466, 1, 'en', 'core.setting/setting', 'general.disable', 'Disable', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1467, 1, 'en', 'core.setting/setting', 'general.enable_cache', 'Enable cache?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1468, 1, 'en', 'core.setting/setting', 'general.cache_time', 'Cache time', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1469, 1, 'en', 'core.setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1470, 1, 'en', 'core.setting/setting', 'general.admin_logo', 'Admin logo', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1471, 1, 'en', 'core.setting/setting', 'general.admin_title', 'Admin title', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1472, 1, 'en', 'core.setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1473, 1, 'en', 'core.setting/setting', 'general.cache_block', 'Cache', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1474, 1, 'en', 'core.setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1475, 1, 'en', 'core.setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, admin bar, language', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1476, 1, 'en', 'core.setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1477, 1, 'en', 'core.setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1478, 1, 'en', 'core.setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1479, 1, 'en', 'core.setting/setting', 'general.yes', 'Yes', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1480, 1, 'en', 'core.setting/setting', 'general.no', 'No', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1481, 1, 'en', 'core.setting/setting', 'general.show_on_front', 'Your homepage displays', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1482, 1, 'en', 'core.setting/setting', 'general.select', '— Select —', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1483, 1, 'en', 'core.setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1484, 1, 'en', 'core.setting/setting', 'email.subject', 'Subject', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1485, 1, 'en', 'core.setting/setting', 'email.content', 'Content', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1486, 1, 'en', 'core.setting/setting', 'email.title', 'Setting for email template', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1487, 1, 'en', 'core.setting/setting', 'email.description', 'Email template using HTML & system variables.', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1488, 1, 'en', 'core.setting/setting', 'email.reset_to_default', 'Reset to default', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1489, 1, 'en', 'core.setting/setting', 'email.back', 'Back to settings', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1490, 1, 'en', 'core.setting/setting', 'email.reset_success', 'Reset back to default successfully', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1491, 1, 'en', 'core.setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1492, 1, 'en', 'core.setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1493, 1, 'en', 'core.setting/setting', 'email.continue', 'Continue', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1494, 1, 'en', 'core.setting/setting', 'email.sender_name', 'Sender name', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1495, 1, 'en', 'core.setting/setting', 'email.sender_name_placeholder', 'Name', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1496, 1, 'en', 'core.setting/setting', 'email.sender_email', 'Sender email', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1497, 1, 'en', 'core.setting/setting', 'email.driver', 'Driver', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1498, 1, 'en', 'core.setting/setting', 'email.port', 'Port', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1499, 1, 'en', 'core.setting/setting', 'email.port_placeholder', 'Ex: 587', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1500, 1, 'en', 'core.setting/setting', 'email.host', 'Host', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1501, 1, 'en', 'core.setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1502, 1, 'en', 'core.setting/setting', 'email.username', 'Username', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1503, 1, 'en', 'core.setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1504, 1, 'en', 'core.setting/setting', 'email.password', 'Password', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1505, 1, 'en', 'core.setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1506, 1, 'en', 'core.setting/setting', 'email.encryption', 'Encryption', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1507, 1, 'en', 'core.setting/setting', 'email.mail_gun_domain', 'Domain', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1508, 1, 'en', 'core.setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1509, 1, 'en', 'core.setting/setting', 'email.mail_gun_secret', 'Secret', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1510, 1, 'en', 'core.setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1511, 1, 'en', 'core.setting/setting', 'email.template_title', 'Email templates', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1512, 1, 'en', 'core.setting/setting', 'email.template_description', 'Base templates for all emails', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1513, 1, 'en', 'core.setting/setting', 'email.template_header', 'Email template header', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1514, 1, 'en', 'core.setting/setting', 'email.template_header_description', 'Template for header of emails', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1515, 1, 'en', 'core.setting/setting', 'email.template_footer', 'Email template footer', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1516, 1, 'en', 'core.setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1517, 1, 'en', 'core.setting/setting', 'media.title', 'Media', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1518, 1, 'en', 'core.setting/setting', 'media.driver', 'Driver', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1519, 1, 'en', 'core.setting/setting', 'media.description', 'Settings for media', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1520, 1, 'en', 'core.setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1521, 1, 'en', 'core.setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1522, 1, 'en', 'core.setting/setting', 'media.aws_default_region', 'AWS Default Region', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1523, 1, 'en', 'core.setting/setting', 'media.aws_bucket', 'AWS Bucket', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1524, 1, 'en', 'core.setting/setting', 'media.aws_url', 'AWS URL', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1525, 1, 'en', 'core.setting/setting', 'field_type_not_exists', 'This field type does not exist', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1526, 1, 'en', 'core.setting/setting', 'save_settings', 'Save settings', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1527, 1, 'en', 'core.setting/setting', 'template', 'Template', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1528, 1, 'en', 'core.setting/setting', 'description', 'Description', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1529, 1, 'en', 'core.setting/setting', 'enable', 'Enable', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1530, 1, 'en', 'core.setting/setting', 'send', 'Send', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1531, 1, 'en', 'core.setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1532, 1, 'en', 'core.setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1533, 1, 'en', 'core.setting/setting', 'test_email_modal_title', 'Send a test email', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1534, 1, 'en', 'core.setting/setting', 'test_send_mail', 'Send test mail', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1535, 1, 'vi', 'core.setting/setting', 'title', 'Cài đặt', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1536, 1, 'vi', 'core.setting/setting', 'general.theme', 'Giao diện', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1537, 1, 'vi', 'core.setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1538, 1, 'vi', 'core.setting/setting', 'general.title', 'Thông tin chung', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1539, 1, 'vi', 'core.setting/setting', 'general.general_block', 'Thông tin chung', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1540, 1, 'vi', 'core.setting/setting', 'general.site_title', 'Tên trang', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1541, 1, 'vi', 'core.setting/setting', 'general.admin_email', 'Email quản trị viên', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1542, 1, 'vi', 'core.setting/setting', 'general.seo_block', 'Cấu hình SEO', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1543, 1, 'vi', 'core.setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1544, 1, 'vi', 'core.setting/setting', 'general.seo_description', 'Mô tả SEO', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1545, 1, 'vi', 'core.setting/setting', 'general.seo_keywords', 'Từ khoá SEO', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1546, 1, 'vi', 'core.setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1547, 1, 'vi', 'core.setting/setting', 'general.google_site_verification', 'Google site verification', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1548, 1, 'vi', 'core.setting/setting', 'general.enable_captcha', 'Sử dụng Captcha?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1549, 1, 'vi', 'core.setting/setting', 'general.contact_block', 'Thông tin liên hệ', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1550, 1, 'vi', 'core.setting/setting', 'general.show_admin_bar', 'Hiển thị thanh quản trị (Khi quản trị viên đã đăng nhập, thanh quản trị luôn hiển thị trên website)?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1551, 1, 'vi', 'core.setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1552, 1, 'vi', 'core.setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1553, 1, 'vi', 'core.setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1554, 1, 'vi', 'core.setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1555, 1, 'vi', 'core.setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1556, 1, 'vi', 'core.setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1557, 1, 'vi', 'core.setting/setting', 'general.placeholder.seo_keywords', 'Từ khoá SEO (tối đa 60 kí tự, phân cách từ khóa bằng dấu phẩy)', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1558, 1, 'vi', 'core.setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1559, 1, 'vi', 'core.setting/setting', 'general.enable_multi_language_in_admin', 'Cho phép thay đổi ngôn ngữ trang quản trị?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1560, 1, 'vi', 'core.setting/setting', 'general.enable', 'Bật', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1561, 1, 'vi', 'core.setting/setting', 'general.disable', 'Tắt', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1562, 1, 'vi', 'core.setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1563, 1, 'vi', 'core.setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1564, 1, 'vi', 'core.setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1565, 1, 'vi', 'core.setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1566, 1, 'vi', 'core.setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1567, 1, 'vi', 'core.setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1568, 1, 'vi', 'core.setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1569, 1, 'vi', 'core.setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1570, 1, 'vi', 'core.setting/setting', 'general.yes', 'Bật', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1571, 1, 'vi', 'core.setting/setting', 'general.no', 'Tắt', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1572, 1, 'vi', 'core.setting/setting', 'email.subject', 'Tiêu đề', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1573, 1, 'vi', 'core.setting/setting', 'email.content', 'Nội dung', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1574, 1, 'vi', 'core.setting/setting', 'email.title', 'Cấu hình email template', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1575, 1, 'vi', 'core.setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1576, 1, 'vi', 'core.setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1577, 1, 'vi', 'core.setting/setting', 'email.back', 'Trở lại trang cài đặt', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1578, 1, 'vi', 'core.setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1579, 1, 'vi', 'core.setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1580, 1, 'vi', 'core.setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1581, 1, 'vi', 'core.setting/setting', 'email.continue', 'Tiếp tục', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1582, 1, 'vi', 'core.setting/setting', 'email.sender_name', 'Tên người gửi', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1583, 1, 'vi', 'core.setting/setting', 'email.sender_name_placeholder', 'Tên', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1584, 1, 'vi', 'core.setting/setting', 'email.sender_email', 'Email của người gửi', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1585, 1, 'vi', 'core.setting/setting', 'email.driver', 'Loại', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1586, 1, 'vi', 'core.setting/setting', 'email.port', 'Cổng', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1587, 1, 'vi', 'core.setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1588, 1, 'vi', 'core.setting/setting', 'email.host', 'Máy chủ', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1589, 1, 'vi', 'core.setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1590, 1, 'vi', 'core.setting/setting', 'email.username', 'Tên đăng nhập', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1591, 1, 'vi', 'core.setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1592, 1, 'vi', 'core.setting/setting', 'email.password', 'Mật khẩu', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1593, 1, 'vi', 'core.setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1594, 1, 'vi', 'core.setting/setting', 'email.encryption', 'Mã hoá', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1595, 1, 'vi', 'core.setting/setting', 'email.mail_gun_domain', 'Tên miền', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1596, 1, 'vi', 'core.setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1597, 1, 'vi', 'core.setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1598, 1, 'vi', 'core.setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1599, 1, 'vi', 'core.setting/setting', 'email.template_title', 'Mẫu giao diện email', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1600, 1, 'vi', 'core.setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1601, 1, 'vi', 'core.setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1602, 1, 'vi', 'core.setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1603, 1, 'vi', 'core.setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1604, 1, 'vi', 'core.setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1605, 1, 'vi', 'core.setting/setting', 'save_settings', 'Lưu cài đặt', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1606, 1, 'vi', 'core.setting/setting', 'template', 'Mẫu', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1607, 1, 'vi', 'core.setting/setting', 'description', 'Mô tả', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1608, 1, 'vi', 'core.setting/setting', 'enable', 'Bật', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1609, 1, 'vi', 'core.setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1610, 1, 'CN', 'core.setting/zh/setting', 'title', '设置', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1611, 1, 'CN', 'core.setting/zh/setting', 'general.theme', '主题', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1612, 1, 'CN', 'core.setting/zh/setting', 'general.description', '设置网站信息', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1613, 1, 'CN', 'core.setting/zh/setting', 'general.title', '通用', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1614, 1, 'CN', 'core.setting/zh/setting', 'general.general_block', '通用信息', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1615, 1, 'CN', 'core.setting/zh/setting', 'general.rich_editor', '富文本编辑器', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1616, 1, 'CN', 'core.setting/zh/setting', 'general.site_title', '网站标题', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1617, 1, 'CN', 'core.setting/zh/setting', 'general.copyright', '版权', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1618, 1, 'CN', 'core.setting/zh/setting', 'general.admin_email', '管理员邮件', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1619, 1, 'CN', 'core.setting/zh/setting', 'general.seo_block', 'SEO配置', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1620, 1, 'CN', 'core.setting/zh/setting', 'general.seo_title', 'SEO标题', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1621, 1, 'CN', 'core.setting/zh/setting', 'general.seo_description', 'SEO描述', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1622, 1, 'CN', 'core.setting/zh/setting', 'general.seo_keywords', 'SEO关键字', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1623, 1, 'CN', 'core.setting/zh/setting', 'general.webmaster_tools_block', 'Google管理员工具', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1624, 1, 'CN', 'core.setting/zh/setting', 'general.google_site_verification', 'Google网站验证', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1625, 1, 'CN', 'core.setting/zh/setting', 'general.enable_captcha', '启用人机验证?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1626, 1, 'CN', 'core.setting/zh/setting', 'general.contact_block', '联系信息', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1627, 1, 'CN', 'core.setting/zh/setting', 'general.address', '地址', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1628, 1, 'CN', 'core.setting/zh/setting', 'general.email', 'Email', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1629, 1, 'CN', 'core.setting/zh/setting', 'general.email_support', 'Email支持', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1630, 1, 'CN', 'core.setting/zh/setting', 'general.phone', '电话', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1631, 1, 'CN', 'core.setting/zh/setting', 'general.hotline', '热线', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1632, 1, 'CN', 'core.setting/zh/setting', 'general.google_plus', 'Google Plus', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1633, 1, 'CN', 'core.setting/zh/setting', 'general.facebook', 'Facebook', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1634, 1, 'CN', 'core.setting/zh/setting', 'general.twitter', 'Twitter', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1635, 1, 'CN', 'core.setting/zh/setting', 'general.show_admin_bar', '显示管理栏（当管理员登录时，仍然在网站上显示管理栏）？', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1636, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.site_title', '网站标题（最多120个字符）', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1637, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.copyright', '版权', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1638, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.email', 'Email', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1639, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.admin_email', '管理员邮件', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1640, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.email_support', '电子邮件支持', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1641, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.phone', '联系电话', '2018-09-12 18:39:23', '2018-09-12 18:39:23');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1642, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.address', '联系地址', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1643, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.hotline', '热线', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1644, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.seo_title', 'SEO标题（最多120个字符）', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1645, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.seo_description', 'SEO说明（最多120个字符）', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1646, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.seo_keywords', 'SEO关键字（最多60个字符，用“，”字符分隔）', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1647, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.google_analytics', 'Google分析', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1648, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.google_site_verification', 'Google网站验证', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1649, 1, 'CN', 'core.setting/zh/setting', 'general.enable_change_admin_theme', '启用更改管理后台主题？', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1650, 1, 'CN', 'core.setting/zh/setting', 'general.enable_multi_language_in_admin', '在管理后台启用多语言？', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1651, 1, 'CN', 'core.setting/zh/setting', 'general.enable', '启用', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1652, 1, 'CN', 'core.setting/zh/setting', 'general.disable', '禁用', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1653, 1, 'CN', 'core.setting/zh/setting', 'general.enable_cache', '启用缓存？', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1654, 1, 'CN', 'core.setting/zh/setting', 'general.cache_time', '缓存时间', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1655, 1, 'CN', 'core.setting/zh/setting', 'general.cache_time_site_map', '站点地图缓存时间', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1656, 1, 'CN', 'core.setting/zh/setting', 'general.admin_logo', '管理后台徽标', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1657, 1, 'CN', 'core.setting/zh/setting', 'general.admin_title', '管理后台标题', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1658, 1, 'CN', 'core.setting/zh/setting', 'general.admin_title_placeholder', '标题显示到浏览器的标签', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1659, 1, 'CN', 'core.setting/zh/setting', 'email.title', '电子邮件通用设定', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1660, 1, 'CN', 'core.setting/zh/setting', 'email.description', '电子邮件配置默认值', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1661, 1, 'CN', 'core.setting/zh/setting', 'email.variable_title', '电子邮件模板可用变量', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1662, 1, 'en', 'core.table/general', 'operations', 'Operations', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1663, 1, 'en', 'core.table/general', 'loading_data', 'Loading data from server', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1664, 1, 'en', 'core.table/general', 'display', 'Display', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1665, 1, 'en', 'core.table/general', 'all', 'All', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1666, 1, 'en', 'core.table/general', 'edit_entry', 'Edit Entry', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1667, 1, 'en', 'core.table/general', 'delete_entry', 'Delete Entry', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1668, 1, 'en', 'core.table/general', 'show_from', 'Showing from', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1669, 1, 'en', 'core.table/general', 'to', 'to', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1670, 1, 'en', 'core.table/general', 'in', 'in', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1671, 1, 'en', 'core.table/general', 'records', 'records', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1672, 1, 'en', 'core.table/general', 'no_data', 'No data to display', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1673, 1, 'en', 'core.table/general', 'no_record', 'No record', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1674, 1, 'en', 'core.table/general', 'loading', 'Loading data from server', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1675, 1, 'en', 'core.table/general', 'confirm_delete', 'Confirm delete', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1676, 1, 'en', 'core.table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1677, 1, 'en', 'core.table/general', 'cancel', 'Cancel', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1678, 1, 'en', 'core.table/general', 'drag_drop_column_header', 'Drag and Drop the header of a column in or out of the table or move it\'s position within a table', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1679, 1, 'en', 'core.table/general', 'configuration_name', 'Name', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1680, 1, 'en', 'core.table/general', 'configuration_name_description', 'Configuration name', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1681, 1, 'en', 'core.table/general', 'save', 'Save', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1682, 1, 'en', 'core.table/general', 'save_as_new', 'Save as new', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1683, 1, 'en', 'core.table/general', 'delete', 'Delete', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1684, 1, 'en', 'core.table/general', 'close', 'Close', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1685, 1, 'en', 'core.table/general', 'is_equal_to', 'Is equal to', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1686, 1, 'en', 'core.table/general', 'greater_than', 'Greater than', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1687, 1, 'en', 'core.table/general', 'less_than', 'Less than', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1688, 1, 'en', 'core.table/general', 'value', 'Value', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1689, 1, 'en', 'core.table/general', 'select_field', 'Select field', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1690, 1, 'en', 'core.table/general', 'reset', 'Reset', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1691, 1, 'en', 'core.table/general', 'add_additional_filter', 'Add additional filter', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1692, 1, 'en', 'core.table/general', 'apply', 'Apply', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1693, 1, 'en', 'core.table/general', 'filters', 'Filter(s)', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1694, 1, 'en', 'core.table/general', 'bulk_change', 'Bulk changes', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1695, 1, 'en', 'core.table/general', 'select_option', 'Select option', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1696, 1, 'en', 'core.table/general', 'table_options', 'Table Options', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1697, 1, 'en', 'core.table/general', 'select_saved_option', 'Select saved option', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1698, 1, 'en', 'core.table/general', 'bulk_actions', 'Bulk Actions', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1699, 1, 'CN', 'core.table/zh/general', 'operations', '操作', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1700, 1, 'CN', 'core.table/zh/general', 'loading_data', '从服务器加载数据', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1701, 1, 'CN', 'core.table/zh/general', 'display', '显示', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1702, 1, 'CN', 'core.table/zh/general', 'all', '全部', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1703, 1, 'CN', 'core.table/zh/general', 'edit_entry', '编辑', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1704, 1, 'CN', 'core.table/zh/general', 'delete_entry', '删除', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1705, 1, 'CN', 'core.table/zh/general', 'show_from', '正在显示', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1706, 1, 'CN', 'core.table/zh/general', 'to', '到', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1707, 1, 'CN', 'core.table/zh/general', 'in', '进', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1708, 1, 'CN', 'core.table/zh/general', 'records', '记录', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1709, 1, 'CN', 'core.table/zh/general', 'no_data', '没有要显示的数据', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1710, 1, 'CN', 'core.table/zh/general', 'no_record', '无记录', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1711, 1, 'CN', 'core.table/zh/general', 'loading', '从服务器加载数据', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1712, 1, 'CN', 'core.table/zh/general', 'confirm_delete', '确认删除', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1713, 1, 'CN', 'core.table/zh/general', 'confirm_delete_msg', '你真的想删除这个记录吗？', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1714, 1, 'CN', 'core.table/zh/general', 'cancel', '取消', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1715, 1, 'CN', 'core.table/zh/general', 'drag_drop_column_header', '将列的标题拖入或拖出表格或将其移动到表格中', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1716, 1, 'CN', 'core.table/zh/general', 'configuration_name', '名称', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1717, 1, 'CN', 'core.table/zh/general', 'configuration_name_description', '配置名称', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1718, 1, 'CN', 'core.table/zh/general', 'save', '保存', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1719, 1, 'CN', 'core.table/zh/general', 'save_as_new', '另存为新', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1720, 1, 'CN', 'core.table/zh/general', 'delete', '删除', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1721, 1, 'CN', 'core.table/zh/general', 'close', '关闭', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1722, 1, 'CN', 'core.table/zh/general', 'is_equal_to', '等于', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1723, 1, 'CN', 'core.table/zh/general', 'greater_than', '大于', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1724, 1, 'CN', 'core.table/zh/general', 'less_than', '小于', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1725, 1, 'CN', 'core.table/zh/general', 'value', '数值', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1726, 1, 'CN', 'core.table/zh/general', 'select_field', '选择字段', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1727, 1, 'CN', 'core.table/zh/general', 'reset', '重置', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1728, 1, 'CN', 'core.table/zh/general', 'add_additional_filter', '新增额外的筛选', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1729, 1, 'CN', 'core.table/zh/general', 'apply', '应用', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1730, 1, 'CN', 'core.table/zh/general', 'filters', '筛选', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1731, 1, 'CN', 'core.table/zh/general', 'bulk_change', '批量更改', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1732, 1, 'CN', 'core.table/zh/general', 'select_option', '选择选项', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1733, 1, 'CN', 'core.table/zh/general', 'table_options', '表格选项', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1734, 1, 'CN', 'core.table/zh/general', 'select_saved_option', '选择保存的选项', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1735, 1, 'CN', 'core.table/zh/general', 'bulk_actions', '批量操作', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1736, 1, 'en', 'core.theme/theme', 'theme', 'Theme', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1737, 1, 'en', 'core.theme/theme', 'author', 'Author', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1738, 1, 'en', 'core.theme/theme', 'version', 'Version', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1739, 1, 'en', 'core.theme/theme', 'description', 'Description', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1740, 1, 'en', 'core.theme/theme', 'active_success', 'Active theme successfully!', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1741, 1, 'en', 'core.theme/theme', 'active', 'Active', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1742, 1, 'en', 'core.theme/theme', 'activated', 'Activated', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1743, 1, 'en', 'core.theme/theme', 'theme_options', 'Theme options', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1744, 1, 'CN', 'core.theme/zh/theme', 'theme', '模板', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1745, 1, 'CN', 'core.theme/zh/theme', 'author', '作者', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1746, 1, 'CN', 'core.theme/zh/theme', 'version', '版本', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1747, 1, 'CN', 'core.theme/zh/theme', 'description', '描述', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1748, 1, 'CN', 'core.theme/zh/theme', 'active_success', '成功启用模板!', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1749, 1, 'CN', 'core.theme/zh/theme', 'active', '启用', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1750, 1, 'CN', 'core.theme/zh/theme', 'activated', '已启用', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1751, 1, 'CN', 'core.theme/zh/theme', 'theme_options', '模板配置', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1752, 1, 'en', 'core.widget/global', 'name', 'Widgets', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1753, 1, 'en', 'core.widget/global', 'create', 'New widget', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1754, 1, 'en', 'core.widget/global', 'edit', 'Edit widget', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1755, 1, 'en', 'core.widget/global', 'delete', 'Delete', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1756, 1, 'en', 'core.widget/global', 'available', 'Available Widgets', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1757, 1, 'en', 'core.widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1758, 1, 'en', 'core.widget/global', 'number_tag_display', 'Number tags will be display', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1759, 1, 'en', 'core.widget/global', 'number_post_display', 'Number posts will be display', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1760, 1, 'en', 'core.widget/global', 'select_menu', 'Select Menu', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1761, 1, 'en', 'core.widget/global', 'widget_text', 'Text', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1762, 1, 'en', 'core.widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1763, 1, 'en', 'core.widget/global', 'widget_recent_post', 'Recent Posts', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1764, 1, 'en', 'core.widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1765, 1, 'en', 'core.widget/global', 'widget_custom_menu', 'Custom Menu', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1766, 1, 'en', 'core.widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1767, 1, 'en', 'core.widget/global', 'widget_tag', 'Tags', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1768, 1, 'en', 'core.widget/global', 'widget_tag_description', 'Popular tags', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1769, 1, 'en', 'core.widget/global', 'save_success', 'Save widget successfully!', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1770, 1, 'en', 'core.widget/global', 'delete_success', 'Delete widget successfully!', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1771, 1, 'vi', 'core.widget/global', 'name', 'Widgets', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1772, 1, 'vi', 'core.widget/global', 'create', 'New widget', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1773, 1, 'vi', 'core.widget/global', 'edit', 'Edit widget', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1774, 1, 'vi', 'core.widget/global', 'available', 'Tiện ích có sẵn', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1775, 1, 'vi', 'core.widget/global', 'delete', 'Xóa', '2018-09-12 18:39:23', '2018-09-12 18:39:23'),
(1776, 1, 'vi', 'core.widget/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1777, 1, 'vi', 'core.widget/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1778, 1, 'vi', 'core.widget/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1779, 1, 'vi', 'core.widget/global', 'select_menu', 'Lựa chọn trình đơn', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1780, 1, 'vi', 'core.widget/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1781, 1, 'vi', 'core.widget/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1782, 1, 'vi', 'core.widget/global', 'widget_recent_post', 'Bài viết gần đây', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1783, 1, 'vi', 'core.widget/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1784, 1, 'vi', 'core.widget/global', 'widget_tag', 'Thẻ', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1785, 1, 'vi', 'core.widget/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1786, 1, 'vi', 'core.widget/global', 'widget_text', 'Văn bản', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1787, 1, 'vi', 'core.widget/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1788, 1, 'vi', 'core.widget/global', 'delete_success', 'Xoá tiện ích thành công', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1789, 1, 'vi', 'core.widget/global', 'save_success', 'Lưu tiện ích thành công!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1790, 1, 'CN', 'core.widget/zh/global', 'name', '小部件', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1791, 1, 'CN', 'core.widget/zh/global', 'create', '新建小部件', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1792, 1, 'CN', 'core.widget/zh/global', 'edit', '编辑小部件', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1793, 1, 'CN', 'core.widget/zh/global', 'delete', '删除', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1794, 1, 'CN', 'core.widget/zh/global', 'available', '可用小部件', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1795, 1, 'CN', 'core.widget/zh/global', 'instruction', '要激活一个小部件，将其拖到侧边栏或单击它。 要停用小部件并删除其设置，请将其拖回。', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1796, 1, 'CN', 'core.widget/zh/global', 'number_tag_display', '将显示数字标签', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1797, 1, 'CN', 'core.widget/zh/global', 'number_post_display', '将显示号码信息', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1798, 1, 'CN', 'core.widget/zh/global', 'select_menu', '选择菜单', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1799, 1, 'CN', 'core.widget/zh/global', 'widget_text', '文字', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1800, 1, 'CN', 'core.widget/zh/global', 'widget_text_description', '任意文字或HTML。', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1801, 1, 'CN', 'core.widget/zh/global', 'widget_recent_post', '最近新闻', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1802, 1, 'CN', 'core.widget/zh/global', 'widget_recent_post_description', '最近新闻部件', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1803, 1, 'CN', 'core.widget/zh/global', 'widget_custom_menu', '自定义菜单', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1804, 1, 'CN', 'core.widget/zh/global', 'widget_custom_menu_description', '添加一个自定义菜单到你的小部件区域。', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1805, 1, 'CN', 'core.widget/zh/global', 'widget_tag', '标签', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1806, 1, 'CN', 'core.widget/zh/global', 'widget_tag_description', '热门标签', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1807, 1, 'CN', 'core.widget/zh/global', 'save_success', '保存小部件成功！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1808, 1, 'CN', 'core.widget/zh/global', 'delete_success', '删除小部件成功！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1809, 1, 'en', 'media/media', 'filter', 'Filter', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1810, 1, 'en', 'media/media', 'everything', 'Everything', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1811, 1, 'en', 'media/media', 'image', 'Image', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1812, 1, 'en', 'media/media', 'video', 'Video', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1813, 1, 'en', 'media/media', 'document', 'Document', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1814, 1, 'en', 'media/media', 'view_in', 'View in', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1815, 1, 'en', 'media/media', 'all_media', 'All media', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1816, 1, 'en', 'media/media', 'trash', 'Trash', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1817, 1, 'en', 'media/media', 'recent', 'Recent', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1818, 1, 'en', 'media/media', 'favorites', 'Favorites', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1819, 1, 'en', 'media/media', 'upload', 'Upload', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1820, 1, 'en', 'media/media', 'add_from', 'Add from', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1821, 1, 'en', 'media/media', 'youtube', 'Youtube', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1822, 1, 'en', 'media/media', 'vimeo', 'Vimeo', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1823, 1, 'en', 'media/media', 'vine', 'Vine', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1824, 1, 'en', 'media/media', 'daily_motion', 'Dailymotion', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1825, 1, 'en', 'media/media', 'create_folder', 'Create folder', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1826, 1, 'en', 'media/media', 'refresh', 'Refresh', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1827, 1, 'en', 'media/media', 'empty_trash', 'Empty trash', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1828, 1, 'en', 'media/media', 'search_file_and_folder', 'Search file and folder', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1829, 1, 'en', 'media/media', 'sort', 'Sort', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1830, 1, 'en', 'media/media', 'file_name_asc', 'File name - ASC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1831, 1, 'en', 'media/media', 'file_name_desc', 'File name - DESC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1832, 1, 'en', 'media/media', 'created_date_asc', 'Created date - ASC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1833, 1, 'en', 'media/media', 'created_date_desc', 'Created_date - DESC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1834, 1, 'en', 'media/media', 'uploaded_date_asc', 'Uploaed date - ASC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1835, 1, 'en', 'media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1836, 1, 'en', 'media/media', 'size_asc', 'Size - ASC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1837, 1, 'en', 'media/media', 'size_desc', 'Size - DESC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1838, 1, 'en', 'media/media', 'actions', 'Actions', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1839, 1, 'en', 'media/media', 'nothing_is_selected', 'Nothing is selected', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1840, 1, 'en', 'media/media', 'insert', 'Insert', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1841, 1, 'en', 'media/media', 'coming_soon', 'Coming soon', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1842, 1, 'en', 'media/media', 'add_from_youtube', 'Add from youtube', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1843, 1, 'en', 'media/media', 'playlist', 'Playlist', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1844, 1, 'en', 'media/media', 'add_url', 'Add URL', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1845, 1, 'en', 'media/media', 'folder_name', 'Folder name', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1846, 1, 'en', 'media/media', 'create', 'Create', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1847, 1, 'en', 'media/media', 'rename', 'Rename', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1848, 1, 'en', 'media/media', 'close', 'Close', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1849, 1, 'en', 'media/media', 'save_changes', 'Save changes', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1850, 1, 'en', 'media/media', 'move_to_trash', 'Move items to trash', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1851, 1, 'en', 'media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1852, 1, 'en', 'media/media', 'confirm', 'Confirm', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1853, 1, 'en', 'media/media', 'confirm_delete', 'Delete item(s)', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1854, 1, 'en', 'media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1855, 1, 'en', 'media/media', 'empty_trash_title', 'Empty trash', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1856, 1, 'en', 'media/media', 'empty_trash_description', 'Your request cannot rollback.Are you sure you wanna remove all items in trash?', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1857, 1, 'en', 'media/media', 'up_level', 'Up one level', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1858, 1, 'en', 'media/media', 'upload_progress', 'Upload progress', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1859, 1, 'en', 'media/media', 'folder_created', 'Folder is created successfully!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1860, 1, 'en', 'media/media', 'gallery', 'Media gallery', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1861, 1, 'en', 'media/media', 'trash_error', 'Error when delete selected item(s)', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1862, 1, 'en', 'media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1863, 1, 'en', 'media/media', 'restore_error', 'Error when restore selected item(s)', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1864, 1, 'en', 'media/media', 'restore_success', 'Restore selected item(s) successfully!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1865, 1, 'en', 'media/media', 'copy_success', 'Copied selected item(s) successfully!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1866, 1, 'en', 'media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1867, 1, 'en', 'media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1868, 1, 'en', 'media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1869, 1, 'en', 'media/media', 'rename_error', 'Error when rename item(s)', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1870, 1, 'en', 'media/media', 'rename_success', 'Rename selected item(s) successfully!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1871, 1, 'en', 'media/media', 'empty_trash_success', 'Empty trash successfully!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1872, 1, 'en', 'media/media', 'invalid_action', 'Invalid action!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1873, 1, 'en', 'media/media', 'file_not_exists', 'File is not exists!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1874, 1, 'en', 'media/media', 'download_file_error', 'Error when downloading files!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1875, 1, 'en', 'media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1876, 1, 'en', 'media/media', 'can_not_download_file', 'Can not download this file!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1877, 1, 'en', 'media/media', 'invalid_request', 'Invalid request!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1878, 1, 'en', 'media/media', 'add_success', 'Add item successfully!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1879, 1, 'en', 'media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1880, 1, 'en', 'media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1881, 1, 'en', 'media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1882, 1, 'en', 'media/media', 'menu_name', 'Media', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1883, 1, 'en', 'media/media', 'add', 'Add media', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1884, 1, 'en', 'media/media', 'javascript.name', 'Name', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1885, 1, 'en', 'media/media', 'javascript.url', 'Url', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1886, 1, 'en', 'media/media', 'javascript.full_url', 'Full url', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1887, 1, 'en', 'media/media', 'javascript.size', 'Size', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1888, 1, 'en', 'media/media', 'javascript.mime_type', 'Type', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1889, 1, 'en', 'media/media', 'javascript.created_at', 'Uploaded at', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1890, 1, 'en', 'media/media', 'javascript.updated_at', 'Modified at', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1891, 1, 'en', 'media/media', 'javascript.nothing_selected', 'Nothing is selected', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1892, 1, 'en', 'media/media', 'javascript.visit_link', 'Open link', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1893, 1, 'en', 'media/media', 'javascript.add_from.youtube.original_msg', 'Please input Youtube URL', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1894, 1, 'en', 'media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Please specify the Youtube API key', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1895, 1, 'en', 'media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Your link is not belongs to Youtube', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1896, 1, 'en', 'media/media', 'javascript.add_from.youtube.error_msg', 'Some error occurred...', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1897, 1, 'en', 'media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1898, 1, 'en', 'media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1899, 1, 'en', 'media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1900, 1, 'en', 'media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1901, 1, 'en', 'media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1902, 1, 'en', 'media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1903, 1, 'en', 'media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1904, 1, 'en', 'media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1905, 1, 'en', 'media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1906, 1, 'en', 'media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1907, 1, 'en', 'media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1908, 1, 'en', 'media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1909, 1, 'en', 'media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1910, 1, 'en', 'media/media', 'javascript.no_item.default.title', 'No items', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1911, 1, 'en', 'media/media', 'javascript.no_item.default.message', 'This directory has no item', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1912, 1, 'en', 'media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1913, 1, 'en', 'media/media', 'javascript.message.error_header', 'Error', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1914, 1, 'en', 'media/media', 'javascript.message.success_header', 'Success', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1915, 1, 'en', 'media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1916, 1, 'en', 'media/media', 'javascript.actions_list.basic.preview', 'Preview', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1917, 1, 'en', 'media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1918, 1, 'en', 'media/media', 'javascript.actions_list.file.rename', 'Rename', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1919, 1, 'en', 'media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1920, 1, 'en', 'media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1921, 1, 'en', 'media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1922, 1, 'en', 'media/media', 'javascript.actions_list.other.download', 'Download', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1923, 1, 'en', 'media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1924, 1, 'en', 'media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1925, 1, 'en', 'media/media', 'javascript.actions_list.other.restore', 'Restore', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1926, 1, 'en', 'media/media', 'name_invalid', 'The folder name has invalid character(s).', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1927, 1, 'vi', 'media/media', 'filter', 'Lọc', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1928, 1, 'vi', 'media/media', 'everything', 'Tất cả', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1929, 1, 'vi', 'media/media', 'image', 'Hình ảnh', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1930, 1, 'vi', 'media/media', 'video', 'Phim', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1931, 1, 'vi', 'media/media', 'document', 'Tài liệu', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1932, 1, 'vi', 'media/media', 'view_in', 'Chế độ xem', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1933, 1, 'vi', 'media/media', 'all_media', 'Tất cả tập tin', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1934, 1, 'vi', 'media/media', 'trash', 'Thùng rác', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1935, 1, 'vi', 'media/media', 'recent', 'Gần đây', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1936, 1, 'vi', 'media/media', 'favorites', 'Được gắn dấu sao', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1937, 1, 'vi', 'media/media', 'upload', 'Tải lên', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1938, 1, 'vi', 'media/media', 'add_from', 'Thêm từ', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1939, 1, 'vi', 'media/media', 'youtube', 'Youtube', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1940, 1, 'vi', 'media/media', 'vimeo', 'Vimeo', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1941, 1, 'vi', 'media/media', 'vine', 'Vine', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1942, 1, 'vi', 'media/media', 'daily_motion', 'Dailymotion', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1943, 1, 'vi', 'media/media', 'create_folder', 'Tạo thư mục', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1944, 1, 'vi', 'media/media', 'refresh', 'Làm mới', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1945, 1, 'vi', 'media/media', 'empty_trash', 'Dọn thùng rác', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1946, 1, 'vi', 'media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1947, 1, 'vi', 'media/media', 'sort', 'Sắp xếp', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1948, 1, 'vi', 'media/media', 'file_name_asc', 'Tên tập tin - ASC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1949, 1, 'vi', 'media/media', 'file_name_desc', 'Tên tập tin - DESC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1950, 1, 'vi', 'media/media', 'created_date_asc', 'Ngày tạo - ASC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1951, 1, 'vi', 'media/media', 'created_date_desc', 'Ngày tạo - DESC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1952, 1, 'vi', 'media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1953, 1, 'vi', 'media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1954, 1, 'vi', 'media/media', 'size_asc', 'Kích thước - ASC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1955, 1, 'vi', 'media/media', 'size_desc', 'Kích thước - DESC', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1956, 1, 'vi', 'media/media', 'actions', 'Hành động', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1957, 1, 'vi', 'media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1958, 1, 'vi', 'media/media', 'insert', 'Chèn', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1959, 1, 'vi', 'media/media', 'coming_soon', 'Đang phát triển', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1960, 1, 'vi', 'media/media', 'add_from_youtube', 'Thêm từ youtube', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1961, 1, 'vi', 'media/media', 'playlist', 'Playlist', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1962, 1, 'vi', 'media/media', 'add_url', 'Thêm đường dẫn', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1963, 1, 'vi', 'media/media', 'folder_name', 'Tên thư mục', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1964, 1, 'vi', 'media/media', 'create', 'Tạo', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1965, 1, 'vi', 'media/media', 'rename', 'Đổi tên', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1966, 1, 'vi', 'media/media', 'close', 'Đóng', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1967, 1, 'vi', 'media/media', 'save_changes', 'Lưu thay đổi', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1968, 1, 'vi', 'media/media', 'move_to_trash', 'Đưa vào thùng rác', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1969, 1, 'vi', 'media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1970, 1, 'vi', 'media/media', 'confirm', 'Xác nhận', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1971, 1, 'vi', 'media/media', 'confirm_delete', 'Xóa tập tin', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1972, 1, 'vi', 'media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1973, 1, 'vi', 'media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1974, 1, 'vi', 'media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1975, 1, 'vi', 'media/media', 'up_level', 'Quay lại một cấp', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1976, 1, 'vi', 'media/media', 'upload_progress', 'Tiến trình tải lên', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1977, 1, 'vi', 'media/media', 'name_reserved', 'Tên này không được phép đặt', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1978, 1, 'vi', 'media/media', 'folder_created', 'Tạo thư mục thành công!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1979, 1, 'vi', 'media/media', 'gallery', 'Thư viện tập tin', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1980, 1, 'vi', 'media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1981, 1, 'vi', 'media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1982, 1, 'vi', 'media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1983, 1, 'vi', 'media/media', 'restore_success', 'Khôi phục thành công!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1984, 1, 'vi', 'media/media', 'copy_success', 'Sao chép thành công!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1985, 1, 'vi', 'media/media', 'delete_success', 'Xóa thành công!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1986, 1, 'vi', 'media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1987, 1, 'vi', 'media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1988, 1, 'vi', 'media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1989, 1, 'vi', 'media/media', 'rename_success', 'Đổi tên thành công!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1990, 1, 'vi', 'media/media', 'invalid_action', 'Hành động không hợp lệ!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1991, 1, 'vi', 'media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1992, 1, 'vi', 'media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1993, 1, 'vi', 'media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1994, 1, 'vi', 'media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1995, 1, 'vi', 'media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1996, 1, 'vi', 'media/media', 'add_success', 'Thêm thành công!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1997, 1, 'vi', 'media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1998, 1, 'vi', 'media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(1999, 1, 'vi', 'media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2000, 1, 'vi', 'media/media', 'menu_name', 'Quản lý tập tin', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2001, 1, 'vi', 'media/media', 'add', 'Thêm tập tin', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2002, 1, 'vi', 'media/media', 'javascript.name', 'Tên', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2003, 1, 'vi', 'media/media', 'javascript.url', 'Đường dẫn', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2004, 1, 'vi', 'media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2005, 1, 'vi', 'media/media', 'javascript.size', 'Kích thước', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2006, 1, 'vi', 'media/media', 'javascript.mime_type', 'Loại', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2007, 1, 'vi', 'media/media', 'javascript.created_at', 'Được tải lên lúc', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2008, 1, 'vi', 'media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2009, 1, 'vi', 'media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2010, 1, 'vi', 'media/media', 'javascript.visit_link', 'Mở liên kết', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2011, 1, 'vi', 'media/media', 'javascript.add_from.youtube.original_msg', 'Vui lòng nhập chính xác đường dẫn Youtube', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2012, 1, 'vi', 'media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Vui lòng khai báo API key của Youtube', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2013, 1, 'vi', 'media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Liên kết này không dẫn đến Youtube', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2014, 1, 'vi', 'media/media', 'javascript.add_from.youtube.error_msg', 'Có lỗi xảy ra trong tiến trình thực hiện...', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2015, 1, 'vi', 'media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2016, 1, 'vi', 'media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2017, 1, 'vi', 'media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2018, 1, 'vi', 'media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2019, 1, 'vi', 'media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2020, 1, 'vi', 'media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2021, 1, 'vi', 'media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2022, 1, 'vi', 'media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2023, 1, 'vi', 'media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2024, 1, 'vi', 'media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2025, 1, 'vi', 'media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2026, 1, 'vi', 'media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2027, 1, 'vi', 'media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2028, 1, 'vi', 'media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2029, 1, 'vi', 'media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2030, 1, 'vi', 'media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2031, 1, 'vi', 'media/media', 'javascript.message.error_header', 'Lỗi', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2032, 1, 'vi', 'media/media', 'javascript.message.success_header', 'Thành công', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2033, 1, 'vi', 'media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2034, 1, 'vi', 'media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2035, 1, 'vi', 'media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2036, 1, 'vi', 'media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2037, 1, 'vi', 'media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2038, 1, 'vi', 'media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2039, 1, 'vi', 'media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2040, 1, 'vi', 'media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2041, 1, 'vi', 'media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2042, 1, 'vi', 'media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2043, 1, 'vi', 'media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2044, 1, 'vi', 'media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2045, 1, 'vi', 'media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2046, 1, 'CN', 'media/zh/media', 'filter', '筛选', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2047, 1, 'CN', 'media/zh/media', 'everything', '所有', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2048, 1, 'CN', 'media/zh/media', 'image', '图片', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2049, 1, 'CN', 'media/zh/media', 'video', '视频', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2050, 1, 'CN', 'media/zh/media', 'document', '文档', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2051, 1, 'CN', 'media/zh/media', 'view_in', '查看', '2018-09-12 18:39:24', '2018-09-12 18:39:24');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2052, 1, 'CN', 'media/zh/media', 'all_media', '所有媒体', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2053, 1, 'CN', 'media/zh/media', 'trash', '回收站', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2054, 1, 'CN', 'media/zh/media', 'recent', '当前', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2055, 1, 'CN', 'media/zh/media', 'favorites', '收藏夹', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2056, 1, 'CN', 'media/zh/media', 'upload', '上传', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2057, 1, 'CN', 'media/zh/media', 'add_from', '添加', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2058, 1, 'CN', 'media/zh/media', 'youtube', 'Youtube', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2059, 1, 'CN', 'media/zh/media', 'vimeo', 'Vimeo', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2060, 1, 'CN', 'media/zh/media', 'vine', 'Vine', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2061, 1, 'CN', 'media/zh/media', 'daily_motion', '日常活动', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2062, 1, 'CN', 'media/zh/media', 'create_folder', '创建文件夹', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2063, 1, 'CN', 'media/zh/media', 'refresh', '刷新', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2064, 1, 'CN', 'media/zh/media', 'empty_trash', '清空回收站', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2065, 1, 'CN', 'media/zh/media', 'search_file_and_folder', '搜索文件及文件夹', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2066, 1, 'CN', 'media/zh/media', 'sort', '排序', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2067, 1, 'CN', 'media/zh/media', 'file_name_asc', '文件名从小到大', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2068, 1, 'CN', 'media/zh/media', 'file_name_desc', '文件名从大到小', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2069, 1, 'CN', 'media/zh/media', 'created_date_asc', '创建日期从小到大', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2070, 1, 'CN', 'media/zh/media', 'created_date_desc', '创建日期从大到小', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2071, 1, 'CN', 'media/zh/media', 'uploaded_date_asc', '上传日期从小到大', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2072, 1, 'CN', 'media/zh/media', 'uploaded_date_desc', '上传日期从大到小', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2073, 1, 'CN', 'media/zh/media', 'size_asc', '体积从小到大', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2074, 1, 'CN', 'media/zh/media', 'size_desc', '体积从大到小', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2075, 1, 'CN', 'media/zh/media', 'actions', '操作', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2076, 1, 'CN', 'media/zh/media', 'nothing_is_selected', '未选择条目', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2077, 1, 'CN', 'media/zh/media', 'insert', '插入', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2078, 1, 'CN', 'media/zh/media', 'coming_soon', '即将推出', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2079, 1, 'CN', 'media/zh/media', 'add_from_youtube', '从Youtube添加', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2080, 1, 'CN', 'media/zh/media', 'playlist', '播放列表', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2081, 1, 'CN', 'media/zh/media', 'add_url', '添加网址', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2082, 1, 'CN', 'media/zh/media', 'folder_name', '文件夹名称', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2083, 1, 'CN', 'media/zh/media', 'create', '创建', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2084, 1, 'CN', 'media/zh/media', 'rename', '重命名', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2085, 1, 'CN', 'media/zh/media', 'close', '关闭', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2086, 1, 'CN', 'media/zh/media', 'save_changes', '保存修改', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2087, 1, 'CN', 'media/zh/media', 'move_to_trash', '移至回收站', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2088, 1, 'CN', 'media/zh/media', 'confirm_trash', '你确定要将这些项目移动到回收站吗?', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2089, 1, 'CN', 'media/zh/media', 'confirm', '确认', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2090, 1, 'CN', 'media/zh/media', 'confirm_delete', '删除项目', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2091, 1, 'CN', 'media/zh/media', 'confirm_delete_description', '您的请求无法恢复。你确定要删除这些项目吗?', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2092, 1, 'CN', 'media/zh/media', 'empty_trash_title', '清空回收站', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2093, 1, 'CN', 'media/zh/media', 'empty_trash_description', '您的请求无法恢复。你确定要删除这些项目吗??', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2094, 1, 'CN', 'media/zh/media', 'up_level', '上一层', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2095, 1, 'CN', 'media/zh/media', 'upload_progress', '上传进度', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2096, 1, 'CN', 'media/zh/media', 'folder_created', '文件夹创建成功!', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2097, 1, 'CN', 'media/zh/media', 'gallery', '媒体库', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2098, 1, 'CN', 'media/zh/media', 'trash_error', '删除选定项目时出错', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2099, 1, 'CN', 'media/zh/media', 'trash_success', '将选定的项目移至回收站成功！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2100, 1, 'CN', 'media/zh/media', 'restore_error', '恢复所选项目时出错', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2101, 1, 'CN', 'media/zh/media', 'restore_success', '成功恢复选定的项目！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2102, 1, 'CN', 'media/zh/media', 'copy_success', '成功复制选定的项目！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2103, 1, 'CN', 'media/zh/media', 'delete_success', '成功删除选定的项目！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2104, 1, 'CN', 'media/zh/media', 'favorite_success', '选择的项目成功加入收藏夹！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2105, 1, 'CN', 'media/zh/media', 'remove_favorite_success', '成功删除收藏夹中的所选项目！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2106, 1, 'CN', 'media/zh/media', 'rename_error', '重命名项目时出错,', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2107, 1, 'CN', 'media/zh/media', 'rename_success', '重命名所选项目成功！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2108, 1, 'CN', 'media/zh/media', 'empty_trash_success', '清空回收站成功！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2109, 1, 'CN', 'media/zh/media', 'invalid_action', '无效的操作！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2110, 1, 'CN', 'media/zh/media', 'file_not_exists', '文件不存在！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2111, 1, 'CN', 'media/zh/media', 'download_file_error', '下载文件时出错！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2112, 1, 'CN', 'media/zh/media', 'missing_zip_archive_extension', '请启用ZipArchive扩展来下载文件！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2113, 1, 'CN', 'media/zh/media', 'can_not_download_file', '无法下载此文件！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2114, 1, 'CN', 'media/zh/media', 'invalid_request', '请求无效！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2115, 1, 'CN', 'media/zh/media', 'add_success', '添加项目成功！', '2018-09-12 18:39:24', '2018-09-12 18:39:24'),
(2116, 1, 'CN', 'media/zh/media', 'file_too_big', '文件太大。最大文件上传是:size字节', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2117, 1, 'CN', 'media/zh/media', 'can_not_detect_file_type', '文件类型不允许或不能检测文件类型！', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2118, 1, 'CN', 'media/zh/media', 'upload_failed', '文件没有完全上传。服务器允许最大上传文件大小为：:size。请检查您的文件大小或尝试重新上传，以防万一网络错误', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2119, 1, 'CN', 'media/zh/media', 'menu_name', '媒体', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2120, 1, 'CN', 'media/zh/media', 'add', '添加媒体', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2121, 1, 'CN', 'media/zh/media', 'javascript.name', '名称', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2122, 1, 'CN', 'media/zh/media', 'javascript.url', 'Url', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2123, 1, 'CN', 'media/zh/media', 'javascript.full_url', '完整网址', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2124, 1, 'CN', 'media/zh/media', 'javascript.size', '大小', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2125, 1, 'CN', 'media/zh/media', 'javascript.mime_type', '类型', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2126, 1, 'CN', 'media/zh/media', 'javascript.created_at', '上传于', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2127, 1, 'CN', 'media/zh/media', 'javascript.updated_at', '修改于', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2128, 1, 'CN', 'media/zh/media', 'javascript.nothing_selected', '未选择条目', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2129, 1, 'CN', 'media/zh/media', 'javascript.visit_link', '打开链接', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2130, 1, 'CN', 'media/zh/media', 'javascript.add_from.youtube.original_msg', '请输入Youtube URL', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2131, 1, 'CN', 'media/zh/media', 'javascript.add_from.youtube.no_api_key_msg', '请指定Youtube API密钥', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2132, 1, 'CN', 'media/zh/media', 'javascript.add_from.youtube.invalid_url_msg', '你的链接不属于Youtube', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2133, 1, 'CN', 'media/zh/media', 'javascript.add_from.youtube.error_msg', '发生了一些错误...', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2134, 1, 'CN', 'media/zh/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2135, 1, 'CN', 'media/zh/media', 'javascript.no_item.all_media.title', '在此放置文件和文件夹', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2136, 1, 'CN', 'media/zh/media', 'javascript.no_item.all_media.message', '或者使用上面的上传按钮', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2137, 1, 'CN', 'media/zh/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2138, 1, 'CN', 'media/zh/media', 'javascript.no_item.trash.title', '目前回收站中没有任何文件', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2139, 1, 'CN', 'media/zh/media', 'javascript.no_item.trash.message', '删除文件将它们自动移动到回收站。从回收站删除文件将永久删除它们', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2140, 1, 'CN', 'media/zh/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2141, 1, 'CN', 'media/zh/media', 'javascript.no_item.favorites.title', '你还没有添加任何东西到你的收藏夹', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2142, 1, 'CN', 'media/zh/media', 'javascript.no_item.favorites.message', '将文件添加到收藏夹以便稍后轻松找到它们', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2143, 1, 'CN', 'media/zh/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2144, 1, 'CN', 'media/zh/media', 'javascript.no_item.recent.title', '你还没有打开任何文档', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2145, 1, 'CN', 'media/zh/media', 'javascript.no_item.recent.message', '你打开的所有最近的文件都会出现在这里', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2146, 1, 'CN', 'media/zh/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2147, 1, 'CN', 'media/zh/media', 'javascript.no_item.default.title', '没有项目', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2148, 1, 'CN', 'media/zh/media', 'javascript.no_item.default.message', '这个目录没有项目', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2149, 1, 'CN', 'media/zh/media', 'javascript.clipboard.success', '这些文件链接已被复制到剪贴板', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2150, 1, 'CN', 'media/zh/media', 'javascript.message.error_header', '错误', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2151, 1, 'CN', 'media/zh/media', 'javascript.message.success_header', '成功', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2152, 1, 'CN', 'media/zh/media', 'javascript.download.error', '没有选择文件或无法下载这些文件', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2153, 1, 'CN', 'media/zh/media', 'javascript.actions_list.basic.preview', '预览', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2154, 1, 'CN', 'media/zh/media', 'javascript.actions_list.file.copy_link', '复制链接', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2155, 1, 'CN', 'media/zh/media', 'javascript.actions_list.file.rename', '重命名', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2156, 1, 'CN', 'media/zh/media', 'javascript.actions_list.file.make_copy', '制作副本', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2157, 1, 'CN', 'media/zh/media', 'javascript.actions_list.user.favorite', '加入收藏', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2158, 1, 'CN', 'media/zh/media', 'javascript.actions_list.user.remove_favorite', '删除收藏', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2159, 1, 'CN', 'media/zh/media', 'javascript.actions_list.other.download', '下载', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2160, 1, 'CN', 'media/zh/media', 'javascript.actions_list.other.trash', '移至回收站', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2161, 1, 'CN', 'media/zh/media', 'javascript.actions_list.other.delete', '永久删除', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2162, 1, 'CN', 'media/zh/media', 'javascript.actions_list.other.restore', '恢复', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2163, 1, 'en', 'plugins.analytics/analytics', 'sessions', 'Sessions', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2164, 1, 'en', 'plugins.analytics/analytics', 'visitors', 'Visitors', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2165, 1, 'en', 'plugins.analytics/analytics', 'pageviews', 'Pageviews', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2166, 1, 'en', 'plugins.analytics/analytics', 'bounce_rate', 'Bounce Rate', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2167, 1, 'en', 'plugins.analytics/analytics', 'page_session', 'Pages/Session', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2168, 1, 'en', 'plugins.analytics/analytics', 'avg_duration', 'Avg. Duration', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2169, 1, 'en', 'plugins.analytics/analytics', 'percent_new_session', 'Percent new session', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2170, 1, 'en', 'plugins.analytics/analytics', 'new_users', 'New visitors', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2171, 1, 'en', 'plugins.analytics/analytics', 'visits', 'visits', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2172, 1, 'en', 'plugins.analytics/analytics', 'views', 'views', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2173, 1, 'en', 'plugins.analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2174, 1, 'en', 'plugins.analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2175, 1, 'en', 'plugins.analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2176, 1, 'en', 'plugins.analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2177, 1, 'en', 'plugins.analytics/analytics', 'settings.title', 'Google Analytics', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2178, 1, 'en', 'plugins.analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2179, 1, 'en', 'plugins.analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2180, 1, 'en', 'plugins.analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2181, 1, 'en', 'plugins.analytics/analytics', 'settings.view_id', 'View ID', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2182, 1, 'en', 'plugins.analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2183, 1, 'en', 'plugins.analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2184, 1, 'en', 'plugins.analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2185, 1, 'en', 'plugins.analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2186, 1, 'en', 'plugins.analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2187, 1, 'en', 'plugins.analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2188, 1, 'en', 'plugins.analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2189, 1, 'vi', 'plugins.analytics/analytics', 'avg_duration', 'Trung bình', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2190, 1, 'vi', 'plugins.analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2191, 1, 'vi', 'plugins.analytics/analytics', 'page_session', 'Trang/Phiên', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2192, 1, 'vi', 'plugins.analytics/analytics', 'pageviews', 'Lượt xem', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2193, 1, 'vi', 'plugins.analytics/analytics', 'sessions', 'Phiên', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2194, 1, 'vi', 'plugins.analytics/analytics', 'views', 'lượt xem', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2195, 1, 'vi', 'plugins.analytics/analytics', 'visitors', 'Người truy cập', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2196, 1, 'vi', 'plugins.analytics/analytics', 'visits', 'lượt ghé thăm', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2197, 1, 'vi', 'plugins.analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2198, 1, 'vi', 'plugins.analytics/analytics', 'new_users', 'Lượt khách mới', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2199, 1, 'vi', 'plugins.analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2200, 1, 'vi', 'plugins.analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2201, 1, 'vi', 'plugins.analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2202, 1, 'vi', 'plugins.analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2203, 1, 'vi', 'plugins.analytics/analytics', 'settings.title', 'Google Analytics', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2204, 1, 'vi', 'plugins.analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2205, 1, 'vi', 'plugins.analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2206, 1, 'vi', 'plugins.analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2207, 1, 'vi', 'plugins.analytics/analytics', 'settings.view_id', 'View ID', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2208, 1, 'vi', 'plugins.analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2209, 1, 'vi', 'plugins.analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2210, 1, 'vi', 'plugins.analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2211, 1, 'vi', 'plugins.analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2212, 1, 'vi', 'plugins.analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2213, 1, 'vi', 'plugins.analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2214, 1, 'vi', 'plugins.analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2215, 1, 'CN', 'plugins.analytics/zh/analytics', 'sessions', '会话', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2216, 1, 'CN', 'plugins.analytics/zh/analytics', 'visitors', '访客', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2217, 1, 'CN', 'plugins.analytics/zh/analytics', 'pageviews', '浏览量', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2218, 1, 'CN', 'plugins.analytics/zh/analytics', 'bounce_rate', '弹出率', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2219, 1, 'CN', 'plugins.analytics/zh/analytics', 'page_session', '网页/会话', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2220, 1, 'CN', 'plugins.analytics/zh/analytics', 'avg_duration', '平均持续时间', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2221, 1, 'CN', 'plugins.analytics/zh/analytics', 'percent_new_session', '新会话百分比', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2222, 1, 'CN', 'plugins.analytics/zh/analytics', 'new_users', '新访客', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2223, 1, 'CN', 'plugins.analytics/zh/analytics', 'visits', '访问', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2224, 1, 'CN', 'plugins.analytics/zh/analytics', 'views', '查看', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2225, 1, 'CN', 'plugins.analytics/zh/analytics', 'view_id_not_specified', '您必须提供有效的视图ID。请查看文档：: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2226, 1, 'CN', 'plugins.analytics/zh/analytics', 'credential_is_not_valid', 'Google分析凭据无效。请查看文档: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2227, 1, 'CN', 'plugins.analytics/zh/analytics', 'start_date_can_not_before_end_date', '开始日期 :start_date 不能在结束日期 :end_date之后', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2228, 1, 'CN', 'plugins.analytics/zh/analytics', 'wrong_configuration', '要查看分析，您需要获取Google分析客户端ID并将其添加到您的设置中。 <br />你还需要JSON证书数据。 <br />请查看文档：: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2229, 1, 'en', 'plugins.audit-log/history', 'name', 'Activities Logs', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2230, 1, 'en', 'plugins.audit-log/history', 'created', 'created', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2231, 1, 'en', 'plugins.audit-log/history', 'updated', 'updated', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2232, 1, 'en', 'plugins.audit-log/history', 'deleted', 'deleted', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2233, 1, 'en', 'plugins.audit-log/history', 'logged in', 'logged in', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2234, 1, 'en', 'plugins.audit-log/history', 'logged out', 'logged out', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2235, 1, 'en', 'plugins.audit-log/history', 'changed password', 'changed password', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2236, 1, 'en', 'plugins.audit-log/history', 'updated profile', 'updated profile', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2237, 1, 'en', 'plugins.audit-log/history', 'attached', 'attached', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2238, 1, 'en', 'plugins.audit-log/history', 'shared', 'shared', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2239, 1, 'en', 'plugins.audit-log/history', 'to the system', 'to the system', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2240, 1, 'en', 'plugins.audit-log/history', 'of the system', 'of the system', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2241, 1, 'en', 'plugins.audit-log/history', 'menu', 'menu', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2242, 1, 'en', 'plugins.audit-log/history', 'post', 'post', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2243, 1, 'en', 'plugins.audit-log/history', 'page', 'page', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2244, 1, 'en', 'plugins.audit-log/history', 'category', 'category', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2245, 1, 'en', 'plugins.audit-log/history', 'tag', 'tag', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2246, 1, 'en', 'plugins.audit-log/history', 'user', 'user', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2247, 1, 'en', 'plugins.audit-log/history', 'contact', 'contact', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2248, 1, 'en', 'plugins.audit-log/history', 'backup', 'backup', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2249, 1, 'en', 'plugins.audit-log/history', 'custom-field', 'custom field', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2250, 1, 'en', 'plugins.audit-log/history', 'widget_audit_logs', 'Activities Logs', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2251, 1, 'en', 'plugins.audit-log/history', 'action', 'Action', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2252, 1, 'en', 'plugins.audit-log/history', 'user_agent', 'User Agent', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2253, 1, 'vi', 'plugins.audit-log/history', 'name', 'Lịch sử hoạt động', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2254, 1, 'vi', 'plugins.audit-log/history', 'created', ' đã tạo', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2255, 1, 'vi', 'plugins.audit-log/history', 'updated', ' đã cập nhật', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2256, 1, 'vi', 'plugins.audit-log/history', 'deleted', ' đã xóa', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2257, 1, 'vi', 'plugins.audit-log/history', 'attached', 'đính kèm', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2258, 1, 'vi', 'plugins.audit-log/history', 'backup', 'sao lưu', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2259, 1, 'vi', 'plugins.audit-log/history', 'category', 'danh mục', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2260, 1, 'vi', 'plugins.audit-log/history', 'changed password', 'thay đổi mật khẩu', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2261, 1, 'vi', 'plugins.audit-log/history', 'contact', 'liên hệ', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2262, 1, 'vi', 'plugins.audit-log/history', 'custom-field', 'khung mở rộng', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2263, 1, 'vi', 'plugins.audit-log/history', 'logged in', 'đăng nhập', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2264, 1, 'vi', 'plugins.audit-log/history', 'logged out', 'đăng xuất', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2265, 1, 'vi', 'plugins.audit-log/history', 'menu', 'trình đơn', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2266, 1, 'vi', 'plugins.audit-log/history', 'of the system', 'khỏi hệ thống', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2267, 1, 'vi', 'plugins.audit-log/history', 'page', 'trang', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2268, 1, 'vi', 'plugins.audit-log/history', 'post', 'bài viết', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2269, 1, 'vi', 'plugins.audit-log/history', 'shared', 'đã chia sẻ', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2270, 1, 'vi', 'plugins.audit-log/history', 'tag', 'thẻ', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2271, 1, 'vi', 'plugins.audit-log/history', 'to the system', 'vào hệ thống', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2272, 1, 'vi', 'plugins.audit-log/history', 'updated profile', 'cập nhật tài khoản', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2273, 1, 'vi', 'plugins.audit-log/history', 'user', 'thành viên', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2274, 1, 'vi', 'plugins.audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2275, 1, 'CN', 'plugins.audit-log/zh/history', 'name', '历史记录', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2276, 1, 'CN', 'plugins.audit-log/zh/history', 'created', '创建', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2277, 1, 'CN', 'plugins.audit-log/zh/history', 'updated', '更新', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2278, 1, 'CN', 'plugins.audit-log/zh/history', 'deleted', '已删除', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2279, 1, 'CN', 'plugins.audit-log/zh/history', 'logged in', '登录', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2280, 1, 'CN', 'plugins.audit-log/zh/history', 'logged out', '退出', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2281, 1, 'CN', 'plugins.audit-log/zh/history', 'changed password', '更改密码', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2282, 1, 'CN', 'plugins.audit-log/zh/history', 'updated profile', '更新个人资料', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2283, 1, 'CN', 'plugins.audit-log/zh/history', 'attached', '附加', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2284, 1, 'CN', 'plugins.audit-log/zh/history', 'shared', '分享', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2285, 1, 'CN', 'plugins.audit-log/zh/history', 'to the system', '系统', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2286, 1, 'CN', 'plugins.audit-log/zh/history', 'of the system', '系统', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2287, 1, 'CN', 'plugins.audit-log/zh/history', 'menu', '菜单', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2288, 1, 'CN', 'plugins.audit-log/zh/history', 'post', '发布', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2289, 1, 'CN', 'plugins.audit-log/zh/history', 'page', '页面', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2290, 1, 'CN', 'plugins.audit-log/zh/history', 'category', '类别', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2291, 1, 'CN', 'plugins.audit-log/zh/history', 'tag', '标签', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2292, 1, 'CN', 'plugins.audit-log/zh/history', 'user', '用户', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2293, 1, 'CN', 'plugins.audit-log/zh/history', 'contact', '联系人', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2294, 1, 'CN', 'plugins.audit-log/zh/history', 'backup', '备份', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2295, 1, 'CN', 'plugins.audit-log/zh/history', 'custom-field', '自定义字段', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2296, 1, 'en', 'plugins.backup/backup', 'name', 'Backup', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2297, 1, 'en', 'plugins.backup/backup', 'backup_description', 'Backup database and uploads folder.', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2298, 1, 'en', 'plugins.backup/backup', 'create_backup_success', 'Created backup successfully!', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2299, 1, 'en', 'plugins.backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2300, 1, 'en', 'plugins.backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2301, 1, 'en', 'plugins.backup/backup', 'generate_btn', 'Generate backup', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2302, 1, 'en', 'plugins.backup/backup', 'create', 'Create backup', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2303, 1, 'en', 'plugins.backup/backup', 'restore', 'Restore backup', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2304, 1, 'en', 'plugins.backup/backup', 'create_btn', 'Create', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2305, 1, 'en', 'plugins.backup/backup', 'restore_btn', 'Restore', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2306, 1, 'en', 'plugins.backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2307, 1, 'en', 'plugins.backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2308, 1, 'en', 'plugins.backup/backup', 'download_database', 'Download backup of database', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2309, 1, 'en', 'plugins.backup/backup', 'restore_tooltip', 'Restore this backup', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2310, 1, 'en', 'plugins.backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2311, 1, 'en', 'plugins.backup/backup', 'menu_name', 'Backups', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2312, 1, 'en', 'plugins.backup/backup', 'settings.title', 'Backup', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2313, 1, 'en', 'plugins.backup/backup', 'settings.description', 'Settings for backup function', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2314, 1, 'en', 'plugins.backup/backup', 'settings.backup_mysql_execute_path', 'MySQL execute path', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2315, 1, 'en', 'plugins.backup/backup', 'settings.backup_mysql_execute_path_placeholder', 'Default: /usr/mysql/bin. Ignore it if you don\'t sure about it', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2316, 1, 'vi', 'plugins.backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2317, 1, 'vi', 'plugins.backup/backup', 'create', 'Tạo bản sao lưu', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2318, 1, 'vi', 'plugins.backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2319, 1, 'vi', 'plugins.backup/backup', 'create_btn', 'Tạo', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2320, 1, 'vi', 'plugins.backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2321, 1, 'vi', 'plugins.backup/backup', 'generate_btn', 'Tạo sao lưu', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2322, 1, 'vi', 'plugins.backup/backup', 'name', 'Sao lưu', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2323, 1, 'vi', 'plugins.backup/backup', 'restore', 'Khôi phục bản sao lưu', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2324, 1, 'vi', 'plugins.backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2325, 1, 'vi', 'plugins.backup/backup', 'restore_btn', 'Khôi phục', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2326, 1, 'vi', 'plugins.backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2327, 1, 'vi', 'plugins.backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2328, 1, 'vi', 'plugins.backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2329, 1, 'vi', 'plugins.backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2330, 1, 'vi', 'plugins.backup/backup', 'menu_name', 'Sao lưu', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2331, 1, 'vi', 'plugins.backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2332, 1, 'CN', 'plugins.backup/zh/backup', 'name', '备份', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2333, 1, 'CN', 'plugins.backup/zh/backup', 'backup_description', '备份数据库并上传文件夹。', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2334, 1, 'CN', 'plugins.backup/zh/backup', 'create_backup_success', '创建备份成功！', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2335, 1, 'CN', 'plugins.backup/zh/backup', 'delete_backup_success', '删除备份成功！', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2336, 1, 'CN', 'plugins.backup/zh/backup', 'restore_backup_success', '成功恢复备份！', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2337, 1, 'CN', 'plugins.backup/zh/backup', 'generate_btn', '生成备份', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2338, 1, 'CN', 'plugins.backup/zh/backup', 'create', '创建备份', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2339, 1, 'CN', 'plugins.backup/zh/backup', 'restore', '恢复备份', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2340, 1, 'CN', 'plugins.backup/zh/backup', 'create_btn', '创建', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2341, 1, 'CN', 'plugins.backup/zh/backup', 'restore_btn', '恢复', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2342, 1, 'CN', 'plugins.backup/zh/backup', 'restore_confirm_msg', '您确认需要恢复这个版本吗？', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2343, 1, 'CN', 'plugins.backup/zh/backup', 'download_uploads_folder', '下载上传文件夹的备份', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2344, 1, 'CN', 'plugins.backup/zh/backup', 'download_database', '下载数据库的备份', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2345, 1, 'CN', 'plugins.backup/zh/backup', 'restore_tooltip', '恢复此备份', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2346, 1, 'CN', 'plugins.backup/zh/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2347, 1, 'CN', 'plugins.backup/zh/backup', 'menu_name', '备份', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2348, 1, 'en', 'plugins.block/block', 'name', 'Block', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2349, 1, 'en', 'plugins.block/block', 'create', 'New block', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2350, 1, 'en', 'plugins.block/block', 'edit', 'Edit block', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2351, 1, 'en', 'plugins.block/block', 'menu', 'Static Blocks', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2352, 1, 'vi', 'plugins.block/block', 'name', 'Nội dung tĩnh', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2353, 1, 'vi', 'plugins.block/block', 'create', 'Thêm nội dung tĩnh', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2354, 1, 'vi', 'plugins.block/block', 'edit', 'Sửa nội dung tĩnh', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2355, 1, 'vi', 'plugins.block/block', 'list', 'Danh sách nội dung tĩnh', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2356, 1, 'vi', 'plugins.block/block', 'menu', 'Nội dung tĩnh', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2357, 1, 'CN', 'plugins.block/zh/block', 'name', '块', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2358, 1, 'CN', 'plugins.block/zh/block', 'create', '新建块', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2359, 1, 'CN', 'plugins.block/zh/block', 'edit', '编辑块', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2360, 1, 'CN', 'plugins.block/zh/block', 'list', '块列表', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2361, 1, 'CN', 'plugins.block/zh/block', 'menu', '静态块', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2362, 1, 'en', 'plugins.blog/base', 'menu_name', 'Blog', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2363, 1, 'en', 'plugins.blog/categories', 'create', 'Create new category', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2364, 1, 'en', 'plugins.blog/categories', 'edit', 'Edit category', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2365, 1, 'en', 'plugins.blog/categories', 'menu', 'Categories', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2366, 1, 'en', 'plugins.blog/categories', 'edit_this_category', 'Edit this category', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2367, 1, 'en', 'plugins.blog/categories', 'menu_name', 'Categories', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2368, 1, 'en', 'plugins.blog/categories', 'none', 'None', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2369, 1, 'en', 'plugins.blog/posts', 'model', 'Post', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2370, 1, 'en', 'plugins.blog/posts', 'models', 'Posts', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2371, 1, 'en', 'plugins.blog/posts', 'create', 'Create new post', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2372, 1, 'en', 'plugins.blog/posts', 'edit', 'Edit post', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2373, 1, 'en', 'plugins.blog/posts', 'form.name', 'Name', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2374, 1, 'en', 'plugins.blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2375, 1, 'en', 'plugins.blog/posts', 'form.description', 'Description', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2376, 1, 'en', 'plugins.blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2377, 1, 'en', 'plugins.blog/posts', 'form.categories', 'Categories', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2378, 1, 'en', 'plugins.blog/posts', 'form.tags', 'Tags', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2379, 1, 'en', 'plugins.blog/posts', 'form.tags_placeholder', 'Tags', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2380, 1, 'en', 'plugins.blog/posts', 'form.content', 'Content', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2381, 1, 'en', 'plugins.blog/posts', 'form.featured', 'Is featured?', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2382, 1, 'en', 'plugins.blog/posts', 'form.note', 'Note content', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2383, 1, 'en', 'plugins.blog/posts', 'form.format_type', 'Format', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2384, 1, 'en', 'plugins.blog/posts', 'cannot_delete', 'Post could not be deleted', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2385, 1, 'en', 'plugins.blog/posts', 'post_deleted', 'Post deleted', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2386, 1, 'en', 'plugins.blog/posts', 'posts', 'Posts', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2387, 1, 'en', 'plugins.blog/posts', 'edit_this_post', 'Edit this post', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2388, 1, 'en', 'plugins.blog/posts', 'no_new_post_now', 'There is no new post now!', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2389, 1, 'en', 'plugins.blog/posts', 'menu_name', 'Posts', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2390, 1, 'en', 'plugins.blog/posts', 'widget_posts_recent', 'Recent Posts', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2391, 1, 'en', 'plugins.blog/posts', 'categories', 'Categories', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2392, 1, 'en', 'plugins.blog/tags', 'model', 'Tag', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2393, 1, 'en', 'plugins.blog/tags', 'models', 'Tags', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2394, 1, 'en', 'plugins.blog/tags', 'form.name', 'Name', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2395, 1, 'en', 'plugins.blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2396, 1, 'en', 'plugins.blog/tags', 'form.description', 'Description', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2397, 1, 'en', 'plugins.blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2398, 1, 'en', 'plugins.blog/tags', 'form.categories', 'Categories', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2399, 1, 'en', 'plugins.blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2400, 1, 'en', 'plugins.blog/tags', 'create', 'Create new tag', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2401, 1, 'en', 'plugins.blog/tags', 'edit', 'Edit tag', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2402, 1, 'en', 'plugins.blog/tags', 'cannot_delete', 'Tag could not be deleted', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2403, 1, 'en', 'plugins.blog/tags', 'deleted', 'Tag deleted', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2404, 1, 'en', 'plugins.blog/tags', 'menu', 'Tags', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2405, 1, 'en', 'plugins.blog/tags', 'edit_this_tag', 'Edit this tag', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2406, 1, 'en', 'plugins.blog/tags', 'menu_name', 'Tags', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2407, 1, 'vi', 'plugins.blog/base', 'menu_name', 'Blog', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2408, 1, 'vi', 'plugins.blog/categories', 'model', 'Danh mục', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2409, 1, 'vi', 'plugins.blog/categories', 'models', 'Danh mục', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2410, 1, 'vi', 'plugins.blog/categories', 'list', 'Danh sách danh mục', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2411, 1, 'vi', 'plugins.blog/categories', 'create', 'Thêm danh mục mới', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2412, 1, 'vi', 'plugins.blog/categories', 'edit', 'Sửa danh mục', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2413, 1, 'vi', 'plugins.blog/categories', 'menu_name', 'Danh mục', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2414, 1, 'vi', 'plugins.blog/categories', 'edit_this_category', 'Sửa danh mục này', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2415, 1, 'vi', 'plugins.blog/categories', 'menu', 'Danh mục', '2018-09-12 18:39:25', '2018-09-12 18:39:25'),
(2416, 1, 'vi', 'plugins.blog/posts', 'model', 'Bài viết', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2417, 1, 'vi', 'plugins.blog/posts', 'models', 'Bài viết', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2418, 1, 'vi', 'plugins.blog/posts', 'list', 'Danh sách bài viết', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2419, 1, 'vi', 'plugins.blog/posts', 'create', 'Thêm bài viết', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2420, 1, 'vi', 'plugins.blog/posts', 'edit', 'Sửa bài viết', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2421, 1, 'vi', 'plugins.blog/posts', 'form.name', 'Tên', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2422, 1, 'vi', 'plugins.blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2423, 1, 'vi', 'plugins.blog/posts', 'form.description', 'Mô tả', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2424, 1, 'vi', 'plugins.blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2425, 1, 'vi', 'plugins.blog/posts', 'form.categories', 'Chuyên mục', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2426, 1, 'vi', 'plugins.blog/posts', 'form.tags', 'Từ khóa', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2427, 1, 'vi', 'plugins.blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2428, 1, 'vi', 'plugins.blog/posts', 'form.content', 'Nội dung', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2429, 1, 'vi', 'plugins.blog/posts', 'form.featured', 'Bài viết nổi bật?', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2430, 1, 'vi', 'plugins.blog/posts', 'form.note', 'Nội dung ghi chú', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2431, 1, 'vi', 'plugins.blog/posts', 'form.format_type', 'Định dạng', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2432, 1, 'vi', 'plugins.blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2433, 1, 'vi', 'plugins.blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2434, 1, 'vi', 'plugins.blog/posts', 'menu_name', 'Bài viết', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2435, 1, 'vi', 'plugins.blog/posts', 'edit_this_post', 'Sửa bài viết này', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2436, 1, 'vi', 'plugins.blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2437, 1, 'vi', 'plugins.blog/posts', 'posts', 'Bài viết', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2438, 1, 'vi', 'plugins.blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2439, 1, 'vi', 'plugins.blog/tags', 'model', 'Thẻ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2440, 1, 'vi', 'plugins.blog/tags', 'models', 'Thẻ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2441, 1, 'vi', 'plugins.blog/tags', 'list', 'Danh sách thẻ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2442, 1, 'vi', 'plugins.blog/tags', 'create', 'Thêm thẻ mới', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2443, 1, 'vi', 'plugins.blog/tags', 'edit', 'Sửa thẻ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2444, 1, 'vi', 'plugins.blog/tags', 'form.name', 'Tên', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2445, 1, 'vi', 'plugins.blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2446, 1, 'vi', 'plugins.blog/tags', 'form.description', 'Mô tả', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2447, 1, 'vi', 'plugins.blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2448, 1, 'vi', 'plugins.blog/tags', 'form.categories', 'Chuyên mục', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2449, 1, 'vi', 'plugins.blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2450, 1, 'vi', 'plugins.blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2018-09-12 18:39:26', '2018-09-12 18:39:26');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2451, 1, 'vi', 'plugins.blog/tags', 'deleted', 'Xóa thẻ thành công', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2452, 1, 'vi', 'plugins.blog/tags', 'menu_name', 'Thẻ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2453, 1, 'vi', 'plugins.blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2454, 1, 'vi', 'plugins.blog/tags', 'menu', 'Thẻ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2455, 1, 'CN', 'plugins.blog/zh/base', 'menu_name', '新闻', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2456, 1, 'CN', 'plugins.blog/zh/categories', 'model', '栏目', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2457, 1, 'CN', 'plugins.blog/zh/categories', 'models', '栏目', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2458, 1, 'CN', 'plugins.blog/zh/categories', 'create', '创建新栏目', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2459, 1, 'CN', 'plugins.blog/zh/categories', 'edit', '编辑栏目', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2460, 1, 'CN', 'plugins.blog/zh/categories', 'list', '栏目列表', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2461, 1, 'CN', 'plugins.blog/zh/categories', 'menu', '栏目', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2462, 1, 'CN', 'plugins.blog/zh/categories', 'edit_this_category', '编辑此栏目', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2463, 1, 'CN', 'plugins.blog/zh/categories', 'menu_name', '栏目', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2464, 1, 'CN', 'plugins.blog/zh/posts', 'model', '文章', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2465, 1, 'CN', 'plugins.blog/zh/posts', 'models', '文章', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2466, 1, 'CN', 'plugins.blog/zh/posts', 'list', '文章列表', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2467, 1, 'CN', 'plugins.blog/zh/posts', 'create', '创建新文章', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2468, 1, 'CN', 'plugins.blog/zh/posts', 'edit', '文章编辑', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2469, 1, 'CN', 'plugins.blog/zh/posts', 'form.name', '名称', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2470, 1, 'CN', 'plugins.blog/zh/posts', 'form.name_placeholder', '文章名称 (最多:c字符)', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2471, 1, 'CN', 'plugins.blog/zh/posts', 'form.description', '描述', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2472, 1, 'CN', 'plugins.blog/zh/posts', 'form.description_placeholder', '文章简短描述（最多:c字符）', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2473, 1, 'CN', 'plugins.blog/zh/posts', 'form.categories', '栏目', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2474, 1, 'CN', 'plugins.blog/zh/posts', 'form.tags', '标签', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2475, 1, 'CN', 'plugins.blog/zh/posts', 'form.tags_placeholder', '标签', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2476, 1, 'CN', 'plugins.blog/zh/posts', 'form.content', '内容', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2477, 1, 'CN', 'plugins.blog/zh/posts', 'form.featured', '精选?', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2478, 1, 'CN', 'plugins.blog/zh/posts', 'form.note', '备注内容', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2479, 1, 'CN', 'plugins.blog/zh/posts', 'form.format_type', '格式', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2480, 1, 'CN', 'plugins.blog/zh/posts', 'cannot_delete', '文章无法删除', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2481, 1, 'CN', 'plugins.blog/zh/posts', 'post_deleted', '文章已删除', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2482, 1, 'CN', 'plugins.blog/zh/posts', 'posts', '文章', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2483, 1, 'CN', 'plugins.blog/zh/posts', 'edit_this_post', '编辑文章', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2484, 1, 'CN', 'plugins.blog/zh/posts', 'no_new_post_now', '没有新文章!', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2485, 1, 'CN', 'plugins.blog/zh/posts', 'menu_name', '文章', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2486, 1, 'CN', 'plugins.blog/zh/tags', 'model', '标签', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2487, 1, 'CN', 'plugins.blog/zh/tags', 'models', '标签', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2488, 1, 'CN', 'plugins.blog/zh/tags', 'form.name', '名称', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2489, 1, 'CN', 'plugins.blog/zh/tags', 'form.name_placeholder', '标签名称 (最多120字符)', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2490, 1, 'CN', 'plugins.blog/zh/tags', 'form.description', '描述', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2491, 1, 'CN', 'plugins.blog/zh/tags', 'form.description_placeholder', '标签简短描述（最多400字符）', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2492, 1, 'CN', 'plugins.blog/zh/tags', 'form.categories', '类别', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2493, 1, 'CN', 'plugins.blog/zh/tags', 'notices.no_select', '请至少选择一个标签操作!', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2494, 1, 'CN', 'plugins.blog/zh/tags', 'create', '创建新标签', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2495, 1, 'CN', 'plugins.blog/zh/tags', 'edit', '修改', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2496, 1, 'CN', 'plugins.blog/zh/tags', 'list', '列表', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2497, 1, 'CN', 'plugins.blog/zh/tags', 'cannot_delete', '无法删除标签', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2498, 1, 'CN', 'plugins.blog/zh/tags', 'deleted', '标签已删除', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2499, 1, 'CN', 'plugins.blog/zh/tags', 'menu', '标签', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2500, 1, 'CN', 'plugins.blog/zh/tags', 'edit_this_tag', '编辑此标签', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2501, 1, 'CN', 'plugins.blog/zh/tags', 'menu_name', '标签', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2502, 1, 'en', 'plugins.captcha/captcha', 'settings.title', 'Captcha', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2503, 1, 'en', 'plugins.captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2504, 1, 'en', 'plugins.captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2505, 1, 'en', 'plugins.captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2506, 1, 'en', 'plugins.captcha/captcha', 'settings.enable_captcha', 'Enable Captcha, show Captcha in contact form?', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2507, 1, 'vi', 'plugins.captcha/captcha', 'settings.title', 'Captcha', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2508, 1, 'vi', 'plugins.captcha/captcha', 'settings.description', 'Cài đặt cho Google Captcha', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2509, 1, 'vi', 'plugins.captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2510, 1, 'vi', 'plugins.captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2511, 1, 'vi', 'plugins.captcha/captcha', 'settings.enable_captcha', 'Bật Captcha, hiển thị Captcha trong form liên hệ?', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2512, 1, 'vi', 'plugins.captcha/captcha', 'settings.helper', 'Truy cập https://www.google.com/recaptcha/admin#list để lấy thông tin về Site key và Secret. Hãy chọn reCaptcha v2.', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2513, 1, 'en', 'plugins.contact/contact', 'menu', 'Contact', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2514, 1, 'en', 'plugins.contact/contact', 'model', 'Contact', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2515, 1, 'en', 'plugins.contact/contact', 'models', 'Contact', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2516, 1, 'en', 'plugins.contact/contact', 'edit', 'View contact', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2517, 1, 'en', 'plugins.contact/contact', 'tables.phone', 'Phone', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2518, 1, 'en', 'plugins.contact/contact', 'tables.email', 'Email', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2519, 1, 'en', 'plugins.contact/contact', 'tables.fullname', 'Fullname', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2520, 1, 'en', 'plugins.contact/contact', 'tables.address', 'Address', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2521, 1, 'en', 'plugins.contact/contact', 'tables.subject', 'Subject', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2522, 1, 'en', 'plugins.contact/contact', 'tables.content', 'Content', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2523, 1, 'en', 'plugins.contact/contact', 'form.is_read', 'Read?', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2524, 1, 'en', 'plugins.contact/contact', 'form.status', 'Status', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2525, 1, 'en', 'plugins.contact/contact', 'notices.no_select', 'Please select at least one contact to take this action!', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2526, 1, 'en', 'plugins.contact/contact', 'notices.update_success_message', 'Update successfully', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2527, 1, 'en', 'plugins.contact/contact', 'cannot_delete', 'Contact could not be deleted', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2528, 1, 'en', 'plugins.contact/contact', 'deleted', 'Contact deleted', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2529, 1, 'en', 'plugins.contact/contact', 'contact_information', 'Contact information', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2530, 1, 'en', 'plugins.contact/contact', 'email.header', 'Email', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2531, 1, 'en', 'plugins.contact/contact', 'email.title', 'New contact from your site', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2532, 1, 'en', 'plugins.contact/contact', 'email.success', 'Send message successfully!', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2533, 1, 'en', 'plugins.contact/contact', 'email.failed', 'Can\'t send message on this time, please try again later!', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2534, 1, 'en', 'plugins.contact/contact', 'name.required', 'Name is required', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2535, 1, 'en', 'plugins.contact/contact', 'email.required', 'Email is required', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2536, 1, 'en', 'plugins.contact/contact', 'email.email', 'The email address is not valid', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2537, 1, 'en', 'plugins.contact/contact', 'content.required', 'Content is required', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2538, 1, 'en', 'plugins.contact/contact', 'g-recaptcha-response.required', 'Please confirm you are not a robot before send message.', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2539, 1, 'en', 'plugins.contact/contact', 'g-recaptcha-response.captcha', 'You are not confirm robot yet.', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2540, 1, 'en', 'plugins.contact/contact', 'contact_sent_from', 'This contact information sent from', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2541, 1, 'en', 'plugins.contact/contact', 'sender', 'Sender', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2542, 1, 'en', 'plugins.contact/contact', 'sender_email', 'Email', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2543, 1, 'en', 'plugins.contact/contact', 'sender_address', 'Address', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2544, 1, 'en', 'plugins.contact/contact', 'sender_phone', 'Phone', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2545, 1, 'en', 'plugins.contact/contact', 'message_content', 'Message content', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2546, 1, 'en', 'plugins.contact/contact', 'sent_from', 'Email sent from', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2547, 1, 'en', 'plugins.contact/contact', 'form_name', 'Name', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2548, 1, 'en', 'plugins.contact/contact', 'form_email', 'Email', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2549, 1, 'en', 'plugins.contact/contact', 'form_address', 'Address', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2550, 1, 'en', 'plugins.contact/contact', 'form_subject', 'Subject', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2551, 1, 'en', 'plugins.contact/contact', 'form_phone', 'Phone', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2552, 1, 'en', 'plugins.contact/contact', 'form_message', 'Message', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2553, 1, 'en', 'plugins.contact/contact', 'confirm_not_robot', 'Please confirm you are not robot', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2554, 1, 'en', 'plugins.contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2555, 1, 'en', 'plugins.contact/contact', 'send_btn', 'Send message', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2556, 1, 'en', 'plugins.contact/contact', 'mark_as_read', 'Mark as read', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2557, 1, 'en', 'plugins.contact/contact', 'mark_as_unread', 'Mark as unread', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2558, 1, 'en', 'plugins.contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2559, 1, 'en', 'plugins.contact/contact', 'view_all', 'View all', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2560, 1, 'en', 'plugins.contact/contact', 'read', 'Read', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2561, 1, 'en', 'plugins.contact/contact', 'unread', 'UnRead', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2562, 1, 'en', 'plugins.contact/contact', 'phone', 'Phone', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2563, 1, 'en', 'plugins.contact/contact', 'address', 'Address', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2564, 1, 'en', 'plugins.contact/contact', 'message', 'Message', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2565, 1, 'en', 'plugins.contact/contact', 'settings.email.title', 'Contact', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2566, 1, 'en', 'plugins.contact/contact', 'settings.email.description', 'Contact email configuration', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2567, 1, 'en', 'plugins.contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2568, 1, 'en', 'plugins.contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2569, 1, 'vi', 'plugins.contact/contact', 'menu', 'Liên hệ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2570, 1, 'vi', 'plugins.contact/contact', 'model', 'Liên hệ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2571, 1, 'vi', 'plugins.contact/contact', 'models', 'Liên hệ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2572, 1, 'vi', 'plugins.contact/contact', 'list', 'Danh sách liên hệ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2573, 1, 'vi', 'plugins.contact/contact', 'edit', 'Xem liên hệ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2574, 1, 'vi', 'plugins.contact/contact', 'tables.phone', 'Điện thoại', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2575, 1, 'vi', 'plugins.contact/contact', 'tables.email', 'Email', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2576, 1, 'vi', 'plugins.contact/contact', 'tables.fullname', 'Họ tên', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2577, 1, 'vi', 'plugins.contact/contact', 'tables.address', 'Địa địa chỉ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2578, 1, 'vi', 'plugins.contact/contact', 'tables.subject', 'Tiêu đề', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2579, 1, 'vi', 'plugins.contact/contact', 'tables.content', 'Nội dung', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2580, 1, 'vi', 'plugins.contact/contact', 'form.is_read', 'Đã xem?', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2581, 1, 'vi', 'plugins.contact/contact', 'form.status', 'Trạng thái', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2582, 1, 'vi', 'plugins.contact/contact', 'notices.no_select', 'Chọn ít nhất 1 liên hệ để thực hiện hành động này!', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2583, 1, 'vi', 'plugins.contact/contact', 'notices.update_success_message', 'Cập nhật thành công', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2584, 1, 'vi', 'plugins.contact/contact', 'cannot_delete', 'Không thể xóa liên hệ này', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2585, 1, 'vi', 'plugins.contact/contact', 'deleted', 'Liên hệ đã được xóa', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2586, 1, 'vi', 'plugins.contact/contact', 'contact_information', 'Thông tin liên hệ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2587, 1, 'vi', 'plugins.contact/contact', 'email.title', 'Thông tin liên hệ mới', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2588, 1, 'vi', 'plugins.contact/contact', 'email.success', 'Gửi tin nhắn thành công!', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2589, 1, 'vi', 'plugins.contact/contact', 'email.failed', 'Có lỗi trong quá trình gửi tin nhắn!', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2590, 1, 'vi', 'plugins.contact/contact', 'email.required', 'Email không được để trống', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2591, 1, 'vi', 'plugins.contact/contact', 'email.email', 'Địa chỉ email không hợp lệ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2592, 1, 'vi', 'plugins.contact/contact', 'email.header', 'Email', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2593, 1, 'vi', 'plugins.contact/contact', 'name.required', 'Họ tên không được để trống', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2594, 1, 'vi', 'plugins.contact/contact', 'content.required', 'Nội dung tin nhắn không được để trống', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2595, 1, 'vi', 'plugins.contact/contact', 'g-recaptcha-response.required', 'Hãy xác minh không phải là robot trước khi gửi tin nhắn.', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2596, 1, 'vi', 'plugins.contact/contact', 'g-recaptcha-response.captcha', 'Bạn chưa xác minh không phải là robot thành công.', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2597, 1, 'vi', 'plugins.contact/contact', 'confirm_not_robot', 'Xác nhận không phải người máy', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2598, 1, 'vi', 'plugins.contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2599, 1, 'vi', 'plugins.contact/contact', 'form_address', 'Địa chỉ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2600, 1, 'vi', 'plugins.contact/contact', 'form_email', 'Thư điện tử', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2601, 1, 'vi', 'plugins.contact/contact', 'form_message', 'Thông điệp', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2602, 1, 'vi', 'plugins.contact/contact', 'form_name', 'Họ tên', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2603, 1, 'vi', 'plugins.contact/contact', 'form_phone', 'Số điện thoại', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2604, 1, 'vi', 'plugins.contact/contact', 'message_content', 'Nội dung thông điệp', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2605, 1, 'vi', 'plugins.contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2606, 1, 'vi', 'plugins.contact/contact', 'send_btn', 'Gửi tin nhắn', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2607, 1, 'vi', 'plugins.contact/contact', 'sender', 'Người gửi', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2608, 1, 'vi', 'plugins.contact/contact', 'sender_address', 'Địa chỉ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2609, 1, 'vi', 'plugins.contact/contact', 'sender_email', 'Thư điện tử', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2610, 1, 'vi', 'plugins.contact/contact', 'sender_phone', 'Số điện thoại', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2611, 1, 'vi', 'plugins.contact/contact', 'sent_from', 'Thư được gửi từ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2612, 1, 'vi', 'plugins.contact/contact', 'mark_as_read', 'Đánh dấu đã đọc', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2613, 1, 'vi', 'plugins.contact/contact', 'mark_as_unread', 'Đánh dấu chưa đọc', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2614, 1, 'vi', 'plugins.contact/contact', 'address', 'Địa chỉ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2615, 1, 'vi', 'plugins.contact/contact', 'message', 'Liên hệ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2616, 1, 'vi', 'plugins.contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2617, 1, 'vi', 'plugins.contact/contact', 'phone', 'Điện thoại', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2618, 1, 'vi', 'plugins.contact/contact', 'read', 'Đã đọc', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2619, 1, 'vi', 'plugins.contact/contact', 'unread', 'Chưa đọc', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2620, 1, 'vi', 'plugins.contact/contact', 'view_all', 'Xem tất cả', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2621, 1, 'vi', 'plugins.contact/contact', 'settings.email.title', 'Liên hệ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2622, 1, 'vi', 'plugins.contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2623, 1, 'vi', 'plugins.contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2624, 1, 'vi', 'plugins.contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2625, 1, 'CN', 'plugins.contact/zh/contact', 'menu', '联系人', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2626, 1, 'CN', 'plugins.contact/zh/contact', 'model', '联系', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2627, 1, 'CN', 'plugins.contact/zh/contact', 'models', '联系', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2628, 1, 'CN', 'plugins.contact/zh/contact', 'list', '联系人列表', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2629, 1, 'CN', 'plugins.contact/zh/contact', 'edit', '查看联系人', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2630, 1, 'CN', 'plugins.contact/zh/contact', 'tables.phone', '电话', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2631, 1, 'CN', 'plugins.contact/zh/contact', 'tables.email', '电子邮件', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2632, 1, 'CN', 'plugins.contact/zh/contact', 'tables.fullname', '全名', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2633, 1, 'CN', 'plugins.contact/zh/contact', 'tables.address', '地址', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2634, 1, 'CN', 'plugins.contact/zh/contact', 'tables.content', '内容', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2635, 1, 'CN', 'plugins.contact/zh/contact', 'form.is_read', '已阅读?', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2636, 1, 'CN', 'plugins.contact/zh/contact', 'form.status', '状态', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2637, 1, 'CN', 'plugins.contact/zh/contact', 'notices.no_select', '请至少选择一个联系人进行此操作！', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2638, 1, 'CN', 'plugins.contact/zh/contact', 'notices.update_success_message', '更新成功', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2639, 1, 'CN', 'plugins.contact/zh/contact', 'cannot_delete', '联系人无法删除', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2640, 1, 'CN', 'plugins.contact/zh/contact', 'deleted', '联系人已删除', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2641, 1, 'CN', 'plugins.contact/zh/contact', 'contact_information', '联系信息', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2642, 1, 'CN', 'plugins.contact/zh/contact', 'email.header', '电子邮件', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2643, 1, 'CN', 'plugins.contact/zh/contact', 'email.title', '您网站有新联系人', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2644, 1, 'CN', 'plugins.contact/zh/contact', 'email.success', '发送信息成功！', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2645, 1, 'CN', 'plugins.contact/zh/contact', 'email.failed', '此时不能发送消息，请稍后再试!', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2646, 1, 'CN', 'plugins.contact/zh/contact', 'email.required', '需要电子邮件', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2647, 1, 'CN', 'plugins.contact/zh/contact', 'email.email', '电子邮件地址无效', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2648, 1, 'CN', 'plugins.contact/zh/contact', 'name.required', '姓名是必需的', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2649, 1, 'CN', 'plugins.contact/zh/contact', 'content.required', '内容是必需的', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2650, 1, 'CN', 'plugins.contact/zh/contact', 'g-recaptcha-response.required', '请在发送消息之前确认您不是机器人。', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2651, 1, 'CN', 'plugins.contact/zh/contact', 'g-recaptcha-response.captcha', '你还没有确认是否是机器人。', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2652, 1, 'CN', 'plugins.contact/zh/contact', 'contact_sent_from', '此联系人信息发送', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2653, 1, 'CN', 'plugins.contact/zh/contact', 'sender', '发件人', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2654, 1, 'CN', 'plugins.contact/zh/contact', 'sender_email', '电子邮件', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2655, 1, 'CN', 'plugins.contact/zh/contact', 'sender_address', '地址', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2656, 1, 'CN', 'plugins.contact/zh/contact', 'sender_phone', '电话', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2657, 1, 'CN', 'plugins.contact/zh/contact', 'message_content', '留言内容', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2658, 1, 'CN', 'plugins.contact/zh/contact', 'sent_from', '电子邮件发送者', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2659, 1, 'CN', 'plugins.contact/zh/contact', 'form_name', '名称', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2660, 1, 'CN', 'plugins.contact/zh/contact', 'form_email', '电子邮件', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2661, 1, 'CN', 'plugins.contact/zh/contact', 'form_address', '地址', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2662, 1, 'CN', 'plugins.contact/zh/contact', 'form_phone', '电话', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2663, 1, 'CN', 'plugins.contact/zh/contact', 'form_message', '留言', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2664, 1, 'CN', 'plugins.contact/zh/contact', 'confirm_not_robot', '请确认你不是机器人', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2665, 1, 'CN', 'plugins.contact/zh/contact', 'required_field', '标记为(<span style=\"color: red\">*</span>) 的字段是必须的。', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2666, 1, 'CN', 'plugins.contact/zh/contact', 'send_btn', '发送信息', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2667, 1, 'CN', 'plugins.contact/zh/contact', 'mark_as_read', '标记为已读', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2668, 1, 'CN', 'plugins.contact/zh/contact', 'mark_as_unread', '标记为未读', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2669, 1, 'CN', 'plugins.contact/zh/contact', 'new_msg_notice', '你有<span class=\"bold\">:count条</span> 新信息', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2670, 1, 'CN', 'plugins.contact/zh/contact', 'view_all', '查看全部', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2671, 1, 'CN', 'plugins.contact/zh/contact', 'read', '已读', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2672, 1, 'CN', 'plugins.contact/zh/contact', 'unread', '未读', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2673, 1, 'CN', 'plugins.contact/zh/contact', 'phone', '电话', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2674, 1, 'CN', 'plugins.contact/zh/contact', 'address', '地址', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2675, 1, 'CN', 'plugins.contact/zh/contact', 'message', '消息', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2676, 1, 'en', 'plugins.custom-field/base', 'admin_menu.title', 'Custom fields', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2677, 1, 'en', 'plugins.custom-field/base', 'page_title', 'Custom fields', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2678, 1, 'en', 'plugins.custom-field/base', 'all_field_groups', 'All field groups', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2679, 1, 'en', 'plugins.custom-field/base', 'form.create_field_group', 'Create field group', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2680, 1, 'en', 'plugins.custom-field/base', 'form.edit_field_group', 'Edit field group', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2681, 1, 'en', 'plugins.custom-field/base', 'form.field_items_information', 'Field items information', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2682, 1, 'en', 'plugins.custom-field/base', 'form.repeater_fields', 'Repeater', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2683, 1, 'en', 'plugins.custom-field/base', 'form.add_field', 'Add field', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2684, 1, 'en', 'plugins.custom-field/base', 'form.remove_field', 'Remove field', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2685, 1, 'en', 'plugins.custom-field/base', 'form.close_field', 'Close field', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2686, 1, 'en', 'plugins.custom-field/base', 'form.field_label', 'Label', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2687, 1, 'en', 'plugins.custom-field/base', 'form.field_label_helper', 'This is the title of field item. It will be shown on edit pages.', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2688, 1, 'en', 'plugins.custom-field/base', 'form.field_name', 'Field name', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2689, 1, 'en', 'plugins.custom-field/base', 'form.field_name_helper', 'The alias of field item. Accepted numbers, characters and underscore.', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2690, 1, 'en', 'plugins.custom-field/base', 'form.field_type', 'Field type', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2691, 1, 'en', 'plugins.custom-field/base', 'form.field_type_helper', 'Please select the type of this field.', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2692, 1, 'en', 'plugins.custom-field/base', 'form.field_instructions', 'Field instructions', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2693, 1, 'en', 'plugins.custom-field/base', 'form.field_instructions_helper', 'HThe instructions guide for user easier know what they need to input.', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2694, 1, 'en', 'plugins.custom-field/base', 'form.default_value', 'Default value', '2018-09-12 18:39:26', '2018-09-12 18:39:26'),
(2695, 1, 'en', 'plugins.custom-field/base', 'form.default_value_helper', 'The default value of field when leave it blank', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2696, 1, 'en', 'plugins.custom-field/base', 'form.placeholder', 'Placeholder', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2697, 1, 'en', 'plugins.custom-field/base', 'form.placeholder_helper', 'Placeholder text', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2698, 1, 'en', 'plugins.custom-field/base', 'form.rows', 'Rows', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2699, 1, 'en', 'plugins.custom-field/base', 'form.rows_helper', 'Rows of this textarea', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2700, 1, 'en', 'plugins.custom-field/base', 'form.toolbar', 'Toolbar', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2701, 1, 'en', 'plugins.custom-field/base', 'form.toolbar_helper', 'The toolbar when use editor', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2702, 1, 'en', 'plugins.custom-field/base', 'form.toolbar_basic', 'Basic', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2703, 1, 'en', 'plugins.custom-field/base', 'form.toolbar_full', 'Full', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2704, 1, 'en', 'plugins.custom-field/base', 'form.choices', 'Choices', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2705, 1, 'en', 'plugins.custom-field/base', 'form.choices_helper', 'Enter each choice on a new line.<br>For more control, you may specify both a value and label like this:<br>red: Red<br>blue: Blue', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2706, 1, 'en', 'plugins.custom-field/base', 'form.button_label', 'Button for repeater', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2707, 1, 'en', 'plugins.custom-field/base', 'form.groups.basic', 'Basic', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2708, 1, 'en', 'plugins.custom-field/base', 'form.groups.content', 'Content', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2709, 1, 'en', 'plugins.custom-field/base', 'form.groups.choice', 'Choices', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2710, 1, 'en', 'plugins.custom-field/base', 'form.groups.other', 'Other', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2711, 1, 'en', 'plugins.custom-field/base', 'form.types.text', 'Text field', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2712, 1, 'en', 'plugins.custom-field/base', 'form.types.textarea', 'Textarea', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2713, 1, 'en', 'plugins.custom-field/base', 'form.types.number', 'Number', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2714, 1, 'en', 'plugins.custom-field/base', 'form.types.email', 'Email', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2715, 1, 'en', 'plugins.custom-field/base', 'form.types.password', 'Password', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2716, 1, 'en', 'plugins.custom-field/base', 'form.types.wysiwyg', 'WYSIWYG editor', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2717, 1, 'en', 'plugins.custom-field/base', 'form.types.image', 'Image', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2718, 1, 'en', 'plugins.custom-field/base', 'form.types.file', 'File', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2719, 1, 'en', 'plugins.custom-field/base', 'form.types.select', 'Select', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2720, 1, 'en', 'plugins.custom-field/base', 'form.types.checkbox', 'Checkbox', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2721, 1, 'en', 'plugins.custom-field/base', 'form.types.radio', 'Radio', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2722, 1, 'en', 'plugins.custom-field/base', 'form.types.repeater', 'Repeater', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2723, 1, 'en', 'plugins.custom-field/base', 'form.rules.rules', 'Display rules', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2724, 1, 'en', 'plugins.custom-field/base', 'form.rules.rules_helper', 'Show this field group if', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2725, 1, 'en', 'plugins.custom-field/base', 'form.rules.add_rule_group', 'Add rule group', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2726, 1, 'en', 'plugins.custom-field/base', 'form.rules.is_equal_to', 'Equal to', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2727, 1, 'en', 'plugins.custom-field/base', 'form.rules.is_not_equal_to', 'Not equal to', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2728, 1, 'en', 'plugins.custom-field/base', 'form.rules.and', 'And', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2729, 1, 'en', 'plugins.custom-field/base', 'form.rules.or', 'Or', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2730, 1, 'en', 'plugins.custom-field/base', 'import', 'Import', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2731, 1, 'en', 'plugins.custom-field/base', 'export', 'Export', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2732, 1, 'en', 'plugins.custom-field/permissions', 'view-custom-fields', 'View custom fields', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2733, 1, 'en', 'plugins.custom-field/permissions', 'create-field-groups', 'Create field groups', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2734, 1, 'en', 'plugins.custom-field/permissions', 'edit-field-groups', 'Edit field groups', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2735, 1, 'en', 'plugins.custom-field/permissions', 'delete-field-groups', 'Delete field groups', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2736, 1, 'en', 'plugins.custom-field/rules', 'groups.basic', 'Basic', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2737, 1, 'en', 'plugins.custom-field/rules', 'groups.other', 'Other', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2738, 1, 'en', 'plugins.custom-field/rules', 'groups.blog', 'Blog', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2739, 1, 'en', 'plugins.custom-field/rules', 'logged_in_user', 'Logged in user', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2740, 1, 'en', 'plugins.custom-field/rules', 'logged_in_user_has_role', 'Logged in has role', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2741, 1, 'en', 'plugins.custom-field/rules', 'page_template', 'Page template', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2742, 1, 'en', 'plugins.custom-field/rules', 'page', 'Page', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2743, 1, 'en', 'plugins.custom-field/rules', 'model_name', 'Model name', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2744, 1, 'en', 'plugins.custom-field/rules', 'model_name_page', 'Page', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2745, 1, 'en', 'plugins.custom-field/rules', 'category', 'Category', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2746, 1, 'en', 'plugins.custom-field/rules', 'post_with_related_category', 'Post with related category', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2747, 1, 'en', 'plugins.custom-field/rules', 'model_name_post', 'Post (blog)', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2748, 1, 'en', 'plugins.custom-field/rules', 'model_name_category', 'Category (blog)', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2749, 1, 'en', 'plugins.custom-field/rules', 'post_format', 'Post format', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2750, 1, 'vi', 'plugins.custom-field/base', 'admin_menu.title', 'Trường tùy chỉnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2751, 1, 'vi', 'plugins.custom-field/base', 'page_title', 'Trường tùy chỉnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2752, 1, 'vi', 'plugins.custom-field/base', 'all_field_groups', 'Tất cả nhóm trường tùy chỉnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2753, 1, 'vi', 'plugins.custom-field/base', 'form.create_field_group', 'Thêm nhóm trường mới', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2754, 1, 'vi', 'plugins.custom-field/base', 'form.edit_field_group', 'Chỉnh sửa trường tùy chỉnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2755, 1, 'vi', 'plugins.custom-field/base', 'form.field_items_information', 'Thiết đặt các mục con của trường này', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2756, 1, 'vi', 'plugins.custom-field/base', 'form.repeater_fields', 'Bộ lặp', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2757, 1, 'vi', 'plugins.custom-field/base', 'form.add_field', 'Thêm trường', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2758, 1, 'vi', 'plugins.custom-field/base', 'form.remove_field', 'Xóa trường này', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2759, 1, 'vi', 'plugins.custom-field/base', 'form.close_field', 'Thu nhỏ trường này lại', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2760, 1, 'vi', 'plugins.custom-field/base', 'form.field_label', 'Nhãn', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2761, 1, 'vi', 'plugins.custom-field/base', 'form.field_label_helper', 'Đây là tiêu đề của từng trường, xuất hiện ở các trang chỉnh sửa', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2762, 1, 'vi', 'plugins.custom-field/base', 'form.field_name', 'Tên truy nhập trường', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2763, 1, 'vi', 'plugins.custom-field/base', 'form.field_name_helper', 'Tên truy nhập của trường. Chỉ chấp nhận ký tự thường và dấu gạch dưới', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2764, 1, 'vi', 'plugins.custom-field/base', 'form.field_type', 'Kiểu trường', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2765, 1, 'vi', 'plugins.custom-field/base', 'form.field_type_helper', 'Vui lòng chọn một kiểu phù hợp cho bạn', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2766, 1, 'vi', 'plugins.custom-field/base', 'form.field_instructions', 'Hướng dẫn nhập liệu cho trường', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2767, 1, 'vi', 'plugins.custom-field/base', 'form.field_instructions_helper', 'Hướng dẫn nhập liệu từng trường cho người nhập liệu. Hiển thị ở các trang chỉnh sửa', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2768, 1, 'vi', 'plugins.custom-field/base', 'form.default_value', 'Giá trị mặc định', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2769, 1, 'vi', 'plugins.custom-field/base', 'form.default_value_helper', 'Tự động khởi tạo khi trường bị để trống', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2770, 1, 'vi', 'plugins.custom-field/base', 'form.placeholder', 'Mô tả trường', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2771, 1, 'vi', 'plugins.custom-field/base', 'form.placeholder_helper', 'Xuất hiện ngay bên trong mục nhập khi trường bị để trống', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2772, 1, 'vi', 'plugins.custom-field/base', 'form.rows', 'Số dòng', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2773, 1, 'vi', 'plugins.custom-field/base', 'form.rows_helper', 'Số dòng được khởi tạo khi sử dụng trường textarea', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2774, 1, 'vi', 'plugins.custom-field/base', 'form.toolbar', 'Thanh công cụ', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2775, 1, 'vi', 'plugins.custom-field/base', 'form.toolbar_helper', 'Tùy chỉnh kiểu thanh công cụ khi sử dụng trình nhập liệu', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2776, 1, 'vi', 'plugins.custom-field/base', 'form.toolbar_basic', 'Thanh công cụ đơn giản', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2777, 1, 'vi', 'plugins.custom-field/base', 'form.toolbar_full', 'Thanh công cụ đầy đủ', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2778, 1, 'vi', 'plugins.custom-field/base', 'form.choices', 'Các mục lựa chọn', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2779, 1, 'vi', 'plugins.custom-field/base', 'form.choices_helper', 'Nhập mỗi lựa chọn trên một dòng mới. <br> Để quản lý tốt hơn, bạn có thể cần phải xác định rõ cả nhãn và giá trị lựa chọn như sau: <br> red: Red <br> blue: Blue', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2780, 1, 'vi', 'plugins.custom-field/base', 'form.button_label', 'Nhãn cho nút thêm mới bộ lặp', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2781, 1, 'vi', 'plugins.custom-field/base', 'form.groups.basic', 'Cơ bản', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2782, 1, 'vi', 'plugins.custom-field/base', 'form.groups.content', 'Nội dung', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2783, 1, 'vi', 'plugins.custom-field/base', 'form.groups.choice', 'Lựa chọn', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2784, 1, 'vi', 'plugins.custom-field/base', 'form.groups.other', 'Khác', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2785, 1, 'vi', 'plugins.custom-field/base', 'form.types.text', 'Văn bản', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2786, 1, 'vi', 'plugins.custom-field/base', 'form.types.textarea', 'Văn bản nhiều dòng', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2787, 1, 'vi', 'plugins.custom-field/base', 'form.types.number', 'Số', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2788, 1, 'vi', 'plugins.custom-field/base', 'form.types.email', 'Thư điện tử', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2789, 1, 'vi', 'plugins.custom-field/base', 'form.types.password', 'Mật khẩu', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2790, 1, 'vi', 'plugins.custom-field/base', 'form.types.wysiwyg', 'Trình nhập liệu', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2791, 1, 'vi', 'plugins.custom-field/base', 'form.types.image', 'Hình ảnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2792, 1, 'vi', 'plugins.custom-field/base', 'form.types.file', 'Tập tin', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2793, 1, 'vi', 'plugins.custom-field/base', 'form.types.select', 'Thanh lựa chọn', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2794, 1, 'vi', 'plugins.custom-field/base', 'form.types.checkbox', 'Checkbox', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2795, 1, 'vi', 'plugins.custom-field/base', 'form.types.radio', 'Radio', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2796, 1, 'vi', 'plugins.custom-field/base', 'form.types.repeater', 'Bộ lặp', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2797, 1, 'vi', 'plugins.custom-field/base', 'form.rules.rules', 'Luật hiển thị', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2798, 1, 'vi', 'plugins.custom-field/base', 'form.rules.rules_helper', 'Hiển thị nhóm trường này nếu', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2799, 1, 'vi', 'plugins.custom-field/base', 'form.rules.add_rule_group', 'Thêm nhóm luật mới', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2800, 1, 'vi', 'plugins.custom-field/base', 'form.rules.is_equal_to', 'Tương đương', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2801, 1, 'vi', 'plugins.custom-field/base', 'form.rules.is_not_equal_to', 'Khác với', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2802, 1, 'vi', 'plugins.custom-field/base', 'form.rules.and', 'Và', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2803, 1, 'vi', 'plugins.custom-field/base', 'form.rules.or', 'Hoặc', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2804, 1, 'vi', 'plugins.custom-field/base', 'import', 'Nhập dữ liệu', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2805, 1, 'vi', 'plugins.custom-field/base', 'export', 'Xuất dữ liệu', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2806, 1, 'vi', 'plugins.custom-field/permissions', 'view-custom-fields', 'Xem trường tùy chỉnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2807, 1, 'vi', 'plugins.custom-field/permissions', 'create-field-groups', 'Tạo các nhóm trường tùy chỉnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2808, 1, 'vi', 'plugins.custom-field/permissions', 'edit-field-groups', 'Chỉnh sửa các nhóm trường tùy chỉnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2809, 1, 'vi', 'plugins.custom-field/permissions', 'delete-field-groups', 'Xóa các nhóm trường tùy chỉnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2810, 1, 'vi', 'plugins.custom-field/rules', 'groups.basic', 'Cơ bản', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2811, 1, 'vi', 'plugins.custom-field/rules', 'groups.other', 'Khác', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2812, 1, 'vi', 'plugins.custom-field/rules', 'groups.blog', 'Blog', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2813, 1, 'vi', 'plugins.custom-field/rules', 'logged_in_user', 'Người đăng nhập hiện tại', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2814, 1, 'vi', 'plugins.custom-field/rules', 'logged_in_user_has_role', 'Người đăng nhập hiện tại có vai trò', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2815, 1, 'vi', 'plugins.custom-field/rules', 'page_template', 'Giao diện trang tĩnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2816, 1, 'vi', 'plugins.custom-field/rules', 'page', 'Trang tĩnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2817, 1, 'vi', 'plugins.custom-field/rules', 'model_name', 'Tên model', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2818, 1, 'vi', 'plugins.custom-field/rules', 'model_name_page', 'Trang tĩnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2819, 1, 'vi', 'plugins.custom-field/rules', 'category', 'Danh mục bài viết', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2820, 1, 'vi', 'plugins.custom-field/rules', 'post_with_related_category', 'Bài viết có danh mục', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2821, 1, 'vi', 'plugins.custom-field/rules', 'model_name_post', 'Bài viết (blog)', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2822, 1, 'vi', 'plugins.custom-field/rules', 'model_name_category', 'Danh mục (blog)', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2823, 1, 'CN', 'plugins.custom-field/zh/base', 'admin_menu.title', '自定义字段', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2824, 1, 'CN', 'plugins.custom-field/zh/base', 'page_title', '自定义字段', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2825, 1, 'CN', 'plugins.custom-field/zh/base', 'all_field_groups', '所有字段组', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2826, 1, 'CN', 'plugins.custom-field/zh/base', 'form.create_field_group', '创建字段组', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2827, 1, 'CN', 'plugins.custom-field/zh/base', 'form.edit_field_group', '编辑字段组', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2828, 1, 'CN', 'plugins.custom-field/zh/base', 'form.field_items_information', '字段项目信息', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2829, 1, 'CN', 'plugins.custom-field/zh/base', 'form.repeater_fields', '中继器', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2830, 1, 'CN', 'plugins.custom-field/zh/base', 'form.add_field', '添加字段', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2831, 1, 'CN', 'plugins.custom-field/zh/base', 'form.remove_field', '删除字段', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2832, 1, 'CN', 'plugins.custom-field/zh/base', 'form.close_field', '关闭字段', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2833, 1, 'CN', 'plugins.custom-field/zh/base', 'form.field_label', '标签', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2834, 1, 'CN', 'plugins.custom-field/zh/base', 'form.field_label_helper', '这是字段项目的标题。它将显示在编辑页面上。', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2835, 1, 'CN', 'plugins.custom-field/zh/base', 'form.field_name', '字段名称', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2836, 1, 'CN', 'plugins.custom-field/zh/base', 'form.field_name_helper', '字段项的别名。可以是数字，字符和下划线', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2837, 1, 'CN', 'plugins.custom-field/zh/base', 'form.field_type', '字段类型', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2838, 1, 'CN', 'plugins.custom-field/zh/base', 'form.field_type_helper', '请选择此字段的类型。', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2839, 1, 'CN', 'plugins.custom-field/zh/base', 'form.field_instructions', '字段介绍', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2840, 1, 'CN', 'plugins.custom-field/zh/base', 'form.field_instructions_helper', '使用指南让用户更容易知道他们需要输入什么。', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2841, 1, 'CN', 'plugins.custom-field/zh/base', 'form.default_value', '默认值', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2842, 1, 'CN', 'plugins.custom-field/zh/base', 'form.default_value_helper', '留空时字段的默认值', '2018-09-12 18:39:27', '2018-09-12 18:39:27');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2843, 1, 'CN', 'plugins.custom-field/zh/base', 'form.placeholder', '占位符', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2844, 1, 'CN', 'plugins.custom-field/zh/base', 'form.placeholder_helper', '占位符文字', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2845, 1, 'CN', 'plugins.custom-field/zh/base', 'form.rows', '行', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2846, 1, 'CN', 'plugins.custom-field/zh/base', 'form.rows_helper', '此行的文字说明', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2847, 1, 'CN', 'plugins.custom-field/zh/base', 'form.toolbar', '工具栏', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2848, 1, 'CN', 'plugins.custom-field/zh/base', 'form.toolbar_helper', '使用编辑器时的工具栏', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2849, 1, 'CN', 'plugins.custom-field/zh/base', 'form.toolbar_basic', '基本', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2850, 1, 'CN', 'plugins.custom-field/zh/base', 'form.toolbar_full', '完整', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2851, 1, 'CN', 'plugins.custom-field/zh/base', 'form.choices', '选择', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2852, 1, 'CN', 'plugins.custom-field/zh/base', 'form.choices_helper', '在新行上输入每个选项。<br>如需更多控制，您可以像这样：<br>red: Red<br>blue: Blue指定值和标签', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2853, 1, 'CN', 'plugins.custom-field/zh/base', 'form.button_label', '中继器按钮', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2854, 1, 'CN', 'plugins.custom-field/zh/base', 'form.groups.basic', '基本', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2855, 1, 'CN', 'plugins.custom-field/zh/base', 'form.groups.content', '内容', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2856, 1, 'CN', 'plugins.custom-field/zh/base', 'form.groups.choice', '选择', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2857, 1, 'CN', 'plugins.custom-field/zh/base', 'form.groups.other', '其他', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2858, 1, 'CN', 'plugins.custom-field/zh/base', 'form.types.text', '文本字段', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2859, 1, 'CN', 'plugins.custom-field/zh/base', 'form.types.textarea', '长文本', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2860, 1, 'CN', 'plugins.custom-field/zh/base', 'form.types.number', '数字', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2861, 1, 'CN', 'plugins.custom-field/zh/base', 'form.types.email', '电子邮件', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2862, 1, 'CN', 'plugins.custom-field/zh/base', 'form.types.password', '密码', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2863, 1, 'CN', 'plugins.custom-field/zh/base', 'form.types.wysiwyg', 'WYSIWYG编辑器', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2864, 1, 'CN', 'plugins.custom-field/zh/base', 'form.types.image', '图片', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2865, 1, 'CN', 'plugins.custom-field/zh/base', 'form.types.file', '文件', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2866, 1, 'CN', 'plugins.custom-field/zh/base', 'form.types.select', '选择', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2867, 1, 'CN', 'plugins.custom-field/zh/base', 'form.types.checkbox', '复选框', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2868, 1, 'CN', 'plugins.custom-field/zh/base', 'form.types.radio', '选项', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2869, 1, 'CN', 'plugins.custom-field/zh/base', 'form.types.repeater', '中继器', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2870, 1, 'CN', 'plugins.custom-field/zh/base', 'form.rules.rules', '显示规则', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2871, 1, 'CN', 'plugins.custom-field/zh/base', 'form.rules.rules_helper', '规则说明', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2872, 1, 'CN', 'plugins.custom-field/zh/base', 'form.rules.add_rule_group', '添加规则组', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2873, 1, 'CN', 'plugins.custom-field/zh/base', 'form.rules.is_equal_to', '等于', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2874, 1, 'CN', 'plugins.custom-field/zh/base', 'form.rules.is_not_equal_to', '不等于', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2875, 1, 'CN', 'plugins.custom-field/zh/base', 'form.rules.and', '和', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2876, 1, 'CN', 'plugins.custom-field/zh/base', 'form.rules.or', '或', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2877, 1, 'CN', 'plugins.custom-field/zh/base', 'import', '导入', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2878, 1, 'CN', 'plugins.custom-field/zh/base', 'export', '导出', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2879, 1, 'CN', 'plugins.custom-field/zh/permissions', 'view-custom-fields', '查看自定义字段', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2880, 1, 'CN', 'plugins.custom-field/zh/permissions', 'create-field-groups', '创建字段组', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2881, 1, 'CN', 'plugins.custom-field/zh/permissions', 'edit-field-groups', '编辑字段组', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2882, 1, 'CN', 'plugins.custom-field/zh/permissions', 'delete-field-groups', '删除字段组', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2883, 1, 'CN', 'plugins.custom-field/zh/rules', 'groups.basic', '基本', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2884, 1, 'CN', 'plugins.custom-field/zh/rules', 'groups.other', '其他', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2885, 1, 'CN', 'plugins.custom-field/zh/rules', 'groups.blog', '新闻', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2886, 1, 'CN', 'plugins.custom-field/zh/rules', 'logged_in_user', '登录用户', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2887, 1, 'CN', 'plugins.custom-field/zh/rules', 'logged_in_user_has_role', '登录用户角色', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2888, 1, 'CN', 'plugins.custom-field/zh/rules', 'page_template', '页面模板', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2889, 1, 'CN', 'plugins.custom-field/zh/rules', 'page', '页面', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2890, 1, 'CN', 'plugins.custom-field/zh/rules', 'model_name', '模型名称', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2891, 1, 'CN', 'plugins.custom-field/zh/rules', 'model_name_page', '网页', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2892, 1, 'CN', 'plugins.custom-field/zh/rules', 'category', '类别', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2893, 1, 'CN', 'plugins.custom-field/zh/rules', 'post_with_related_category', '发布相关类别', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2894, 1, 'CN', 'plugins.custom-field/zh/rules', 'model_name_post', '发布 (新闻)', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2895, 1, 'CN', 'plugins.custom-field/zh/rules', 'model_name_category', '类别 (新闻)', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2896, 1, 'en', 'plugins.gallery/gallery', 'create', 'Create new gallery', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2897, 1, 'en', 'plugins.gallery/gallery', 'edit', 'Edit gallery', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2898, 1, 'en', 'plugins.gallery/gallery', 'list', 'List galleries', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2899, 1, 'en', 'plugins.gallery/gallery', 'galleries', 'Galleries', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2900, 1, 'en', 'plugins.gallery/gallery', 'item', 'Gallery item', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2901, 1, 'en', 'plugins.gallery/gallery', 'select_image', 'Select images', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2902, 1, 'en', 'plugins.gallery/gallery', 'reset', 'Reset gallery', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2903, 1, 'en', 'plugins.gallery/gallery', 'update_photo_description', 'Update photo\'s description', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2904, 1, 'en', 'plugins.gallery/gallery', 'update_photo_description_placeholder', 'Photo\'s description...', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2905, 1, 'en', 'plugins.gallery/gallery', 'delete_photo', 'Delete this photo', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2906, 1, 'en', 'plugins.gallery/gallery', 'gallery_box', 'Gallery images', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2907, 1, 'en', 'plugins.gallery/gallery', 'by', 'By', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2908, 1, 'en', 'plugins.gallery/gallery', 'menu_name', 'Galleries', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2909, 1, 'en', 'plugins.gallery/gallery', 'gallery_images', 'Gallery images', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2910, 1, 'en', 'plugins.gallery/gallery', 'add_gallery_short_code', 'Add a gallery', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2911, 1, 'vi', 'plugins.gallery/gallery', 'create', 'Tạo mới thư viện ảnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2912, 1, 'vi', 'plugins.gallery/gallery', 'edit', 'Sửa thư viện ảnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2913, 1, 'vi', 'plugins.gallery/gallery', 'list', 'Thư viện ảnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2914, 1, 'vi', 'plugins.gallery/gallery', 'delete_photo', 'Xóa ảnh này', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2915, 1, 'vi', 'plugins.gallery/gallery', 'galleries', 'Thư viện ảnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2916, 1, 'vi', 'plugins.gallery/gallery', 'item', 'Ảnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2917, 1, 'vi', 'plugins.gallery/gallery', 'reset', 'Làm mới thư viện', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2918, 1, 'vi', 'plugins.gallery/gallery', 'select_image', 'Lựa chọn hình ảnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2919, 1, 'vi', 'plugins.gallery/gallery', 'update_photo_description', 'Cập nhật mô tả cho hình ảnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2920, 1, 'vi', 'plugins.gallery/gallery', 'update_photo_description_placeholder', 'Mô tả của hình ảnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2921, 1, 'vi', 'plugins.gallery/gallery', 'by', 'Bởi', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2922, 1, 'vi', 'plugins.gallery/gallery', 'gallery_box', 'Thư viện ảnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2923, 1, 'vi', 'plugins.gallery/gallery', 'menu_name', 'Thư viện ảnh', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2924, 1, 'CN', 'plugins.gallery/zh/gallery', 'create', '创建新图库', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2925, 1, 'CN', 'plugins.gallery/zh/gallery', 'edit', '编辑图库', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2926, 1, 'CN', 'plugins.gallery/zh/gallery', 'list', '图库列表', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2927, 1, 'CN', 'plugins.gallery/zh/gallery', 'galleries', '图库', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2928, 1, 'CN', 'plugins.gallery/zh/gallery', 'item', '图库项目', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2929, 1, 'CN', 'plugins.gallery/zh/gallery', 'select_image', '选择图片', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2930, 1, 'CN', 'plugins.gallery/zh/gallery', 'reset', '重置图库', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2931, 1, 'CN', 'plugins.gallery/zh/gallery', 'update_photo_description', '更新图片描述', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2932, 1, 'CN', 'plugins.gallery/zh/gallery', 'update_photo_description_placeholder', '图片描述...', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2933, 1, 'CN', 'plugins.gallery/zh/gallery', 'delete_photo', '删除此图片', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2934, 1, 'CN', 'plugins.gallery/zh/gallery', 'gallery_box', '图库示例图片', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2935, 1, 'CN', 'plugins.gallery/zh/gallery', 'by', '拍摄者', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2936, 1, 'CN', 'plugins.gallery/zh/gallery', 'menu_name', '相册', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2937, 1, 'en', 'plugins.language/language', 'menu', 'Language', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2938, 1, 'en', 'plugins.language/language', 'name', 'Languages', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2939, 1, 'en', 'plugins.language/language', 'choose_language', 'Choose a language', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2940, 1, 'en', 'plugins.language/language', 'select_language', 'Select language', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2941, 1, 'en', 'plugins.language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2942, 1, 'en', 'plugins.language/language', 'full_name', 'Full name', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2943, 1, 'en', 'plugins.language/language', 'full_name_helper', 'The name is how it is displayed on your site (for example: English).', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2944, 1, 'en', 'plugins.language/language', 'locale', 'Locale', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2945, 1, 'en', 'plugins.language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>). You will need to create <code>/resources/lang/en</code> directory if it\'s not exists for this language.', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2946, 1, 'en', 'plugins.language/language', 'language_code', 'Language code', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2947, 1, 'en', 'plugins.language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2948, 1, 'en', 'plugins.language/language', 'text_direction', 'Text direction', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2949, 1, 'en', 'plugins.language/language', 'text_direction_helper', 'Choose the text direction for the language', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2950, 1, 'en', 'plugins.language/language', 'left_to_right', 'Left to right', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2951, 1, 'en', 'plugins.language/language', 'right_to_left', 'Right to left', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2952, 1, 'en', 'plugins.language/language', 'flag', 'Flag', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2953, 1, 'en', 'plugins.language/language', 'flag_helper', 'Choose a flag for the language.', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2954, 1, 'en', 'plugins.language/language', 'order', 'Order', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2955, 1, 'en', 'plugins.language/language', 'order_helper', 'Position of the language in the language switcher', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2956, 1, 'en', 'plugins.language/language', 'add_new_language', 'Add new language', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2957, 1, 'en', 'plugins.language/language', 'code', 'Code', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2958, 1, 'en', 'plugins.language/language', 'default_language', 'Default language', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2959, 1, 'en', 'plugins.language/language', 'actions', 'Actions', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2960, 1, 'en', 'plugins.language/language', 'translations', 'Translations', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2961, 1, 'en', 'plugins.language/language', 'edit', 'Edit', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2962, 1, 'en', 'plugins.language/language', 'edit_tooltip', 'Edit this language', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2963, 1, 'en', 'plugins.language/language', 'delete', 'Delete', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2964, 1, 'en', 'plugins.language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2965, 1, 'en', 'plugins.language/language', 'choose_default_language', 'Choose :language as default language', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2966, 1, 'en', 'plugins.language/language', 'current_language', 'Current record\'s language', '2018-09-12 18:39:27', '2018-09-12 18:39:27'),
(2967, 1, 'en', 'plugins.language/language', 'edit_related', 'Edit related language for this record', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2968, 1, 'en', 'plugins.language/language', 'add_language_for_item', 'Add other language version for this record', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2969, 1, 'en', 'plugins.language/language', 'settings', 'Settings', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2970, 1, 'en', 'plugins.language/language', 'language_hide_default', 'Hide default language from URL?', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2971, 1, 'en', 'plugins.language/language', 'language_display_flag_only', 'Flag only', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2972, 1, 'en', 'plugins.language/language', 'language_display_name_only', 'Name only', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2973, 1, 'en', 'plugins.language/language', 'language_display_all', 'Display all flag and name', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2974, 1, 'en', 'plugins.language/language', 'language_display', 'Language display', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2975, 1, 'en', 'plugins.language/language', 'switcher_display', 'Switcher language display', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2976, 1, 'en', 'plugins.language/language', 'language_switcher_display_dropdown', 'Dropdown', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2977, 1, 'en', 'plugins.language/language', 'language_switcher_display_list', 'List', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2978, 1, 'en', 'plugins.language/language', 'current_language_edit_notification', 'You are editing \"<strrong class=\"current_language_text\">:language</strrong>\" version', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2979, 1, 'en', 'plugins.language/language', 'confirm-change-language', 'Confirm change language', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2980, 1, 'en', 'plugins.language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strrong class=\"change_to_language_text\"></strrong>\" ? This action will be override \"<strrong class=\"change_to_language_text\"></strrong>\" version if it\'s existed!', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2981, 1, 'en', 'plugins.language/language', 'confirm-change-language-btn', 'Confirm change', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2982, 1, 'en', 'plugins.language/language', 'hide_languages', 'Hide languages', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2983, 1, 'en', 'plugins.language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2984, 1, 'en', 'plugins.language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2985, 1, 'en', 'plugins.language/language', 'show_all', 'Show all', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2986, 1, 'en', 'plugins.language/language', 'change_language', 'Language', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2987, 1, 'en', 'plugins.language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2988, 1, 'vi', 'plugins.language/language', 'name', 'Ngôn ngữ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2989, 1, 'vi', 'plugins.language/language', 'choose_language', 'Chọn một ngôn ngữ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2990, 1, 'vi', 'plugins.language/language', 'select_language', 'Chọn ngôn ngữ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2991, 1, 'vi', 'plugins.language/language', 'choose_language_helper', 'Bạn có thể chọn 1 ngôn ngữ trong danh sách hoặc nhập trực tiếp nội dung xuống các mục dưới', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2992, 1, 'vi', 'plugins.language/language', 'full_name', 'Tên đầy đủ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2993, 1, 'vi', 'plugins.language/language', 'full_name_helper', 'Tên ngôn ngữ sẽ được hiển thị trên website (ví dụ: Tiếng Anh).', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2994, 1, 'vi', 'plugins.language/language', 'locale', 'Locale', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2995, 1, 'vi', 'plugins.language/language', 'locale_helper', 'Laravel Locale cho ngôn ngữ này (ví dụ: <code>en</code>). Bạn sẽ cần tạo trong <code>/resources/lang/en</code> nếu nó không có sẵn cho ngôn ngữ này.', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2996, 1, 'vi', 'plugins.language/language', 'language_code', 'Mã ngôn ngữ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2997, 1, 'vi', 'plugins.language/language', 'language_code_helper', 'Mã ngôn ngữ - ưu tiên dạng 2-kí tự theo chuẩn ISO 639-1 (ví dụ: en)', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2998, 1, 'vi', 'plugins.language/language', 'text_direction', 'Hướng viết chữ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(2999, 1, 'vi', 'plugins.language/language', 'text_direction_helper', 'Chọn hướng viết chữ cho ngôn ngữ này', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3000, 1, 'vi', 'plugins.language/language', 'left_to_right', 'Trái qua phải', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3001, 1, 'vi', 'plugins.language/language', 'right_to_left', 'Phải qua trái', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3002, 1, 'vi', 'plugins.language/language', 'flag', 'Cờ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3003, 1, 'vi', 'plugins.language/language', 'flag_helper', 'Chọn 1 cờ cho ngôn ngữ này', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3004, 1, 'vi', 'plugins.language/language', 'order', 'Sắp xếp', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3005, 1, 'vi', 'plugins.language/language', 'order_helper', 'Vị trí của ngôn ngữ hiển thị trong mục chuyển đổi ngôn ngữ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3006, 1, 'vi', 'plugins.language/language', 'add_new_language', 'Thêm ngôn ngữ mới', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3007, 1, 'vi', 'plugins.language/language', 'code', 'Mã', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3008, 1, 'vi', 'plugins.language/language', 'default_language', 'Ngôn ngữ mặc định', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3009, 1, 'vi', 'plugins.language/language', 'actions', 'Hành động', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3010, 1, 'vi', 'plugins.language/language', 'translations', 'Dịch', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3011, 1, 'vi', 'plugins.language/language', 'edit', 'Sửa', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3012, 1, 'vi', 'plugins.language/language', 'edit_tooltip', 'Sửa ngôn ngữ này', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3013, 1, 'vi', 'plugins.language/language', 'delete', 'Xóa', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3014, 1, 'vi', 'plugins.language/language', 'delete_tooltip', 'Xóa ngôn ngữ này và các dữ liệu liên quan', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3015, 1, 'vi', 'plugins.language/language', 'choose_default_language', 'Chọn :language làm ngôn ngữ mặc định', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3016, 1, 'vi', 'plugins.language/language', 'add_language_for_item', 'Thêm ngôn ngữ khác cho bản ghi này', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3017, 1, 'vi', 'plugins.language/language', 'current_language', 'Ngôn ngữ hiện tại của bản ghi', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3018, 1, 'vi', 'plugins.language/language', 'edit_related', 'Sửa bản ngôn ngữ khác của bản ghi này', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3019, 1, 'vi', 'plugins.language/language', 'confirm-change-language', 'Xác nhận thay đổi ngôn ngữ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3020, 1, 'vi', 'plugins.language/language', 'confirm-change-language-btn', 'Xác nhận thay đổi', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3021, 1, 'vi', 'plugins.language/language', 'confirm-change-language-message', 'Bạn có chắc chắn muốn thay đổi ngôn ngữ sang tiếng \"<strrong class=\"change_to_language_text\"></strrong>\" ? Điều này sẽ ghi đè bản ghi tiếng \"<strrong class=\"change_to_language_text\"></strrong>\" nếu nó đã tồn tại!', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3022, 1, 'vi', 'plugins.language/language', 'current_language_edit_notification', 'Bạn đang chỉnh sửa phiên bản tiếng \"<strrong class=\"current_language_text\">:language</strrong>\"', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3023, 1, 'vi', 'plugins.language/language', 'hide_languages', 'Ẩn ngôn ngữ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3024, 1, 'vi', 'plugins.language/language', 'hide_languages_description', 'Bạn có thể hoàn toàn ẩn ngôn ngữ cụ thể đối với người truy cập và công cụ tìm kiếm, nhưng sẽ vẫn hiển thị trong trang quản trị. Điều này cho phép bạn biết những ngôn ngữ nào đang được xử lý.', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3025, 1, 'vi', 'plugins.language/language', 'hide_languages_helper_display_hidden', '{0} Tất cả ngôn ngữ đang được hiển thị.|{1} :language đang bị ẩn đối với người truy cập.|[2, Inf]  :language đang bị ẩn đối với người truy cập.', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3026, 1, 'vi', 'plugins.language/language', 'language_display', 'Hiển thị ngôn ngữ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3027, 1, 'vi', 'plugins.language/language', 'language_display_all', 'Hiển thị cả cờ và tên ngôn ngữ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3028, 1, 'vi', 'plugins.language/language', 'language_display_flag_only', 'Chỉ hiển thị cờ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3029, 1, 'vi', 'plugins.language/language', 'language_display_name_only', 'Chỉ hiển thị tên', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3030, 1, 'vi', 'plugins.language/language', 'language_hide_default', 'Ẩn ngôn ngữ mặc định trên URL', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3031, 1, 'vi', 'plugins.language/language', 'language_switcher_display_dropdown', 'Dropdown', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3032, 1, 'vi', 'plugins.language/language', 'language_switcher_display_list', 'Danh sách', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3033, 1, 'vi', 'plugins.language/language', 'settings', 'Cài đặt', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3034, 1, 'vi', 'plugins.language/language', 'switcher_display', 'Hiển thị bộ chuyển đổi ngôn ngữ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3035, 1, 'vi', 'plugins.language/language', 'menu', 'Ngôn ngữ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3036, 1, 'vi', 'plugins.language/language', 'change_language', 'Ngôn ngữ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3037, 1, 'vi', 'plugins.language/language', 'show_all', 'Hiển thị tất cả', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3038, 1, 'CN', 'plugins.language/zh/language', 'menu', '语言', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3039, 1, 'CN', 'plugins.language/zh/language', 'name', '语言', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3040, 1, 'CN', 'plugins.language/zh/language', 'choose_language', '选择一种语言', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3041, 1, 'CN', 'plugins.language/zh/language', 'select_language', '选择语言', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3042, 1, 'CN', 'plugins.language/zh/language', 'choose_language_helper', '您可以在列表中选择一种语言或直接在下面编辑它。', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3043, 1, 'CN', 'plugins.language/zh/language', 'full_name', '语言名称', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3044, 1, 'CN', 'plugins.language/zh/language', 'full_name_helper', '语言是如何显示在您的网站上的（例如：中文）。', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3045, 1, 'CN', 'plugins.language/zh/language', 'locale', '语言环境', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3046, 1, 'CN', 'plugins.language/zh/language', 'locale_helper', '该语言的Laravel语言环境 (如: <code>en</code>)。如该语言不存在，您将需要创建 <code>/resources/lang/en</code>目录。', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3047, 1, 'CN', 'plugins.language/zh/language', 'language_code', '语言代码', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3048, 1, 'CN', 'plugins.language/zh/language', 'language_code_helper', '语言代码 - 最好是2个字母，ISO 639-1（例如：en）', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3049, 1, 'CN', 'plugins.language/zh/language', 'text_direction', '文字方向', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3050, 1, 'CN', 'plugins.language/zh/language', 'text_direction_helper', '请选择此语言的文字方向', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3051, 1, 'CN', 'plugins.language/zh/language', 'left_to_right', '从左到右', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3052, 1, 'CN', 'plugins.language/zh/language', 'right_to_left', '从右至左', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3053, 1, 'CN', 'plugins.language/zh/language', 'flag', '标记', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3054, 1, 'CN', 'plugins.language/zh/language', 'flag_helper', '为语言选择一个标记。', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3055, 1, 'CN', 'plugins.language/zh/language', 'order', '排序', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3056, 1, 'CN', 'plugins.language/zh/language', 'order_helper', '语言切换器中的语言位置', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3057, 1, 'CN', 'plugins.language/zh/language', 'add_new_language', '添加新语言', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3058, 1, 'CN', 'plugins.language/zh/language', 'code', '代码', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3059, 1, 'CN', 'plugins.language/zh/language', 'default_language', '默认语言', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3060, 1, 'CN', 'plugins.language/zh/language', 'actions', '操作', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3061, 1, 'CN', 'plugins.language/zh/language', 'translations', '译文', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3062, 1, 'CN', 'plugins.language/zh/language', 'edit', '编辑', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3063, 1, 'CN', 'plugins.language/zh/language', 'edit_tooltip', '编辑此语言', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3064, 1, 'CN', 'plugins.language/zh/language', 'delete', '删除', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3065, 1, 'CN', 'plugins.language/zh/language', 'delete_tooltip', '删除此语言及其所有相关数据', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3066, 1, 'CN', 'plugins.language/zh/language', 'choose_default_language', '选择:language作为默认语言', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3067, 1, 'CN', 'plugins.language/zh/language', 'current_language', '当前记录的语言', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3068, 1, 'CN', 'plugins.language/zh/language', 'edit_related', '修改此记录的语言', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3069, 1, 'CN', 'plugins.language/zh/language', 'add_language_for_item', '为此记录添加其他语言版本', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3070, 1, 'CN', 'plugins.language/zh/language', 'settings', '设置', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3071, 1, 'CN', 'plugins.language/zh/language', 'language_hide_default', '隐藏默认语言？', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3072, 1, 'CN', 'plugins.language/zh/language', 'language_display_flag_only', '仅标记', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3073, 1, 'CN', 'plugins.language/zh/language', 'language_display_name_only', '仅名称', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3074, 1, 'CN', 'plugins.language/zh/language', 'language_display_all', '显示标记及名称', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3075, 1, 'CN', 'plugins.language/zh/language', 'language_display', '语言显示', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3076, 1, 'CN', 'plugins.language/zh/language', 'switcher_display', '切换语言显示', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3077, 1, 'CN', 'plugins.language/zh/language', 'language_switcher_display_dropdown', '下拉', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3078, 1, 'CN', 'plugins.language/zh/language', 'language_switcher_display_list', '列表', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3079, 1, 'CN', 'plugins.language/zh/language', 'current_language_edit_notification', '您正在编辑\"<strrong class=\"current_language_text\">:language</strrong>\"语言版本', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3080, 1, 'CN', 'plugins.language/zh/language', 'confirm-change-language', '确认更改语言', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3081, 1, 'CN', 'plugins.language/zh/language', 'confirm-change-language-message', '您是否确认将语言改成 \"<strrong class=\"change_to_language_text\"></strrong>\" ? 如\"<strrong class=\"change_to_language_text\"></strrong>\"已存在，此操作将会覆盖!', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3082, 1, 'CN', 'plugins.language/zh/language', 'confirm-change-language-btn', '确认更改', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3083, 1, 'CN', 'plugins.language/zh/language', 'hide_languages', '隐藏语言', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3084, 1, 'CN', 'plugins.language/zh/language', 'hide_languages_description', '您可以从访问者和搜索引擎完全隐藏特定语言的内容，但仍然可以自己查看。这允许检查正在进行的翻译。', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3085, 1, 'CN', 'plugins.language/zh/language', 'hide_languages_helper_display_hidden', '{0} 当前显示所有语言.|{1} :language对访客隐藏.|[2, Inf] :language对当前访问者隐藏', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3086, 1, 'CN', 'plugins.language/zh/language', 'show_all', '全部显示', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3087, 1, 'CN', 'plugins.language/zh/language', 'change_language', '语言', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3088, 1, 'en', 'plugins.log-viewer/general', 'all', 'All', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3089, 1, 'en', 'plugins.log-viewer/general', 'date', 'Date', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3090, 1, 'en', 'plugins.log-viewer/general', 'name', 'System logs', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3091, 1, 'en', 'plugins.log-viewer/levels', 'all', 'All', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3092, 1, 'en', 'plugins.log-viewer/levels', 'emergency', 'Emergency', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3093, 1, 'en', 'plugins.log-viewer/levels', 'alert', 'Alert', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3094, 1, 'en', 'plugins.log-viewer/levels', 'critical', 'Critical', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3095, 1, 'en', 'plugins.log-viewer/levels', 'error', 'Error', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3096, 1, 'en', 'plugins.log-viewer/levels', 'warning', 'Warning', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3097, 1, 'en', 'plugins.log-viewer/levels', 'notice', 'Notice', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3098, 1, 'en', 'plugins.log-viewer/levels', 'info', 'Info', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3099, 1, 'en', 'plugins.log-viewer/levels', 'debug', 'Debug', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3100, 1, 'en', 'plugins.log-viewer/log-viewer', 'system_logs', 'System Logs', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3101, 1, 'en', 'plugins.log-viewer/log-viewer', 'system_logs_description', 'View system errors log.', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3102, 1, 'en', 'plugins.log-viewer/log-viewer', 'name', 'LogViewers', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3103, 1, 'en', 'plugins.log-viewer/log-viewer', 'list', 'List LogViewer', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3104, 1, 'en', 'plugins.log-viewer/log-viewer', 'levels', 'Levels', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3105, 1, 'en', 'plugins.log-viewer/log-viewer', 'no_error', 'There is no error now.', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3106, 1, 'en', 'plugins.log-viewer/log-viewer', 'entries', 'entries', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3107, 1, 'en', 'plugins.log-viewer/log-viewer', 'actions', 'Actions', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3108, 1, 'en', 'plugins.log-viewer/log-viewer', 'delete_log_file', 'Delete log file', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3109, 1, 'en', 'plugins.log-viewer/log-viewer', 'loading', 'Loading...', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3110, 1, 'en', 'plugins.log-viewer/log-viewer', 'delete_button', 'Delete file', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3111, 1, 'en', 'plugins.log-viewer/log-viewer', 'confirm_delete_msg', 'Are you sure you want to <span class=\"label label-danger\">DELETE</span> this log file <span class=\"label label-primary\"><span class=\"log_date\">:date</span></span> ?', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3112, 1, 'en', 'plugins.log-viewer/log-viewer', 'download', 'Download', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3113, 1, 'en', 'plugins.log-viewer/log-viewer', 'delete', 'Delete', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3114, 1, 'en', 'plugins.log-viewer/log-viewer', 'file_path', 'File path', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3115, 1, 'en', 'plugins.log-viewer/log-viewer', 'log_entries', 'Log entries', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3116, 1, 'en', 'plugins.log-viewer/log-viewer', 'size', 'Size', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3117, 1, 'en', 'plugins.log-viewer/log-viewer', 'page', 'Page', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3118, 1, 'en', 'plugins.log-viewer/log-viewer', 'of', 'of', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3119, 1, 'en', 'plugins.log-viewer/log-viewer', 'env', 'Env', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3120, 1, 'en', 'plugins.log-viewer/log-viewer', 'level', 'Level', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3121, 1, 'en', 'plugins.log-viewer/log-viewer', 'time', 'Time', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3122, 1, 'en', 'plugins.log-viewer/log-viewer', 'header', 'Header', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3123, 1, 'en', 'plugins.log-viewer/log-viewer', 'stack', 'Stack', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3124, 1, 'en', 'plugins.log-viewer/log-viewer', 'log_info', 'Log info', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3125, 1, 'en', 'plugins.log-viewer/log-viewer', 'menu_name', 'System logs', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3126, 1, 'vi', 'plugins.log-viewer/general', 'all', 'Tất cả', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3127, 1, 'vi', 'plugins.log-viewer/general', 'date', 'Ngày', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3128, 1, 'vi', 'plugins.log-viewer/general', 'name', 'Lỗi hệ thống', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3129, 1, 'vi', 'plugins.log-viewer/levels', 'all', 'Tất cả', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3130, 1, 'vi', 'plugins.log-viewer/levels', 'emergency', 'Khẩn cấp', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3131, 1, 'vi', 'plugins.log-viewer/levels', 'alert', 'Báo động', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3132, 1, 'vi', 'plugins.log-viewer/levels', 'critical', 'Nguy kịch', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3133, 1, 'vi', 'plugins.log-viewer/levels', 'error', 'Lỗi', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3134, 1, 'vi', 'plugins.log-viewer/levels', 'warning', 'Cảnh báo', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3135, 1, 'vi', 'plugins.log-viewer/levels', 'notice', 'Chú ý', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3136, 1, 'vi', 'plugins.log-viewer/levels', 'info', 'Thông tin', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3137, 1, 'vi', 'plugins.log-viewer/levels', 'debug', 'Gỡ lỗi', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3138, 1, 'vi', 'plugins.log-viewer/log-viewer', 'name', 'LogViewers', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3139, 1, 'vi', 'plugins.log-viewer/log-viewer', 'list', 'List LogViewer', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3140, 1, 'vi', 'plugins.log-viewer/log-viewer', 'actions', 'Hành động', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3141, 1, 'vi', 'plugins.log-viewer/log-viewer', 'confirm_delete_msg', 'Bạn có chắc muốn <span class=\"label label-danger\">XÓA</span> tập tin này <span class=\"label label-primary\"><span class=\"log_date\">:date</span></span> ?', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3142, 1, 'vi', 'plugins.log-viewer/log-viewer', 'delete', 'Xóa', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3143, 1, 'vi', 'plugins.log-viewer/log-viewer', 'delete_button', 'Xóa tập tin', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3144, 1, 'vi', 'plugins.log-viewer/log-viewer', 'delete_log_file', 'Xóa tập tin', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3145, 1, 'vi', 'plugins.log-viewer/log-viewer', 'download', 'Tải xuống', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3146, 1, 'vi', 'plugins.log-viewer/log-viewer', 'entries', 'bản ghi', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3147, 1, 'vi', 'plugins.log-viewer/log-viewer', 'env', 'Môi trường', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3148, 1, 'vi', 'plugins.log-viewer/log-viewer', 'file_path', 'Đường dẫn', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3149, 1, 'vi', 'plugins.log-viewer/log-viewer', 'header', 'Header', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3150, 1, 'vi', 'plugins.log-viewer/log-viewer', 'level', 'Cấp độ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3151, 1, 'vi', 'plugins.log-viewer/log-viewer', 'levels', 'Cấp độ', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3152, 1, 'vi', 'plugins.log-viewer/log-viewer', 'loading', 'Đang tải...', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3153, 1, 'vi', 'plugins.log-viewer/log-viewer', 'log_entries', 'Bản ghi nhật ký', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3154, 1, 'vi', 'plugins.log-viewer/log-viewer', 'log_info', 'Bản ghi thông tin', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3155, 1, 'vi', 'plugins.log-viewer/log-viewer', 'no_error', 'Hiện tại không có lỗi trong hệ thống', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3156, 1, 'vi', 'plugins.log-viewer/log-viewer', 'of', 'trong tổng số', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3157, 1, 'vi', 'plugins.log-viewer/log-viewer', 'page', 'Trang', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3158, 1, 'vi', 'plugins.log-viewer/log-viewer', 'size', 'Kích thước', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3159, 1, 'vi', 'plugins.log-viewer/log-viewer', 'stack', 'Chi tiết', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3160, 1, 'vi', 'plugins.log-viewer/log-viewer', 'time', 'Thời gian', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3161, 1, 'vi', 'plugins.log-viewer/log-viewer', 'menu_name', 'Lỗi hệ thống', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3162, 1, 'vi', 'plugins.log-viewer/log-viewer', 'system_logs', 'Lịch sử lỗi hệ thống', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3163, 1, 'vi', 'plugins.log-viewer/log-viewer', 'system_logs_description', 'Xem lịch sử lỗi hệ thống', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3164, 1, 'CN', 'plugins.log-viewer/zh/general', 'all', '全部', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3165, 1, 'CN', 'plugins.log-viewer/zh/general', 'date', '日期', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3166, 1, 'CN', 'plugins.log-viewer/zh/general', 'name', '系统日志', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3167, 1, 'CN', 'plugins.log-viewer/zh/levels', 'all', '全部', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3168, 1, 'CN', 'plugins.log-viewer/zh/levels', 'emergency', '紧急', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3169, 1, 'CN', 'plugins.log-viewer/zh/levels', 'alert', '警报', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3170, 1, 'CN', 'plugins.log-viewer/zh/levels', 'critical', '关键', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3171, 1, 'CN', 'plugins.log-viewer/zh/levels', 'error', '错误', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3172, 1, 'CN', 'plugins.log-viewer/zh/levels', 'warning', '警告', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3173, 1, 'CN', 'plugins.log-viewer/zh/levels', 'notice', '通知', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3174, 1, 'CN', 'plugins.log-viewer/zh/levels', 'info', '信息', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3175, 1, 'CN', 'plugins.log-viewer/zh/levels', 'debug', '调试', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3176, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'system_logs', '系统日志', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3177, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'system_logs_description', '查看系统错误日志', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3178, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'name', '日志查看', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3179, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'list', '日志列表', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3180, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'levels', '等级', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3181, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'no_error', '当前无错误', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3182, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'entries', '全部', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3183, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'actions', '操作', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3184, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'delete_log_file', '删除日志文件', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3185, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'loading', '正在加载...', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3186, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'delete_button', '删除文件', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3187, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'confirm_delete_msg', '您是否确定 <span class=\"label label-danger\">删除</span> 此日志文件 <span class=\"label label-primary\"><span class=\"log_date\">:date</span></span> ?', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3188, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'download', '下载', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3189, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'delete', '删除', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3190, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'file_path', '文件目录', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3191, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'log_entries', '日志条目', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3192, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'size', '大小', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3193, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'page', '页面', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3194, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'of', '的', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3195, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'env', '环境', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3196, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'level', '等级', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3197, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'time', '时间', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3198, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'header', '表头', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3199, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'stack', '堆栈', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3200, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'log_info', '日志信息', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3201, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'menu_name', '系统日志', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3202, 1, 'en', 'plugins.member/member', 'name', 'Member', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3203, 1, 'en', 'plugins.member/member', 'create', 'New member', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3204, 1, 'en', 'plugins.member/member', 'edit', 'Edit member', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3205, 1, 'en', 'plugins.member/member', 'list', 'List member', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3206, 1, 'en', 'plugins.member/member', 'menu_name', 'Members', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3207, 1, 'en', 'plugins.member/member', 'confirmation_subject', 'Email verification', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3208, 1, 'en', 'plugins.member/member', 'confirmation_subject_title', 'Verify your email', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3209, 1, 'en', 'plugins.member/member', 'confirmation_body', 'Please verify your email address in order to access this website. Click on the button below to verify your email.', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3210, 1, 'en', 'plugins.member/member', 'confirmation_button', 'Verify now', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3211, 1, 'en', 'plugins.member/member', 'not_confirmed', 'The given email address has not been confirmed. <a href=\":resend_link\">Resend confirmation link.</a>', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3212, 1, 'en', 'plugins.member/member', 'confirmation_successful', 'You successfully confirmed your email address. Please log in.', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3213, 1, 'en', 'plugins.member/member', 'confirmation_info', 'Please confirm your email address.', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3214, 1, 'en', 'plugins.member/member', 'confirmation_resent', 'We sent you another confirmation email. You should receive it shortly.', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3215, 1, 'CN', 'plugins.member/zh/member', 'name', '会员', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3216, 1, 'CN', 'plugins.member/zh/member', 'create', '新会员', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3217, 1, 'CN', 'plugins.member/zh/member', 'edit', '编辑会员', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3218, 1, 'CN', 'plugins.member/zh/member', 'list', '会员列表', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3219, 1, 'CN', 'plugins.member/zh/member', 'menu_name', '会员', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3220, 1, 'CN', 'plugins.member/zh/member', 'confirmation_subject', '电子邮件验证', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3221, 1, 'CN', 'plugins.member/zh/member', 'confirmation_subject_title', '验证您的电子邮件', '2018-09-12 18:39:28', '2018-09-12 18:39:28'),
(3222, 1, 'CN', 'plugins.member/zh/member', 'confirmation_body', '请验证您的电子邮件地址以访问此网站。 点击下面的按钮验证您的电子邮件。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3223, 1, 'CN', 'plugins.member/zh/member', 'confirmation_button', '立即验证', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3224, 1, 'CN', 'plugins.member/zh/member', 'not_confirmed', '给定的电子邮件地址尚未确认。<a href=\":resend_link\">重新发送确认链接。</a>', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3225, 1, 'CN', 'plugins.member/zh/member', 'confirmation_successful', '您已成功确认您的电子邮件地址，请登录。', '2018-09-12 18:39:29', '2018-09-12 18:39:29');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3226, 1, 'CN', 'plugins.member/zh/member', 'confirmation_info', '请确认您的电子邮件地址。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3227, 1, 'CN', 'plugins.member/zh/member', 'confirmation_resent', '我们向您发送了另一封确认电子邮件，你将很快收到。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3228, 1, 'en', 'plugins.request-log/request-log', 'name', 'Request Logs', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3229, 1, 'en', 'plugins.request-log/request-log', 'status_code', 'Status Code', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3230, 1, 'en', 'plugins.request-log/request-log', 'no_request_error', 'No request error now!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3231, 1, 'en', 'plugins.request-log/request-log', 'widget_request_errors', 'Request Errors', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3232, 1, 'vi', 'plugins.request-log/request-log', 'name', 'Lịch sử lỗi', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3233, 1, 'vi', 'plugins.request-log/request-log', 'status_code', 'Mã lỗi', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3234, 1, 'vi', 'plugins.request-log/request-log', 'no_request_error', 'Hiện tại không có lỗi nào cả!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3235, 1, 'vi', 'plugins.request-log/request-log', 'widget_request_errors', 'Liên kết bị hỏng', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3236, 1, 'CN', 'plugins.request-log/zh/request-log', 'name', '请求日志', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3237, 1, 'CN', 'plugins.request-log/zh/request-log', 'status_code', '状态码', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3238, 1, 'CN', 'plugins.request-log/zh/request-log', 'no_request_error', '当前无请求错误!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3239, 1, 'en', 'plugins.social-login/social-login', 'settings.title', 'Social Login settings', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3240, 1, 'en', 'plugins.social-login/social-login', 'settings.description', 'Configure social login options', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3241, 1, 'en', 'plugins.social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3242, 1, 'en', 'plugins.social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3243, 1, 'en', 'plugins.social-login/social-login', 'settings.facebook.app_id', 'App ID', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3244, 1, 'en', 'plugins.social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3245, 1, 'en', 'plugins.social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3246, 1, 'en', 'plugins.social-login/social-login', 'settings.google.title', 'Google login settings', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3247, 1, 'en', 'plugins.social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3248, 1, 'en', 'plugins.social-login/social-login', 'settings.google.app_id', 'App ID', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3249, 1, 'en', 'plugins.social-login/social-login', 'settings.google.app_secret', 'App Secret', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3250, 1, 'en', 'plugins.social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3251, 1, 'en', 'plugins.social-login/social-login', 'settings.github.title', 'Github login settings', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3252, 1, 'en', 'plugins.social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3253, 1, 'en', 'plugins.social-login/social-login', 'settings.github.app_id', 'App ID', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3254, 1, 'en', 'plugins.social-login/social-login', 'settings.github.app_secret', 'App Secret', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3255, 1, 'en', 'plugins.social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3256, 1, 'en', 'plugins.social-login/social-login', 'settings.enable', 'Enable?', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3257, 1, 'en', 'plugins.social-login/social-login', 'menu', 'Social Login', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3258, 1, 'en', 'plugins.translation/translation', 'translations', 'Translations', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3259, 1, 'en', 'plugins.translation/translation', 'translations_description', 'Translate all words in system.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3260, 1, 'en', 'plugins.translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the app/lang file, using \'php artisan translation:export\' command or publish button.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3261, 1, 'en', 'plugins.translation/translation', 'import_done', 'Done importing, processed <strong class=\"counter\">N</strong> items! Reload this page to refresh the groups!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3262, 1, 'en', 'plugins.translation/translation', 'translation_manager', 'Translations Manager', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3263, 1, 'en', 'plugins.translation/translation', 'done_searching', 'Done searching for translations, found <strong class=\"counter\">N</strong> items!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3264, 1, 'en', 'plugins.translation/translation', 'done_publishing', 'Done publishing the translations for group', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3265, 1, 'en', 'plugins.translation/translation', 'append_translation', 'Append new translations', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3266, 1, 'en', 'plugins.translation/translation', 'replace_translation', 'Replace existing translations', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3267, 1, 'en', 'plugins.translation/translation', 'loading', 'Loading...', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3268, 1, 'en', 'plugins.translation/translation', 'import_group', 'Import group', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3269, 1, 'en', 'plugins.translation/translation', 'confirm_scan_translation', 'Are you sure you want to scan you app folder? All found translation keys will be added to the database.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3270, 1, 'en', 'plugins.translation/translation', 'searching', 'Searching...', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3271, 1, 'en', 'plugins.translation/translation', 'find_translation_files', 'Find translations in files', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3272, 1, 'en', 'plugins.translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3273, 1, 'en', 'plugins.translation/translation', 'publishing', 'Publishing..', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3274, 1, 'en', 'plugins.translation/translation', 'publish_translations', 'Publish translations', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3275, 1, 'en', 'plugins.translation/translation', 'back', 'Back', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3276, 1, 'en', 'plugins.translation/translation', 'add_key_description', 'Add 1 key per line, without the group prefix', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3277, 1, 'en', 'plugins.translation/translation', 'add_key_button', 'Add keys', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3278, 1, 'en', 'plugins.translation/translation', 'total', 'Total', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3279, 1, 'en', 'plugins.translation/translation', 'changed', 'changed', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3280, 1, 'en', 'plugins.translation/translation', 'key', 'Key', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3281, 1, 'en', 'plugins.translation/translation', 'edit_title', 'Enter translation', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3282, 1, 'en', 'plugins.translation/translation', 'confirm_delete_key', 'Are you sure you want to delete the translations for :key ?', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3283, 1, 'en', 'plugins.translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have run the migrations and imported the translations.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3284, 1, 'en', 'plugins.translation/translation', 'choose_a_group', 'Choose a group', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3285, 1, 'en', 'plugins.translation/translation', 'menu_name', 'Translations', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3286, 1, 'vi', 'plugins.translation/translation', 'add_key_button', 'Thêm khóa', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3287, 1, 'vi', 'plugins.translation/translation', 'add_key_description', 'Mỗi khóa trên mỗi dòng, trừ tiền tố của nhóm', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3288, 1, 'vi', 'plugins.translation/translation', 'append_translation', 'Tiếp nối bản dịch', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3289, 1, 'vi', 'plugins.translation/translation', 'back', 'Quay lại', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3290, 1, 'vi', 'plugins.translation/translation', 'changed', 'thay đổi', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3291, 1, 'vi', 'plugins.translation/translation', 'choose_a_group', 'Chọn một nhóm', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3292, 1, 'vi', 'plugins.translation/translation', 'choose_group_msg', 'Chọn một nhóm để hiển thị nhóm dịch thuật. Nếu nhóm không có sẵn, hãy chắc chắn là bạn đã chạy migrations và nhập dữ liệu dịch thuật.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3293, 1, 'vi', 'plugins.translation/translation', 'confirm_delete_key', 'Bạn có chắc muốn xóa dịch thuật cho :key?', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3294, 1, 'vi', 'plugins.translation/translation', 'confirm_publish_group', 'Bạn có chắc muốn xuất bản nhóm \":group\"? Điều này sẽ ghi đè tập tin ngôn ngữ hiện tại.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3295, 1, 'vi', 'plugins.translation/translation', 'confirm_scan_translation', 'Bạn có chắc muốn quét thư mục app? Tất cả khóa dịch thuật tìm thấy sẽ được thêm vào cơ sở dữ liệu.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3296, 1, 'vi', 'plugins.translation/translation', 'done_publishing', 'Xuất bản nhóm dịch thuật thành công', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3297, 1, 'vi', 'plugins.translation/translation', 'done_searching', 'Tìm kiếm dịch thuật xong, tìm thấy <strong class=\"counter\">N</strong> bản ghi!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3298, 1, 'vi', 'plugins.translation/translation', 'edit_title', 'Nhập nội dung dịch', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3299, 1, 'vi', 'plugins.translation/translation', 'export_warning', 'Cảnh báo, bản dịch sẽ không có sẵn cho đến khi chúng được xuất bản lại vào thư mục /resources/lang, sử dụng lệnh \'php artisan translations:export\' hoặc sử dụng nút xuất bản', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3300, 1, 'vi', 'plugins.translation/translation', 'find_translation_files', 'Tìm thấy tập tin dịch thuật', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3301, 1, 'vi', 'plugins.translation/translation', 'import_done', 'Nhập hoàn thành, đã xử lý <strong class=\"counter\">N</strong> bản ghi!  ', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3302, 1, 'vi', 'plugins.translation/translation', 'import_group', 'Nhập nhóm', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3303, 1, 'vi', 'plugins.translation/translation', 'key', 'Khóa', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3304, 1, 'vi', 'plugins.translation/translation', 'loading', 'Đang tải...', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3305, 1, 'vi', 'plugins.translation/translation', 'publish_translations', 'Xuất bản dịch thuật', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3306, 1, 'vi', 'plugins.translation/translation', 'publishing', 'Đang xuất bản...', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3307, 1, 'vi', 'plugins.translation/translation', 'replace_translation', 'Thay thế bản dịch hiện tại', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3308, 1, 'vi', 'plugins.translation/translation', 'searching', 'Đang tìm kiếm...', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3309, 1, 'vi', 'plugins.translation/translation', 'total', 'Tổng cộng', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3310, 1, 'vi', 'plugins.translation/translation', 'translation_manager', 'Quản lý dịch thuật', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3311, 1, 'vi', 'plugins.translation/translation', 'translations', 'Dịch thuật', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3312, 1, 'vi', 'plugins.translation/translation', 'translations_description', 'Dịch tất cả các từ trong hệ thống', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3313, 1, 'vi', 'plugins.translation/translation', 'menu_name', 'Dịch thuật', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3314, 1, 'CN', 'plugins.translation/zh/translation', 'translations', '翻译', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3315, 1, 'CN', 'plugins.translation/zh/translation', 'translations_description', '翻译系统中的所有文字。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3316, 1, 'CN', 'plugins.translation/zh/translation', 'export_warning', '请注意, 在使用 \'php artisan translation:export\' 命令或发布按钮将翻译导回 app/lang 目录之前，翻译是不可见的。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3317, 1, 'CN', 'plugins.translation/zh/translation', 'import_done', '完成导入，已处理<strong class=\"counter\">N</strong> 条数据! 请重新加载此页面刷新!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3318, 1, 'CN', 'plugins.translation/zh/translation', 'translation_manager', '翻译管理中心', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3319, 1, 'CN', 'plugins.translation/zh/translation', 'done_searching', '完成搜索翻译, 发现 <strong class=\"counter\">N</strong> 条数据!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3320, 1, 'CN', 'plugins.translation/zh/translation', 'done_publishing', '完成翻译文件发布', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3321, 1, 'CN', 'plugins.translation/zh/translation', 'append_translation', '追加新翻译', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3322, 1, 'CN', 'plugins.translation/zh/translation', 'replace_translation', '替换现有翻译', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3323, 1, 'CN', 'plugins.translation/zh/translation', 'loading', '正在加载...', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3324, 1, 'CN', 'plugins.translation/zh/translation', 'import_group', '导入', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3325, 1, 'CN', 'plugins.translation/zh/translation', 'confirm_scan_translation', '你确定要扫描你的应用程序文件夹吗？所有找到的翻译将被添加到数据库中。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3326, 1, 'CN', 'plugins.translation/zh/translation', 'searching', '正在搜索...', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3327, 1, 'CN', 'plugins.translation/zh/translation', 'find_translation_files', '在文件中查找翻译', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3328, 1, 'CN', 'plugins.translation/zh/translation', 'confirm_publish_group', '你确定要发布翻译 \":group\"吗? 这将覆盖现有的语言文件。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3329, 1, 'CN', 'plugins.translation/zh/translation', 'publishing', '正在发布...', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3330, 1, 'CN', 'plugins.translation/zh/translation', 'publish_translations', '发布翻译', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3331, 1, 'CN', 'plugins.translation/zh/translation', 'back', '返回', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3332, 1, 'CN', 'plugins.translation/zh/translation', 'add_key_description', '每行添加1个键值，不需要译文组前缀', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3333, 1, 'CN', 'plugins.translation/zh/translation', 'add_key_button', '添加键值', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3334, 1, 'CN', 'plugins.translation/zh/translation', 'total', '总计', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3335, 1, 'CN', 'plugins.translation/zh/translation', 'changed', '更改', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3336, 1, 'CN', 'plugins.translation/zh/translation', 'key', '键值', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3337, 1, 'CN', 'plugins.translation/zh/translation', 'edit_title', '输入翻译', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3338, 1, 'CN', 'plugins.translation/zh/translation', 'confirm_delete_key', '你确定要删除:key的翻译吗?', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3339, 1, 'CN', 'plugins.translation/zh/translation', 'choose_group_msg', '选择一组译文，如果没有可见的译文组，请确保您已经运行了迁移操作并导入了翻译。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3340, 1, 'CN', 'plugins.translation/zh/translation', 'choose_a_group', '选择一组译文', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3341, 1, 'CN', 'plugins.translation/zh/translation', 'menu_name', '翻译', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3342, 1, 'vi', 'pagination', 'previous', '&laquo; Trước', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3343, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3344, 1, 'vi', 'passwords', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với xác nhận mật khẩu.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3345, 1, 'vi', 'passwords', 'reset', 'Mật khẩu của bạn đã được khôi phục', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3346, 1, 'vi', 'passwords', 'sent', 'Hệ thống đã gửi một email cho bạn chứa liên kết khôi phục mật khẩu!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3347, 1, 'vi', 'passwords', 'token', 'Mã khôi phục mật khẩu không hợp lệ.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3348, 1, 'vi', 'passwords', 'user', 'Không thể tìm thấy người dùng với địa chỉ email này.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3349, 1, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3350, 1, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3351, 1, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3352, 1, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3353, 1, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3354, 1, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3355, 1, 'vi', 'validation', 'array', 'Kiểu dữ liệu của trường :attribute phải là dạng mảng.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3356, 1, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3357, 1, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3358, 1, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3359, 1, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max ký tự.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3360, 1, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3361, 1, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3362, 1, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3363, 1, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3364, 1, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3365, 1, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3366, 1, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3367, 1, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3368, 1, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3369, 1, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3370, 1, 'vi', 'validation', 'file', 'Trường :attribute phải là một tập tin.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3371, 1, 'vi', 'validation', 'image', 'Các tập tin trong trường :attribute phải là định dạng hình ảnh.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3372, 1, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3373, 1, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3374, 1, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉa IP.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3375, 1, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3376, 1, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3377, 1, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max ký tự.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3378, 1, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3379, 1, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3380, 1, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3381, 1, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3382, 1, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min ký tự.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3383, 1, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3384, 1, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3385, 1, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3386, 1, 'vi', 'validation', 'regex', 'Định dạng trường :attribute không hợp lệ.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3387, 1, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3388, 1, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3389, 1, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi trường :values có giá trị.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3390, 1, 'vi', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3391, 1, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi trường :values không có giá trị.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3392, 1, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3393, 1, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3394, 1, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3395, 1, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3396, 1, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size ký tự.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3397, 1, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3398, 1, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3399, 1, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong CSDL.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3400, 1, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3401, 1, 'vi', 'validation', 'uploaded', 'Không thể tải lên, hãy thử lại.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3402, 1, 'vi', 'validation', 'custom.email.email', 'Địa chỉ email không hợp lệ', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3403, 1, 'vi', 'validation', 'custom.email.required', 'Email không được để trống!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3404, 1, 'vi', 'validation', 'custom.email.unique', 'Email đã được sử dụng, vui lòng chọn email khác!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3405, 1, 'vi', 'validation', 'custom.password.min', 'Mật khẩu phải ít nhất :min kí tự.', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3406, 1, 'vi', 'validation', 'custom.password.required', 'Mật khẩu không được để trống!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3407, 1, 'vi', 'validation', 'custom.repassword.same', 'Mật khẩu và xác nhận mật khẩu không trùng khớp', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3408, 1, 'vi', 'validation', 'custom.username.min', 'Tên phải ít nhất 6 kí tự', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3409, 1, 'vi', 'validation', 'custom.username.required', 'Tên đăng nhập không được để trống!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3410, 1, 'vi', 'validation', 'custom.username.unique', 'Tên này đã được sử dụng, vui lòng chọn tên khác!', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3411, 1, 'vi', 'validation', 'attributes', 'Thuộc tính', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3412, 1, 'vi', 'validation', 'after_or_equal', 'Thuộc tính :attribute phải là ngày lớn hơn hoặc bằng :date', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3413, 1, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là ngày trước hoặc bằng ngày :date', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3414, 1, 'zh-CN', 'auth', 'failed', '用户名或密码错误。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3415, 1, 'zh-CN', 'auth', 'throttle', '您的尝试登录次数过多，请 :seconds 秒后再试。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3416, 1, 'zh-CN', 'pagination', 'previous', '&laquo; 上一页', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3417, 1, 'zh-CN', 'pagination', 'next', '下一页 &raquo;', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3418, 1, 'zh-CN', 'passwords', 'password', '密码至少是六位字符并且匹配。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3419, 1, 'zh-CN', 'passwords', 'reset', '密码重置成功！', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3420, 1, 'zh-CN', 'passwords', 'sent', '密码重置邮件已发送！', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3421, 1, 'zh-CN', 'passwords', 'token', '密码重置令牌无效。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3422, 1, 'zh-CN', 'passwords', 'user', '找不到该邮箱对应的用户。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3423, 1, 'zh-CN', 'validation', 'accepted', ':attribute 必须接受。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3424, 1, 'zh-CN', 'validation', 'active_url', ':attribute 不是一个有效的网址。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3425, 1, 'zh-CN', 'validation', 'after', ':attribute 必须要晚于 :date。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3426, 1, 'zh-CN', 'validation', 'after_or_equal', ':attribute 必须要等于 :date 或更晚。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3427, 1, 'zh-CN', 'validation', 'alpha', ':attribute 只能由字母组成。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3428, 1, 'zh-CN', 'validation', 'alpha_dash', ':attribute 只能由字母、数字和斜杠组成。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3429, 1, 'zh-CN', 'validation', 'alpha_num', ':attribute 只能由字母和数字组成。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3430, 1, 'zh-CN', 'validation', 'array', ':attribute 必须是一个数组。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3431, 1, 'zh-CN', 'validation', 'before', ':attribute 必须要早于 :date。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3432, 1, 'zh-CN', 'validation', 'before_or_equal', ':attribute 必须要等于 :date 或更早。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3433, 1, 'zh-CN', 'validation', 'between.numeric', ':attribute 必须介于 :min - :max 之间。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3434, 1, 'zh-CN', 'validation', 'between.file', ':attribute 必须介于 :min - :max KB 之间。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3435, 1, 'zh-CN', 'validation', 'between.string', ':attribute 必须介于 :min - :max 个字符之间。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3436, 1, 'zh-CN', 'validation', 'between.array', ':attribute 必须只有 :min - :max 个单元。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3437, 1, 'zh-CN', 'validation', 'boolean', ':attribute 必须为布尔值。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3438, 1, 'zh-CN', 'validation', 'confirmed', ':attribute 两次输入不一致。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3439, 1, 'zh-CN', 'validation', 'date', ':attribute 不是一个有效的日期。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3440, 1, 'zh-CN', 'validation', 'date_format', ':attribute 的格式必须为 :format。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3441, 1, 'zh-CN', 'validation', 'different', ':attribute 和 :other 必须不同。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3442, 1, 'zh-CN', 'validation', 'digits', ':attribute 必须是 :digits 位的数字。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3443, 1, 'zh-CN', 'validation', 'digits_between', ':attribute 必须是介于 :min 和 :max 位的数字。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3444, 1, 'zh-CN', 'validation', 'dimensions', ':attribute 图片尺寸不正确。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3445, 1, 'zh-CN', 'validation', 'distinct', ':attribute 已经存在。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3446, 1, 'zh-CN', 'validation', 'email', ':attribute 不是一个合法的邮箱。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3447, 1, 'zh-CN', 'validation', 'exists', ':attribute 不存在。', '2018-09-12 18:39:29', '2018-09-12 18:39:29'),
(3448, 1, 'zh-CN', 'validation', 'file', ':attribute 必须是文件。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3449, 1, 'zh-CN', 'validation', 'filled', ':attribute 不能为空。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3450, 1, 'zh-CN', 'validation', 'gt.numeric', ':attribute 必须大于 :value。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3451, 1, 'zh-CN', 'validation', 'gt.file', ':attribute 必须大于 :value KB。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3452, 1, 'zh-CN', 'validation', 'gt.string', ':attribute 必须多于 :value 个字符。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3453, 1, 'zh-CN', 'validation', 'gt.array', ':attribute 必须多于 :value 个元素。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3454, 1, 'zh-CN', 'validation', 'gte.numeric', ':attribute 必须大于或等于 :value。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3455, 1, 'zh-CN', 'validation', 'gte.file', ':attribute 必须大于或等于 :value KB。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3456, 1, 'zh-CN', 'validation', 'gte.string', ':attribute 必须多于或等于 :value 个字符。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3457, 1, 'zh-CN', 'validation', 'gte.array', ':attribute 必须多于或等于 :value 个元素。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3458, 1, 'zh-CN', 'validation', 'image', ':attribute 必须是图片。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3459, 1, 'zh-CN', 'validation', 'in', '已选的属性 :attribute 非法。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3460, 1, 'zh-CN', 'validation', 'in_array', ':attribute 没有在 :other 中。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3461, 1, 'zh-CN', 'validation', 'integer', ':attribute 必须是整数。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3462, 1, 'zh-CN', 'validation', 'ip', ':attribute 必须是有效的 IP 地址。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3463, 1, 'zh-CN', 'validation', 'ipv4', ':attribute 必须是有效的 IPv4 地址。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3464, 1, 'zh-CN', 'validation', 'ipv6', ':attribute 必须是有效的 IPv6 地址。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3465, 1, 'zh-CN', 'validation', 'json', ':attribute 必须是正确的 JSON 格式。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3466, 1, 'zh-CN', 'validation', 'lt.numeric', ':attribute 必须小于 :value。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3467, 1, 'zh-CN', 'validation', 'lt.file', ':attribute 必须小于 :value KB。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3468, 1, 'zh-CN', 'validation', 'lt.string', ':attribute 必须少于 :value 个字符。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3469, 1, 'zh-CN', 'validation', 'lt.array', ':attribute 必须少于 :value 个元素。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3470, 1, 'zh-CN', 'validation', 'lte.numeric', ':attribute 必须小于或等于 :value。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3471, 1, 'zh-CN', 'validation', 'lte.file', ':attribute 必须小于或等于 :value KB。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3472, 1, 'zh-CN', 'validation', 'lte.string', ':attribute 必须少于或等于 :value 个字符。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3473, 1, 'zh-CN', 'validation', 'lte.array', ':attribute 必须少于或等于 :value 个元素。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3474, 1, 'zh-CN', 'validation', 'max.numeric', ':attribute 不能大于 :max。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3475, 1, 'zh-CN', 'validation', 'max.file', ':attribute 不能大于 :max KB。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3476, 1, 'zh-CN', 'validation', 'max.string', ':attribute 不能大于 :max 个字符。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3477, 1, 'zh-CN', 'validation', 'max.array', ':attribute 最多只有 :max 个单元。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3478, 1, 'zh-CN', 'validation', 'mimes', ':attribute 必须是一个 :values 类型的文件。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3479, 1, 'zh-CN', 'validation', 'mimetypes', ':attribute 必须是一个 :values 类型的文件。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3480, 1, 'zh-CN', 'validation', 'min.numeric', ':attribute 必须大于等于 :min。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3481, 1, 'zh-CN', 'validation', 'min.file', ':attribute 大小不能小于 :min KB。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3482, 1, 'zh-CN', 'validation', 'min.string', ':attribute 至少为 :min 个字符。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3483, 1, 'zh-CN', 'validation', 'min.array', ':attribute 至少有 :min 个单元。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3484, 1, 'zh-CN', 'validation', 'not_in', '已选的属性 :attribute 非法。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3485, 1, 'zh-CN', 'validation', 'not_regex', ':attribute 的格式错误。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3486, 1, 'zh-CN', 'validation', 'numeric', ':attribute 必须是一个数字。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3487, 1, 'zh-CN', 'validation', 'present', ':attribute 必须存在。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3488, 1, 'zh-CN', 'validation', 'regex', ':attribute 格式不正确。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3489, 1, 'zh-CN', 'validation', 'required', ':attribute 不能为空。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3490, 1, 'zh-CN', 'validation', 'required_if', '当 :other 为 :value 时 :attribute 不能为空。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3491, 1, 'zh-CN', 'validation', 'required_unless', '当 :other 不为 :value 时 :attribute 不能为空。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3492, 1, 'zh-CN', 'validation', 'required_with', '当 :values 存在时 :attribute 不能为空。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3493, 1, 'zh-CN', 'validation', 'required_with_all', '当 :values 存在时 :attribute 不能为空。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3494, 1, 'zh-CN', 'validation', 'required_without', '当 :values 不存在时 :attribute 不能为空。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3495, 1, 'zh-CN', 'validation', 'required_without_all', '当 :values 都不存在时 :attribute 不能为空。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3496, 1, 'zh-CN', 'validation', 'same', ':attribute 和 :other 必须相同。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3497, 1, 'zh-CN', 'validation', 'size.numeric', ':attribute 大小必须为 :size。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3498, 1, 'zh-CN', 'validation', 'size.file', ':attribute 大小必须为 :size KB。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3499, 1, 'zh-CN', 'validation', 'size.string', ':attribute 必须是 :size 个字符。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3500, 1, 'zh-CN', 'validation', 'size.array', ':attribute 必须为 :size 个单元。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3501, 1, 'zh-CN', 'validation', 'string', ':attribute 必须是一个字符串。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3502, 1, 'zh-CN', 'validation', 'timezone', ':attribute 必须是一个合法的时区值。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3503, 1, 'zh-CN', 'validation', 'unique', ':attribute 已经存在。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3504, 1, 'zh-CN', 'validation', 'uploaded', ':attribute 上传失败。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3505, 1, 'zh-CN', 'validation', 'url', ':attribute 格式不正确。', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3506, 1, 'zh-CN', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3507, 1, 'zh-CN', 'validation', 'attributes.name', '名称', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3508, 1, 'zh-CN', 'validation', 'attributes.username', '用户名', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3509, 1, 'zh-CN', 'validation', 'attributes.email', '邮箱', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3510, 1, 'zh-CN', 'validation', 'attributes.first_name', '名', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3511, 1, 'zh-CN', 'validation', 'attributes.last_name', '姓', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3512, 1, 'zh-CN', 'validation', 'attributes.password', '密码', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3513, 1, 'zh-CN', 'validation', 'attributes.password_confirmation', '确认密码', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3514, 1, 'zh-CN', 'validation', 'attributes.city', '城市', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3515, 1, 'zh-CN', 'validation', 'attributes.country', '国家', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3516, 1, 'zh-CN', 'validation', 'attributes.address', '地址', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3517, 1, 'zh-CN', 'validation', 'attributes.phone', '电话', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3518, 1, 'zh-CN', 'validation', 'attributes.mobile', '手机', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3519, 1, 'zh-CN', 'validation', 'attributes.age', '年龄', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3520, 1, 'zh-CN', 'validation', 'attributes.sex', '性别', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3521, 1, 'zh-CN', 'validation', 'attributes.gender', '性别', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3522, 1, 'zh-CN', 'validation', 'attributes.day', '天', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3523, 1, 'zh-CN', 'validation', 'attributes.month', '月', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3524, 1, 'zh-CN', 'validation', 'attributes.year', '年', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3525, 1, 'zh-CN', 'validation', 'attributes.hour', '时', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3526, 1, 'zh-CN', 'validation', 'attributes.minute', '分', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3527, 1, 'zh-CN', 'validation', 'attributes.second', '秒', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3528, 1, 'zh-CN', 'validation', 'attributes.title', '标题', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3529, 1, 'zh-CN', 'validation', 'attributes.content', '内容', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3530, 1, 'zh-CN', 'validation', 'attributes.description', '描述', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3531, 1, 'zh-CN', 'validation', 'attributes.excerpt', '摘要', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3532, 1, 'zh-CN', 'validation', 'attributes.date', '日期', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3533, 1, 'zh-CN', 'validation', 'attributes.time', '时间', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3534, 1, 'zh-CN', 'validation', 'attributes.available', '可用的', '2018-09-12 18:39:30', '2018-09-12 18:39:30'),
(3535, 1, 'zh-CN', 'validation', 'attributes.size', '大小', '2018-09-12 18:39:30', '2018-09-12 18:39:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_position` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `website` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `completed_profile` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `dob`, `address`, `secondary_address`, `job_position`, `phone`, `secondary_phone`, `secondary_email`, `gender`, `website`, `skype`, `facebook`, `twitter`, `google_plus`, `youtube`, `github`, `interest`, `about`, `profile_image`, `super_user`, `manage_supers`, `completed_profile`) VALUES
(1, 'minhsang2603@gmail.com', '$2y$10$A.uOgqPJthpIKaaUQ3QaueO19/dtXbntkRuNCRM4DA1D0wN33Jsd6', 'wdXIDF1r10im7z9Hkv3UP1UG3BBbabkEskoU0cx2GU3OHX2MS2lKFSPwjcGl', '2017-11-15 06:57:09', '2018-10-17 05:50:31', '{\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"backups.list\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.delete\":true,\"block.list\":true,\"block.create\":true,\"block.edit\":true,\"block.delete\":true,\"categories.list\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.delete\":true,\"contacts.list\":true,\"contacts.create\":true,\"contacts.edit\":true,\"contacts.delete\":true,\"custom-fields.list\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.delete\":true,\"dashboard.index\":true,\"galleries.list\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.delete\":true,\"languages.list\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.delete\":true,\"logs.list\":true,\"logs.delete\":true,\"media.index\":true,\"files.list\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.delete\":true,\"folders.list\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.delete\":true,\"member.list\":true,\"member.create\":true,\"member.edit\":true,\"member.delete\":true,\"menus.list\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.delete\":true,\"pages.list\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.delete\":true,\"plugins.list\":true,\"posts.list\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.delete\":true,\"roles.list\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.delete\":true,\"settings.options\":true,\"tags.list\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.delete\":true,\"translations.list\":true,\"translations.create\":true,\"translations.edit\":true,\"translations.delete\":true,\"users.list\":true,\"users.create\":true,\"users.edit\":true,\"users.delete\":true,\"widgets.list\":true,\"superuser\":true,\"manage_supers\":true}', '2018-10-17 05:50:31', 'Sang', 'Nguyen', 'botble', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/avatars/botble/thumb-kratos-god-of-war-artwork-1280x720-1530352345.jpg', 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_meta`
--

CREATE TABLE `user_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'languages_current_data_language', 'en_US', 1, '2017-11-30 18:27:51', '2018-04-13 10:00:39'),
(2, 'admin-theme', 'default', 1, '2018-03-07 03:42:13', '2018-10-03 08:45:40'),
(3, 'admin-locale', 'vi', 1, '2018-03-07 03:42:14', '2018-09-29 10:41:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `widgets`
--

CREATE TABLE `widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(2, 'Botble\\Widget\\Widgets\\Text', 'second_sidebar', 'demo', 0, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\Text\",\"name\":\"Text\",\"content\":\"\"}', '2016-12-18 04:47:20', '2016-12-18 04:47:20'),
(7, 'RecentPostsWidget', 'top_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":\"5\"}', '2016-12-18 04:48:00', '2016-12-18 04:48:00'),
(9, 'Botble\\Widget\\Widgets\\Text', 'primary_sidebar', 'demo', 0, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\Text\",\"name\":\"Text\",\"content\":\"\"}', '2016-12-18 04:50:57', '2016-12-18 04:50:57'),
(19, 'TagsWidget', 'primary_sidebar', 'ripple', 0, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":\"5\"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(20, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(21, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(30, 'RecentPostsWidget', 'footer_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":\"5\"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(31, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Favorite website\",\"menu_id\":\"favorite-website\"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(32, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"My links\",\"menu_id\":\"my-links\"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(42, 'PopularPostsWidget', 'primary_sidebar', 'newstv', 0, '{\"id\":\"PopularPostsWidget\",\"name\":\"Top Views\",\"number_display\":\"5\"}', '2017-04-30 19:55:10', '2017-04-30 19:55:10'),
(43, 'VideoPostsWidget', 'primary_sidebar', 'newstv', 1, '{\"id\":\"VideoPostsWidget\",\"name\":\"Videos\",\"number_display\":\"1\"}', '2017-04-30 19:55:10', '2017-04-30 19:55:10'),
(44, 'FacebookWidget', 'primary_sidebar', 'newstv', 2, '{\"id\":\"FacebookWidget\",\"name\":\"Facebook\",\"facebook_name\":\"T\\u00f4i y\\u00eau l\\u1eadp tr\\u00ecnh\",\"facebook_id\":\"https:\\/\\/www.facebook.com\\/LoveCodingFC\\/\"}', '2017-04-30 19:55:10', '2017-04-30 19:55:10'),
(61, 'RecentPostsWidget', 'footer_sidebar', 'newstv', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"6\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(62, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Favorite websites\",\"menu_id\":\"favorite-website\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(63, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"My links\",\"menu_id\":\"my-links\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(64, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(74, 'TagsWidget', 'primary_sidebar', 'ripple-vi', 0, '{\"id\":\"TagsWidget\",\"name\":\"Th\\u1ebb\",\"number_display\":\"5\"}', '2018-04-13 08:52:05', '2018-04-13 08:52:05'),
(75, 'CustomMenuWidget', 'primary_sidebar', 'ripple-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Chuy\\u00ean m\\u1ee5c n\\u1ed5i b\\u1eadt\",\"menu_id\":\"featured-categories\"}', '2018-04-13 08:52:05', '2018-04-13 08:52:05'),
(76, 'CustomMenuWidget', 'primary_sidebar', 'ripple-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"M\\u1ea1ng x\\u00e3 h\\u1ed9i \",\"menu_id\":\"social\"}', '2018-04-13 08:52:05', '2018-04-13 08:52:05'),
(78, 'RecentPostsWidget', 'top_sidebar', 'ripple-vi', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft n\\u1ed5i b\\u1eadt\",\"number_display\":\"5\"}', '2018-04-13 08:52:59', '2018-04-13 08:52:59'),
(89, 'RecentPostsWidget', 'footer_sidebar', 'ripple-vi', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft n\\u1ed5i b\\u1eadt\",\"number_display\":\"5\"}', '2018-04-13 08:54:28', '2018-04-13 08:54:28'),
(90, 'CustomMenuWidget', 'footer_sidebar', 'ripple-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Website \\u01b0a th\\u00edch\",\"menu_id\":\"favorite-website\"}', '2018-04-13 08:54:28', '2018-04-13 08:54:28'),
(91, 'CustomMenuWidget', 'footer_sidebar', 'ripple-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft \",\"menu_id\":\"main-menu\"}', '2018-04-13 08:54:28', '2018-04-13 08:54:28'),
(103, 'PopularPostsWidget', 'primary_sidebar', 'newstv-vi', 0, '{\"id\":\"PopularPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft n\\u1ed5i b\\u1eadt\",\"number_display\":\"5\"}', '2018-04-13 10:10:24', '2018-04-13 10:10:24'),
(104, 'VideoPostsWidget', 'primary_sidebar', 'newstv-vi', 1, '{\"id\":\"VideoPostsWidget\",\"name\":\"Video \",\"number_display\":\"4\"}', '2018-04-13 10:10:24', '2018-04-13 10:10:24'),
(105, 'FacebookWidget', 'primary_sidebar', 'newstv-vi', 2, '{\"id\":\"FacebookWidget\",\"name\":\"Facebook\",\"facebook_name\":\"Botble Technologies \",\"facebook_id\":\"https:\\/\\/www.facebook.com\\/botble.technologies\\/\"}', '2018-04-13 10:10:24', '2018-04-13 10:10:24'),
(131, 'CustomMenuWidget', 'footer_sidebar', 'newstv-vi', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"\\u001fWebsite \\u01b0a th\\u00edch \",\"menu_id\":\"favorite-website\"}', '2018-04-13 10:12:50', '2018-04-13 10:12:50'),
(132, 'CustomMenuWidget', 'footer_sidebar', 'newstv-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft \",\"menu_id\":\"my-links\"}', '2018-04-13 10:12:50', '2018-04-13 10:12:50'),
(133, 'CustomMenuWidget', 'footer_sidebar', 'newstv-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"\\u001fChuy\\u00ean m\\u1ee5c n\\u1ed5i b\\u1eadt \",\"menu_id\":\"featured-categories\"}', '2018-04-13 10:12:50', '2018-04-13 10:12:50'),
(134, 'CustomMenuWidget', 'footer_sidebar', 'newstv-vi', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"M\\u1ea1ng x\\u00e3 h\\u1ed9i \",\"menu_id\":\"social\"}', '2018-04-13 10:12:50', '2018-04-13 10:12:50');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `audit_history`
--
ALTER TABLE `audit_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_history_user_id_index` (`user_id`),
  ADD KEY `audit_history_module_index` (`module`);

--
-- Chỉ mục cho bảng `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `chuyengias`
--
ALTER TABLE `chuyengias`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fields_field_item_id_foreign` (`field_item_id`);

--
-- Chỉ mục cho bảng `danhmucbvhbs`
--
ALTER TABLE `danhmucbvhbs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Chỉ mục cho bảng `field_groups`
--
ALTER TABLE `field_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_groups_created_by_foreign` (`created_by`),
  ADD KEY `field_groups_updated_by_foreign` (`updated_by`);

--
-- Chỉ mục cho bảng `field_items`
--
ALTER TABLE `field_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_items_field_group_id_foreign` (`field_group_id`),
  ADD KEY `field_items_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_content_id_index` (`content_id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Chỉ mục cho bảng `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_lang_meta_content_id_index` (`lang_meta_content_id`);

--
-- Chỉ mục cho bảng `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Chỉ mục cho bảng `member_password_resets`
--
ALTER TABLE `member_password_resets`
  ADD KEY `member_password_resets_email_index` (`email`),
  ADD KEY `member_password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`related_id`);

--
-- Chỉ mục cho bảng `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`content_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_index` (`user_id`),
  ADD KEY `notes_reference_id_index` (`reference_id`),
  ADD KEY `notes_created_by_index` (`created_by`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_parent_id_index` (`parent_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_category_id_index` (`category_id`),
  ADD KEY `post_category_post_id_index` (`post_id`);

--
-- Chỉ mục cho bảng `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_tag_id_index` (`tag_id`),
  ADD KEY `post_tag_post_id_index` (`post_id`);

--
-- Chỉ mục cho bảng `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_type_index` (`revisionable_type`),
  ADD KEY `revisions_revisionable_id_index` (`revisionable_id`),
  ADD KEY `revisions_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Chỉ mục cho bảng `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `sent_emails`
--
ALTER TABLE `sent_emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sent_emails_hash_unique` (`hash`);

--
-- Chỉ mục cho bảng `sent_emails_url_clicked`
--
ALTER TABLE `sent_emails_url_clicked`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sent_emails_url_clicked_sent_email_id_foreign` (`sent_email_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Chỉ mục cho bảng `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_configurations`
--
ALTER TABLE `table_configurations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_configurations_created_by_index` (`created_by`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_user_id_index` (`user_id`),
  ADD KEY `tags_parent_id_index` (`parent_id`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `audit_history`
--
ALTER TABLE `audit_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT cho bảng `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `chuyengias`
--
ALTER TABLE `chuyengias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `danhmucbvhbs`
--
ALTER TABLE `danhmucbvhbs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `field_groups`
--
ALTER TABLE `field_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `field_items`
--
ALTER TABLE `field_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=632;

--
-- AUTO_INCREMENT cho bảng `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT cho bảng `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sent_emails`
--
ALTER TABLE `sent_emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sent_emails_url_clicked`
--
ALTER TABLE `sent_emails_url_clicked`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `table_configurations`
--
ALTER TABLE `table_configurations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3536;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD CONSTRAINT `custom_fields_field_item_id_foreign` FOREIGN KEY (`field_item_id`) REFERENCES `field_items` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `field_groups`
--
ALTER TABLE `field_groups`
  ADD CONSTRAINT `field_groups_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `field_groups_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `field_items`
--
ALTER TABLE `field_items`
  ADD CONSTRAINT `field_items_field_group_id_foreign` FOREIGN KEY (`field_group_id`) REFERENCES `field_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `field_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `field_items` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sent_emails_url_clicked`
--
ALTER TABLE `sent_emails_url_clicked`
  ADD CONSTRAINT `sent_emails_url_clicked_sent_email_id_foreign` FOREIGN KEY (`sent_email_id`) REFERENCES `sent_emails` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
