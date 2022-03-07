/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : kaopiz

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 10/11/2021 10:42:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_menu` int DEFAULT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES (8, 'Áo Thun', '', 0, '', NULL, '2020-10-16 02:57:36', -1);
INSERT INTO `categories` VALUES (22, 'Hoodie', '', 0, '', NULL, '2020-10-16 02:57:44', -1);
INSERT INTO `categories` VALUES (23, 'danh mục', NULL, 0, 'Welcome! This site allows you to generate text fonts that you can copy and paste into your Instagram bio. It\'s useful for generating Instagram bio symbols to make your profile stand out and have a little bit of individuality. After typing some text into the input box, you can keep clicking the \"show more fonts\" button and it\'ll keep generating an infinite number of different Instagram font variations, or you can use one of the \"tried and true\" fonts like the cursive text, or the other stylish text fonts - i.e. the ones that are a bit \"neater\" than the others because they use a set of symbols that are closer to the normal alphabet, and are more consistent in their style.', NULL, '2020-10-16 02:57:26', -1);
INSERT INTO `categories` VALUES (26, 'Sản phẩm mới', '', 0, '', '2020-10-16 02:56:04', '2020-10-16 02:57:54', -1);
INSERT INTO `categories` VALUES (28, 'Đỗ Thành Trung 123123123', NULL, 1, 'sdfsdf', '2021-02-24 03:58:09', '2021-02-24 03:58:09', -1);
INSERT INTO `categories` VALUES (29, 'trung', NULL, 1, 'sdf', '2021-03-05 03:53:19', '2021-03-05 03:53:19', -1);
INSERT INTO `categories` VALUES (30, 'trung111', '1', 1, '1', NULL, NULL, -1);
INSERT INTO `categories` VALUES (32, 'đồ uống 2', '1', 1, 'nước uống tinh khiết', NULL, '2021-06-07 06:46:41', -1);
INSERT INTO `categories` VALUES (33, 'thực phẩm', NULL, 1, 'đồ ăn tươi sống', '2021-06-07 06:20:58', '2021-06-07 06:20:58', -1);
COMMIT;

-- ----------------------------
-- Table structure for invoice_detail
-- ----------------------------
DROP TABLE IF EXISTS `invoice_detail`;
CREATE TABLE `invoice_detail` (
  `invoice_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of invoice_detail
