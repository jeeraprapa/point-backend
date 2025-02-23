-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.9.0.6999
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table point_backend.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table point_backend.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table point_backend.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table point_backend.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2025_02_20_160553_create_rewards', 2),
	(6, '2025_02_20_160648_create_user_rewards', 2),
	(7, '2025_02_20_161150_create_user_point_transactions', 2);

-- Dumping structure for table point_backend.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table point_backend.password_resets: ~0 rows (approximately)

-- Dumping structure for table point_backend.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table point_backend.personal_access_tokens: ~48 rows (approximately)
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
	(2, 'App\\Models\\User', 1, '1', 'dfe9193cfe4a9fd3dfe52f0b346ceed32c5e4f0be6370b763a745089cb53f2f9', '["*"]', '2025-02-23 01:50:00', '2025-02-20 08:49:33', '2025-02-23 01:50:00'),
	(3, 'App\\Models\\User', 1, '1', '6975178187d512e05410ccb364a21fad24c4380b3cc51c2d197446d2cdd969fa', '["*"]', NULL, '2025-02-21 08:41:57', '2025-02-21 08:41:57'),
	(4, 'App\\Models\\User', 1, '1', 'a7c352764643427289a48d31af998cd2f38a0730235709902f0715d300ba1f66', '["*"]', '2025-02-22 05:49:01', '2025-02-22 05:32:55', '2025-02-22 05:49:01'),
	(5, 'App\\Models\\User', 3, '3', '5dfa11d69fbd940ddce94ad62f2f9f29f99d0c7f0476fa9b115e26afec83ebce', '["*"]', NULL, '2025-02-22 09:40:12', '2025-02-22 09:40:12'),
	(6, 'App\\Models\\User', 3, '3', '236707059e5276083dd9503db9c14095b10dff037172d7cf38bfff0eb378b949', '["*"]', NULL, '2025-02-22 09:41:25', '2025-02-22 09:41:25'),
	(7, 'App\\Models\\User', 3, '3', '78e4c9d784bf0f269b313b6ef13e47922ee377897b49f8ee1e9595030ec3e1f1', '["*"]', NULL, '2025-02-22 09:42:09', '2025-02-22 09:42:09'),
	(8, 'App\\Models\\User', 3, '3', 'ad76ee0595063197b8165f37fa6ce185e02df744ebb3f27224ad378cc1d9819b', '["*"]', NULL, '2025-02-22 09:43:47', '2025-02-22 09:43:47'),
	(9, 'App\\Models\\User', 3, '3', '26acda3a656af0d5241ee665cbf41608190bdbfcb3045374333de19b02c4e86a', '["*"]', NULL, '2025-02-22 09:45:17', '2025-02-22 09:45:17'),
	(10, 'App\\Models\\User', 3, '3', '53d52ab17dccb5a17b2ddb04bd6ffa539bfb69a64e7a1a82cf3daf7fc4612546', '["*"]', NULL, '2025-02-22 09:48:07', '2025-02-22 09:48:07'),
	(11, 'App\\Models\\User', 3, '3', '37c0525a42abe0f7f63ff3f9eded0a4b0332e0cb68797fbe16a60055cdf5c53f', '["*"]', NULL, '2025-02-22 09:48:23', '2025-02-22 09:48:23'),
	(12, 'App\\Models\\User', 3, '3', '06d5360a47fe14b1c45e89b22f2cb0d7b3b1f736b8fbc289246f9ca1a9bac06c', '["*"]', NULL, '2025-02-22 09:48:38', '2025-02-22 09:48:38'),
	(13, 'App\\Models\\User', 3, '3', '17c63430a2bc8b1aaf2d5ba13937893892f6b10571e16a83697fcbe25b5e53a4', '["*"]', NULL, '2025-02-22 09:50:07', '2025-02-22 09:50:07'),
	(14, 'App\\Models\\User', 3, '3', '0578d7de2947cc4ae7f1bf826f45062521e1b02b1b0e387ac77bd49ee51c05c8', '["*"]', NULL, '2025-02-22 09:50:22', '2025-02-22 09:50:22'),
	(15, 'App\\Models\\User', 3, '3', 'c822e6ae26dc35f54f29718460d78f9a635c24f41d8a60487e821f9f5894cb8e', '["*"]', NULL, '2025-02-22 09:51:16', '2025-02-22 09:51:16'),
	(16, 'App\\Models\\User', 3, '3', '3c7c78cdd8a93d4cb2cee760b59d674aa8241222f082a0d325ba19e335ece0d7', '["*"]', NULL, '2025-02-22 11:36:21', '2025-02-22 11:36:21'),
	(17, 'App\\Models\\User', 1, '1', 'f8c673825fae29082bcea51df273f4d5fdbbcb2baeebc70248ac0e6140c97beb', '["*"]', NULL, '2025-02-22 11:48:50', '2025-02-22 11:48:50'),
	(18, 'App\\Models\\User', 3, '3', '130b052c371c662c2a41ab4ef0f3ba4f883201bb83db5677d20a0a1fe3a2ab0d', '["*"]', NULL, '2025-02-22 11:49:18', '2025-02-22 11:49:18'),
	(19, 'App\\Models\\User', 3, '3', 'a07431da667cb85d1fa5112ce788e82cd96871f360d2c8b856f5eb919ed895af', '["*"]', NULL, '2025-02-22 12:11:12', '2025-02-22 12:11:12'),
	(20, 'App\\Models\\User', 3, '3', 'bd20c7f3bdc10eeaef397c404c63b24c30239c1afa59c765169943bee6ed4270', '["*"]', NULL, '2025-02-22 12:12:59', '2025-02-22 12:12:59'),
	(21, 'App\\Models\\User', 1, '1', '55315f5257932c4c10151a94a7f58a1916d44bed2333d44fdf745bfc29a889be', '["*"]', NULL, '2025-02-22 13:53:04', '2025-02-22 13:53:04'),
	(22, 'App\\Models\\User', 1, '1', '6b1de53a9e1f3202f4ed1afe26360f50b718d868acf199d4315b515f1a69f34f', '["*"]', NULL, '2025-02-22 13:57:31', '2025-02-22 13:57:31'),
	(23, 'App\\Models\\User', 1, '1', 'eec4b9331c573a00853f133844a10307c4565ab82fb12463ab2f74d37eef270f', '["*"]', NULL, '2025-02-22 14:00:18', '2025-02-22 14:00:18'),
	(24, 'App\\Models\\User', 3, '3', '1da037280e8826f5dba5063b6c899d00b6349dede91f9749538996918df5f91f', '["*"]', NULL, '2025-02-22 14:03:34', '2025-02-22 14:03:34'),
	(25, 'App\\Models\\User', 3, '3', '6c78b1bb47bfa3ede0e40dfff28da97d2b9c9cdd6d0455b0e0d716eb9a2997c0', '["*"]', NULL, '2025-02-22 14:03:48', '2025-02-22 14:03:48'),
	(26, 'App\\Models\\User', 3, '3', '61c7e395217ea35ff38fb9e6108a215d3a72a7cd35ec7fa2912df80f2ada446d', '["*"]', NULL, '2025-02-22 14:04:24', '2025-02-22 14:04:24'),
	(27, 'App\\Models\\User', 3, '3', '782bb2a78940dd07943be8a767c17b92f33acb69aaacc73081d719fcb4e34541', '["*"]', NULL, '2025-02-22 14:05:21', '2025-02-22 14:05:21'),
	(28, 'App\\Models\\User', 3, '3', 'a23b6eddf1f3945f395fea2c36e805e16450f52d4b1af0dcb5d519baa13aea40', '["*"]', NULL, '2025-02-22 14:11:52', '2025-02-22 14:11:52'),
	(29, 'App\\Models\\User', 3, '3', '32ef446523e74f804fa2dbbd06a41d795abc83de46da759dde9e9b62e4a4caa9', '["*"]', NULL, '2025-02-22 14:13:49', '2025-02-22 14:13:49'),
	(30, 'App\\Models\\User', 3, '3', '66bb8f869ea92e8f5090ca9db64a5d53679c2130e6c65060fadffa8f2769baa7', '["*"]', NULL, '2025-02-22 14:14:19', '2025-02-22 14:14:19'),
	(31, 'App\\Models\\User', 3, '3', '18c7b32762f07535935115187779f7cb1444c6c944b72e5cafb2980609a54365', '["*"]', NULL, '2025-02-22 14:15:33', '2025-02-22 14:15:33'),
	(32, 'App\\Models\\User', 3, '3', '0e3e8d8809935dad82383a4082ffc03560873f754fffabcf2d09d0c4117e3727', '["*"]', NULL, '2025-02-22 14:16:04', '2025-02-22 14:16:04'),
	(33, 'App\\Models\\User', 3, '3', '8f27582147e1f8ff46b8e304da77fef54cfa7b3ea0222d89e60af91c82971721', '["*"]', NULL, '2025-02-22 14:17:13', '2025-02-22 14:17:13'),
	(34, 'App\\Models\\User', 3, '3', '7113aa03d19d439add1fe08a569d424bea973806bfa93484570657ec7166617d', '["*"]', NULL, '2025-02-22 14:17:49', '2025-02-22 14:17:49'),
	(35, 'App\\Models\\User', 3, '3', '22e2ac272e8448c46caf5d963bbdfcfaebf3b488258ff1a7a9196425d21f845b', '["*"]', NULL, '2025-02-22 14:18:32', '2025-02-22 14:18:32'),
	(36, 'App\\Models\\User', 3, '3', '52bda120b6c988a3200a0aefec45a564ed0931b15c839ae0d9b80195fcb8fbce', '["*"]', NULL, '2025-02-22 14:19:32', '2025-02-22 14:19:32'),
	(37, 'App\\Models\\User', 3, '3', 'e1406eafb5e8bfec04878b7528700ec48791820fc414d78e0ea8a6e9ae7220df', '["*"]', NULL, '2025-02-23 00:53:51', '2025-02-23 00:53:51'),
	(38, 'App\\Models\\User', 3, '3', '0cca2f7da624ef79b12cfd7e832f315824801bfa43a4fad0adebf70aa61ffc8f', '["*"]', NULL, '2025-02-23 01:26:12', '2025-02-23 01:26:12'),
	(39, 'App\\Models\\User', 3, '3', '78f520b57ca076b7e208ec6ba5087554851feec5573bdb5415809b79d4453461', '["*"]', '2025-02-23 01:59:25', '2025-02-23 01:31:15', '2025-02-23 01:59:25'),
	(40, 'App\\Models\\User', 3, '3', 'ec7724a4a6155f789ed6fd7a2bd713e6ce153216c2701d792785258f61afaa90', '["*"]', '2025-02-23 02:14:39', '2025-02-23 01:56:50', '2025-02-23 02:14:39'),
	(41, 'App\\Models\\User', 3, '3', '4d1033c52bc08205c6bb35f2341d8a4829771ed0bd27a56ee06fa7941ce0b5c1', '["*"]', '2025-02-23 02:21:47', '2025-02-23 02:14:45', '2025-02-23 02:21:47'),
	(42, 'App\\Models\\User', 3, '3', '66353bdced95d713fc7bc5aa020f266734235b12f3e89bb7d92ce442f5eae40b', '["*"]', '2025-02-23 02:31:47', '2025-02-23 02:29:55', '2025-02-23 02:31:47'),
	(43, 'App\\Models\\User', 3, '3', '319e9b9a1388d3dc797626264d56c3b15c2383ef782e727ab226639c94809a11', '["*"]', NULL, '2025-02-23 03:28:32', '2025-02-23 03:28:32'),
	(44, 'App\\Models\\User', 3, '3', '60729918852df07b5a934091b5e08f0824b3dfe356fc834c6ce43acb88beda91', '["*"]', '2025-02-23 03:40:33', '2025-02-23 03:28:50', '2025-02-23 03:40:33'),
	(45, 'App\\Models\\User', 3, '3', 'd900ab542b87969009d2103743fc1ac202acdce8cc694a685b08ca6218eb7644', '["*"]', '2025-02-23 03:49:06', '2025-02-23 03:40:42', '2025-02-23 03:49:06'),
	(46, 'App\\Models\\User', 3, '3', 'd5bf47826744d7ba3d26139602223d319f2416c918f2d90624bbb34d76609b83', '["*"]', '2025-02-23 04:02:55', '2025-02-23 03:50:12', '2025-02-23 04:02:55'),
	(47, 'App\\Models\\User', 3, '3', '46bebf0471d241bb251b938762f6bb53ab99bd582d7c83cf63b65af700d07f0c', '["*"]', '2025-02-23 04:03:39', '2025-02-23 04:03:28', '2025-02-23 04:03:39'),
	(48, 'App\\Models\\User', 3, '3', '39e5cc7412ef6b793daee0c16d1558e07dd2b7f1d9ef36de6c43485bdb546305', '["*"]', '2025-02-23 04:21:49', '2025-02-23 04:05:35', '2025-02-23 04:21:49'),
	(49, 'App\\Models\\User', 3, '3', '0c65be7a0a51fb09fcc2ef7579819b9803486374387487e01a997ad2f18ac0cf', '["*"]', '2025-02-23 18:24:07', '2025-02-23 04:21:57', '2025-02-23 18:24:07'),
	(50, 'App\\Models\\User', 3, '3', '362493e29cc56f878f824fd5c650adff33163165d2f9eb7906614821472609db', '["*"]', NULL, '2025-02-23 10:45:07', '2025-02-23 10:45:07'),
	(51, 'App\\Models\\User', 3, '3', '64b012e24f522dc7ec58cdb6de9257cec122bd3d55a483ae3a22c0ab649531e6', '["*"]', '2025-02-23 10:48:56', '2025-02-23 10:48:53', '2025-02-23 10:48:56'),
	(52, 'App\\Models\\User', 3, '3', 'badf7b75030bd3271753f5287423733a7d754be070cfbc5e0f5a875c41946407', '["*"]', NULL, '2025-02-23 10:50:39', '2025-02-23 10:50:39');