-- ----------------------------
BEGIN;
INSERT INTO `invoice_detail` VALUES (5, 96, 1, 39837, NULL, NULL);
INSERT INTO `invoice_detail` VALUES (5, 97, 1, 2573, NULL, NULL);
INSERT INTO `invoice_detail` VALUES (6, 89, 2, 68613, NULL, NULL);
INSERT INTO `invoice_detail` VALUES (6, 96, 1, 39837, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` int NOT NULL DEFAULT '0',
  `payment_method` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of invoices
-- ----------------------------
BEGIN;
INSERT INTO `invoices` VALUES (5, 'tieu cuong', '089987789', 'cuongtieu@gmail.com', '15 dong quan', 42410, 2, NULL, NULL);
INSERT INTO `invoices` VALUES (6, 'trần hữu thiện', '0987654321', 'thiendepzai@gmail.com', 'hàm nghi, nam từ liêm, hà nội', 177063, 2, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_01_05_070735_create_categories_table', 2);
INSERT INTO `migrations` VALUES (5, '2019_01_05_072544_alter_table_categories_update_column', 3);
INSERT INTO `migrations` VALUES (6, '2019_01_05_074643_create_products_table', 3);
INSERT INTO `migrations` VALUES (7, '2019_01_05_075227_create_invoices_table', 4);
INSERT INTO `migrations` VALUES (8, '2019_01_05_075449_create_invoice_detail_table', 4);
INSERT INTO `migrations` VALUES (9, '2019_01_12_014833_alter_table_products_add_views_column', 5);
INSERT INTO `migrations` VALUES (10, '2019_01_12_021523_create_table_product_galleries', 6);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_galleries
-- ----------------------------
DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `img_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_galleries
-- ----------------------------
BEGIN;
INSERT INTO `product_galleries` VALUES (1, 1, 'https://lorempixel.com/640/480/cats/?10546', NULL, NULL);
INSERT INTO `product_galleries` VALUES (2, 1, 'https://lorempixel.com/640/480/cats/?23905', NULL, NULL);
INSERT INTO `product_galleries` VALUES (3, 1, 'https://lorempixel.com/640/480/cats/?66813', NULL, NULL);
INSERT INTO `product_galleries` VALUES (4, 2, 'https://lorempixel.com/640/480/cats/?67185', NULL, NULL);
INSERT INTO `product_galleries` VALUES (5, 2, 'https://lorempixel.com/640/480/cats/?24575', NULL, NULL);
INSERT INTO `product_galleries` VALUES (6, 2, 'https://lorempixel.com/640/480/cats/?15621', NULL, NULL);
INSERT INTO `product_galleries` VALUES (7, 2, 'https://lorempixel.com/640/480/cats/?69292', NULL, NULL);
INSERT INTO `product_galleries` VALUES (8, 3, 'https://lorempixel.com/640/480/cats/?25547', NULL, NULL);
INSERT INTO `product_galleries` VALUES (9, 3, 'https://lorempixel.com/640/480/cats/?71965', NULL, NULL);
INSERT INTO `product_galleries` VALUES (10, 3, 'https://lorempixel.com/640/480/cats/?31612', NULL, NULL);
INSERT INTO `product_galleries` VALUES (11, 4, 'https://lorempixel.com/640/480/cats/?10227', NULL, NULL);
INSERT INTO `product_galleries` VALUES (12, 4, 'https://lorempixel.com/640/480/cats/?87389', NULL, NULL);
INSERT INTO `product_galleries` VALUES (13, 4, 'https://lorempixel.com/640/480/cats/?33849', NULL, NULL);
INSERT INTO `product_galleries` VALUES (14, 4, 'https://lorempixel.com/640/480/cats/?98511', NULL, NULL);
INSERT INTO `product_galleries` VALUES (15, 5, 'https://lorempixel.com/640/480/cats/?44170', NULL, NULL);
INSERT INTO `product_galleries` VALUES (16, 5, 'https://lorempixel.com/640/480/cats/?26460', NULL, NULL);
INSERT INTO `product_galleries` VALUES (17, 5, 'https://lorempixel.com/640/480/cats/?41734', NULL, NULL);
INSERT INTO `product_galleries` VALUES (18, 6, 'https://lorempixel.com/640/480/cats/?86850', NULL, NULL);
INSERT INTO `product_galleries` VALUES (19, 6, 'https://lorempixel.com/640/480/cats/?29948', NULL, NULL);
INSERT INTO `product_galleries` VALUES (20, 6, 'https://lorempixel.com/640/480/cats/?52631', NULL, NULL);
INSERT INTO `product_galleries` VALUES (21, 7, 'https://lorempixel.com/640/480/cats/?16016', NULL, NULL);
INSERT INTO `product_galleries` VALUES (22, 7, 'https://lorempixel.com/640/480/cats/?80666', NULL, NULL);
INSERT INTO `product_galleries` VALUES (23, 7, 'https://lorempixel.com/640/480/cats/?71484', NULL, NULL);
INSERT INTO `product_galleries` VALUES (24, 7, 'https://lorempixel.com/640/480/cats/?37459', NULL, NULL);
INSERT INTO `product_galleries` VALUES (25, 7, 'https://lorempixel.com/640/480/cats/?25810', NULL, NULL);
INSERT INTO `product_galleries` VALUES (26, 8, 'https://lorempixel.com/640/480/cats/?63687', NULL, NULL);
INSERT INTO `product_galleries` VALUES (27, 8, 'https://lorempixel.com/640/480/cats/?41774', NULL, NULL);
INSERT INTO `product_galleries` VALUES (28, 8, 'https://lorempixel.com/640/480/cats/?53737', NULL, NULL);
INSERT INTO `product_galleries` VALUES (29, 8, 'https://lorempixel.com/640/480/cats/?19013', NULL, NULL);
INSERT INTO `product_galleries` VALUES (30, 8, 'https://lorempixel.com/640/480/cats/?77785', NULL, NULL);
INSERT INTO `product_galleries` VALUES (31, 9, 'https://lorempixel.com/640/480/cats/?44243', NULL, NULL);
INSERT INTO `product_galleries` VALUES (32, 9, 'https://lorempixel.com/640/480/cats/?47469', NULL, NULL);
INSERT INTO `product_galleries` VALUES (33, 9, 'https://lorempixel.com/640/480/cats/?47198', NULL, NULL);
INSERT INTO `product_galleries` VALUES (34, 9, 'https://lorempixel.com/640/480/cats/?51295', NULL, NULL);
INSERT INTO `product_galleries` VALUES (35, 9, 'https://lorempixel.com/640/480/cats/?15267', NULL, NULL);
INSERT INTO `product_galleries` VALUES (36, 10, 'https://lorempixel.com/640/480/cats/?55076', NULL, NULL);
INSERT INTO `product_galleries` VALUES (37, 10, 'https://lorempixel.com/640/480/cats/?56526', NULL, NULL);
INSERT INTO `product_galleries` VALUES (38, 10, 'https://lorempixel.com/640/480/cats/?47395', NULL, NULL);
INSERT INTO `product_galleries` VALUES (39, 10, 'https://lorempixel.com/640/480/cats/?28764', NULL, NULL);
INSERT INTO `product_galleries` VALUES (40, 11, 'https://lorempixel.com/640/480/cats/?37310', NULL, NULL);
INSERT INTO `product_galleries` VALUES (41, 11, 'https://lorempixel.com/640/480/cats/?30736', NULL, NULL);
INSERT INTO `product_galleries` VALUES (42, 11, 'https://lorempixel.com/640/480/cats/?25207', NULL, NULL);
INSERT INTO `product_galleries` VALUES (43, 11, 'https://lorempixel.com/640/480/cats/?51950', NULL, NULL);
INSERT INTO `product_galleries` VALUES (44, 11, 'https://lorempixel.com/640/480/cats/?12853', NULL, NULL);
INSERT INTO `product_galleries` VALUES (45, 12, 'https://lorempixel.com/640/480/cats/?30453', NULL, NULL);
INSERT INTO `product_galleries` VALUES (46, 12, 'https://lorempixel.com/640/480/cats/?58005', NULL, NULL);
INSERT INTO `product_galleries` VALUES (47, 12, 'https://lorempixel.com/640/480/cats/?56907', NULL, NULL);
INSERT INTO `product_galleries` VALUES (48, 13, 'https://lorempixel.com/640/480/cats/?75762', NULL, NULL);
INSERT INTO `product_galleries` VALUES (49, 13, 'https://lorempixel.com/640/480/cats/?18853', NULL, NULL);
INSERT INTO `product_galleries` VALUES (50, 13, 'https://lorempixel.com/640/480/cats/?46606', NULL, NULL);
INSERT INTO `product_galleries` VALUES (51, 14, 'https://lorempixel.com/640/480/cats/?28151', NULL, NULL);
INSERT INTO `product_galleries` VALUES (52, 14, 'https://lorempixel.com/640/480/cats/?12919', NULL, NULL);
INSERT INTO `product_galleries` VALUES (53, 14, 'https://lorempixel.com/640/480/cats/?46318', NULL, NULL);
INSERT INTO `product_galleries` VALUES (54, 15, 'https://lorempixel.com/640/480/cats/?96128', NULL, NULL);
INSERT INTO `product_galleries` VALUES (55, 15, 'https://lorempixel.com/640/480/cats/?29842', NULL, NULL);
INSERT INTO `product_galleries` VALUES (56, 15, 'https://lorempixel.com/640/480/cats/?17676', NULL, NULL);
INSERT INTO `product_galleries` VALUES (57, 15, 'https://lorempixel.com/640/480/cats/?41467', NULL, NULL);
INSERT INTO `product_galleries` VALUES (58, 16, 'https://lorempixel.com/640/480/cats/?23140', NULL, NULL);
INSERT INTO `product_galleries` VALUES (59, 16, 'https://lorempixel.com/640/480/cats/?84316', NULL, NULL);
INSERT INTO `product_galleries` VALUES (60, 16, 'https://lorempixel.com/640/480/cats/?55984', NULL, NULL);
INSERT INTO `product_galleries` VALUES (61, 17, 'https://lorempixel.com/640/480/cats/?46900', NULL, NULL);
INSERT INTO `product_galleries` VALUES (62, 17, 'https://lorempixel.com/640/480/cats/?49131', NULL, NULL);
INSERT INTO `product_galleries` VALUES (63, 17, 'https://lorempixel.com/640/480/cats/?57927', NULL, NULL);
INSERT INTO `product_galleries` VALUES (64, 18, 'https://lorempixel.com/640/480/cats/?16479', NULL, NULL);
INSERT INTO `product_galleries` VALUES (65, 18, 'https://lorempixel.com/640/480/cats/?32847', NULL, NULL);
INSERT INTO `product_galleries` VALUES (66, 18, 'https://lorempixel.com/640/480/cats/?57846', NULL, NULL);
INSERT INTO `product_galleries` VALUES (67, 18, 'https://lorempixel.com/640/480/cats/?77881', NULL, NULL);
INSERT INTO `product_galleries` VALUES (68, 19, 'https://lorempixel.com/640/480/cats/?10022', NULL, NULL);
INSERT INTO `product_galleries` VALUES (69, 19, 'https://lorempixel.com/640/480/cats/?43867', NULL, NULL);
INSERT INTO `product_galleries` VALUES (70, 19, 'https://lorempixel.com/640/480/cats/?38764', NULL, NULL);
INSERT INTO `product_galleries` VALUES (71, 19, 'https://lorempixel.com/640/480/cats/?39340', NULL, NULL);
INSERT INTO `product_galleries` VALUES (72, 19, 'https://lorempixel.com/640/480/cats/?18785', NULL, NULL);
INSERT INTO `product_galleries` VALUES (73, 20, 'https://lorempixel.com/640/480/cats/?32524', NULL, NULL);
INSERT INTO `product_galleries` VALUES (74, 20, 'https://lorempixel.com/640/480/cats/?72784', NULL, NULL);
INSERT INTO `product_galleries` VALUES (75, 20, 'https://lorempixel.com/640/480/cats/?88463', NULL, NULL);
INSERT INTO `product_galleries` VALUES (76, 20, 'https://lorempixel.com/640/480/cats/?96818', NULL, NULL);
INSERT INTO `product_galleries` VALUES (77, 21, 'https://lorempixel.com/640/480/cats/?82362', NULL, NULL);
INSERT INTO `product_galleries` VALUES (78, 21, 'https://lorempixel.com/640/480/cats/?36685', NULL, NULL);
INSERT INTO `product_galleries` VALUES (79, 21, 'https://lorempixel.com/640/480/cats/?31232', NULL, NULL);
INSERT INTO `product_galleries` VALUES (80, 21, 'https://lorempixel.com/640/480/cats/?67896', NULL, NULL);
INSERT INTO `product_galleries` VALUES (81, 22, 'https://lorempixel.com/640/480/cats/?96932', NULL, NULL);
INSERT INTO `product_galleries` VALUES (82, 22, 'https://lorempixel.com/640/480/cats/?57154', NULL, NULL);
INSERT INTO `product_galleries` VALUES (83, 22, 'https://lorempixel.com/640/480/cats/?97056', NULL, NULL);
INSERT INTO `product_galleries` VALUES (84, 22, 'https://lorempixel.com/640/480/cats/?41302', NULL, NULL);
INSERT INTO `product_galleries` VALUES (85, 22, 'https://lorempixel.com/640/480/cats/?37458', NULL, NULL);
INSERT INTO `product_galleries` VALUES (86, 23, 'https://lorempixel.com/640/480/cats/?85766', NULL, NULL);
INSERT INTO `product_galleries` VALUES (87, 23, 'https://lorempixel.com/640/480/cats/?58748', NULL, NULL);
INSERT INTO `product_galleries` VALUES (88, 23, 'https://lorempixel.com/640/480/cats/?35805', NULL, NULL);
INSERT INTO `product_galleries` VALUES (89, 24, 'https://lorempixel.com/640/480/cats/?53471', NULL, NULL);
INSERT INTO `product_galleries` VALUES (90, 24, 'https://lorempixel.com/640/480/cats/?23126', NULL, NULL);
INSERT INTO `product_galleries` VALUES (91, 24, 'https://lorempixel.com/640/480/cats/?11787', NULL, NULL);
INSERT INTO `product_galleries` VALUES (92, 24, 'https://lorempixel.com/640/480/cats/?60390', NULL, NULL);
INSERT INTO `product_galleries` VALUES (93, 24, 'https://lorempixel.com/640/480/cats/?19663', NULL, NULL);
INSERT INTO `product_galleries` VALUES (94, 25, 'https://lorempixel.com/640/480/cats/?33367', NULL, NULL);
INSERT INTO `product_galleries` VALUES (95, 25, 'https://lorempixel.com/640/480/cats/?98762', NULL, NULL);
INSERT INTO `product_galleries` VALUES (96, 25, 'https://lorempixel.com/640/480/cats/?87512', NULL, NULL);
INSERT INTO `product_galleries` VALUES (97, 25, 'https://lorempixel.com/640/480/cats/?61615', NULL, NULL);
INSERT INTO `product_galleries` VALUES (98, 26, 'https://lorempixel.com/640/480/cats/?11866', NULL, NULL);
INSERT INTO `product_galleries` VALUES (99, 26, 'https://lorempixel.com/640/480/cats/?53197', NULL, NULL);
INSERT INTO `product_galleries` VALUES (100, 26, 'https://lorempixel.com/640/480/cats/?28940', NULL, NULL);
INSERT INTO `product_galleries` VALUES (101, 26, 'https://lorempixel.com/640/480/cats/?24319', NULL, NULL);
INSERT INTO `product_galleries` VALUES (102, 26, 'https://lorempixel.com/640/480/cats/?96222', NULL, NULL);
INSERT INTO `product_galleries` VALUES (103, 27, 'https://lorempixel.com/640/480/cats/?51850', NULL, NULL);
INSERT INTO `product_galleries` VALUES (104, 27, 'https://lorempixel.com/640/480/cats/?76288', NULL, NULL);
INSERT INTO `product_galleries` VALUES (105, 27, 'https://lorempixel.com/640/480/cats/?61211', NULL, NULL);
INSERT INTO `product_galleries` VALUES (106, 27, 'https://lorempixel.com/640/480/cats/?27911', NULL, NULL);
INSERT INTO `product_galleries` VALUES (107, 28, 'https://lorempixel.com/640/480/cats/?20731', NULL, NULL);
INSERT INTO `product_galleries` VALUES (108, 28, 'https://lorempixel.com/640/480/cats/?51063', NULL, NULL);
INSERT INTO `product_galleries` VALUES (109, 28, 'https://lorempixel.com/640/480/cats/?82564', NULL, NULL);
INSERT INTO `product_galleries` VALUES (110, 29, 'https://lorempixel.com/640/480/cats/?89182', NULL, NULL);
INSERT INTO `product_galleries` VALUES (111, 29, 'https://lorempixel.com/640/480/cats/?59597', NULL, NULL);
INSERT INTO `product_galleries` VALUES (112, 29, 'https://lorempixel.com/640/480/cats/?97357', NULL, NULL);
INSERT INTO `product_galleries` VALUES (113, 30, 'https://lorempixel.com/640/480/cats/?23119', NULL, NULL);
INSERT INTO `product_galleries` VALUES (114, 30, 'https://lorempixel.com/640/480/cats/?47740', NULL, NULL);
INSERT INTO `product_galleries` VALUES (115, 30, 'https://lorempixel.com/640/480/cats/?35375', NULL, NULL);
INSERT INTO `product_galleries` VALUES (116, 31, 'https://lorempixel.com/640/480/cats/?85442', NULL, NULL);
INSERT INTO `product_galleries` VALUES (117, 31, 'https://lorempixel.com/640/480/cats/?75400', NULL, NULL);
INSERT INTO `product_galleries` VALUES (118, 31, 'https://lorempixel.com/640/480/cats/?92437', NULL, NULL);
INSERT INTO `product_galleries` VALUES (119, 32, 'https://lorempixel.com/640/480/cats/?51217', NULL, NULL);
INSERT INTO `product_galleries` VALUES (120, 32, 'https://lorempixel.com/640/480/cats/?84632', NULL, NULL);
INSERT INTO `product_galleries` VALUES (121, 32, 'https://lorempixel.com/640/480/cats/?19840', NULL, NULL);
INSERT INTO `product_galleries` VALUES (122, 33, 'https://lorempixel.com/640/480/cats/?66297', NULL, NULL);
INSERT INTO `product_galleries` VALUES (123, 33, 'https://lorempixel.com/640/480/cats/?76125', NULL, NULL);
INSERT INTO `product_galleries` VALUES (124, 33, 'https://lorempixel.com/640/480/cats/?48280', NULL, NULL);
INSERT INTO `product_galleries` VALUES (125, 34, 'https://lorempixel.com/640/480/cats/?10008', NULL, NULL);
INSERT INTO `product_galleries` VALUES (126, 34, 'https://lorempixel.com/640/480/cats/?56069', NULL, NULL);
INSERT INTO `product_galleries` VALUES (127, 34, 'https://lorempixel.com/640/480/cats/?33208', NULL, NULL);
INSERT INTO `product_galleries` VALUES (128, 34, 'https://lorempixel.com/640/480/cats/?50674', NULL, NULL);
INSERT INTO `product_galleries` VALUES (129, 35, 'https://lorempixel.com/640/480/cats/?30989', NULL, NULL);
INSERT INTO `product_galleries` VALUES (130, 35, 'https://lorempixel.com/640/480/cats/?67180', NULL, NULL);
INSERT INTO `product_galleries` VALUES (131, 35, 'https://lorempixel.com/640/480/cats/?62204', NULL, NULL);
INSERT INTO `product_galleries` VALUES (132, 35, 'https://lorempixel.com/640/480/cats/?94888', NULL, NULL);
INSERT INTO `product_galleries` VALUES (133, 35, 'https://lorempixel.com/640/480/cats/?40690', NULL, NULL);
INSERT INTO `product_galleries` VALUES (134, 36, 'https://lorempixel.com/640/480/cats/?72384', NULL, NULL);
INSERT INTO `product_galleries` VALUES (135, 36, 'https://lorempixel.com/640/480/cats/?47333', NULL, NULL);
INSERT INTO `product_galleries` VALUES (136, 36, 'https://lorempixel.com/640/480/cats/?34049', NULL, NULL);
INSERT INTO `product_galleries` VALUES (137, 36, 'https://lorempixel.com/640/480/cats/?23086', NULL, NULL);
INSERT INTO `product_galleries` VALUES (138, 36, 'https://lorempixel.com/640/480/cats/?53368', NULL, NULL);
INSERT INTO `product_galleries` VALUES (139, 37, 'https://lorempixel.com/640/480/cats/?97320', NULL, NULL);
INSERT INTO `product_galleries` VALUES (140, 37, 'https://lorempixel.com/640/480/cats/?15688', NULL, NULL);
INSERT INTO `product_galleries` VALUES (141, 37, 'https://lorempixel.com/640/480/cats/?19290', NULL, NULL);
INSERT INTO `product_galleries` VALUES (142, 37, 'https://lorempixel.com/640/480/cats/?14295', NULL, NULL);
INSERT INTO `product_galleries` VALUES (143, 37, 'https://lorempixel.com/640/480/cats/?90872', NULL, NULL);
INSERT INTO `product_galleries` VALUES (144, 38, 'https://lorempixel.com/640/480/cats/?96203', NULL, NULL);
INSERT INTO `product_galleries` VALUES (145, 38, 'https://lorempixel.com/640/480/cats/?59453', NULL, NULL);
INSERT INTO `product_galleries` VALUES (146, 38, 'https://lorempixel.com/640/480/cats/?66525', NULL, NULL);
INSERT INTO `product_galleries` VALUES (147, 38, 'https://lorempixel.com/640/480/cats/?77968', NULL, NULL);
INSERT INTO `product_galleries` VALUES (148, 39, 'https://lorempixel.com/640/480/cats/?42720', NULL, NULL);
INSERT INTO `product_galleries` VALUES (149, 39, 'https://lorempixel.com/640/480/cats/?61860', NULL, NULL);
INSERT INTO `product_galleries` VALUES (150, 39, 'https://lorempixel.com/640/480/cats/?56031', NULL, NULL);
INSERT INTO `product_galleries` VALUES (151, 40, 'https://lorempixel.com/640/480/cats/?43305', NULL, NULL);
INSERT INTO `product_galleries` VALUES (152, 40, 'https://lorempixel.com/640/480/cats/?77715', NULL, NULL);
INSERT INTO `product_galleries` VALUES (153, 40, 'https://lorempixel.com/640/480/cats/?96875', NULL, NULL);
INSERT INTO `product_galleries` VALUES (154, 40, 'https://lorempixel.com/640/480/cats/?79975', NULL, NULL);
INSERT INTO `product_galleries` VALUES (155, 41, 'https://lorempixel.com/640/480/cats/?65481', NULL, NULL);
INSERT INTO `product_galleries` VALUES (156, 41, 'https://lorempixel.com/640/480/cats/?77041', NULL, NULL);
INSERT INTO `product_galleries` VALUES (157, 41, 'https://lorempixel.com/640/480/cats/?79734', NULL, NULL);
INSERT INTO `product_galleries` VALUES (158, 42, 'https://lorempixel.com/640/480/cats/?42028', NULL, NULL);
INSERT INTO `product_galleries` VALUES (159, 42, 'https://lorempixel.com/640/480/cats/?97900', NULL, NULL);
INSERT INTO `product_galleries` VALUES (160, 42, 'https://lorempixel.com/640/480/cats/?32792', NULL, NULL);
INSERT INTO `product_galleries` VALUES (161, 42, 'https://lorempixel.com/640/480/cats/?96427', NULL, NULL);
INSERT INTO `product_galleries` VALUES (162, 43, 'https://lorempixel.com/640/480/cats/?18404', NULL, NULL);
INSERT INTO `product_galleries` VALUES (163, 43, 'https://lorempixel.com/640/480/cats/?30561', NULL, NULL);
INSERT INTO `product_galleries` VALUES (164, 43, 'https://lorempixel.com/640/480/cats/?82719', NULL, NULL);
INSERT INTO `product_galleries` VALUES (165, 43, 'https://lorempixel.com/640/480/cats/?54915', NULL, NULL);
INSERT INTO `product_galleries` VALUES (166, 43, 'https://lorempixel.com/640/480/cats/?59557', NULL, NULL);
INSERT INTO `product_galleries` VALUES (167, 44, 'https://lorempixel.com/640/480/cats/?13149', NULL, NULL);
INSERT INTO `product_galleries` VALUES (168, 44, 'https://lorempixel.com/640/480/cats/?62382', NULL, NULL);
INSERT INTO `product_galleries` VALUES (169, 44, 'https://lorempixel.com/640/480/cats/?65684', NULL, NULL);
INSERT INTO `product_galleries` VALUES (170, 44, 'https://lorempixel.com/640/480/cats/?63440', NULL, NULL);
INSERT INTO `product_galleries` VALUES (171, 45, 'https://lorempixel.com/640/480/cats/?70977', NULL, NULL);
INSERT INTO `product_galleries` VALUES (172, 45, 'https://lorempixel.com/640/480/cats/?64695', NULL, NULL);
INSERT INTO `product_galleries` VALUES (173, 45, 'https://lorempixel.com/640/480/cats/?98096', NULL, NULL);
INSERT INTO `product_galleries` VALUES (174, 45, 'https://lorempixel.com/640/480/cats/?99658', NULL, NULL);
INSERT INTO `product_galleries` VALUES (175, 45, 'https://lorempixel.com/640/480/cats/?28580', NULL, NULL);
INSERT INTO `product_galleries` VALUES (176, 46, 'https://lorempixel.com/640/480/cats/?41240', NULL, NULL);
INSERT INTO `product_galleries` VALUES (177, 46, 'https://lorempixel.com/640/480/cats/?26337', NULL, NULL);
INSERT INTO `product_galleries` VALUES (178, 46, 'https://lorempixel.com/640/480/cats/?93630', NULL, NULL);
INSERT INTO `product_galleries` VALUES (179, 46, 'https://lorempixel.com/640/480/cats/?84024', NULL, NULL);
INSERT INTO `product_galleries` VALUES (180, 47, 'https://lorempixel.com/640/480/cats/?99428', NULL, NULL);
INSERT INTO `product_galleries` VALUES (181, 47, 'https://lorempixel.com/640/480/cats/?26891', NULL, NULL);
INSERT INTO `product_galleries` VALUES (182, 47, 'https://lorempixel.com/640/480/cats/?81523', NULL, NULL);
INSERT INTO `product_galleries` VALUES (183, 47, 'https://lorempixel.com/640/480/cats/?85579', NULL, NULL);
INSERT INTO `product_galleries` VALUES (184, 47, 'https://lorempixel.com/640/480/cats/?91038', NULL, NULL);
INSERT INTO `product_galleries` VALUES (185, 48, 'https://lorempixel.com/640/480/cats/?82464', NULL, NULL);
INSERT INTO `product_galleries` VALUES (186, 48, 'https://lorempixel.com/640/480/cats/?89880', NULL, NULL);
INSERT INTO `product_galleries` VALUES (187, 48, 'https://lorempixel.com/640/480/cats/?96576', NULL, NULL);
INSERT INTO `product_galleries` VALUES (188, 49, 'https://lorempixel.com/640/480/cats/?57634', NULL, NULL);
INSERT INTO `product_galleries` VALUES (189, 49, 'https://lorempixel.com/640/480/cats/?56556', NULL, NULL);
INSERT INTO `product_galleries` VALUES (190, 49, 'https://lorempixel.com/640/480/cats/?93115', NULL, NULL);
INSERT INTO `product_galleries` VALUES (191, 49, 'https://lorempixel.com/640/480/cats/?13609', NULL, NULL);
INSERT INTO `product_galleries` VALUES (192, 50, 'https://lorempixel.com/640/480/cats/?98587', NULL, NULL);
INSERT INTO `product_galleries` VALUES (193, 50, 'https://lorempixel.com/640/480/cats/?52770', NULL, NULL);
INSERT INTO `product_galleries` VALUES (194, 50, 'https://lorempixel.com/640/480/cats/?66402', NULL, NULL);
INSERT INTO `product_galleries` VALUES (195, 51, 'https://lorempixel.com/640/480/cats/?85831', NULL, NULL);
INSERT INTO `product_galleries` VALUES (196, 51, 'https://lorempixel.com/640/480/cats/?76195', NULL, NULL);
INSERT INTO `product_galleries` VALUES (197, 51, 'https://lorempixel.com/640/480/cats/?72317', NULL, NULL);
INSERT INTO `product_galleries` VALUES (198, 52, 'https://lorempixel.com/640/480/cats/?19033', NULL, NULL);
INSERT INTO `product_galleries` VALUES (199, 52, 'https://lorempixel.com/640/480/cats/?87591', NULL, NULL);
INSERT INTO `product_galleries` VALUES (200, 52, 'https://lorempixel.com/640/480/cats/?60897', NULL, NULL);
INSERT INTO `product_galleries` VALUES (201, 52, 'https://lorempixel.com/640/480/cats/?54972', NULL, NULL);
INSERT INTO `product_galleries` VALUES (202, 53, 'https://lorempixel.com/640/480/cats/?69178', NULL, NULL);
INSERT INTO `product_galleries` VALUES (203, 53, 'https://lorempixel.com/640/480/cats/?29671', NULL, NULL);
INSERT INTO `product_galleries` VALUES (204, 53, 'https://lorempixel.com/640/480/cats/?91658', NULL, NULL);
INSERT INTO `product_galleries` VALUES (205, 54, 'https://lorempixel.com/640/480/cats/?76412', NULL, NULL);
INSERT INTO `product_galleries` VALUES (206, 54, 'https://lorempixel.com/640/480/cats/?24867', NULL, NULL);
INSERT INTO `product_galleries` VALUES (207, 54, 'https://lorempixel.com/640/480/cats/?54658', NULL, NULL);
INSERT INTO `product_galleries` VALUES (208, 55, 'https://lorempixel.com/640/480/cats/?54009', NULL, NULL);
INSERT INTO `product_galleries` VALUES (209, 55, 'https://lorempixel.com/640/480/cats/?41465', NULL, NULL);
INSERT INTO `product_galleries` VALUES (210, 55, 'https://lorempixel.com/640/480/cats/?51223', NULL, NULL);
INSERT INTO `product_galleries` VALUES (211, 55, 'https://lorempixel.com/640/480/cats/?90484', NULL, NULL);
INSERT INTO `product_galleries` VALUES (212, 56, 'https://lorempixel.com/640/480/cats/?67326', NULL, NULL);
INSERT INTO `product_galleries` VALUES (213, 56, 'https://lorempixel.com/640/480/cats/?61444', NULL, NULL);
INSERT INTO `product_galleries` VALUES (214, 56, 'https://lorempixel.com/640/480/cats/?69381', NULL, NULL);
INSERT INTO `product_galleries` VALUES (215, 57, 'https://lorempixel.com/640/480/cats/?59653', NULL, NULL);
INSERT INTO `product_galleries` VALUES (216, 57, 'https://lorempixel.com/640/480/cats/?77492', NULL, NULL);
INSERT INTO `product_galleries` VALUES (217, 57, 'https://lorempixel.com/640/480/cats/?29601', NULL, NULL);
INSERT INTO `product_galleries` VALUES (218, 57, 'https://lorempixel.com/640/480/cats/?33522', NULL, NULL);
INSERT INTO `product_galleries` VALUES (219, 57, 'https://lorempixel.com/640/480/cats/?96833', NULL, NULL);
INSERT INTO `product_galleries` VALUES (220, 58, 'https://lorempixel.com/640/480/cats/?31175', NULL, NULL);
INSERT INTO `product_galleries` VALUES (221, 58, 'https://lorempixel.com/640/480/cats/?87020', NULL, NULL);
INSERT INTO `product_galleries` VALUES (222, 58, 'https://lorempixel.com/640/480/cats/?29338', NULL, NULL);
INSERT INTO `product_galleries` VALUES (223, 58, 'https://lorempixel.com/640/480/cats/?97502', NULL, NULL);
INSERT INTO `product_galleries` VALUES (224, 58, 'https://lorempixel.com/640/480/cats/?17065', NULL, NULL);
INSERT INTO `product_galleries` VALUES (225, 59, 'https://lorempixel.com/640/480/cats/?36711', NULL, NULL);
INSERT INTO `product_galleries` VALUES (226, 59, 'https://lorempixel.com/640/480/cats/?23487', NULL, NULL);
INSERT INTO `product_galleries` VALUES (227, 59, 'https://lorempixel.com/640/480/cats/?52090', NULL, NULL);
INSERT INTO `product_galleries` VALUES (228, 59, 'https://lorempixel.com/640/480/cats/?25114', NULL, NULL);
INSERT INTO `product_galleries` VALUES (229, 60, 'https://lorempixel.com/640/480/cats/?94806', NULL, NULL);
INSERT INTO `product_galleries` VALUES (230, 60, 'https://lorempixel.com/640/480/cats/?65979', NULL, NULL);
INSERT INTO `product_galleries` VALUES (231, 60, 'https://lorempixel.com/640/480/cats/?16462', NULL, NULL);
INSERT INTO `product_galleries` VALUES (232, 60, 'https://lorempixel.com/640/480/cats/?58719', NULL, NULL);
INSERT INTO `product_galleries` VALUES (233, 60, 'https://lorempixel.com/640/480/cats/?38888', NULL, NULL);
INSERT INTO `product_galleries` VALUES (234, 61, 'https://lorempixel.com/640/480/cats/?43706', NULL, NULL);
INSERT INTO `product_galleries` VALUES (235, 61, 'https://lorempixel.com/640/480/cats/?49139', NULL, NULL);
INSERT INTO `product_galleries` VALUES (236, 61, 'https://lorempixel.com/640/480/cats/?72622', NULL, NULL);
INSERT INTO `product_galleries` VALUES (237, 62, 'https://lorempixel.com/640/480/cats/?91536', NULL, NULL);
INSERT INTO `product_galleries` VALUES (238, 62, 'https://lorempixel.com/640/480/cats/?27182', NULL, NULL);
INSERT INTO `product_galleries` VALUES (239, 62, 'https://lorempixel.com/640/480/cats/?39972', NULL, NULL);
INSERT INTO `product_galleries` VALUES (240, 62, 'https://lorempixel.com/640/480/cats/?97179', NULL, NULL);
INSERT INTO `product_galleries` VALUES (241, 63, 'https://lorempixel.com/640/480/cats/?95300', NULL, NULL);
INSERT INTO `product_galleries` VALUES (242, 63, 'https://lorempixel.com/640/480/cats/?73870', NULL, NULL);
INSERT INTO `product_galleries` VALUES (243, 63, 'https://lorempixel.com/640/480/cats/?76734', NULL, NULL);
INSERT INTO `product_galleries` VALUES (244, 63, 'https://lorempixel.com/640/480/cats/?52520', NULL, NULL);
INSERT INTO `product_galleries` VALUES (245, 63, 'https://lorempixel.com/640/480/cats/?71973', NULL, NULL);
INSERT INTO `product_galleries` VALUES (246, 64, 'https://lorempixel.com/640/480/cats/?71530', NULL, NULL);
INSERT INTO `product_galleries` VALUES (247, 64, 'https://lorempixel.com/640/480/cats/?64561', NULL, NULL);
INSERT INTO `product_galleries` VALUES (248, 64, 'https://lorempixel.com/640/480/cats/?13452', NULL, NULL);
INSERT INTO `product_galleries` VALUES (249, 65, 'https://lorempixel.com/640/480/cats/?15601', NULL, NULL);
INSERT INTO `product_galleries` VALUES (250, 65, 'https://lorempixel.com/640/480/cats/?87968', NULL, NULL);
INSERT INTO `product_galleries` VALUES (251, 65, 'https://lorempixel.com/640/480/cats/?88828', NULL, NULL);
INSERT INTO `product_galleries` VALUES (252, 65, 'https://lorempixel.com/640/480/cats/?89200', NULL, NULL);
INSERT INTO `product_galleries` VALUES (253, 66, 'https://lorempixel.com/640/480/cats/?51062', NULL, NULL);
INSERT INTO `product_galleries` VALUES (254, 66, 'https://lorempixel.com/640/480/cats/?92177', NULL, NULL);
INSERT INTO `product_galleries` VALUES (255, 66, 'https://lorempixel.com/640/480/cats/?48145', NULL, NULL);
INSERT INTO `product_galleries` VALUES (256, 67, 'https://lorempixel.com/640/480/cats/?29025', NULL, NULL);
INSERT INTO `product_galleries` VALUES (257, 67, 'https://lorempixel.com/640/480/cats/?37588', NULL, NULL);
INSERT INTO `product_galleries` VALUES (258, 67, 'https://lorempixel.com/640/480/cats/?47573', NULL, NULL);
INSERT INTO `product_galleries` VALUES (259, 68, 'https://lorempixel.com/640/480/cats/?62921', NULL, NULL);
INSERT INTO `product_galleries` VALUES (260, 68, 'https://lorempixel.com/640/480/cats/?42596', NULL, NULL);
INSERT INTO `product_galleries` VALUES (261, 68, 'https://lorempixel.com/640/480/cats/?24186', NULL, NULL);
INSERT INTO `product_galleries` VALUES (262, 68, 'https://lorempixel.com/640/480/cats/?15940', NULL, NULL);
INSERT INTO `product_galleries` VALUES (263, 69, 'https://lorempixel.com/640/480/cats/?17788', NULL, NULL);
INSERT INTO `product_galleries` VALUES (264, 69, 'https://lorempixel.com/640/480/cats/?10763', NULL, NULL);
INSERT INTO `product_galleries` VALUES (265, 69, 'https://lorempixel.com/640/480/cats/?83058', NULL, NULL);
INSERT INTO `product_galleries` VALUES (266, 69, 'https://lorempixel.com/640/480/cats/?95174', NULL, NULL);
INSERT INTO `product_galleries` VALUES (267, 69, 'https://lorempixel.com/640/480/cats/?86660', NULL, NULL);
INSERT INTO `product_galleries` VALUES (268, 70, 'https://lorempixel.com/640/480/cats/?91763', NULL, NULL);
INSERT INTO `product_galleries` VALUES (269, 70, 'https://lorempixel.com/640/480/cats/?94007', NULL, NULL);
INSERT INTO `product_galleries` VALUES (270, 70, 'https://lorempixel.com/640/480/cats/?28914', NULL, NULL);
INSERT INTO `product_galleries` VALUES (271, 71, 'https://lorempixel.com/640/480/cats/?56913', NULL, NULL);
INSERT INTO `product_galleries` VALUES (272, 71, 'https://lorempixel.com/640/480/cats/?83906', NULL, NULL);
INSERT INTO `product_galleries` VALUES (273, 71, 'https://lorempixel.com/640/480/cats/?67868', NULL, NULL);
INSERT INTO `product_galleries` VALUES (274, 72, 'https://lorempixel.com/640/480/cats/?22942', NULL, NULL);
INSERT INTO `product_galleries` VALUES (275, 72, 'https://lorempixel.com/640/480/cats/?72215', NULL, NULL);
INSERT INTO `product_galleries` VALUES (276, 72, 'https://lorempixel.com/640/480/cats/?17840', NULL, NULL);
INSERT INTO `product_galleries` VALUES (277, 73, 'https://lorempixel.com/640/480/cats/?49262', NULL, NULL);
INSERT INTO `product_galleries` VALUES (278, 73, 'https://lorempixel.com/640/480/cats/?83690', NULL, NULL);
INSERT INTO `product_galleries` VALUES (279, 73, 'https://lorempixel.com/640/480/cats/?80454', NULL, NULL);
INSERT INTO `product_galleries` VALUES (280, 73, 'https://lorempixel.com/640/480/cats/?93506', NULL, NULL);
INSERT INTO `product_galleries` VALUES (281, 74, 'https://lorempixel.com/640/480/cats/?60060', NULL, NULL);
INSERT INTO `product_galleries` VALUES (282, 74, 'https://lorempixel.com/640/480/cats/?76305', NULL, NULL);
INSERT INTO `product_galleries` VALUES (283, 74, 'https://lorempixel.com/640/480/cats/?26573', NULL, NULL);
INSERT INTO `product_galleries` VALUES (284, 74, 'https://lorempixel.com/640/480/cats/?41199', NULL, NULL);
INSERT INTO `product_galleries` VALUES (285, 74, 'https://lorempixel.com/640/480/cats/?92334', NULL, NULL);
INSERT INTO `product_galleries` VALUES (286, 75, 'https://lorempixel.com/640/480/cats/?50670', NULL, NULL);
INSERT INTO `product_galleries` VALUES (287, 75, 'https://lorempixel.com/640/480/cats/?64812', NULL, NULL);
INSERT INTO `product_galleries` VALUES (288, 75, 'https://lorempixel.com/640/480/cats/?78308', NULL, NULL);
INSERT INTO `product_galleries` VALUES (289, 76, 'https://lorempixel.com/640/480/cats/?62819', NULL, NULL);
INSERT INTO `product_galleries` VALUES (290, 76, 'https://lorempixel.com/640/480/cats/?83129', NULL, NULL);
INSERT INTO `product_galleries` VALUES (291, 76, 'https://lorempixel.com/640/480/cats/?32736', NULL, NULL);
INSERT INTO `product_galleries` VALUES (292, 76, 'https://lorempixel.com/640/480/cats/?55558', NULL, NULL);
INSERT INTO `product_galleries` VALUES (293, 77, 'https://lorempixel.com/640/480/cats/?70344', NULL, NULL);
INSERT INTO `product_galleries` VALUES (294, 77, 'https://lorempixel.com/640/480/cats/?89445', NULL, NULL);
INSERT INTO `product_galleries` VALUES (295, 77, 'https://lorempixel.com/640/480/cats/?77880', NULL, NULL);
INSERT INTO `product_galleries` VALUES (296, 77, 'https://lorempixel.com/640/480/cats/?28495', NULL, NULL);
INSERT INTO `product_galleries` VALUES (297, 78, 'https://lorempixel.com/640/480/cats/?49993', NULL, NULL);
INSERT INTO `product_galleries` VALUES (298, 78, 'https://lorempixel.com/640/480/cats/?88527', NULL, NULL);
INSERT INTO `product_galleries` VALUES (299, 78, 'https://lorempixel.com/640/480/cats/?26314', NULL, NULL);
INSERT INTO `product_galleries` VALUES (300, 79, 'https://lorempixel.com/640/480/cats/?32978', NULL, NULL);
INSERT INTO `product_galleries` VALUES (301, 79, 'https://lorempixel.com/640/480/cats/?28861', NULL, NULL);
INSERT INTO `product_galleries` VALUES (302, 79, 'https://lorempixel.com/640/480/cats/?22483', NULL, NULL);
INSERT INTO `product_galleries` VALUES (303, 79, 'https://lorempixel.com/640/480/cats/?22837', NULL, NULL);
INSERT INTO `product_galleries` VALUES (304, 80, 'https://lorempixel.com/640/480/cats/?36945', NULL, NULL);
INSERT INTO `product_galleries` VALUES (305, 80, 'https://lorempixel.com/640/480/cats/?78182', NULL, NULL);
INSERT INTO `product_galleries` VALUES (306, 80, 'https://lorempixel.com/640/480/cats/?35643', NULL, NULL);
INSERT INTO `product_galleries` VALUES (307, 80, 'https://lorempixel.com/640/480/cats/?56801', NULL, NULL);
INSERT INTO `product_galleries` VALUES (308, 81, 'https://lorempixel.com/640/480/cats/?35066', NULL, NULL);
INSERT INTO `product_galleries` VALUES (309, 81, 'https://lorempixel.com/640/480/cats/?56994', NULL, NULL);
INSERT INTO `product_galleries` VALUES (310, 81, 'https://lorempixel.com/640/480/cats/?72359', NULL, NULL);
INSERT INTO `product_galleries` VALUES (311, 81, 'https://lorempixel.com/640/480/cats/?75484', NULL, NULL);
INSERT INTO `product_galleries` VALUES (312, 81, 'https://lorempixel.com/640/480/cats/?36072', NULL, NULL);
INSERT INTO `product_galleries` VALUES (313, 82, 'https://lorempixel.com/640/480/cats/?69415', NULL, NULL);
INSERT INTO `product_galleries` VALUES (314, 82, 'https://lorempixel.com/640/480/cats/?32684', NULL, NULL);
INSERT INTO `product_galleries` VALUES (315, 82, 'https://lorempixel.com/640/480/cats/?83509', NULL, NULL);
INSERT INTO `product_galleries` VALUES (316, 82, 'https://lorempixel.com/640/480/cats/?68163', NULL, NULL);
INSERT INTO `product_galleries` VALUES (317, 83, 'https://lorempixel.com/640/480/cats/?34439', NULL, NULL);
INSERT INTO `product_galleries` VALUES (318, 83, 'https://lorempixel.com/640/480/cats/?12321', NULL, NULL);
INSERT INTO `product_galleries` VALUES (319, 83, 'https://lorempixel.com/640/480/cats/?99543', NULL, NULL);
INSERT INTO `product_galleries` VALUES (320, 84, 'https://lorempixel.com/640/480/cats/?83179', NULL, NULL);
INSERT INTO `product_galleries` VALUES (321, 84, 'https://lorempixel.com/640/480/cats/?37380', NULL, NULL);
INSERT INTO `product_galleries` VALUES (322, 84, 'https://lorempixel.com/640/480/cats/?84763', NULL, NULL);
INSERT INTO `product_galleries` VALUES (323, 85, 'https://lorempixel.com/640/480/cats/?61238', NULL, NULL);
INSERT INTO `product_galleries` VALUES (324, 85, 'https://lorempixel.com/640/480/cats/?63909', NULL, NULL);
INSERT INTO `product_galleries` VALUES (325, 85, 'https://lorempixel.com/640/480/cats/?77036', NULL, NULL);
INSERT INTO `product_galleries` VALUES (326, 85, 'https://lorempixel.com/640/480/cats/?33796', NULL, NULL);
INSERT INTO `product_galleries` VALUES (327, 85, 'https://lorempixel.com/640/480/cats/?58483', NULL, NULL);
INSERT INTO `product_galleries` VALUES (328, 86, 'https://lorempixel.com/640/480/cats/?10900', NULL, NULL);
INSERT INTO `product_galleries` VALUES (329, 86, 'https://lorempixel.com/640/480/cats/?98306', NULL, NULL);
INSERT INTO `product_galleries` VALUES (330, 86, 'https://lorempixel.com/640/480/cats/?52197', NULL, NULL);
INSERT INTO `product_galleries` VALUES (331, 86, 'https://lorempixel.com/640/480/cats/?95751', NULL, NULL);
INSERT INTO `product_galleries` VALUES (332, 87, 'https://lorempixel.com/640/480/cats/?41875', NULL, NULL);
INSERT INTO `product_galleries` VALUES (333, 87, 'https://lorempixel.com/640/480/cats/?41472', NULL, NULL);
INSERT INTO `product_galleries` VALUES (334, 87, 'https://lorempixel.com/640/480/cats/?84127', NULL, NULL);
INSERT INTO `product_galleries` VALUES (335, 87, 'https://lorempixel.com/640/480/cats/?34285', NULL, NULL);
INSERT INTO `product_galleries` VALUES (336, 88, 'https://lorempixel.com/640/480/cats/?39336', NULL, NULL);
INSERT INTO `product_galleries` VALUES (337, 88, 'https://lorempixel.com/640/480/cats/?64044', NULL, NULL);
INSERT INTO `product_galleries` VALUES (338, 88, 'https://lorempixel.com/640/480/cats/?22783', NULL, NULL);
INSERT INTO `product_galleries` VALUES (339, 89, 'https://lorempixel.com/640/480/cats/?29636', NULL, NULL);
INSERT INTO `product_galleries` VALUES (340, 89, 'https://lorempixel.com/640/480/cats/?43731', NULL, NULL);
INSERT INTO `product_galleries` VALUES (341, 89, 'https://lorempixel.com/640/480/cats/?19978', NULL, NULL);
INSERT INTO `product_galleries` VALUES (342, 89, 'https://lorempixel.com/640/480/cats/?88288', NULL, NULL);
INSERT INTO `product_galleries` VALUES (343, 89, 'https://lorempixel.com/640/480/cats/?83141', NULL, NULL);
INSERT INTO `product_galleries` VALUES (344, 90, 'https://lorempixel.com/640/480/cats/?73346', NULL, NULL);
INSERT INTO `product_galleries` VALUES (345, 90, 'https://lorempixel.com/640/480/cats/?96721', NULL, NULL);
INSERT INTO `product_galleries` VALUES (346, 90, 'https://lorempixel.com/640/480/cats/?76491', NULL, NULL);
INSERT INTO `product_galleries` VALUES (347, 90, 'https://lorempixel.com/640/480/cats/?41459', NULL, NULL);
INSERT INTO `product_galleries` VALUES (348, 90, 'https://lorempixel.com/640/480/cats/?21570', NULL, NULL);
INSERT INTO `product_galleries` VALUES (349, 91, 'https://lorempixel.com/640/480/cats/?28548', NULL, NULL);
INSERT INTO `product_galleries` VALUES (350, 91, 'https://lorempixel.com/640/480/cats/?67578', NULL, NULL);
INSERT INTO `product_galleries` VALUES (351, 91, 'https://lorempixel.com/640/480/cats/?28660', NULL, NULL);
INSERT INTO `product_galleries` VALUES (352, 91, 'https://lorempixel.com/640/480/cats/?63472', NULL, NULL);
INSERT INTO `product_galleries` VALUES (353, 92, 'https://lorempixel.com/640/480/cats/?30587', NULL, NULL);
INSERT INTO `product_galleries` VALUES (354, 92, 'https://lorempixel.com/640/480/cats/?79295', NULL, NULL);
INSERT INTO `product_galleries` VALUES (355, 92, 'https://lorempixel.com/640/480/cats/?75003', NULL, NULL);
INSERT INTO `product_galleries` VALUES (356, 92, 'https://lorempixel.com/640/480/cats/?84365', NULL, NULL);
INSERT INTO `product_galleries` VALUES (357, 93, 'https://lorempixel.com/640/480/cats/?69509', NULL, NULL);
INSERT INTO `product_galleries` VALUES (358, 93, 'https://lorempixel.com/640/480/cats/?83933', NULL, NULL);
INSERT INTO `product_galleries` VALUES (359, 93, 'https://lorempixel.com/640/480/cats/?19892', NULL, NULL);
INSERT INTO `product_galleries` VALUES (360, 93, 'https://lorempixel.com/640/480/cats/?41532', NULL, NULL);
INSERT INTO `product_galleries` VALUES (361, 94, 'https://lorempixel.com/640/480/cats/?67116', NULL, NULL);
INSERT INTO `product_galleries` VALUES (362, 94, 'https://lorempixel.com/640/480/cats/?36441', NULL, NULL);
INSERT INTO `product_galleries` VALUES (363, 94, 'https://lorempixel.com/640/480/cats/?16388', NULL, NULL);
INSERT INTO `product_galleries` VALUES (364, 94, 'https://lorempixel.com/640/480/cats/?30963', NULL, NULL);
INSERT INTO `product_galleries` VALUES (365, 95, 'https://lorempixel.com/640/480/cats/?85888', NULL, NULL);
INSERT INTO `product_galleries` VALUES (366, 95, 'https://lorempixel.com/640/480/cats/?22352', NULL, NULL);
INSERT INTO `product_galleries` VALUES (367, 95, 'https://lorempixel.com/640/480/cats/?42291', NULL, NULL);
INSERT INTO `product_galleries` VALUES (368, 95, 'https://lorempixel.com/640/480/cats/?91372', NULL, NULL);
INSERT INTO `product_galleries` VALUES (369, 96, 'https://lorempixel.com/640/480/cats/?59349', NULL, NULL);
INSERT INTO `product_galleries` VALUES (370, 96, 'https://lorempixel.com/640/480/cats/?83747', NULL, NULL);
INSERT INTO `product_galleries` VALUES (371, 96, 'https://lorempixel.com/640/480/cats/?32735', NULL, NULL);
INSERT INTO `product_galleries` VALUES (372, 97, 'https://lorempixel.com/640/480/cats/?87529', NULL, NULL);
INSERT INTO `product_galleries` VALUES (373, 97, 'https://lorempixel.com/640/480/cats/?42776', NULL, NULL);
INSERT INTO `product_galleries` VALUES (374, 97, 'https://lorempixel.com/640/480/cats/?24658', NULL, NULL);
INSERT INTO `product_galleries` VALUES (375, 97, 'https://lorempixel.com/640/480/cats/?36707', NULL, NULL);
INSERT INTO `product_galleries` VALUES (376, 97, 'https://lorempixel.com/640/480/cats/?74194', NULL, NULL);
INSERT INTO `product_galleries` VALUES (377, 98, 'https://lorempixel.com/640/480/cats/?77399', NULL, NULL);
INSERT INTO `product_galleries` VALUES (378, 98, 'https://lorempixel.com/640/480/cats/?61915', NULL, NULL);
INSERT INTO `product_galleries` VALUES (379, 98, 'https://lorempixel.com/640/480/cats/?50838', NULL, NULL);
INSERT INTO `product_galleries` VALUES (380, 98, 'https://lorempixel.com/640/480/cats/?23918', NULL, NULL);
INSERT INTO `product_galleries` VALUES (381, 98, 'https://lorempixel.com/640/480/cats/?25714', NULL, NULL);
INSERT INTO `product_galleries` VALUES (382, 99, 'https://lorempixel.com/640/480/cats/?92140', NULL, NULL);
INSERT INTO `product_galleries` VALUES (383, 99, 'https://lorempixel.com/640/480/cats/?82045', NULL, NULL);
INSERT INTO `product_galleries` VALUES (384, 99, 'https://lorempixel.com/640/480/cats/?35338', NULL, NULL);
INSERT INTO `product_galleries` VALUES (385, 99, 'https://lorempixel.com/640/480/cats/?10732', NULL, NULL);
INSERT INTO `product_galleries` VALUES (386, 99, 'https://lorempixel.com/640/480/cats/?28363', NULL, NULL);
INSERT INTO `product_galleries` VALUES (387, 100, 'https://lorempixel.com/640/480/cats/?70770', NULL, NULL);
INSERT INTO `product_galleries` VALUES (388, 100, 'https://lorempixel.com/640/480/cats/?38965', NULL, NULL);
INSERT INTO `product_galleries` VALUES (389, 100, 'https://lorempixel.com/640/480/cats/?15945', NULL, NULL);
INSERT INTO `product_galleries` VALUES (392, 104, 'images/galleries/pro_104/5c3ab409d5c66.png', '2019-01-13 03:44:09', '2019-01-13 03:44:09');
INSERT INTO `product_galleries` VALUES (395, 104, 'images/galleries/pro_104/5c3adfaf21275.png', '2019-01-13 06:50:23', '2019-01-13 06:50:23');
INSERT INTO `product_galleries` VALUES (397, 104, 'images/galleries/pro_104/5c3ae29f408fa.png', '2019-01-13 07:02:55', '2019-01-13 07:02:55');
INSERT INTO `product_galleries` VALUES (398, 114, 'images/galleries/pro_114/5c4bcd5214459.jpeg', '2019-01-26 03:00:34', '2019-01-26 03:00:34');
INSERT INTO `product_galleries` VALUES (399, 114, 'images/galleries/pro_114/5c4bcd5215c1a.jpeg', '2019-01-26 03:00:34', '2019-01-26 03:00:34');
INSERT INTO `product_galleries` VALUES (400, 114, 'images/galleries/pro_114/5c4bcd521a3f9.jpeg', '2019-01-26 03:00:34', '2019-01-26 03:00:34');
INSERT INTO `product_galleries` VALUES (401, 114, 'images/galleries/pro_114/5c4bcd521b1ee.jpeg', '2019-01-26 03:00:34', '2019-01-26 03:00:34');
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_id` int unsigned NOT NULL DEFAULT '1',
  `price` int NOT NULL DEFAULT '0',
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `star` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `products_cate_id_foreign` (`cate_id`),
  CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (345, '12323123123', 'public/uploads/5f8ff0e066f10-Mẫu Metallic.jpg', 8, 345345, '', '345435', 0.00, '2020-10-21 10:27:12', '2020-10-21 10:27:12', 1);
INSERT INTO `products` VALUES (346, 'Đỗ Thành Trung 123541', 'public/uploads/5f8ff26f651f8-DMMSPY.780962.MOCKUP.png', 26, 4324, '', '', 0.00, '2020-10-21 10:33:51', '2020-10-21 10:33:51', 1);
INSERT INTO `products` VALUES (348, 'Nguyễn Viết Đạt 0000', 'public/uploads/5f92291a1aa74-underestimate me1.jpg', 22, 2147483647, 'trung', 'trung', 1.00, '2020-10-23 01:51:38', '2020-10-23 01:51:38', 13123);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` int NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'trung207', '', 'admin@gmail.com', NULL, 200, '$2y$10$QWrGJCgPozFiwWGpHm7FSunr14XRRux07kRF49A6CViRz4WAbMskq', 'itISWu9O0Y0DxIiYU7t9W4ARsgpkrqrJ2FTGtDEVPMZuW9ChLciMtohAHNXQ', NULL, NULL);
INSERT INTO `users` VALUES (2, 'chungcc', '', 'moderator@gmail.com', NULL, 700, '$2y$10$nqckGqzjiEP7BP59WM5oJO6R16EanVVG561vJqxOb6X8WiMo4PJ7K', 'pASVtJ9LtlAX6f6uFgRL9AEgI3p7KkiqVv6eWJekpRKMlULsUkAgG93E1zuQ', NULL, NULL);
INSERT INTO `users` VALUES (3, 'member', '', 'member@gmail.com', NULL, 1, '$2y$10$uy21.IAUibmlW1l68bVqxOoNiIrqECbTkdXufUqihT8LMNoe3GIqa', NULL, NULL, NULL);
INSERT INTO `users` VALUES (6, 'thienth', 'public/images/5d8dc5aebcd06-8ad2f5971cd04cbe2bd5d3849aa7c005.jpeg', 'thienth32@gmail.com', NULL, 0, '$2y$10$QivAI.SR1VuNX0cGuvApoe2GPwKizSP1QNu2cX33AFsDHIGSd.R0G', NULL, NULL, NULL);
INSERT INTO `users` VALUES (10, 'Đỗ Thành Trung', 'public/uploads/avatar/60419e4950cc9-me-thien-nhien-da-day-chung-ta-bai-hoc-gi-1-1109.jpg', 'dothanhtrung207@gmail.com', NULL, 1, '123541', '', NULL, NULL);
INSERT INTO `users` VALUES (11, 'Đỗ Thành Trung 32423423423', 'public/uploads/avatar/6041a45b99ff3-DMMSPY.695753.MOCKUP.png', 'dothanhtrungngt@gmail.com', NULL, 2, '123541', '', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