-- Dumping structure for table point_backend.rewards
CREATE TABLE IF NOT EXISTS `rewards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table point_backend.rewards: ~10 rows (approximately)
INSERT INTO `rewards` (`id`, `title`, `description`, `points`, `image`, `start_date`, `expiry_date`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'McDonald\'s', 'ใช้ 65 คะแนนแลกซื้อ ไก่ทอดแมค 2 ชิ้น (รสดั้งเดิม หรือ สไปซี่) + เฟรนช์ฟรายส์ + Coke (M) 16oz. เพียง 89.- (ปกติ 208-275.-)', 65, 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1735395627959.jpg', '2025-01-01', '2025-12-31', 1, NULL, NULL, NULL),
	(2, 'ไก่บอนชอน', 'ใช้ 110 คะแนน แลกส่วนลด 100.- ทุกเมนู', 110, 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1738315271834.jpg', '2025-02-01', '2025-06-30', 1, NULL, NULL, NULL),
	(3, 'Sizzler', 'ใช้ 110 คะแนน แลกส่วนลด 100.- สำหรับเมนูที่ร่วมรายการ + สลัดบาร์ไม่อั้น', 110, 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1735724667971.jpg', '2025-01-01', '2025-12-31', 1, NULL, NULL, NULL),
	(4, 'Potato Corner', 'ใช้ 30 คะแนน แลกรับส่วนลด 30.- ทุกเมนู (ราคาปกติ)', 30, 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1736762695743.jpg', '2025-01-15', '2025-06-30', 1, NULL, NULL, NULL),
	(5, 'นิตยาไก่ย่าง', 'ใช้ 55 คะแนน แลกรับส่วนลด 50.- เมื่อทานครบ 300.-', 55, 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1738311907229.jpg', '2025-02-01', '2025-04-30', 1, NULL, NULL, NULL),
	(6, 'KFC', 'ใช้ 1 คะแนน แลกซื้อชุดซิงเกอร์เบอร์เกอร์ 1 ชิ้น + ชิคเก้นป๊อป 7 ชิ้น เพียง 99.- (ปกติ 108.-)', 1, 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1718190408462.jpg', '2024-07-01', '2025-03-31', 1, NULL, NULL, NULL),
	(7, 'Katsuya', 'ใช้ 1 คะแนน แลกซื้อเมนูที่ร่วมรายการในราคาพิเศษ', 1, 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1735214160376.jpg', '2025-01-01', '2025-06-30', 1, NULL, NULL, NULL),
	(8, 'The Pizza Company', 'ใช้ 55 คะแนน แลกรับส่วนลด 50.- เมื่อสั่งเมนูจานเดี่ยว (A La Carte) ครบ 350 บาท', 55, 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1738304644848.jpg', '2025-02-01', '2025-06-30', 1, NULL, NULL, NULL),
	(9, 'Pepper Lunch', 'ใช้ 1 คะแนนแลกซื้อเมนูในราคาพิเศษ', 1, 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1735394455692.jpg', '2025-01-01', '2025-06-30', 1, NULL, NULL, NULL),
	(10, 'ZEN Restaurant', 'ใช้ 110 คะแนน แลกรับส่วนลด 100 บาท เมื่อทานครบ 500 บาทขึ้นไป/ใบเสร็จ', 110, 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1735396793305.jpg', '2025-01-01', '2025-12-31', 1, NULL, NULL, NULL);

-- Dumping structure for table point_backend.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` int DEFAULT (0),
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table point_backend.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `point`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Test', 'test@mail.com', NULL, '$2y$10$I/tX6CdkOilLkaENH.jNGeR/3PeXFD/fO/.jkHjiLJDqqlDX7.YgO', 500, NULL, '2025-02-20 08:41:14', '2025-02-20 08:41:14'),
	(3, 'jeeraprapa hongthong', 'jeeraprapa.h@gmail.com', NULL, '$2y$10$/HgR0wN1uzh7dv6R9oDpl.SGcKaVdJrM0Mq0aDft5D.dK2MqOoIeK', 499, NULL, '2025-02-22 08:56:13', '2025-02-23 18:15:03');

-- Dumping structure for table point_backend.user_point_transactions
CREATE TABLE IF NOT EXISTS `user_point_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `reward_id` bigint unsigned NOT NULL,
  `points_change` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_type` enum('redeem','earn') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_point_transactions_user_id_foreign` (`user_id`),
  KEY `user_point_transactions_reward_id_foreign` (`reward_id`),
  CONSTRAINT `user_point_transactions_reward_id_foreign` FOREIGN KEY (`reward_id`) REFERENCES `rewards` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_point_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table point_backend.user_point_transactions: ~0 rows (approximately)
INSERT INTO `user_point_transactions` (`id`, `user_id`, `reward_id`, `points_change`, `description`, `transaction_type`, `transaction_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 3, 6, -1, 'Redeem reward: ', 'redeem', '2025-02-23 18:15:03', '2025-02-23 18:15:03', '2025-02-23 18:15:03', NULL);

-- Dumping structure for table point_backend.user_rewards
CREATE TABLE IF NOT EXISTS `user_rewards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `reward_id` bigint unsigned NOT NULL,
  `redeemed_at` timestamp NULL DEFAULT NULL,
  `status` enum('pending','redeemed','expired') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_rewards_user_id_foreign` (`user_id`),
  KEY `user_rewards_reward_id_foreign` (`reward_id`),
  CONSTRAINT `user_rewards_reward_id_foreign` FOREIGN KEY (`reward_id`) REFERENCES `rewards` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_rewards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table point_backend.user_rewards: ~2 rows (approximately)
INSERT INTO `user_rewards` (`id`, `user_id`, `reward_id`, `redeemed_at`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 3, 6, '2025-02-23 18:15:03', 'redeemed', '2025-02-23 18:15:03', '2025-02-23 18:15:03', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
