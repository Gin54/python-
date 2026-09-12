/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_shop

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 03/08/2024 11:23:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add user', 7, 'add_user');
INSERT INTO `auth_permission` VALUES (26, 'Can change user', 7, 'change_user');
INSERT INTO `auth_permission` VALUES (27, 'Can delete user', 7, 'delete_user');
INSERT INTO `auth_permission` VALUES (28, 'Can view user', 7, 'view_user');
INSERT INTO `auth_permission` VALUES (29, 'Can add tag', 8, 'add_tag');
INSERT INTO `auth_permission` VALUES (30, 'Can change tag', 8, 'change_tag');
INSERT INTO `auth_permission` VALUES (31, 'Can delete tag', 8, 'delete_tag');
INSERT INTO `auth_permission` VALUES (32, 'Can view tag', 8, 'view_tag');
INSERT INTO `auth_permission` VALUES (33, 'Can add classification', 9, 'add_classification');
INSERT INTO `auth_permission` VALUES (34, 'Can change classification', 9, 'change_classification');
INSERT INTO `auth_permission` VALUES (35, 'Can delete classification', 9, 'delete_classification');
INSERT INTO `auth_permission` VALUES (36, 'Can view classification', 9, 'view_classification');
INSERT INTO `auth_permission` VALUES (37, 'Can add book', 10, 'add_book');
INSERT INTO `auth_permission` VALUES (38, 'Can change book', 10, 'change_book');
INSERT INTO `auth_permission` VALUES (39, 'Can delete book', 10, 'delete_book');
INSERT INTO `auth_permission` VALUES (40, 'Can view book', 10, 'view_book');
INSERT INTO `auth_permission` VALUES (41, 'Can add comment', 11, 'add_comment');
INSERT INTO `auth_permission` VALUES (42, 'Can change comment', 11, 'change_comment');
INSERT INTO `auth_permission` VALUES (43, 'Can delete comment', 11, 'delete_comment');
INSERT INTO `auth_permission` VALUES (44, 'Can view comment', 11, 'view_comment');
INSERT INTO `auth_permission` VALUES (45, 'Can add record', 12, 'add_record');
INSERT INTO `auth_permission` VALUES (46, 'Can change record', 12, 'change_record');
INSERT INTO `auth_permission` VALUES (47, 'Can delete record', 12, 'delete_record');
INSERT INTO `auth_permission` VALUES (48, 'Can view record', 12, 'view_record');
INSERT INTO `auth_permission` VALUES (49, 'Can add login log', 13, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (50, 'Can change login log', 13, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (51, 'Can delete login log', 13, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (52, 'Can view login log', 13, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (53, 'Can add op log', 14, 'add_oplog');
INSERT INTO `auth_permission` VALUES (54, 'Can change op log', 14, 'change_oplog');
INSERT INTO `auth_permission` VALUES (55, 'Can delete op log', 14, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (56, 'Can view op log', 14, 'view_oplog');
INSERT INTO `auth_permission` VALUES (57, 'Can add error log', 15, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (58, 'Can change error log', 15, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (59, 'Can delete error log', 15, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (60, 'Can view error log', 15, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (61, 'Can add borrow', 16, 'add_borrow');
INSERT INTO `auth_permission` VALUES (62, 'Can change borrow', 16, 'change_borrow');
INSERT INTO `auth_permission` VALUES (63, 'Can delete borrow', 16, 'delete_borrow');
INSERT INTO `auth_permission` VALUES (64, 'Can view borrow', 16, 'view_borrow');
INSERT INTO `auth_permission` VALUES (65, 'Can add borrow log', 17, 'add_borrowlog');
INSERT INTO `auth_permission` VALUES (66, 'Can change borrow log', 17, 'change_borrowlog');
INSERT INTO `auth_permission` VALUES (67, 'Can delete borrow log', 17, 'delete_borrowlog');
INSERT INTO `auth_permission` VALUES (68, 'Can view borrow log', 17, 'view_borrowlog');
INSERT INTO `auth_permission` VALUES (69, 'Can add banner', 18, 'add_banner');
INSERT INTO `auth_permission` VALUES (70, 'Can change banner', 18, 'change_banner');
INSERT INTO `auth_permission` VALUES (71, 'Can delete banner', 18, 'delete_banner');
INSERT INTO `auth_permission` VALUES (72, 'Can view banner', 18, 'view_banner');
INSERT INTO `auth_permission` VALUES (73, 'Can add ad', 19, 'add_ad');
INSERT INTO `auth_permission` VALUES (74, 'Can change ad', 19, 'change_ad');
INSERT INTO `auth_permission` VALUES (75, 'Can delete ad', 19, 'delete_ad');
INSERT INTO `auth_permission` VALUES (76, 'Can view ad', 19, 'view_ad');
INSERT INTO `auth_permission` VALUES (77, 'Can add notice', 20, 'add_notice');
INSERT INTO `auth_permission` VALUES (78, 'Can change notice', 20, 'change_notice');
INSERT INTO `auth_permission` VALUES (79, 'Can delete notice', 20, 'delete_notice');
INSERT INTO `auth_permission` VALUES (80, 'Can view notice', 20, 'view_notice');
INSERT INTO `auth_permission` VALUES (81, 'Can add address', 21, 'add_address');
INSERT INTO `auth_permission` VALUES (82, 'Can change address', 21, 'change_address');
INSERT INTO `auth_permission` VALUES (83, 'Can delete address', 21, 'delete_address');
INSERT INTO `auth_permission` VALUES (84, 'Can view address', 21, 'view_address');
INSERT INTO `auth_permission` VALUES (85, 'Can add thing', 22, 'add_thing');
INSERT INTO `auth_permission` VALUES (86, 'Can change thing', 22, 'change_thing');
INSERT INTO `auth_permission` VALUES (87, 'Can delete thing', 22, 'delete_thing');
INSERT INTO `auth_permission` VALUES (88, 'Can view thing', 22, 'view_thing');
INSERT INTO `auth_permission` VALUES (89, 'Can add order', 23, 'add_order');
INSERT INTO `auth_permission` VALUES (90, 'Can change order', 23, 'change_order');
INSERT INTO `auth_permission` VALUES (91, 'Can delete order', 23, 'delete_order');
INSERT INTO `auth_permission` VALUES (92, 'Can view order', 23, 'view_order');
INSERT INTO `auth_permission` VALUES (93, 'Can add order log', 24, 'add_orderlog');
INSERT INTO `auth_permission` VALUES (94, 'Can change order log', 24, 'change_orderlog');
INSERT INTO `auth_permission` VALUES (95, 'Can delete order log', 24, 'delete_orderlog');
INSERT INTO `auth_permission` VALUES (96, 'Can view order log', 24, 'view_orderlog');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------
INSERT INTO `b_address` VALUES (7, 'a', 'd', 'w', 0, '2023-03-13 21:36:29.787060', 2);
INSERT INTO `b_address` VALUES (8, 'a', 'b', 'd', 0, '2023-03-14 21:13:45.765564', 2);
INSERT INTO `b_address` VALUES (9, 'q', 'w', 'wwwwqqq', 0, '2023-03-14 21:16:45.728984', 2);
INSERT INTO `b_address` VALUES (10, 'ggg', 'ddd', '到底是谁322', 1, '2023-03-14 21:20:15.428933', 2);
INSERT INTO `b_address` VALUES (11, '刘德华', '15877776666', '河北省xxx路xxx号', 0, '2023-03-19 20:28:21.012024', 3);
INSERT INTO `b_address` VALUES (12, '刘德华', '333333', '人民路99', 0, '2024-08-03 11:21:05.978643', 5);

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_thing_id_3f307d00_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, -1, '服装', '2023-03-11 17:49:40.205341');
INSERT INTO `b_classification` VALUES (2, -1, '食品', '2023-03-11 17:50:22.226235');
INSERT INTO `b_classification` VALUES (3, -1, '图书', '2023-03-11 17:50:27.586637');
INSERT INTO `b_classification` VALUES (4, -1, '玩具', '2023-03-19 20:39:24.754740');
INSERT INTO `b_classification` VALUES (5, -1, '家电', '2023-03-20 20:34:59.120913');
INSERT INTO `b_classification` VALUES (6, -1, '电子产品', '2023-03-20 20:44:38.004082');
INSERT INTO `b_classification` VALUES (7, -1, '办公用品', '2023-03-20 20:53:18.609152');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '问问问问问问哈哈哈', '2023-03-11 18:10:54.114777', 0, 1, 1);
INSERT INTO `b_comment` VALUES (2, 'hhh', '2023-03-11 19:46:52.751488', 0, 2, 1);
INSERT INTO `b_comment` VALUES (3, 'hhbb', '2023-03-19 20:30:59.249640', 0, 3, 5);
INSERT INTO `b_comment` VALUES (4, 'hhh', '2023-03-19 20:31:03.030831', 0, 3, 5);
INSERT INTO `b_comment` VALUES (5, '哈哈哈哈哈', '2023-03-22 20:29:47.455504', 0, 3, 81);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------
INSERT INTO `b_error_log` VALUES (1, '127.0.0.1', '/myapp/index/thing/getCollectThingList', 'GET', '操作失败User matching query does not exist.', '2023-03-11 14:13:50.128264');
INSERT INTO `b_error_log` VALUES (2, '127.0.0.1', '/myapp/index/thing/getWishThingList', 'GET', '操作失败User matching query does not exist.', '2023-03-11 14:13:50.195484');
INSERT INTO `b_error_log` VALUES (3, '127.0.0.1', '/myapp/index/thing/getWishThingList', 'GET', '操作失败User matching query does not exist.', '2023-03-11 14:13:58.169226');
INSERT INTO `b_error_log` VALUES (4, '127.0.0.1', '/myapp/index/thing/getCollectThingList', 'GET', '操作失败User matching query does not exist.', '2023-03-11 14:14:30.967563');
INSERT INTO `b_error_log` VALUES (5, '127.0.0.1', '/myapp/index/thing/getWishThingList', 'GET', '操作失败User matching query does not exist.', '2023-03-11 19:45:54.362008');
INSERT INTO `b_error_log` VALUES (6, '127.0.0.1', '/myapp/index/thing/getCollectThingList', 'GET', '操作失败User matching query does not exist.', '2023-03-11 19:45:54.364847');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-11 14:18:07.160822');
INSERT INTO `b_login_log` VALUES (2, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-11 19:46:30.674702');
INSERT INTO `b_login_log` VALUES (3, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-11 19:47:08.152159');
INSERT INTO `b_login_log` VALUES (4, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-18 21:29:53.373699');
INSERT INTO `b_login_log` VALUES (5, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-18 21:30:05.505138');
INSERT INTO `b_login_log` VALUES (6, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-18 21:31:34.616610');
INSERT INTO `b_login_log` VALUES (7, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-19 09:48:36.853269');
INSERT INTO `b_login_log` VALUES (8, 'bbb@qq.com', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-19 20:27:24.658195');
INSERT INTO `b_login_log` VALUES (9, 'bbb@qq.com', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-19 20:29:09.117872');
INSERT INTO `b_login_log` VALUES (10, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-19 20:31:49.536392');
INSERT INTO `b_login_log` VALUES (11, 'dddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-08-03 11:20:39.223762');
INSERT INTO `b_login_log` VALUES (12, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-08-03 11:21:40.720635');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '哈哈哈', 'kkkk', '2023-03-12 10:41:47.053444');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2700 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2023-03-11 12:50:05.883745', '/myapp/index/book/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2023-03-11 12:50:05.880145', '/myapp/index/book/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2023-03-11 12:50:05.873075', '/myapp/index/book/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2023-03-11 12:50:05.903720', '/myapp/index/book/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2023-03-11 12:50:20.514024', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2023-03-11 12:50:20.519667', '/myapp/index/book/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2023-03-11 12:50:20.516755', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2023-03-11 12:50:20.520947', '/myapp/index/book/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2023-03-11 12:59:40.563997', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2023-03-11 12:59:40.568849', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2023-03-11 12:59:40.598128', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2023-03-11 12:59:41.058777', '/myapp/index/thing/list', 'GET', NULL, '519');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2023-03-11 12:59:47.996755', '/myapp/index/thing/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2023-03-11 14:13:23.869879', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2023-03-11 14:13:23.876479', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2023-03-11 14:13:23.879521', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2023-03-11 14:13:23.882218', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2023-03-11 14:13:26.354587', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2023-03-11 14:13:28.247772', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2023-03-11 14:13:29.775341', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2023-03-11 14:13:30.825556', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2023-03-11 14:13:37.112621', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2023-03-11 14:13:38.144084', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2023-03-11 14:13:43.506442', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2023-03-11 14:13:50.122829', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2023-03-11 14:13:50.141145', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2023-03-11 14:13:50.198881', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2023-03-11 14:13:50.227356', '/myapp/index/borrow/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2023-03-11 14:13:58.173987', '/myapp/index/thing/getWishThingList', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2023-03-11 14:14:30.973783', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2023-03-11 14:14:44.123683', '/myapp/index/comment/listMyComments', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2023-03-11 14:14:47.647092', '/myapp/index/address/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2023-03-11 14:14:50.357076', '/myapp/index/user/info', 'GET', NULL, '210');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2023-03-11 14:15:19.568127', '/myapp/index/user/info', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2023-03-11 14:15:22.811685', '/myapp/index/user/info', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2023-03-11 14:15:24.311770', '/myapp/index/notice/list_api', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2023-03-11 14:15:35.278046', '/myapp/admin/overview/count', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2023-03-11 14:15:40.981004', '/myapp/admin/borrow/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2023-03-11 14:15:43.064763', '/myapp/admin/overview/count', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2023-03-11 14:16:22.919996', '/myapp/admin/user/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2023-03-11 14:16:49.216724', '/myapp/admin/user/create', 'POST', NULL, '101');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2023-03-11 14:17:28.158801', '/myapp/admin/user/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2023-03-11 14:17:28.328607', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2023-03-11 14:17:47.898334', '/myapp/admin/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2023-03-11 14:17:49.715200', '/myapp/admin/user/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2023-03-11 14:18:07.167000', '/myapp/admin/adminLogin', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2023-03-11 14:18:07.377156', '/myapp/admin/overview/count', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2023-03-11 14:18:16.527266', '/myapp/admin/borrow/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2023-03-11 14:18:18.326456', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2023-03-11 14:18:19.655597', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2023-03-11 14:18:20.871068', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2023-03-11 14:18:23.873467', '/myapp/admin/comment/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2023-03-11 14:18:25.060131', '/myapp/admin/user/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2023-03-11 14:18:32.289634', '/myapp/admin/loginLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2023-03-11 14:18:34.015109', '/myapp/admin/opLog/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2023-03-11 14:18:35.630823', '/myapp/admin/errorLog/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2023-03-11 14:18:52.187430', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1151');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2023-03-11 14:18:56.668530', '/myapp/admin/overview/count', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2023-03-11 17:49:02.324395', '/myapp/admin/borrow/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2023-03-11 17:49:03.703284', '/myapp/admin/overview/count', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2023-03-11 17:49:11.245019', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2023-03-11 17:49:15.432577', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2023-03-11 17:49:40.210166', '/myapp/admin/classification/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2023-03-11 17:49:40.258748', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2023-03-11 17:50:22.228974', '/myapp/admin/classification/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2023-03-11 17:50:22.269501', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2023-03-11 17:50:27.594000', '/myapp/admin/classification/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2023-03-11 17:50:27.697130', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2023-03-11 17:50:32.789762', '/myapp/admin/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2023-03-11 17:50:33.813563', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2023-03-11 17:50:39.321137', '/myapp/admin/tag/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2023-03-11 17:51:23.679163', '/myapp/admin/tag/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2023-03-11 17:51:23.711868', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2023-03-11 17:51:33.109729', '/myapp/admin/tag/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2023-03-11 17:51:33.172001', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2023-03-11 17:51:36.369519', '/myapp/admin/overview/count', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2023-03-11 17:52:12.417151', '/myapp/admin/borrow/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2023-03-11 17:52:13.834338', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2023-03-11 17:52:14.958387', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2023-03-11 17:52:16.007327', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2023-03-11 17:52:17.375380', '/myapp/admin/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2023-03-11 17:52:18.734987', '/myapp/admin/user/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2023-03-11 17:52:24.831889', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1065');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2023-03-11 17:52:26.874291', '/myapp/admin/borrow/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2023-03-11 17:52:46.135304', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2023-03-11 17:52:47.606926', '/myapp/admin/borrow/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2023-03-11 17:53:42.142991', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2023-03-11 17:55:15.908527', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2023-03-11 18:00:19.318000', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2023-03-11 18:01:51.489130', '/myapp/admin/tag/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2023-03-11 18:01:51.493392', '/myapp/admin/tag/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2023-03-11 18:03:32.124589', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2023-03-11 18:03:32.196048', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2023-03-11 18:04:45.325919', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2023-03-11 18:04:45.331363', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2023-03-11 18:04:48.711372', '/myapp/admin/tag/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2023-03-11 18:04:48.761367', '/myapp/admin/tag/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2023-03-11 18:05:25.242891', '/myapp/admin/thing/create', 'POST', NULL, '272');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2023-03-11 18:05:25.351236', '/myapp/admin/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2023-03-11 18:05:35.862580', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2023-03-11 18:05:35.865534', '/myapp/admin/tag/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2023-03-11 18:05:35.870225', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2023-03-11 18:07:01.831467', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2023-03-11 18:08:07.090165', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2023-03-11 18:08:07.157322', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2023-03-11 18:08:07.160332', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2023-03-11 18:08:12.104372', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2023-03-11 18:08:12.180298', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2023-03-11 18:08:17.307490', '/myapp/admin/tag/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2023-03-11 18:08:17.326877', '/myapp/admin/tag/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2023-03-11 18:08:21.564925', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2023-03-11 18:08:21.635795', '/myapp/admin/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2023-03-11 18:08:24.555388', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2023-03-11 18:08:24.557760', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2023-03-11 18:08:35.263621', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2023-03-11 18:08:37.424386', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2023-03-11 18:08:49.506234', '/myapp/admin/tag/create', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2023-03-11 18:08:49.551841', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2023-03-11 18:08:55.347961', '/myapp/admin/tag/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2023-03-11 18:08:55.404588', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2023-03-11 18:09:02.665777', '/myapp/admin/tag/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2023-03-11 18:09:02.710973', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2023-03-11 18:09:07.205677', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2023-03-11 18:09:12.864580', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2023-03-11 18:09:16.565756', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2023-03-11 18:09:16.569829', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2023-03-11 18:09:48.038672', '/myapp/admin/thing/create', 'POST', NULL, '103');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2023-03-11 18:09:48.103114', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2023-03-11 18:09:52.003947', '/myapp/admin/thing/delete', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2023-03-11 18:09:52.048966', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2023-03-11 18:09:56.504836', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2023-03-11 18:09:58.805774', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2023-03-11 18:10:03.807513', '/myapp/admin/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2023-03-11 18:10:54.127261', '/myapp/admin/comment/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2023-03-11 18:10:54.163968', '/myapp/admin/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2023-03-11 18:11:04.491354', '/myapp/admin/overview/count', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2023-03-11 18:11:14.078994', '/myapp/admin/overview/count', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2023-03-11 18:12:43.850919', '/myapp/admin/overview/count', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2023-03-11 18:15:21.603393', '/myapp/admin/borrow/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2023-03-11 18:15:23.440197', '/myapp/admin/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2023-03-11 18:15:24.928226', '/myapp/admin/borrow/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2023-03-11 19:44:37.470392', '/myapp/admin/thing/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2023-03-11 19:45:00.640176', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2023-03-11 19:45:00.643026', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2023-03-11 19:45:00.656130', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2023-03-11 19:45:00.659342', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2023-03-11 19:45:00.720401', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2023-03-11 19:45:02.889682', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2023-03-11 19:45:04.198072', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2023-03-11 19:45:05.171892', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2023-03-11 19:45:06.274945', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2023-03-11 19:45:06.945234', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2023-03-11 19:45:07.734935', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2023-03-11 19:45:08.436851', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2023-03-11 19:45:09.612810', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2023-03-11 19:45:16.892392', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2023-03-11 19:45:16.910279', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2023-03-11 19:45:16.913220', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2023-03-11 19:45:16.989302', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2023-03-11 19:45:45.331697', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2023-03-11 19:45:46.415049', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2023-03-11 19:45:47.172961', '/myapp/admin/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2023-03-11 19:45:51.703898', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2023-03-11 19:45:51.707230', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2023-03-11 19:45:51.720294', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2023-03-11 19:45:51.722615', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2023-03-11 19:45:54.357433', '/myapp/index/borrow/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2023-03-11 19:45:54.368458', '/myapp/index/borrow/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2023-03-11 19:45:54.372130', '/myapp/index/borrow/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2023-03-11 19:45:54.380510', '/myapp/index/borrow/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2023-03-11 19:45:56.263840', '/myapp/index/comment/listMyComments', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2023-03-11 19:45:59.242661', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2023-03-11 19:45:59.248758', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2023-03-11 19:45:59.255716', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2023-03-11 19:45:59.264432', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2023-03-11 19:46:15.052674', '/myapp/index/user/register', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2023-03-11 19:46:30.679743', '/myapp/index/user/login', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2023-03-11 19:46:30.807147', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2023-03-11 19:46:30.812759', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2023-03-11 19:46:30.820607', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2023-03-11 19:46:30.848137', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2023-03-11 19:46:34.268718', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2023-03-11 19:46:38.818811', '/myapp/index/borrow/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2023-03-11 19:46:38.837260', '/myapp/index/borrow/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2023-03-11 19:46:38.839211', '/myapp/index/borrow/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2023-03-11 19:46:38.857087', '/myapp/index/borrow/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2023-03-11 19:46:41.281845', '/myapp/index/comment/listMyComments', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2023-03-11 19:46:43.167400', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2023-03-11 19:46:43.169345', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2023-03-11 19:46:43.171140', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2023-03-11 19:46:43.198356', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2023-03-11 19:46:45.042843', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2023-03-11 19:46:45.044744', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2023-03-11 19:46:45.048232', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2023-03-11 19:46:45.135481', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2023-03-11 19:46:52.756863', '/myapp/index/comment/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2023-03-11 19:46:52.777460', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2023-03-11 19:46:56.687053', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2023-03-11 19:46:57.439630', '/myapp/admin/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2023-03-11 19:47:04.936963', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2023-03-11 19:47:04.939301', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2023-03-11 19:47:04.941306', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2023-03-11 19:47:04.965801', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2023-03-11 19:47:08.154263', '/myapp/index/user/login', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2023-03-11 19:47:08.239115', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2023-03-11 19:47:08.240894', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2023-03-11 19:47:08.243432', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2023-03-11 19:47:08.245781', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2023-03-11 19:47:10.474221', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2023-03-11 19:47:10.485542', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2023-03-11 19:47:10.491889', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2023-03-11 19:47:10.501409', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2023-03-11 19:47:11.984103', '/myapp/index/comment/listMyComments', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2023-03-11 19:47:22.319044', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2023-03-11 19:47:43.935882', '/myapp/admin/overview/count', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2023-03-11 19:47:46.711875', '/myapp/admin/borrow/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2023-03-11 19:47:47.818287', '/myapp/admin/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2023-03-11 19:47:49.807589', '/myapp/admin/borrow/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2023-03-11 19:49:22.373094', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2023-03-11 19:49:23.268322', '/myapp/admin/borrow/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2023-03-11 19:58:21.394340', '/myapp/admin/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2023-03-11 19:58:22.207421', '/myapp/admin/borrow/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2023-03-11 20:01:55.698978', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2023-03-11 20:01:55.702495', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2023-03-11 20:01:55.706301', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2023-03-11 20:01:55.724426', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2023-03-11 20:01:55.782026', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2023-03-11 20:03:34.447745', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2023-03-11 20:03:34.450301', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2023-03-11 20:03:34.452629', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2023-03-11 20:03:34.464897', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2023-03-11 20:03:46.556823', '/myapp/admin/overview/count', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2023-03-11 20:03:48.739612', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2023-03-11 20:03:50.601215', '/myapp/admin/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2023-03-11 20:03:52.875668', '/myapp/admin/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2023-03-11 20:04:08.864412', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2023-03-11 20:22:50.551873', '/myapp/admin/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2023-03-11 20:22:51.089184', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2023-03-11 20:23:38.047783', '/myapp/admin/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2023-03-11 20:35:04.786165', '/myapp/admin/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2023-03-11 21:13:10.248932', '/myapp/admin/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2023-03-11 21:18:00.197777', '/myapp/admin/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2023-03-11 21:18:03.114655', '/myapp/admin/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2023-03-11 21:18:14.290632', '/myapp/admin/order/create', 'POST', NULL, '192');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2023-03-11 21:19:06.533717', '/myapp/admin/order/create', 'POST', NULL, '225');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2023-03-11 21:20:35.229333', '/myapp/admin/order/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2023-03-11 21:20:35.327738', '/myapp/admin/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2023-03-11 21:32:20.569702', '/myapp/admin/order/create', 'POST', NULL, '83');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2023-03-11 21:32:20.693137', '/myapp/admin/order/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2023-03-11 21:41:37.958322', '/myapp/admin/order/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2023-03-11 21:43:34.922090', '/myapp/admin/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2023-03-11 21:55:10.424189', '/myapp/admin/order/list', 'GET', NULL, '235');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2023-03-11 21:55:15.517007', '/myapp/admin/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2023-03-11 21:55:20.865117', '/myapp/admin/order/delete', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2023-03-11 21:55:20.938378', '/myapp/admin/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2023-03-11 21:56:48.542488', '/myapp/admin/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2023-03-11 21:57:00.206375', '/myapp/admin/order/delete', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2023-03-11 21:57:00.305217', '/myapp/admin/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2023-03-11 21:58:40.675193', '/myapp/admin/order/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2023-03-11 21:58:40.755540', '/myapp/admin/order/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2023-03-11 21:58:41.647363', '/myapp/admin/order/create', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2023-03-11 21:58:41.721175', '/myapp/admin/order/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2023-03-11 21:58:42.157096', '/myapp/admin/order/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2023-03-11 21:58:42.233844', '/myapp/admin/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2023-03-11 21:58:42.577608', '/myapp/admin/order/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2023-03-11 21:58:42.676461', '/myapp/admin/order/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2023-03-11 21:58:43.015942', '/myapp/admin/order/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2023-03-11 21:58:43.087104', '/myapp/admin/order/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2023-03-11 21:58:50.311028', '/myapp/admin/order/delete', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2023-03-11 21:58:50.417880', '/myapp/admin/order/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2023-03-11 21:58:56.084432', '/myapp/admin/order/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2023-03-11 21:58:56.168113', '/myapp/admin/order/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2023-03-11 21:58:56.302451', '/myapp/admin/order/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2023-03-11 21:58:56.403921', '/myapp/admin/order/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2023-03-11 21:58:56.409942', '/myapp/admin/order/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2023-03-11 21:58:56.453207', '/myapp/admin/order/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2023-03-11 21:58:56.580889', '/myapp/admin/order/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2023-03-11 21:58:56.686969', '/myapp/admin/order/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2023-03-11 21:58:56.811571', '/myapp/admin/order/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2023-03-11 21:58:56.868208', '/myapp/admin/order/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2023-03-11 21:58:56.891664', '/myapp/admin/order/create', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2023-03-11 21:58:57.019323', '/myapp/admin/order/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2023-03-11 21:58:57.159946', '/myapp/admin/order/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2023-03-11 21:58:57.180284', '/myapp/admin/order/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2023-03-11 21:58:57.341437', '/myapp/admin/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2023-03-11 21:58:57.403270', '/myapp/admin/order/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2023-03-11 21:58:57.486506', '/myapp/admin/order/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2023-03-11 21:58:57.633369', '/myapp/admin/order/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2023-03-11 21:58:57.744019', '/myapp/admin/order/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2023-03-11 21:58:57.761218', '/myapp/admin/order/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2023-03-11 21:58:57.781857', '/myapp/admin/order/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2023-03-11 21:58:57.934234', '/myapp/admin/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2023-03-11 21:58:57.962476', '/myapp/admin/order/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2023-03-11 21:58:58.041591', '/myapp/admin/order/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2023-03-11 21:58:58.078700', '/myapp/admin/order/create', 'POST', NULL, '91');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2023-03-11 21:58:58.193431', '/myapp/admin/order/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2023-03-11 21:58:58.287283', '/myapp/admin/order/create', 'POST', NULL, '121');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2023-03-11 21:58:58.404076', '/myapp/admin/order/create', 'POST', NULL, '79');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2023-03-11 21:58:58.578937', '/myapp/admin/order/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2023-03-11 21:58:58.826546', '/myapp/admin/order/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2023-03-11 21:58:58.956202', '/myapp/admin/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2023-03-11 21:58:59.076269', '/myapp/admin/order/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2023-03-11 21:59:07.640773', '/myapp/admin/order/delete', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2023-03-11 21:59:07.779513', '/myapp/admin/order/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2023-03-11 21:59:14.753667', '/myapp/admin/order/delete', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2023-03-11 21:59:14.890667', '/myapp/admin/order/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2023-03-11 21:59:17.303168', '/myapp/admin/order/delete', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2023-03-11 21:59:17.431752', '/myapp/admin/order/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2023-03-11 22:00:32.399500', '/myapp/admin/order/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2023-03-11 22:04:10.138356', '/myapp/admin/order/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2023-03-11 22:05:12.794867', '/myapp/admin/order/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2023-03-11 22:05:56.304664', '/myapp/admin/order/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2023-03-11 22:06:48.557858', '/myapp/admin/order/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2023-03-11 22:06:53.392643', '/myapp/admin/order/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2023-03-11 22:07:02.003338', '/myapp/admin/order/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2023-03-11 22:07:05.353132', '/myapp/admin/order/cancel_order', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2023-03-11 22:07:05.490237', '/myapp/admin/order/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2023-03-11 22:07:13.743878', '/myapp/admin/order/cancel_order', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2023-03-11 22:07:13.869282', '/myapp/admin/order/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2023-03-11 22:07:17.669400', '/myapp/admin/order/cancel_order', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2023-03-11 22:07:17.801224', '/myapp/admin/order/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2023-03-11 22:07:20.389350', '/myapp/admin/order/cancel_order', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2023-03-11 22:07:20.537289', '/myapp/admin/order/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2023-03-11 22:07:23.291160', '/myapp/admin/order/cancel_order', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2023-03-11 22:07:23.451301', '/myapp/admin/order/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2023-03-11 22:07:51.214443', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2023-03-11 22:07:52.885814', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2023-03-11 22:07:52.893025', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2023-03-11 22:07:52.898032', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2023-03-11 22:07:58.400954', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2023-03-11 22:07:58.510815', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2023-03-11 22:08:00.756404', '/myapp/admin/order/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2023-03-11 22:08:19.094527', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2023-03-11 22:09:02.734465', '/myapp/admin/order/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2023-03-11 22:09:24.935207', '/myapp/admin/order/delete', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2023-03-11 22:09:25.070043', '/myapp/admin/order/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2023-03-11 22:09:27.497374', '/myapp/admin/order/cancel_order', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2023-03-11 22:09:27.586148', '/myapp/admin/order/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2023-03-11 22:09:30.883981', '/myapp/admin/order/cancel_order', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2023-03-11 22:09:30.985126', '/myapp/admin/order/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2023-03-12 10:04:30.309142', '/myapp/admin/order/list', 'GET', NULL, '281');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2023-03-12 10:04:39.835888', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2023-03-12 10:04:39.849918', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2023-03-12 10:04:39.854855', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2023-03-12 10:04:39.857752', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2023-03-12 10:04:39.933547', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2023-03-12 10:04:42.909064', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2023-03-12 10:04:42.910699', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2023-03-12 10:04:42.913971', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2023-03-12 10:05:15.939569', '/myapp/index/comment/listMyComments', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2023-03-12 10:05:17.375344', '/myapp/index/address/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2023-03-12 10:07:12.207630', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2023-03-12 10:07:12.210854', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2023-03-12 10:07:12.220364', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2023-03-12 10:09:53.210681', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2023-03-12 10:09:53.213875', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2023-03-12 10:09:53.218724', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2023-03-12 10:09:54.566316', '/myapp/admin/order/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2023-03-12 10:14:13.914495', '/myapp/index/comment/listMyComments', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2023-03-12 10:14:15.508126', '/myapp/index/order/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2023-03-12 10:15:09.497893', '/myapp/index/order/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2023-03-12 10:15:45.873260', '/myapp/admin/order/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2023-03-12 10:15:50.187006', '/myapp/admin/order/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2023-03-12 10:15:51.256527', '/myapp/admin/order/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2023-03-12 10:15:51.341712', '/myapp/admin/order/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2023-03-12 10:15:52.212485', '/myapp/admin/order/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2023-03-12 10:15:52.346141', '/myapp/admin/order/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2023-03-12 10:15:52.791381', '/myapp/admin/order/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2023-03-12 10:15:52.886319', '/myapp/admin/order/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2023-03-12 10:16:01.710551', '/myapp/index/comment/listMyComments', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2023-03-12 10:16:02.566671', '/myapp/index/order/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2023-03-12 10:16:15.145194', '/myapp/index/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2023-03-12 10:16:16.071920', '/myapp/index/comment/listMyComments', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2023-03-12 10:16:16.879877', '/myapp/index/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2023-03-12 10:17:59.354474', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2023-03-12 10:20:23.993816', '/myapp/admin/order/cancel_order', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2023-03-12 10:20:24.127523', '/myapp/admin/order/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2023-03-12 10:20:31.501170', '/myapp/index/thing/getWishThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2023-03-12 10:20:31.509456', '/myapp/index/thing/getWishThingList', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2023-03-12 10:20:31.519134', '/myapp/index/thing/getWishThingList', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2023-03-12 10:20:31.528173', '/myapp/index/thing/getWishThingList', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2023-03-12 10:21:03.245376', '/myapp/index/order/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2023-03-12 10:21:03.258836', '/myapp/index/order/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2023-03-12 10:21:03.262716', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2023-03-12 10:21:03.282956', '/myapp/index/order/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2023-03-12 10:21:10.455155', '/myapp/admin/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2023-03-12 10:21:12.697705', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2023-03-12 10:21:12.700918', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2023-03-12 10:21:45.922632', '/myapp/index/comment/listMyComments', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2023-03-12 10:21:46.518059', '/myapp/index/order/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2023-03-12 10:21:46.545312', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2023-03-12 10:22:38.258631', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2023-03-12 10:22:38.271797', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2023-03-12 10:22:38.273540', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2023-03-12 10:22:38.296807', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2023-03-12 10:22:38.497128', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2023-03-12 10:27:34.705811', '/myapp/index/order/list', 'GET', NULL, '202');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2023-03-12 10:27:34.758717', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2023-03-12 10:27:37.361314', '/myapp/index/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2023-03-12 10:27:38.466568', '/myapp/index/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2023-03-12 10:27:39.722330', '/myapp/index/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2023-03-12 10:27:39.759223', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2023-03-12 10:27:45.001891', '/myapp/index/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2023-03-12 10:27:45.028160', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2023-03-12 10:27:47.309038', '/myapp/index/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2023-03-12 10:28:15.326914', '/myapp/index/order/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2023-03-12 10:28:15.348798', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2023-03-12 10:28:16.422017', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2023-03-12 10:28:17.628775', '/myapp/index/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2023-03-12 10:28:18.872245', '/myapp/index/order/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2023-03-12 10:28:18.899034', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2023-03-12 10:28:19.724789', '/myapp/index/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2023-03-12 10:28:19.740666', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2023-03-12 10:28:22.960007', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2023-03-12 10:28:24.002441', '/myapp/index/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2023-03-12 10:28:25.340651', '/myapp/index/order/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2023-03-12 10:28:25.365393', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2023-03-12 10:28:26.366483', '/myapp/index/order/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2023-03-12 10:28:26.394296', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2023-03-12 10:28:27.595141', '/myapp/index/order/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2023-03-12 10:28:28.369460', '/myapp/index/order/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2023-03-12 10:28:28.413508', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2023-03-12 10:28:29.144605', '/myapp/index/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2023-03-12 10:28:29.856958', '/myapp/index/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2023-03-12 10:28:31.028288', '/myapp/index/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2023-03-12 10:28:31.050657', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2023-03-12 10:28:32.003155', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2023-03-12 10:28:32.866435', '/myapp/index/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2023-03-12 10:28:33.877285', '/myapp/index/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2023-03-12 10:28:33.912713', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2023-03-12 10:38:33.100114', '/myapp/index/order/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2023-03-12 10:38:33.125933', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2023-03-12 10:38:45.119454', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2023-03-12 10:38:45.117400', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2023-03-12 10:38:45.135059', '/myapp/index/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2023-03-12 10:38:45.159455', '/myapp/index/order/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2023-03-12 10:38:45.250227', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2023-03-12 10:38:48.614390', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2023-03-12 10:38:48.622107', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2023-03-12 10:38:48.650650', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2023-03-12 10:38:48.785439', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2023-03-12 10:38:51.982214', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2023-03-12 10:38:51.986701', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2023-03-12 10:38:51.994036', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2023-03-12 10:38:52.154566', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2023-03-12 10:38:56.456807', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2023-03-12 10:38:56.460370', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2023-03-12 10:38:56.468898', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2023-03-12 10:38:56.557077', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2023-03-12 10:41:34.168279', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1091');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2023-03-12 10:41:34.854299', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2023-03-12 10:41:39.511613', '/myapp/admin/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2023-03-12 10:41:47.059561', '/myapp/admin/notice/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2023-03-12 10:41:47.098761', '/myapp/admin/notice/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2023-03-12 10:41:53.771492', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2023-03-12 10:41:53.809564', '/myapp/index/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2023-03-12 10:41:53.813420', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2023-03-12 10:41:53.829612', '/myapp/index/order/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2023-03-12 10:42:04.184895', '/myapp/index/order/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2023-03-12 10:42:05.142328', '/myapp/index/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2023-03-12 10:42:06.144138', '/myapp/index/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2023-03-12 10:42:07.071861', '/myapp/index/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2023-03-12 10:42:08.011370', '/myapp/index/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2023-03-12 10:42:08.906114', '/myapp/index/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2023-03-12 10:42:09.862450', '/myapp/index/order/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2023-03-12 10:42:10.724941', '/myapp/index/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2023-03-12 10:42:11.689912', '/myapp/index/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2023-03-12 10:42:13.948363', '/myapp/index/order/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2023-03-12 10:42:16.402464', '/myapp/index/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2023-03-12 17:15:45.479149', '/myapp/admin/notice/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2023-03-12 17:18:28.294223', '/myapp/admin/notice/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2023-03-12 17:19:13.369132', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2023-03-12 17:19:19.522634', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2023-03-12 17:20:01.053649', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2023-03-12 17:20:23.313172', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2023-03-12 17:20:37.742261', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2023-03-12 17:21:19.288606', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2023-03-12 17:21:19.922686', '/myapp/admin/notice/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2023-03-12 17:21:25.336281', '/myapp/index/notice/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2023-03-12 17:25:26.700545', '/myapp/index/notice/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2023-03-12 17:25:45.802286', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2023-03-12 17:26:54.157065', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2023-03-12 17:33:18.940973', '/myapp/index/notice/list_api', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2023-03-12 17:33:22.865312', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2023-03-12 17:40:48.353843', '/myapp/admin/overview/count', 'GET', NULL, '785');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2023-03-12 17:41:13.752391', '/myapp/admin/order/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2023-03-12 17:41:15.438366', '/myapp/admin/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2023-03-12 17:41:17.404027', '/myapp/admin/overview/count', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2023-03-12 17:41:54.728422', '/myapp/admin/order/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2023-03-12 17:41:56.301088', '/myapp/admin/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2023-03-12 17:49:08.397772', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2023-03-12 17:49:08.405419', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2023-03-12 17:49:08.432074', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2023-03-12 17:49:08.440602', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2023-03-12 17:49:08.473028', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2023-03-12 17:49:10.566978', '/myapp/index/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2023-03-12 17:49:10.598262', '/myapp/index/order/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2023-03-12 17:49:10.610277', '/myapp/index/order/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2023-03-12 17:49:10.626749', '/myapp/index/order/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2023-03-12 17:49:12.348396', '/myapp/index/address/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2023-03-12 17:49:50.586132', '/myapp/index/address/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2023-03-12 17:49:50.631733', '/myapp/index/address/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2023-03-12 17:52:08.728170', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2023-03-12 17:52:08.731968', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2023-03-12 17:52:08.744371', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2023-03-12 17:52:08.747741', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2023-03-12 17:52:11.577506', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2023-03-12 17:53:25.912797', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2023-03-12 17:53:26.675878', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2023-03-12 17:53:28.720074', '/myapp/index/notice/list_api', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2023-03-12 17:53:29.997150', '/myapp/index/notice/list_api', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2023-03-12 17:53:38.456571', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2023-03-12 17:53:56.180981', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2023-03-12 17:54:51.630274', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2023-03-12 17:56:17.939151', '/myapp/index/notice/list_api', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2023-03-12 17:56:20.813255', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2023-03-12 17:56:21.431662', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2023-03-12 17:56:23.991409', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2023-03-12 17:56:31.157027', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2023-03-12 17:59:10.826141', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2023-03-12 17:59:10.831666', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2023-03-12 17:59:10.844328', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2023-03-12 17:59:10.860841', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2023-03-12 17:59:12.518812', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2023-03-12 17:59:13.576062', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2023-03-13 20:40:15.730916', '/myapp/index/address/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2023-03-13 20:41:09.394648', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2023-03-13 20:41:24.802060', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2023-03-13 20:41:31.712128', '/myapp/index/address/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2023-03-13 20:43:41.895342', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2023-03-13 20:43:56.857826', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2023-03-13 20:44:03.514944', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2023-03-13 20:49:23.291493', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2023-03-13 20:50:17.600306', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2023-03-13 20:50:32.592390', '/myapp/index/address/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2023-03-13 20:53:22.250666', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2023-03-13 20:58:20.308942', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2023-03-13 20:58:53.157369', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2023-03-13 20:58:58.467751', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2023-03-13 20:59:01.226722', '/myapp/index/address/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2023-03-13 20:59:10.364089', '/myapp/index/address/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2023-03-13 20:59:26.899503', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2023-03-13 20:59:58.549203', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2023-03-13 21:01:56.397186', '/myapp/index/notice/list_api', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2023-03-13 21:02:02.421657', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2023-03-13 21:02:08.835229', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2023-03-13 21:02:11.032808', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2023-03-13 21:03:05.964860', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2023-03-13 21:05:08.630118', '/myapp/index/address/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2023-03-13 21:11:49.471764', '/myapp/index/address/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2023-03-13 21:13:04.062350', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2023-03-13 21:13:05.843101', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2023-03-13 21:14:36.502227', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2023-03-13 21:16:04.652740', '/myapp/index/address/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2023-03-13 21:16:12.805797', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2023-03-13 21:16:14.198443', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2023-03-13 21:16:47.737005', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2023-03-13 21:16:49.500367', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2023-03-13 21:17:32.551372', '/myapp/index/address/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2023-03-13 21:18:05.282006', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2023-03-13 21:19:02.913850', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2023-03-13 21:22:37.104664', '/myapp/index/address/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2023-03-13 21:22:47.619484', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2023-03-13 21:23:54.292926', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2023-03-13 21:23:57.903453', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2023-03-13 21:24:10.438023', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2023-03-13 21:24:35.310954', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2023-03-13 21:24:39.225130', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2023-03-13 21:24:44.100975', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2023-03-13 21:24:53.979190', '/myapp/index/address/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2023-03-13 21:24:57.149366', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2023-03-13 21:25:03.523978', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2023-03-13 21:25:13.020976', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2023-03-13 21:25:40.564709', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2023-03-13 21:26:25.974558', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2023-03-13 21:26:31.881509', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2023-03-13 21:26:36.203351', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2023-03-13 21:29:37.844814', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2023-03-13 21:29:39.732871', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2023-03-13 21:29:44.823312', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2023-03-13 21:29:48.179460', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2023-03-13 21:30:19.097691', '/myapp/index/address/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2023-03-13 21:30:27.371196', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2023-03-13 21:30:29.870136', '/myapp/index/address/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2023-03-13 21:30:33.564324', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2023-03-13 21:32:08.670844', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2023-03-13 21:32:11.283767', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2023-03-13 21:32:14.668326', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2023-03-13 21:32:27.179945', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2023-03-13 21:32:30.616680', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2023-03-13 21:33:18.615258', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2023-03-13 21:33:20.919176', '/myapp/index/address/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2023-03-13 21:33:24.894914', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2023-03-13 21:33:34.687967', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2023-03-13 21:33:41.409087', '/myapp/index/address/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2023-03-13 21:33:46.581009', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2023-03-13 21:33:53.111619', '/myapp/index/address/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2023-03-13 21:33:58.432352', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2023-03-13 21:34:03.223514', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2023-03-13 21:34:14.091881', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2023-03-13 21:34:22.146076', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2023-03-13 21:34:22.164608', '/myapp/index/thing/getWishThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2023-03-13 21:34:22.168443', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2023-03-13 21:34:22.174695', '/myapp/index/thing/getWishThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2023-03-13 21:34:40.908596', '/myapp/index/address/delete', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2023-03-13 21:34:40.922492', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2023-03-13 21:34:42.656742', '/myapp/index/address/delete', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2023-03-13 21:34:42.670300', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2023-03-13 21:34:44.513652', '/myapp/index/address/delete', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2023-03-13 21:34:44.530333', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2023-03-13 21:34:46.075034', '/myapp/index/address/delete', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2023-03-13 21:34:46.089265', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2023-03-13 21:34:47.773509', '/myapp/index/address/delete', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2023-03-13 21:34:47.787820', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2023-03-13 21:34:52.965969', '/myapp/index/address/delete', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2023-03-13 21:34:52.978080', '/myapp/index/address/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2023-03-13 21:34:58.991054', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2023-03-13 21:35:01.479582', '/myapp/index/address/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2023-03-13 21:36:23.546961', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2023-03-13 21:36:29.790663', '/myapp/index/address/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2023-03-13 21:36:31.664030', '/myapp/index/address/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2023-03-13 21:36:35.016642', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2023-03-13 21:36:37.467114', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2023-03-13 21:36:56.492295', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2023-03-14 20:21:31.151249', '/myapp/index/notice/list_api', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2023-03-14 20:22:04.043082', '/myapp/index/order/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2023-03-14 20:22:04.068442', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2023-03-14 20:30:03.255542', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2023-03-14 20:30:05.673149', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2023-03-14 20:30:32.113769', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2023-03-14 20:30:32.123537', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2023-03-14 20:30:32.132245', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2023-03-14 20:30:32.204697', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2023-03-14 20:41:03.651257', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2023-03-14 20:41:03.654046', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2023-03-14 20:41:03.662142', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2023-03-14 20:41:03.741459', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2023-03-14 20:42:42.665891', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2023-03-14 20:42:42.672991', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2023-03-14 20:42:42.676327', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2023-03-14 20:42:42.702052', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2023-03-14 20:44:42.871190', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2023-03-14 20:44:42.885474', '/myapp/index/thing/detail', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2023-03-14 20:44:42.887029', '/myapp/index/thing/detail', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2023-03-14 20:44:42.976450', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2023-03-14 20:46:42.797178', '/myapp/index/thing/addWishUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2023-03-14 20:46:43.482006', '/myapp/index/thing/addCollectUser', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2023-03-14 20:47:18.117368', '/myapp/index/order/create', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2023-03-14 20:48:32.402818', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2023-03-14 20:48:32.412649', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2023-03-14 20:48:32.422496', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2023-03-14 20:48:32.455979', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2023-03-14 20:48:33.801076', '/myapp/index/notice/list_api', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2023-03-14 20:50:42.293625', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2023-03-14 20:50:42.299096', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2023-03-14 20:50:42.302867', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2023-03-14 20:50:42.336270', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2023-03-14 20:50:44.719525', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2023-03-14 20:50:44.725082', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2023-03-14 20:50:44.733008', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2023-03-14 20:50:44.790232', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2023-03-14 20:50:46.082846', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2023-03-14 20:53:17.353086', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2023-03-14 20:53:17.357116', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2023-03-14 20:53:17.361077', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2023-03-14 20:53:17.386249', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2023-03-14 20:53:19.823391', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2023-03-14 20:53:19.832727', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2023-03-14 20:53:19.840768', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2023-03-14 20:53:19.925847', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2023-03-14 20:53:21.254925', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2023-03-14 20:53:40.392718', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2023-03-14 20:53:40.394648', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2023-03-14 20:53:40.396000', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2023-03-14 20:53:40.425504', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2023-03-14 20:53:57.381992', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2023-03-14 20:53:57.398042', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2023-03-14 20:53:57.404027', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2023-03-14 20:53:57.548079', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2023-03-14 20:53:57.555238', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2023-03-14 20:54:28.214151', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2023-03-14 20:54:28.218465', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2023-03-14 20:54:28.227224', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2023-03-14 20:54:28.348409', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2023-03-14 20:54:28.366275', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2023-03-14 20:54:55.054922', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2023-03-14 20:54:55.063309', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2023-03-14 20:54:55.066431', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2023-03-14 20:54:55.218780', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2023-03-14 20:54:55.279582', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2023-03-14 20:55:00.020231', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2023-03-14 20:55:00.037368', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2023-03-14 20:55:00.040343', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2023-03-14 20:55:00.131743', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2023-03-14 20:55:00.164744', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2023-03-14 20:55:01.133759', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2023-03-14 20:56:46.100494', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2023-03-14 20:56:46.132982', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2023-03-14 20:58:30.949053', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2023-03-14 20:58:30.970081', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2023-03-14 20:59:04.427713', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2023-03-14 20:59:04.506433', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2023-03-14 20:59:18.824400', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2023-03-14 20:59:18.832425', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2023-03-14 20:59:18.847184', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2023-03-14 20:59:18.884121', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2023-03-14 20:59:18.912821', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2023-03-14 20:59:22.432465', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2023-03-14 20:59:22.434313', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2023-03-14 20:59:22.437761', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2023-03-14 20:59:22.505729', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2023-03-14 20:59:23.618628', '/myapp/index/notice/list_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2023-03-14 20:59:30.103792', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2023-03-14 20:59:32.513611', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2023-03-14 20:59:32.525602', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2023-03-14 20:59:32.527612', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2023-03-14 20:59:32.586710', '/myapp/index/notice/list_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2023-03-14 20:59:34.383263', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2023-03-14 20:59:34.392013', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2023-03-14 20:59:34.396666', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2023-03-14 20:59:34.475121', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2023-03-14 20:59:35.615260', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2023-03-14 20:59:44.566635', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2023-03-14 20:59:44.574679', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2023-03-14 20:59:44.576580', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2023-03-14 20:59:44.605236', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2023-03-14 20:59:56.013490', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2023-03-14 21:00:33.339563', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2023-03-14 21:00:33.356560', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2023-03-14 21:00:35.553941', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2023-03-14 21:00:37.217630', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2023-03-14 21:00:37.226201', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2023-03-14 21:00:37.233329', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2023-03-14 21:00:37.268808', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2023-03-14 21:00:39.525358', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2023-03-14 21:00:39.527470', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2023-03-14 21:00:39.534480', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2023-03-14 21:00:39.585956', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2023-03-14 21:00:40.987963', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2023-03-14 21:00:45.208296', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2023-03-14 21:00:45.219660', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2023-03-14 21:00:45.225411', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2023-03-14 21:00:45.253843', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2023-03-14 21:00:46.256534', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2023-03-14 21:00:51.518719', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2023-03-14 21:00:51.533689', '/myapp/index/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2023-03-14 21:00:51.536832', '/myapp/index/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2023-03-14 21:00:51.539122', '/myapp/index/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2023-03-14 21:00:53.863124', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2023-03-14 21:00:53.883115', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2023-03-14 21:00:53.886966', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2023-03-14 21:00:53.969956', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2023-03-14 21:00:56.197469', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2023-03-14 21:03:24.922995', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2023-03-14 21:03:24.977135', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2023-03-14 21:03:30.367843', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2023-03-14 21:04:05.364791', '/myapp/index/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2023-03-14 21:04:05.391625', '/myapp/index/order/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2023-03-14 21:04:05.393943', '/myapp/index/order/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2023-03-14 21:04:05.423362', '/myapp/index/order/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2023-03-14 21:04:07.120931', '/myapp/index/address/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2023-03-14 21:04:11.819279', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2023-03-14 21:04:11.845493', '/myapp/index/address/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2023-03-14 21:04:11.861722', '/myapp/index/address/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2023-03-14 21:04:11.864275', '/myapp/index/address/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2023-03-14 21:04:20.926292', '/myapp/index/notice/list_api', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2023-03-14 21:04:23.027582', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2023-03-14 21:05:21.554743', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2023-03-14 21:08:02.529514', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2023-03-14 21:09:34.639993', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2023-03-14 21:09:50.554042', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2023-03-14 21:09:57.444489', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2023-03-14 21:10:03.946563', '/myapp/index/notice/list_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2023-03-14 21:10:08.133408', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2023-03-14 21:12:33.301828', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2023-03-14 21:12:49.375424', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2023-03-14 21:12:56.917692', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2023-03-14 21:13:05.986646', '/myapp/index/notice/list_api', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2023-03-14 21:13:30.036887', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2023-03-14 21:13:34.244762', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2023-03-14 21:13:45.768520', '/myapp/index/address/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2023-03-14 21:16:07.962471', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2023-03-14 21:16:27.261050', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2023-03-14 21:16:34.807866', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2023-03-14 21:16:45.730883', '/myapp/index/address/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2023-03-14 21:16:47.378900', '/myapp/index/order/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2023-03-14 21:17:30.293317', '/myapp/index/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2023-03-14 21:19:36.396090', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2023-03-14 21:19:55.493903', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2023-03-14 21:20:15.432866', '/myapp/index/address/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2023-03-14 21:20:17.366590', '/myapp/index/order/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2023-03-14 21:20:23.796792', '/myapp/index/thing/getWishThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2023-03-14 21:20:23.825400', '/myapp/index/thing/getWishThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2023-03-14 21:20:23.839127', '/myapp/index/thing/getWishThingList', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2023-03-14 21:20:23.855826', '/myapp/index/thing/getWishThingList', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2023-03-14 21:20:33.477843', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2023-03-14 21:20:33.493127', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2023-03-14 21:20:33.499102', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2023-03-14 21:20:33.584608', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2023-03-14 21:20:59.426568', '/myapp/index/order/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2023-03-14 21:21:02.795180', '/myapp/index/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2023-03-14 21:21:05.599253', '/myapp/index/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2023-03-14 21:21:08.068376', '/myapp/index/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2023-03-14 21:21:08.109426', '/myapp/index/order/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2023-03-14 21:21:08.125781', '/myapp/index/order/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2023-03-14 21:21:08.146209', '/myapp/index/order/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2023-03-14 21:21:22.528854', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2023-03-15 20:30:34.065450', '/myapp/index/notice/list_api', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2023-03-15 20:33:03.641809', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2023-03-15 20:33:03.657098', '/myapp/index/address/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2023-03-15 20:33:19.953033', '/myapp/index/address/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2023-03-15 20:33:19.957075', '/myapp/index/address/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2023-03-15 20:33:52.940100', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2023-03-15 20:33:52.944939', '/myapp/index/address/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2023-03-15 20:34:47.630477', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2023-03-15 20:34:47.633874', '/myapp/index/address/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2023-03-15 20:36:45.767539', '/myapp/index/address/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2023-03-15 20:36:45.769920', '/myapp/index/address/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2023-03-15 20:36:50.151950', '/myapp/index/address/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2023-03-15 20:36:50.163431', '/myapp/index/address/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2023-03-15 20:36:58.151759', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2023-03-15 20:36:58.158442', '/myapp/index/address/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2023-03-15 20:37:02.295728', '/myapp/index/address/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2023-03-15 20:37:07.139116', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2023-03-15 20:37:11.114946', '/myapp/index/address/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2023-03-15 20:37:17.495073', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2023-03-15 20:37:17.499449', '/myapp/index/address/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2023-03-15 20:37:46.989047', '/myapp/index/order/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2023-03-15 20:38:44.803196', '/myapp/index/address/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2023-03-15 20:38:44.807067', '/myapp/index/address/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2023-03-15 20:38:48.186392', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2023-03-15 20:38:48.190223', '/myapp/index/address/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2023-03-15 20:38:49.424469', '/myapp/index/order/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2023-03-15 20:38:49.481889', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2023-03-15 20:39:33.197618', '/myapp/index/address/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2023-03-15 20:39:33.200287', '/myapp/index/address/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2023-03-15 20:39:35.156023', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2023-03-15 20:39:35.160249', '/myapp/index/address/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2023-03-15 20:39:35.954586', '/myapp/index/order/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2023-03-15 20:39:36.000853', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2023-03-15 20:41:06.292108', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2023-03-15 20:41:20.968306', '/myapp/index/address/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2023-03-15 20:41:20.972506', '/myapp/index/address/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2023-03-15 20:41:23.234630', '/myapp/index/order/create', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2023-03-15 20:41:23.287940', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2023-03-15 20:42:25.993600', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2023-03-15 20:42:26.002199', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2023-03-15 20:42:26.026532', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2023-03-15 20:42:26.035119', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2023-03-15 20:42:26.067233', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2023-03-15 20:42:28.798914', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2023-03-15 20:42:28.832072', '/myapp/index/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2023-03-15 20:42:28.844616', '/myapp/index/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2023-03-15 20:42:28.906662', '/myapp/index/order/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2023-03-15 20:42:52.190948', '/myapp/admin/overview/count', 'GET', NULL, '327');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2023-03-15 20:43:00.105951', '/myapp/admin/order/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2023-03-15 20:43:05.459090', '/myapp/admin/order/delete', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2023-03-15 20:43:05.676153', '/myapp/admin/order/list', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2023-03-15 20:43:08.465209', '/myapp/admin/order/delete', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2023-03-15 20:43:08.623704', '/myapp/admin/order/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2023-03-15 20:43:13.554180', '/myapp/admin/order/cancel_order', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2023-03-15 20:43:13.694311', '/myapp/admin/order/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2023-03-15 20:43:42.314835', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2023-03-15 20:43:42.318306', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2023-03-15 20:43:42.323985', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2023-03-15 20:43:42.408438', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2023-03-15 20:43:46.896889', '/myapp/index/order/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2023-03-15 20:43:47.607629', '/myapp/index/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2023-03-15 20:43:48.736098', '/myapp/index/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2023-03-15 20:44:24.636828', '/myapp/index/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2023-03-15 20:44:26.308976', '/myapp/index/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2023-03-15 20:46:35.073800', '/myapp/index/order/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2023-03-15 20:50:19.555926', '/myapp/index/order/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2023-03-15 20:50:36.270064', '/myapp/index/order/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2023-03-15 20:50:41.709436', '/myapp/index/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2023-03-15 20:50:41.735425', '/myapp/index/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2023-03-15 20:50:41.747320', '/myapp/index/order/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2023-03-15 20:50:41.789844', '/myapp/index/order/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2023-03-15 20:50:46.598875', '/myapp/index/order/cancel_order', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2023-03-15 20:50:52.184056', '/myapp/index/order/cancel_order', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2023-03-15 20:51:14.092582', '/myapp/index/order/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2023-03-15 20:51:14.306861', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2023-03-15 20:51:18.569087', '/myapp/index/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2023-03-15 20:51:21.984207', '/myapp/index/order/cancel_order', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2023-03-15 20:51:22.015168', '/myapp/index/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2023-03-15 20:51:23.717048', '/myapp/index/order/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2023-03-15 20:52:38.055907', '/myapp/index/order/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2023-03-15 20:52:39.256803', '/myapp/index/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2023-03-15 20:52:40.323392', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2023-03-15 20:52:41.454962', '/myapp/index/thing/getWishThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2023-03-15 20:52:42.759402', '/myapp/index/order/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2023-03-15 20:52:43.892743', '/myapp/index/comment/listMyComments', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2023-03-15 20:52:44.913199', '/myapp/index/address/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2023-03-15 20:52:46.161804', '/myapp/index/comment/listMyComments', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2023-03-15 20:52:46.960464', '/myapp/index/order/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2023-03-15 20:52:49.550490', '/myapp/index/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2023-03-15 20:52:50.362224', '/myapp/index/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2023-03-15 20:52:51.193460', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2023-03-15 20:52:51.784596', '/myapp/index/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2023-03-15 20:52:52.658090', '/myapp/index/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2023-03-15 20:53:05.742610', '/myapp/admin/order/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2023-03-17 20:06:04.069277', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2023-03-17 20:06:04.075718', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2023-03-17 20:06:04.081322', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2023-03-17 20:06:04.084432', '/myapp/index/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2023-03-17 20:06:06.086386', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2023-03-17 20:06:07.139791', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2023-03-17 20:06:15.195993', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2023-03-17 20:06:18.049234', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2023-03-17 20:06:18.051485', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2023-03-17 20:06:18.058729', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2023-03-17 20:06:18.146547', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2023-03-17 20:06:18.152477', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2023-03-17 20:06:35.486483', '/myapp/admin/overview/count', 'GET', NULL, '480');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2023-03-17 20:06:36.156764', '/myapp/admin/order/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2023-03-17 20:06:37.185749', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2023-03-17 20:06:41.193647', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2023-03-17 20:06:42.391187', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2023-03-17 20:06:43.344543', '/myapp/admin/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2023-03-17 20:06:46.601199', '/myapp/admin/order/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2023-03-17 20:08:07.744723', '/myapp/index/address/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2023-03-17 20:08:07.756415', '/myapp/index/address/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2023-03-17 20:08:11.187878', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2023-03-17 20:08:11.201443', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2023-03-17 20:08:11.206697', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2023-03-17 20:08:11.230554', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2023-03-17 20:08:18.435129', '/myapp/index/address/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2023-03-17 20:08:18.437993', '/myapp/index/address/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2023-03-17 20:09:55.114323', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2023-03-17 20:09:55.117282', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2023-03-17 20:09:55.121607', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2023-03-17 20:09:55.133955', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2023-03-17 20:09:56.908663', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2023-03-17 20:09:56.933606', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2023-03-17 20:09:56.938103', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2023-03-17 20:09:56.992648', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2023-03-17 20:09:58.640739', '/myapp/index/address/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2023-03-17 20:09:58.644477', '/myapp/index/address/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2023-03-17 20:10:47.231333', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2023-03-17 20:10:47.241250', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2023-03-17 20:10:47.242977', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2023-03-17 20:10:47.281135', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2023-03-17 20:10:49.729741', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2023-03-17 20:10:49.732649', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2023-03-17 20:10:49.734461', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2023-03-17 20:10:49.789066', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2023-03-17 20:10:51.081259', '/myapp/index/address/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2023-03-17 20:10:51.085060', '/myapp/index/address/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2023-03-17 20:11:58.800253', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2023-03-17 20:11:58.810477', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2023-03-17 20:12:09.399108', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2023-03-17 20:12:09.410771', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2023-03-17 20:12:09.421472', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2023-03-17 20:12:09.488693', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2023-03-17 20:12:09.504998', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2023-03-17 20:12:22.851671', '/myapp/index/address/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2023-03-17 20:12:22.854712', '/myapp/index/address/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2023-03-17 20:12:24.032033', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2023-03-17 20:12:24.045999', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2023-03-17 20:12:24.050167', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2023-03-17 20:12:24.078936', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2023-03-17 20:12:25.739453', '/myapp/index/address/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2023-03-17 20:12:25.742246', '/myapp/index/address/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2023-03-17 20:12:26.879789', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2023-03-17 20:12:26.888866', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2023-03-17 20:12:26.890954', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2023-03-17 20:12:26.919899', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2023-03-17 20:12:28.641884', '/myapp/index/address/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2023-03-17 20:12:28.645600', '/myapp/index/address/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2023-03-17 20:12:30.065462', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2023-03-17 20:12:30.075688', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2023-03-17 20:12:30.079506', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2023-03-17 20:12:30.107693', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2023-03-17 20:14:21.747430', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2023-03-17 20:14:21.751945', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2023-03-17 20:14:21.760089', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2023-03-17 20:14:21.795431', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2023-03-17 20:20:48.648330', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2023-03-17 20:23:56.036553', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2023-03-17 20:26:01.904484', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2023-03-17 20:26:01.900122', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2023-03-17 20:26:01.919336', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2023-03-17 20:26:01.934803', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2023-03-17 20:26:02.023631', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2023-03-17 20:26:41.466028', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2023-03-17 20:26:41.478935', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2023-03-17 20:26:41.481221', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2023-03-17 20:26:41.571253', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2023-03-17 20:30:31.516301', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2023-03-17 20:30:31.525195', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2023-03-17 20:30:31.535025', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2023-03-17 20:30:31.645232', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2023-03-17 20:31:00.555730', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2023-03-17 20:31:00.566385', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2023-03-17 20:31:00.576795', '/myapp/index/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2023-03-17 20:31:00.581365', '/myapp/index/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2023-03-17 20:31:00.887049', '/upload/cover/1678529114670.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2023-03-17 20:31:24.607227', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2023-03-17 20:31:24.611135', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2023-03-17 20:31:24.616316', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2023-03-17 20:31:24.734417', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2023-03-17 20:31:40.056369', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2023-03-17 20:31:40.071953', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2023-03-17 20:31:40.073914', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2023-03-17 20:31:40.199646', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2023-03-17 20:32:05.523062', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2023-03-17 20:32:05.526577', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2023-03-17 20:32:05.532809', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2023-03-17 20:32:05.613050', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2023-03-17 20:32:09.753204', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2023-03-17 20:32:09.761429', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2023-03-17 20:32:09.765080', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2023-03-17 20:32:09.846947', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2023-03-17 20:34:17.262808', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2023-03-17 20:34:18.686252', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2023-03-17 20:34:18.688212', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2023-03-17 20:34:49.185160', '/myapp/admin/thing/create', 'POST', NULL, '189');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2023-03-17 20:34:49.261575', '/myapp/admin/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2023-03-17 20:34:55.757511', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2023-03-17 20:34:55.763925', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2023-03-17 20:34:55.767102', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2023-03-17 20:34:55.786352', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2023-03-17 20:34:55.820303', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2023-03-17 20:34:55.823781', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2023-03-17 20:35:15.597590', '/myapp/admin/tag/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2023-03-17 20:35:15.602296', '/myapp/admin/tag/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2023-03-17 20:35:39.119944', '/myapp/admin/thing/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2023-03-17 20:35:39.207438', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2023-03-17 20:35:40.559401', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2023-03-17 20:35:40.563778', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2023-03-17 20:36:14.504238', '/myapp/admin/thing/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2023-03-17 20:36:14.604181', '/myapp/admin/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2023-03-17 20:36:16.140935', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2023-03-17 20:36:16.144965', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2023-03-17 20:36:38.513208', '/myapp/admin/thing/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2023-03-17 20:36:38.618499', '/myapp/admin/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2023-03-17 20:36:42.698907', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2023-03-17 20:36:42.704363', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2023-03-17 20:36:42.717067', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2023-03-17 20:36:42.744772', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2023-03-17 20:36:42.838927', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2023-03-17 20:36:42.839763', '/upload/cover/1679056528013.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2023-03-17 20:36:42.844971', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2023-03-17 20:36:42.846478', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2023-03-17 20:36:59.212808', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2023-03-17 20:36:59.215421', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2023-03-17 20:36:59.219574', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2023-03-17 20:37:05.200982', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2023-03-17 20:37:05.300810', '/myapp/admin/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2023-03-17 20:37:09.094175', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2023-03-17 20:37:09.100433', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2023-03-17 20:37:09.114213', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2023-03-17 20:37:09.148623', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2023-03-17 20:37:09.215575', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2023-03-17 20:37:09.216462', '/upload/cover/1679056587496.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2023-03-17 20:37:09.218128', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2023-03-17 20:37:09.218670', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2023-03-17 20:37:56.902637', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2023-03-17 20:37:56.905472', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2023-03-17 20:37:56.908717', '/myapp/index/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2023-03-17 20:37:56.993670', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2023-03-17 20:37:57.121540', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2023-03-17 20:37:57.122491', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2023-03-17 20:37:57.123960', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2023-03-17 20:37:57.125527', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2023-03-17 20:41:32.091626', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2023-03-17 20:41:32.117957', '/myapp/index/thing/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2023-03-17 20:41:32.124009', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2023-03-17 20:41:32.162248', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2023-03-17 20:41:32.191725', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2023-03-17 20:41:32.194694', '/upload/cover/1679056587496.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2023-03-17 20:41:32.195162', '/upload/cover/1679056587496.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2023-03-17 20:41:32.204904', '/upload/cover/1679056587496.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2023-03-17 20:45:52.482466', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2023-03-17 20:45:52.486926', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2023-03-17 20:45:52.489236', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2023-03-17 20:45:52.516731', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2023-03-17 20:45:52.619230', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2023-03-17 20:45:52.620772', '/upload/cover/1679056528013.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2023-03-17 20:45:52.621071', '/upload/cover/1679056528013.png', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2023-03-17 20:45:52.623736', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2023-03-17 20:46:03.454508', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2023-03-17 20:46:03.458999', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2023-03-17 20:46:03.461592', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2023-03-17 20:46:03.492232', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2023-03-17 20:46:43.279230', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2023-03-17 20:46:43.282099', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2023-03-17 20:46:43.286585', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2023-03-17 20:46:43.305795', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2023-03-17 20:47:51.018456', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2023-03-17 20:47:51.021841', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2023-03-17 20:47:51.027968', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2023-03-17 20:47:51.048896', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2023-03-17 20:47:51.107681', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2023-03-17 20:47:51.109070', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2023-03-17 20:47:51.109612', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2023-03-17 20:47:51.109988', '/upload/cover/1679056528013.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2023-03-17 20:48:55.914422', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2023-03-17 20:48:55.916412', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2023-03-17 20:48:55.923064', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2023-03-17 20:48:55.952350', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2023-03-17 20:50:03.000670', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2023-03-17 20:50:03.009835', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2023-03-17 20:50:03.011890', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2023-03-17 20:50:03.033239', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2023-03-17 20:50:03.085951', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2023-03-17 20:50:03.086375', '/upload/cover/1679056528013.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2023-03-17 20:50:03.087742', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2023-03-17 20:50:03.090909', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2023-03-17 20:51:11.606423', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2023-03-17 20:51:11.624253', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2023-03-17 20:51:11.634634', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2023-03-17 20:51:11.657814', '/myapp/index/classification/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2023-03-17 20:51:27.376565', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2023-03-17 20:51:27.391336', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2023-03-17 20:51:27.396917', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2023-03-17 20:51:27.427334', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2023-03-17 20:51:27.472838', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2023-03-17 20:51:27.473443', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2023-03-17 20:52:34.256886', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2023-03-17 20:52:34.259365', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2023-03-17 20:52:34.268213', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2023-03-17 20:52:34.300538', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2023-03-17 20:52:34.354238', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2023-03-17 20:52:34.354740', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2023-03-17 20:53:23.617125', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2023-03-17 20:53:23.621325', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2023-03-17 20:53:23.626797', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1129, '127.0.0.1', '2023-03-17 20:53:23.652908', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1130, '127.0.0.1', '2023-03-17 20:53:23.732526', '/upload/cover/1679056587496.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1131, '127.0.0.1', '2023-03-17 20:53:23.739200', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1132, '127.0.0.1', '2023-03-17 20:53:35.394775', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1133, '127.0.0.1', '2023-03-17 20:53:35.411768', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1134, '127.0.0.1', '2023-03-17 20:53:35.423584', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1135, '127.0.0.1', '2023-03-17 20:53:35.451787', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1136, '127.0.0.1', '2023-03-17 20:53:52.155815', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1137, '127.0.0.1', '2023-03-17 20:53:52.164674', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1138, '127.0.0.1', '2023-03-17 20:53:52.173243', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1139, '127.0.0.1', '2023-03-17 20:53:52.202798', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1140, '127.0.0.1', '2023-03-17 20:54:04.577399', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1141, '127.0.0.1', '2023-03-17 20:54:04.579505', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1142, '127.0.0.1', '2023-03-17 20:54:04.582745', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1143, '127.0.0.1', '2023-03-17 20:54:04.611979', '/myapp/index/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1144, '127.0.0.1', '2023-03-17 20:56:29.054127', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1145, '127.0.0.1', '2023-03-17 20:56:29.061600', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1146, '127.0.0.1', '2023-03-17 20:56:29.074731', '/myapp/index/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1147, '127.0.0.1', '2023-03-17 20:56:29.095996', '/myapp/index/classification/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1148, '127.0.0.1', '2023-03-17 20:56:29.152065', '/upload/cover/1679056587496.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1149, '127.0.0.1', '2023-03-17 20:56:29.155874', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1150, '127.0.0.1', '2023-03-17 20:56:29.159233', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1151, '127.0.0.1', '2023-03-17 20:56:29.162117', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1152, '127.0.0.1', '2023-03-17 21:00:30.691451', '/upload/cover/1679056587496.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1153, '127.0.0.1', '2023-03-17 21:00:30.700675', '/upload/cover/1679056587496.jpeg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1154, '127.0.0.1', '2023-03-17 21:00:30.701443', '/upload/cover/1679056587496.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1155, '127.0.0.1', '2023-03-17 21:00:37.372384', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (1156, '127.0.0.1', '2023-03-17 21:00:37.476617', '/myapp/admin/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1157, '127.0.0.1', '2023-03-17 21:00:38.979622', '/myapp/admin/tag/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1158, '127.0.0.1', '2023-03-17 21:00:38.983150', '/myapp/admin/tag/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1159, '127.0.0.1', '2023-03-17 21:00:44.415881', '/myapp/admin/thing/update', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (1160, '127.0.0.1', '2023-03-17 21:00:44.515620', '/myapp/admin/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2023-03-17 21:00:48.549084', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2023-03-17 21:00:48.556366', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2023-03-17 21:00:48.568476', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2023-03-17 21:00:48.593017', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2023-03-17 21:00:48.655054', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2023-03-17 21:00:48.656805', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2023-03-17 21:00:48.659521', '/upload/cover/1679056528013.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2023-03-17 21:00:48.662288', '/upload/cover/1679058043365.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2023-03-17 21:00:48.666045', '/upload/cover/1679058043365.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2023-03-17 21:01:33.435847', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2023-03-17 21:01:33.439064', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2023-03-17 21:01:33.452258', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1173, '127.0.0.1', '2023-03-17 21:01:33.469954', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1174, '127.0.0.1', '2023-03-17 21:01:33.515485', '/upload/cover/1679058036014.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1175, '127.0.0.1', '2023-03-17 21:01:33.523984', '/upload/cover/1679058043365.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1176, '127.0.0.1', '2023-03-17 21:01:57.682663', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1177, '127.0.0.1', '2023-03-17 21:01:57.699700', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1178, '127.0.0.1', '2023-03-17 21:01:57.704899', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1179, '127.0.0.1', '2023-03-17 21:01:57.738018', '/upload/cover/1679058036014.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1180, '127.0.0.1', '2023-03-17 21:01:57.776511', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1181, '127.0.0.1', '2023-03-17 21:01:57.785970', '/upload/cover/1679058043365.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1182, '127.0.0.1', '2023-03-17 21:02:07.830323', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1183, '127.0.0.1', '2023-03-17 21:02:07.836871', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1184, '127.0.0.1', '2023-03-17 21:02:07.846961', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1185, '127.0.0.1', '2023-03-17 21:02:07.899137', '/upload/cover/1679058043365.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1186, '127.0.0.1', '2023-03-17 21:02:07.932971', '/upload/cover/1679058036014.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1187, '127.0.0.1', '2023-03-17 21:02:07.935869', '/upload/cover/1679058036014.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1188, '127.0.0.1', '2023-03-17 21:05:42.535803', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1189, '127.0.0.1', '2023-03-17 21:05:42.564534', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1190, '127.0.0.1', '2023-03-17 21:05:42.576115', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1191, '127.0.0.1', '2023-03-17 21:05:42.616001', '/upload/cover/1679058036014.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1192, '127.0.0.1', '2023-03-17 21:05:42.641743', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1193, '127.0.0.1', '2023-03-17 21:05:42.658128', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1194, '127.0.0.1', '2023-03-17 21:05:42.658443', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1195, '127.0.0.1', '2023-03-17 21:05:42.658829', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1196, '127.0.0.1', '2023-03-17 21:05:42.661368', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1197, '127.0.0.1', '2023-03-17 21:06:45.561708', '/myapp/index/thing/detail', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1198, '127.0.0.1', '2023-03-17 21:06:45.565951', '/myapp/index/thing/detail', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (1199, '127.0.0.1', '2023-03-17 21:06:45.584827', '/myapp/index/thing/detail', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (1200, '127.0.0.1', '2023-03-17 21:06:45.700687', '/upload/cover/1679058036014.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1201, '127.0.0.1', '2023-03-17 21:06:45.728371', '/upload/cover/1679058043365.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1202, '127.0.0.1', '2023-03-17 21:06:45.729205', '/upload/cover/1679058043365.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1203, '127.0.0.1', '2023-03-17 21:06:53.312295', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1204, '127.0.0.1', '2023-03-17 21:06:53.328017', '/myapp/index/comment/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1205, '127.0.0.1', '2023-03-17 21:06:53.343336', '/myapp/index/comment/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1206, '127.0.0.1', '2023-03-17 21:06:53.388481', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1207, '127.0.0.1', '2023-03-17 21:07:01.311962', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1208, '127.0.0.1', '2023-03-17 21:07:01.330143', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1209, '127.0.0.1', '2023-03-17 21:07:01.342376', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1210, '127.0.0.1', '2023-03-17 21:07:01.412186', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1211, '127.0.0.1', '2023-03-17 21:08:51.639318', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1212, '127.0.0.1', '2023-03-17 21:08:51.642376', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1213, '127.0.0.1', '2023-03-17 21:08:51.673722', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1214, '127.0.0.1', '2023-03-17 21:08:51.712217', '/upload/cover/1679058036014.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1215, '127.0.0.1', '2023-03-17 21:08:51.717398', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1216, '127.0.0.1', '2023-03-17 21:08:51.740545', '/upload/cover/1679058043365.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1217, '127.0.0.1', '2023-03-17 21:08:51.758527', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1218, '127.0.0.1', '2023-03-17 21:08:51.759855', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1219, '127.0.0.1', '2023-03-17 21:08:51.761236', '/upload/cover/1679056528013.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1220, '127.0.0.1', '2023-03-17 21:12:59.432477', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1221, '127.0.0.1', '2023-03-17 21:12:59.449643', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1222, '127.0.0.1', '2023-03-17 21:12:59.485659', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1223, '127.0.0.1', '2023-03-17 21:13:51.883703', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1224, '127.0.0.1', '2023-03-17 21:13:51.900250', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1225, '127.0.0.1', '2023-03-17 21:14:32.917030', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1226, '127.0.0.1', '2023-03-17 21:14:32.927175', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1227, '127.0.0.1', '2023-03-17 21:14:51.379342', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1228, '127.0.0.1', '2023-03-17 21:14:51.402803', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1229, '127.0.0.1', '2023-03-17 21:14:53.168974', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1230, '127.0.0.1', '2023-03-17 21:14:55.676822', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1231, '127.0.0.1', '2023-03-17 21:15:15.646421', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1232, '127.0.0.1', '2023-03-17 21:15:15.677816', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1233, '127.0.0.1', '2023-03-17 21:15:15.680113', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1234, '127.0.0.1', '2023-03-18 21:12:00.943599', '/myapp/index/thing/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (1235, '127.0.0.1', '2023-03-18 21:12:00.949764', '/myapp/index/thing/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (1236, '127.0.0.1', '2023-03-18 21:12:00.952192', '/myapp/index/thing/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (1237, '127.0.0.1', '2023-03-18 21:12:00.983790', '/myapp/index/thing/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (1238, '127.0.0.1', '2023-03-18 21:12:01.037555', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1239, '127.0.0.1', '2023-03-18 21:12:01.039626', '/upload/cover/1679058036014.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1240, '127.0.0.1', '2023-03-18 21:12:01.043989', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1241, '127.0.0.1', '2023-03-18 21:12:01.048046', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1242, '127.0.0.1', '2023-03-18 21:12:01.048405', '/upload/cover/1679058043365.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1243, '127.0.0.1', '2023-03-18 21:12:15.383007', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1244, '127.0.0.1', '2023-03-18 21:12:15.422223', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1245, '127.0.0.1', '2023-03-18 21:12:33.868194', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1246, '127.0.0.1', '2023-03-18 21:12:33.876151', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1247, '127.0.0.1', '2023-03-18 21:12:33.897484', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1248, '127.0.0.1', '2023-03-18 21:12:33.949016', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1249, '127.0.0.1', '2023-03-18 21:12:35.369999', '/myapp/index/thing/addWishUser', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1250, '127.0.0.1', '2023-03-18 21:12:35.989509', '/myapp/index/thing/addCollectUser', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (1251, '127.0.0.1', '2023-03-18 21:12:39.126112', '/myapp/index/address/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (1252, '127.0.0.1', '2023-03-18 21:12:39.130858', '/myapp/index/address/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (1253, '127.0.0.1', '2023-03-18 21:12:41.150923', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1254, '127.0.0.1', '2023-03-18 21:12:41.169332', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1255, '127.0.0.1', '2023-03-18 21:12:41.174154', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1256, '127.0.0.1', '2023-03-18 21:12:41.202550', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1257, '127.0.0.1', '2023-03-18 21:12:42.769393', '/myapp/index/address/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1258, '127.0.0.1', '2023-03-18 21:12:42.771992', '/myapp/index/address/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1259, '127.0.0.1', '2023-03-18 21:12:50.887604', '/myapp/index/order/create', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (1260, '127.0.0.1', '2023-03-18 21:12:50.991095', '/myapp/index/notice/list_api', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1261, '127.0.0.1', '2023-03-18 21:19:40.618460', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1262, '127.0.0.1', '2023-03-18 21:19:40.629227', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1263, '127.0.0.1', '2023-03-18 21:19:40.650702', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1264, '127.0.0.1', '2023-03-18 21:19:40.658049', '/myapp/index/notice/list_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1265, '127.0.0.1', '2023-03-18 21:19:40.758599', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1266, '127.0.0.1', '2023-03-18 21:19:40.784816', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1267, '127.0.0.1', '2023-03-18 21:19:40.791258', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1268, '127.0.0.1', '2023-03-18 21:19:40.793471', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1269, '127.0.0.1', '2023-03-18 21:19:40.822340', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1270, '127.0.0.1', '2023-03-18 21:20:05.335866', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1271, '127.0.0.1', '2023-03-18 21:20:34.239513', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1272, '127.0.0.1', '2023-03-18 21:20:37.763639', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1273, '127.0.0.1', '2023-03-18 21:21:31.843752', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1274, '127.0.0.1', '2023-03-18 21:21:46.332047', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1275, '127.0.0.1', '2023-03-18 21:22:07.891655', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1276, '127.0.0.1', '2023-03-18 21:29:06.298852', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1277, '127.0.0.1', '2023-03-18 21:29:06.317806', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1278, '127.0.0.1', '2023-03-18 21:29:06.321557', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1279, '127.0.0.1', '2023-03-18 21:29:06.342798', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1280, '127.0.0.1', '2023-03-18 21:29:10.369492', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1281, '127.0.0.1', '2023-03-18 21:29:14.290121', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1282, '127.0.0.1', '2023-03-18 21:29:14.310412', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1283, '127.0.0.1', '2023-03-18 21:29:14.321569', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1284, '127.0.0.1', '2023-03-18 21:29:14.446559', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1285, '127.0.0.1', '2023-03-18 21:29:18.728813', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1286, '127.0.0.1', '2023-03-18 21:29:18.727170', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1287, '127.0.0.1', '2023-03-18 21:29:18.731688', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1288, '127.0.0.1', '2023-03-18 21:29:18.762949', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1289, '127.0.0.1', '2023-03-18 21:29:33.351084', '/myapp/admin/overview/count', 'GET', NULL, '576');
INSERT INTO `b_op_log` VALUES (1290, '127.0.0.1', '2023-03-18 21:29:36.701084', '/myapp/admin/order/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (1291, '127.0.0.1', '2023-03-18 21:29:47.091121', '/myapp/admin/adminLogin', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (1292, '127.0.0.1', '2023-03-18 21:29:53.381911', '/myapp/admin/adminLogin', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (1293, '127.0.0.1', '2023-03-18 21:29:53.502736', '/myapp/admin/overview/count', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1294, '127.0.0.1', '2023-03-18 21:30:00.623515', '/myapp/admin/adminLogin', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (1295, '127.0.0.1', '2023-03-18 21:30:05.509263', '/myapp/admin/adminLogin', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (1296, '127.0.0.1', '2023-03-18 21:30:06.092388', '/myapp/admin/overview/count', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1297, '127.0.0.1', '2023-03-18 21:30:10.669605', '/myapp/admin/order/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (1298, '127.0.0.1', '2023-03-18 21:30:19.497987', '/myapp/admin/user/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1299, '127.0.0.1', '2023-03-18 21:31:12.461969', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1300, '127.0.0.1', '2023-03-18 21:31:15.863546', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1301, '127.0.0.1', '2023-03-18 21:31:25.174098', '/myapp/index/user/login', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (1302, '127.0.0.1', '2023-03-18 21:31:34.619348', '/myapp/index/user/login', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1303, '127.0.0.1', '2023-03-18 21:31:34.721814', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1304, '127.0.0.1', '2023-03-18 21:31:34.724827', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1305, '127.0.0.1', '2023-03-18 21:31:34.737354', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1306, '127.0.0.1', '2023-03-18 21:31:34.768589', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1307, '127.0.0.1', '2023-03-18 21:31:37.457290', '/myapp/index/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1308, '127.0.0.1', '2023-03-18 21:31:37.498349', '/myapp/index/order/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1309, '127.0.0.1', '2023-03-18 21:31:37.518327', '/myapp/index/order/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1310, '127.0.0.1', '2023-03-18 21:31:37.550831', '/myapp/index/order/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (1311, '127.0.0.1', '2023-03-18 21:31:46.085244', '/myapp/index/comment/listMyComments', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1312, '127.0.0.1', '2023-03-18 21:31:47.392761', '/myapp/index/address/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1313, '127.0.0.1', '2023-03-18 21:31:48.369577', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1314, '127.0.0.1', '2023-03-18 21:31:50.433499', '/myapp/index/order/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1315, '127.0.0.1', '2023-03-18 21:32:14.408445', '/myapp/index/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1316, '127.0.0.1', '2023-03-18 21:32:15.351604', '/myapp/index/order/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1317, '127.0.0.1', '2023-03-18 21:32:24.155129', '/myapp/index/user/info', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1318, '127.0.0.1', '2023-03-18 21:32:31.454257', '/myapp/index/user/update', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (1319, '127.0.0.1', '2023-03-18 21:32:31.472100', '/upload/avatar/1679146350134.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1320, '127.0.0.1', '2023-03-18 21:32:33.090136', '/myapp/index/order/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1321, '127.0.0.1', '2023-03-18 21:32:35.413625', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1322, '127.0.0.1', '2023-03-18 21:32:40.826959', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1323, '127.0.0.1', '2023-03-18 21:32:40.832669', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1324, '127.0.0.1', '2023-03-18 21:32:40.836859', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1325, '127.0.0.1', '2023-03-18 21:32:40.874780', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1326, '127.0.0.1', '2023-03-18 21:32:49.966150', '/myapp/admin/order/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (1327, '127.0.0.1', '2023-03-18 21:32:58.060535', '/myapp/admin/order/cancel_order', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (1328, '127.0.0.1', '2023-03-18 21:32:58.197463', '/myapp/admin/order/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1329, '127.0.0.1', '2023-03-18 21:32:59.556861', '/myapp/admin/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1330, '127.0.0.1', '2023-03-18 21:33:06.990396', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1331, '127.0.0.1', '2023-03-18 21:33:06.994269', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1332, '127.0.0.1', '2023-03-18 21:33:48.431391', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1333, '127.0.0.1', '2023-03-18 21:33:48.438958', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1334, '127.0.0.1', '2023-03-18 21:34:45.744204', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1335, '127.0.0.1', '2023-03-18 21:34:45.746033', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1336, '127.0.0.1', '2023-03-18 21:35:32.094748', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1337, '127.0.0.1', '2023-03-18 21:35:32.098385', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1338, '127.0.0.1', '2023-03-18 21:35:36.114431', '/myapp/admin/tag/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1339, '127.0.0.1', '2023-03-18 21:35:36.117503', '/myapp/admin/tag/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1340, '127.0.0.1', '2023-03-18 21:37:04.765738', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1341, '127.0.0.1', '2023-03-18 21:37:04.770159', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1342, '127.0.0.1', '2023-03-18 21:37:30.615719', '/myapp/admin/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1343, '127.0.0.1', '2023-03-18 21:37:34.657520', '/myapp/admin/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1344, '127.0.0.1', '2023-03-18 21:37:37.276082', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1345, '127.0.0.1', '2023-03-18 21:37:39.952406', '/myapp/admin/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1346, '127.0.0.1', '2023-03-18 21:37:48.760160', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1347, '127.0.0.1', '2023-03-18 21:37:49.998861', '/myapp/admin/order/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (1348, '127.0.0.1', '2023-03-18 21:37:58.309893', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1349, '127.0.0.1', '2023-03-18 21:37:58.327582', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1350, '127.0.0.1', '2023-03-18 21:37:58.331386', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1351, '127.0.0.1', '2023-03-18 21:37:58.358933', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1352, '127.0.0.1', '2023-03-18 21:38:02.041807', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1353, '127.0.0.1', '2023-03-18 21:38:02.051164', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1354, '127.0.0.1', '2023-03-18 21:38:02.059024', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1355, '127.0.0.1', '2023-03-18 21:38:02.131703', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1356, '127.0.0.1', '2023-03-18 21:38:24.489138', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1357, '127.0.0.1', '2023-03-18 21:38:24.504611', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1358, '127.0.0.1', '2023-03-18 21:38:24.515339', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1359, '127.0.0.1', '2023-03-18 21:38:24.561191', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1360, '127.0.0.1', '2023-03-18 21:43:02.085863', '/myapp/index/thing/addWishUser', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (1361, '127.0.0.1', '2023-03-18 21:43:02.684491', '/myapp/index/thing/addCollectUser', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (1362, '127.0.0.1', '2023-03-18 21:43:09.856658', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1363, '127.0.0.1', '2023-03-18 21:43:09.859936', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1364, '127.0.0.1', '2023-03-18 21:43:09.863106', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1365, '127.0.0.1', '2023-03-18 21:43:09.915619', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1366, '127.0.0.1', '2023-03-18 21:43:40.703922', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1367, '127.0.0.1', '2023-03-18 21:43:40.713351', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1368, '127.0.0.1', '2023-03-18 21:43:40.731859', '/myapp/index/comment/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1369, '127.0.0.1', '2023-03-18 21:43:40.827004', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1370, '127.0.0.1', '2023-03-18 21:43:47.542833', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1371, '127.0.0.1', '2023-03-18 21:43:47.558747', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1372, '127.0.0.1', '2023-03-18 21:43:47.573478', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1373, '127.0.0.1', '2023-03-18 21:43:47.636522', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1374, '127.0.0.1', '2023-03-18 21:44:23.888672', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1375, '127.0.0.1', '2023-03-18 21:44:23.898114', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1376, '127.0.0.1', '2023-03-18 21:44:23.930379', '/myapp/index/comment/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1377, '127.0.0.1', '2023-03-18 21:44:23.979477', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1378, '127.0.0.1', '2023-03-18 21:44:32.337749', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1379, '127.0.0.1', '2023-03-18 21:44:32.345248', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1380, '127.0.0.1', '2023-03-18 21:44:32.353160', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1381, '127.0.0.1', '2023-03-18 21:44:32.378866', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1382, '127.0.0.1', '2023-03-19 09:35:40.068896', '/myapp/index/thing/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1383, '127.0.0.1', '2023-03-19 09:35:41.338973', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1384, '127.0.0.1', '2023-03-19 09:35:41.370485', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1385, '127.0.0.1', '2023-03-19 09:47:11.732687', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1386, '127.0.0.1', '2023-03-19 09:47:12.838225', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1387, '127.0.0.1', '2023-03-19 09:47:12.872093', '/upload/cover/1679056561868.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1388, '127.0.0.1', '2023-03-19 09:47:12.874154', '/upload/cover/1679058043365.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1389, '127.0.0.1', '2023-03-19 09:47:12.873697', '/upload/cover/1679056528013.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1390, '127.0.0.1', '2023-03-19 09:47:13.755399', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1391, '127.0.0.1', '2023-03-19 09:47:13.780595', '/upload/cover/1679058036014.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1392, '127.0.0.1', '2023-03-19 09:47:15.328431', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1393, '127.0.0.1', '2023-03-19 09:47:16.222352', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1394, '127.0.0.1', '2023-03-19 09:47:33.686878', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1395, '127.0.0.1', '2023-03-19 09:47:42.310263', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1396, '127.0.0.1', '2023-03-19 09:47:44.616911', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1397, '127.0.0.1', '2023-03-19 09:47:46.951697', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1398, '127.0.0.1', '2023-03-19 09:47:48.560877', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1399, '127.0.0.1', '2023-03-19 09:47:57.554818', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1400, '127.0.0.1', '2023-03-19 09:47:57.562932', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1401, '127.0.0.1', '2023-03-19 09:47:57.571901', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1402, '127.0.0.1', '2023-03-19 09:47:57.590034', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1403, '127.0.0.1', '2023-03-19 09:48:07.311407', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1404, '127.0.0.1', '2023-03-19 09:48:07.313308', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1405, '127.0.0.1', '2023-03-19 09:48:07.331045', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1406, '127.0.0.1', '2023-03-19 09:48:07.370289', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1407, '127.0.0.1', '2023-03-19 09:48:30.743913', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1408, '127.0.0.1', '2023-03-19 09:48:30.754020', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1409, '127.0.0.1', '2023-03-19 09:48:30.764639', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1410, '127.0.0.1', '2023-03-19 09:48:30.789107', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1411, '127.0.0.1', '2023-03-19 09:48:36.856299', '/myapp/index/user/login', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (1412, '127.0.0.1', '2023-03-19 09:48:36.954830', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1413, '127.0.0.1', '2023-03-19 09:48:36.959431', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1414, '127.0.0.1', '2023-03-19 09:48:36.963480', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1415, '127.0.0.1', '2023-03-19 09:48:37.006752', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1416, '127.0.0.1', '2023-03-19 09:48:39.340534', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1417, '127.0.0.1', '2023-03-19 09:48:39.356483', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1418, '127.0.0.1', '2023-03-19 09:48:39.383319', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1419, '127.0.0.1', '2023-03-19 09:48:39.420669', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1420, '127.0.0.1', '2023-03-19 09:48:42.300652', '/myapp/index/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1421, '127.0.0.1', '2023-03-19 09:48:42.366933', '/myapp/index/order/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1422, '127.0.0.1', '2023-03-19 09:48:42.388079', '/myapp/index/order/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (1423, '127.0.0.1', '2023-03-19 09:48:42.420164', '/myapp/index/order/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (1424, '127.0.0.1', '2023-03-19 09:48:50.756914', '/myapp/index/comment/listMyComments', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1425, '127.0.0.1', '2023-03-19 09:48:53.481543', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1426, '127.0.0.1', '2023-03-19 09:48:53.484190', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1427, '127.0.0.1', '2023-03-19 09:48:53.499942', '/myapp/index/comment/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1428, '127.0.0.1', '2023-03-19 09:48:53.542972', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1429, '127.0.0.1', '2023-03-19 09:48:55.806680', '/myapp/index/address/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1430, '127.0.0.1', '2023-03-19 09:49:09.841186', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1431, '127.0.0.1', '2023-03-19 09:49:17.551872', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1432, '127.0.0.1', '2023-03-19 09:49:20.898218', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1433, '127.0.0.1', '2023-03-19 09:49:22.809870', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1434, '127.0.0.1', '2023-03-19 09:49:22.832382', '/upload/avatar/1679146350134.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1435, '127.0.0.1', '2023-03-19 09:49:25.185346', '/myapp/index/order/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1436, '127.0.0.1', '2023-03-19 09:49:27.837210', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1437, '127.0.0.1', '2023-03-19 09:49:27.839095', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1438, '127.0.0.1', '2023-03-19 09:49:27.852864', '/myapp/index/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1439, '127.0.0.1', '2023-03-19 09:49:27.883685', '/myapp/index/tag/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1440, '127.0.0.1', '2023-03-19 09:49:41.573995', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1441, '127.0.0.1', '2023-03-19 09:49:41.592218', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1442, '127.0.0.1', '2023-03-19 09:49:41.601788', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1443, '127.0.0.1', '2023-03-19 09:49:41.651330', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1444, '127.0.0.1', '2023-03-19 09:49:42.633488', '/myapp/index/address/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1445, '127.0.0.1', '2023-03-19 09:49:42.639215', '/myapp/index/address/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1446, '127.0.0.1', '2023-03-19 09:49:53.968262', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1447, '127.0.0.1', '2023-03-19 09:50:01.282515', '/myapp/index/order/create', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (1448, '127.0.0.1', '2023-03-19 09:50:18.719831', '/myapp/admin/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1449, '127.0.0.1', '2023-03-19 09:50:31.101771', '/myapp/index/order/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (1450, '127.0.0.1', '2023-03-19 09:50:31.185137', '/myapp/index/notice/list_api', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1451, '127.0.0.1', '2023-03-19 09:50:34.393367', '/myapp/admin/order/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (1452, '127.0.0.1', '2023-03-19 09:50:35.101387', '/myapp/admin/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1453, '127.0.0.1', '2023-03-19 09:50:38.412562', '/myapp/admin/order/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (1454, '127.0.0.1', '2023-03-19 09:50:39.296762', '/myapp/admin/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1455, '127.0.0.1', '2023-03-19 09:50:53.687182', '/myapp/index/address/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1456, '127.0.0.1', '2023-03-19 09:50:53.689646', '/myapp/index/address/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1457, '127.0.0.1', '2023-03-19 09:51:07.987721', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1458, '127.0.0.1', '2023-03-19 09:51:08.002270', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1459, '127.0.0.1', '2023-03-19 09:51:08.022343', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1460, '127.0.0.1', '2023-03-19 09:51:08.039671', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1461, '127.0.0.1', '2023-03-19 09:53:14.993414', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1462, '127.0.0.1', '2023-03-19 09:53:23.123774', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1463, '127.0.0.1', '2023-03-19 09:53:24.890547', '/myapp/admin/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1464, '127.0.0.1', '2023-03-19 09:53:25.902651', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1465, '127.0.0.1', '2023-03-19 09:53:28.165980', '/myapp/admin/banner/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1466, '127.0.0.1', '2023-03-19 09:53:29.861339', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1467, '127.0.0.1', '2023-03-19 09:53:31.090258', '/myapp/admin/notice/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1468, '127.0.0.1', '2023-03-19 09:53:34.584205', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1469, '127.0.0.1', '2023-03-19 09:53:36.730476', '/myapp/admin/banner/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1470, '127.0.0.1', '2023-03-19 09:53:48.610982', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1471, '127.0.0.1', '2023-03-19 09:53:48.618331', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1472, '127.0.0.1', '2023-03-19 09:53:48.621234', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1473, '127.0.0.1', '2023-03-19 09:53:48.663820', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1474, '127.0.0.1', '2023-03-19 09:54:03.050855', '/myapp/admin/loginLog/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1475, '127.0.0.1', '2023-03-19 09:54:06.003039', '/myapp/admin/opLog/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (1476, '127.0.0.1', '2023-03-19 09:54:09.128206', '/myapp/admin/errorLog/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1477, '127.0.0.1', '2023-03-19 09:54:22.253988', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1115');
INSERT INTO `b_op_log` VALUES (1478, '127.0.0.1', '2023-03-19 09:54:32.968784', '/myapp/admin/overview/count', 'GET', NULL, '210');
INSERT INTO `b_op_log` VALUES (1479, '127.0.0.1', '2023-03-19 09:54:35.162057', '/myapp/admin/order/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (1480, '127.0.0.1', '2023-03-19 09:54:37.545974', '/myapp/admin/overview/count', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (1481, '127.0.0.1', '2023-03-19 09:58:47.178727', '/myapp/admin/order/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (1482, '127.0.0.1', '2023-03-19 09:58:48.405003', '/myapp/admin/overview/count', 'GET', NULL, '354');
INSERT INTO `b_op_log` VALUES (1483, '127.0.0.1', '2023-03-19 10:00:52.539234', '/myapp/admin/order/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (1484, '127.0.0.1', '2023-03-19 10:00:53.325830', '/myapp/admin/overview/count', 'GET', NULL, '221');
INSERT INTO `b_op_log` VALUES (1485, '127.0.0.1', '2023-03-19 10:01:05.949083', '/myapp/admin/order/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (1486, '127.0.0.1', '2023-03-19 10:01:11.156949', '/myapp/admin/overview/count', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (1487, '127.0.0.1', '2023-03-19 10:02:59.745751', '/myapp/admin/order/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (1488, '127.0.0.1', '2023-03-19 10:03:00.312817', '/myapp/admin/overview/count', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1489, '127.0.0.1', '2023-03-19 10:05:31.384025', '/myapp/admin/order/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (1490, '127.0.0.1', '2023-03-19 10:05:32.056695', '/myapp/admin/overview/count', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1491, '127.0.0.1', '2023-03-19 10:05:37.264069', '/myapp/admin/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1492, '127.0.0.1', '2023-03-19 10:05:39.777165', '/myapp/admin/overview/count', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1493, '127.0.0.1', '2023-03-19 10:08:13.493790', '/myapp/admin/order/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (1494, '127.0.0.1', '2023-03-19 10:08:14.374315', '/myapp/admin/overview/count', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1495, '127.0.0.1', '2023-03-19 10:12:24.990606', '/myapp/admin/order/list', 'GET', NULL, '201');
INSERT INTO `b_op_log` VALUES (1496, '127.0.0.1', '2023-03-19 10:12:25.788957', '/myapp/admin/overview/count', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1497, '127.0.0.1', '2023-03-19 10:13:01.844059', '/myapp/admin/order/list', 'GET', NULL, '224');
INSERT INTO `b_op_log` VALUES (1498, '127.0.0.1', '2023-03-19 10:13:02.679722', '/myapp/admin/overview/count', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1499, '127.0.0.1', '2023-03-19 10:13:44.479384', '/myapp/admin/order/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (1500, '127.0.0.1', '2023-03-19 10:13:45.446603', '/myapp/admin/overview/count', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1501, '127.0.0.1', '2023-03-19 10:14:40.605603', '/myapp/admin/overview/count', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1502, '127.0.0.1', '2023-03-19 10:14:56.024899', '/myapp/admin/overview/count', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1503, '127.0.0.1', '2023-03-19 10:15:10.061249', '/myapp/admin/order/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (1504, '127.0.0.1', '2023-03-19 10:15:11.684887', '/myapp/admin/thing/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1505, '127.0.0.1', '2023-03-19 10:15:12.933770', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1506, '127.0.0.1', '2023-03-19 10:15:14.156603', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1507, '127.0.0.1', '2023-03-19 10:15:15.142546', '/myapp/admin/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1508, '127.0.0.1', '2023-03-19 10:15:16.280110', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1509, '127.0.0.1', '2023-03-19 10:15:20.562789', '/myapp/admin/banner/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1510, '127.0.0.1', '2023-03-19 10:15:21.662216', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1511, '127.0.0.1', '2023-03-19 10:15:22.722623', '/myapp/admin/notice/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1512, '127.0.0.1', '2023-03-19 10:15:26.221733', '/myapp/admin/opLog/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (1513, '127.0.0.1', '2023-03-19 10:15:29.425917', '/myapp/admin/order/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (1514, '127.0.0.1', '2023-03-19 10:15:30.652120', '/myapp/admin/overview/count', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1515, '127.0.0.1', '2023-03-19 10:16:38.282435', '/myapp/index/notice/list_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1516, '127.0.0.1', '2023-03-19 10:16:38.314142', '/myapp/index/notice/list_api', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1517, '127.0.0.1', '2023-03-19 10:16:38.316725', '/myapp/index/notice/list_api', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1518, '127.0.0.1', '2023-03-19 10:16:38.362609', '/myapp/index/notice/list_api', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1519, '127.0.0.1', '2023-03-19 10:16:40.313931', '/myapp/index/comment/listMyComments', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1520, '127.0.0.1', '2023-03-19 10:16:41.036023', '/myapp/index/order/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1521, '127.0.0.1', '2023-03-19 10:16:51.441887', '/myapp/index/comment/listMyComments', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1522, '127.0.0.1', '2023-03-19 10:16:55.003705', '/myapp/index/order/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1523, '127.0.0.1', '2023-03-19 10:16:55.034289', '/myapp/index/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1524, '127.0.0.1', '2023-03-19 10:16:55.053652', '/myapp/index/order/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1525, '127.0.0.1', '2023-03-19 10:16:55.101149', '/myapp/index/order/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (1526, '127.0.0.1', '2023-03-19 10:16:55.649466', '/myapp/admin/overview/count', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1527, '127.0.0.1', '2023-03-19 10:16:57.371992', '/myapp/index/comment/listMyComments', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1528, '127.0.0.1', '2023-03-19 10:16:58.465897', '/myapp/index/order/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1529, '127.0.0.1', '2023-03-19 20:26:17.864426', '/myapp/admin/overview/count', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1530, '127.0.0.1', '2023-03-19 20:26:25.245134', '/myapp/admin/order/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (1531, '127.0.0.1', '2023-03-19 20:26:28.438285', '/myapp/admin/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (1532, '127.0.0.1', '2023-03-19 20:26:30.657549', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1533, '127.0.0.1', '2023-03-19 20:26:32.207428', '/myapp/admin/tag/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1534, '127.0.0.1', '2023-03-19 20:26:33.558013', '/myapp/admin/comment/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1535, '127.0.0.1', '2023-03-19 20:26:34.550469', '/myapp/admin/user/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1536, '127.0.0.1', '2023-03-19 20:26:40.291408', '/myapp/admin/order/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (1537, '127.0.0.1', '2023-03-19 20:26:43.383450', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1538, '127.0.0.1', '2023-03-19 20:26:43.391705', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1539, '127.0.0.1', '2023-03-19 20:26:43.393737', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1540, '127.0.0.1', '2023-03-19 20:26:43.423362', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1541, '127.0.0.1', '2023-03-19 20:26:43.466942', '/upload/cover/1679058036014.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1542, '127.0.0.1', '2023-03-19 20:26:43.470253', '/upload/cover/1679056528013.png', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1543, '127.0.0.1', '2023-03-19 20:26:43.472578', '/upload/cover/1679056528013.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1544, '127.0.0.1', '2023-03-19 20:26:43.477394', '/upload/cover/1679058043365.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1545, '127.0.0.1', '2023-03-19 20:26:43.479465', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1546, '127.0.0.1', '2023-03-19 20:27:03.005598', '/myapp/index/user/register', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (1547, '127.0.0.1', '2023-03-19 20:27:24.662064', '/myapp/index/user/login', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (1548, '127.0.0.1', '2023-03-19 20:27:24.781321', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1549, '127.0.0.1', '2023-03-19 20:27:24.784261', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1550, '127.0.0.1', '2023-03-19 20:27:24.788472', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1551, '127.0.0.1', '2023-03-19 20:27:24.830758', '/myapp/index/thing/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1552, '127.0.0.1', '2023-03-19 20:27:37.791794', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1553, '127.0.0.1', '2023-03-19 20:27:37.803911', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1554, '127.0.0.1', '2023-03-19 20:27:37.817931', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1555, '127.0.0.1', '2023-03-19 20:27:37.884931', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1556, '127.0.0.1', '2023-03-19 20:27:45.113991', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1557, '127.0.0.1', '2023-03-19 20:27:45.129543', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1558, '127.0.0.1', '2023-03-19 20:27:45.149867', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1559, '127.0.0.1', '2023-03-19 20:27:45.192641', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1560, '127.0.0.1', '2023-03-19 20:27:46.600350', '/myapp/index/thing/addWishUser', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (1561, '127.0.0.1', '2023-03-19 20:27:47.482462', '/myapp/index/thing/addCollectUser', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1562, '127.0.0.1', '2023-03-19 20:27:48.971838', '/myapp/index/address/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1563, '127.0.0.1', '2023-03-19 20:27:48.975379', '/myapp/index/address/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1564, '127.0.0.1', '2023-03-19 20:28:21.016069', '/myapp/index/address/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1565, '127.0.0.1', '2023-03-19 20:28:22.416159', '/myapp/index/order/create', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (1566, '127.0.0.1', '2023-03-19 20:28:22.491793', '/myapp/index/notice/list_api', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1567, '127.0.0.1', '2023-03-19 20:28:29.825374', '/myapp/index/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1568, '127.0.0.1', '2023-03-19 20:28:29.852249', '/myapp/index/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1569, '127.0.0.1', '2023-03-19 20:28:29.863605', '/myapp/index/order/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1570, '127.0.0.1', '2023-03-19 20:28:29.874546', '/myapp/index/order/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1571, '127.0.0.1', '2023-03-19 20:28:34.005660', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1572, '127.0.0.1', '2023-03-19 20:28:34.918452', '/myapp/index/order/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1573, '127.0.0.1', '2023-03-19 20:28:35.806193', '/myapp/index/comment/listMyComments', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1574, '127.0.0.1', '2023-03-19 20:28:37.143774', '/myapp/index/address/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1575, '127.0.0.1', '2023-03-19 20:28:38.998814', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1576, '127.0.0.1', '2023-03-19 20:28:41.953063', '/myapp/index/order/cancel_order', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (1577, '127.0.0.1', '2023-03-19 20:28:41.975527', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1578, '127.0.0.1', '2023-03-19 20:28:43.316585', '/myapp/index/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1579, '127.0.0.1', '2023-03-19 20:28:44.383372', '/myapp/index/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1580, '127.0.0.1', '2023-03-19 20:28:45.251059', '/myapp/index/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1581, '127.0.0.1', '2023-03-19 20:28:46.138576', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1582, '127.0.0.1', '2023-03-19 20:28:46.870630', '/myapp/index/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1583, '127.0.0.1', '2023-03-19 20:28:49.490801', '/myapp/index/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1584, '127.0.0.1', '2023-03-19 20:28:50.527669', '/myapp/index/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1585, '127.0.0.1', '2023-03-19 20:28:51.647635', '/myapp/index/order/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1586, '127.0.0.1', '2023-03-19 20:28:53.350659', '/myapp/index/address/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1587, '127.0.0.1', '2023-03-19 20:28:55.977503', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1588, '127.0.0.1', '2023-03-19 20:28:57.223620', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1589, '127.0.0.1', '2023-03-19 20:29:00.359649', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1590, '127.0.0.1', '2023-03-19 20:29:01.660920', '/myapp/index/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1591, '127.0.0.1', '2023-03-19 20:29:06.227107', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1592, '127.0.0.1', '2023-03-19 20:29:06.229291', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1593, '127.0.0.1', '2023-03-19 20:29:06.231104', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1594, '127.0.0.1', '2023-03-19 20:29:06.263064', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1595, '127.0.0.1', '2023-03-19 20:29:09.120216', '/myapp/index/user/login', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (1596, '127.0.0.1', '2023-03-19 20:29:09.189940', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1597, '127.0.0.1', '2023-03-19 20:29:09.200695', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1598, '127.0.0.1', '2023-03-19 20:29:09.203140', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1599, '127.0.0.1', '2023-03-19 20:29:09.237525', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1600, '127.0.0.1', '2023-03-19 20:29:11.523717', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1601, '127.0.0.1', '2023-03-19 20:29:11.543029', '/myapp/index/thing/getWishThingList', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1602, '127.0.0.1', '2023-03-19 20:29:11.568404', '/myapp/index/thing/getWishThingList', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1603, '127.0.0.1', '2023-03-19 20:29:11.571606', '/myapp/index/thing/getWishThingList', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1604, '127.0.0.1', '2023-03-19 20:29:13.458155', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1605, '127.0.0.1', '2023-03-19 20:29:15.101682', '/myapp/index/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1606, '127.0.0.1', '2023-03-19 20:29:16.359711', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1607, '127.0.0.1', '2023-03-19 20:29:17.861499', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1608, '127.0.0.1', '2023-03-19 20:29:17.873302', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1609, '127.0.0.1', '2023-03-19 20:29:17.927443', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1610, '127.0.0.1', '2023-03-19 20:29:17.947070', '/myapp/index/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (1611, '127.0.0.1', '2023-03-19 20:29:24.677302', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1612, '127.0.0.1', '2023-03-19 20:29:25.677990', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1613, '127.0.0.1', '2023-03-19 20:29:26.506400', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1614, '127.0.0.1', '2023-03-19 20:29:27.284869', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1615, '127.0.0.1', '2023-03-19 20:29:28.269872', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1616, '127.0.0.1', '2023-03-19 20:29:30.255633', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1617, '127.0.0.1', '2023-03-19 20:29:31.370208', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1618, '127.0.0.1', '2023-03-19 20:29:33.575068', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1619, '127.0.0.1', '2023-03-19 20:29:34.206607', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1620, '127.0.0.1', '2023-03-19 20:29:35.171867', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1621, '127.0.0.1', '2023-03-19 20:29:36.136504', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1622, '127.0.0.1', '2023-03-19 20:29:37.302818', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1623, '127.0.0.1', '2023-03-19 20:29:38.437279', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1624, '127.0.0.1', '2023-03-19 20:29:39.957476', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1625, '127.0.0.1', '2023-03-19 20:29:40.716934', '/myapp/index/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1626, '127.0.0.1', '2023-03-19 20:29:41.535863', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1627, '127.0.0.1', '2023-03-19 20:29:42.723447', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1628, '127.0.0.1', '2023-03-19 20:29:48.641526', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1629, '127.0.0.1', '2023-03-19 20:29:48.644944', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1630, '127.0.0.1', '2023-03-19 20:29:56.717314', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1631, '127.0.0.1', '2023-03-19 20:29:57.314020', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1632, '127.0.0.1', '2023-03-19 20:30:07.649003', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1633, '127.0.0.1', '2023-03-19 20:30:07.667646', '/myapp/index/order/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1634, '127.0.0.1', '2023-03-19 20:30:07.675867', '/myapp/index/order/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1635, '127.0.0.1', '2023-03-19 20:30:07.680705', '/myapp/index/order/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1636, '127.0.0.1', '2023-03-19 20:30:10.703970', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1637, '127.0.0.1', '2023-03-19 20:30:16.516029', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1638, '127.0.0.1', '2023-03-19 20:30:27.857301', '/myapp/index/user/update', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (1639, '127.0.0.1', '2023-03-19 20:30:31.072996', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1640, '127.0.0.1', '2023-03-19 20:30:33.882416', '/myapp/index/user/update', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (1641, '127.0.0.1', '2023-03-19 20:30:35.853043', '/myapp/index/notice/list_api', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1642, '127.0.0.1', '2023-03-19 20:30:36.559155', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1643, '127.0.0.1', '2023-03-19 20:30:38.307339', '/myapp/index/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1644, '127.0.0.1', '2023-03-19 20:30:43.781023', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1645, '127.0.0.1', '2023-03-19 20:30:43.799266', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1646, '127.0.0.1', '2023-03-19 20:30:43.810062', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1647, '127.0.0.1', '2023-03-19 20:30:43.878962', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1648, '127.0.0.1', '2023-03-19 20:30:51.419241', '/myapp/index/comment/listMyComments', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1649, '127.0.0.1', '2023-03-19 20:30:52.511796', '/myapp/index/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1650, '127.0.0.1', '2023-03-19 20:30:54.451099', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1651, '127.0.0.1', '2023-03-19 20:30:54.472322', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1652, '127.0.0.1', '2023-03-19 20:30:54.484829', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1653, '127.0.0.1', '2023-03-19 20:30:54.549123', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1654, '127.0.0.1', '2023-03-19 20:30:59.253662', '/myapp/index/comment/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (1655, '127.0.0.1', '2023-03-19 20:30:59.270784', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1656, '127.0.0.1', '2023-03-19 20:31:03.033665', '/myapp/index/comment/create', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (1657, '127.0.0.1', '2023-03-19 20:31:03.051981', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1658, '127.0.0.1', '2023-03-19 20:31:07.247415', '/myapp/index/comment/listMyComments', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1659, '127.0.0.1', '2023-03-19 20:31:11.598624', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1660, '127.0.0.1', '2023-03-19 20:31:11.602260', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1661, '127.0.0.1', '2023-03-19 20:31:11.618571', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1662, '127.0.0.1', '2023-03-19 20:31:11.671005', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1663, '127.0.0.1', '2023-03-19 20:31:17.429100', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1664, '127.0.0.1', '2023-03-19 20:31:36.495546', '/myapp/admin/overview/count', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (1665, '127.0.0.1', '2023-03-19 20:31:49.542442', '/myapp/admin/adminLogin', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (1666, '127.0.0.1', '2023-03-19 20:31:49.676554', '/myapp/admin/overview/count', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1667, '127.0.0.1', '2023-03-19 20:31:51.900276', '/myapp/admin/order/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (1668, '127.0.0.1', '2023-03-19 20:31:52.936455', '/myapp/admin/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (1669, '127.0.0.1', '2023-03-19 20:31:53.977793', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1670, '127.0.0.1', '2023-03-19 20:31:55.053284', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1671, '127.0.0.1', '2023-03-19 20:31:56.382856', '/myapp/admin/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1672, '127.0.0.1', '2023-03-19 20:31:57.574682', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1673, '127.0.0.1', '2023-03-19 20:32:01.787623', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1098');
INSERT INTO `b_op_log` VALUES (1674, '127.0.0.1', '2023-03-19 20:32:03.091442', '/myapp/admin/order/list', 'GET', NULL, '230');
INSERT INTO `b_op_log` VALUES (1675, '127.0.0.1', '2023-03-19 20:32:04.597857', '/myapp/admin/overview/count', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1676, '127.0.0.1', '2023-03-19 20:32:06.643479', '/myapp/admin/order/list', 'GET', NULL, '238');
INSERT INTO `b_op_log` VALUES (1677, '127.0.0.1', '2023-03-19 20:32:09.211745', '/myapp/admin/overview/count', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1678, '127.0.0.1', '2023-03-19 20:32:11.616324', '/myapp/admin/order/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (1679, '127.0.0.1', '2023-03-19 20:32:24.433301', '/myapp/admin/order/delete', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (1680, '127.0.0.1', '2023-03-19 20:32:24.629021', '/myapp/admin/order/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (1681, '127.0.0.1', '2023-03-19 20:32:27.662788', '/myapp/admin/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1682, '127.0.0.1', '2023-03-19 20:32:29.921282', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1683, '127.0.0.1', '2023-03-19 20:32:31.585608', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1684, '127.0.0.1', '2023-03-19 20:32:32.406224', '/myapp/admin/comment/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (1685, '127.0.0.1', '2023-03-19 20:33:19.928240', '/myapp/admin/thing/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (1686, '127.0.0.1', '2023-03-19 20:33:20.726538', '/myapp/admin/order/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (1687, '127.0.0.1', '2023-03-19 20:33:23.069751', '/myapp/admin/overview/count', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1688, '127.0.0.1', '2023-03-19 20:33:24.000161', '/myapp/admin/order/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (1689, '127.0.0.1', '2023-03-19 20:33:36.628453', '/myapp/admin/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1690, '127.0.0.1', '2023-03-19 20:34:11.000598', '/myapp/admin/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1691, '127.0.0.1', '2023-03-19 20:34:13.780805', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1692, '127.0.0.1', '2023-03-19 20:34:14.891574', '/myapp/admin/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1693, '127.0.0.1', '2023-03-19 20:34:22.285653', '/myapp/admin/order/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (1694, '127.0.0.1', '2023-03-19 20:34:23.280350', '/myapp/admin/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (1695, '127.0.0.1', '2023-03-19 20:34:28.886614', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1696, '127.0.0.1', '2023-03-19 20:34:28.888450', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1697, '127.0.0.1', '2023-03-19 20:36:20.684198', '/myapp/admin/order/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (1698, '127.0.0.1', '2023-03-19 20:36:21.253933', '/myapp/admin/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1699, '127.0.0.1', '2023-03-19 20:36:22.383385', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1700, '127.0.0.1', '2023-03-19 20:36:22.385153', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1701, '127.0.0.1', '2023-03-19 20:36:47.399543', '/myapp/admin/overview/count', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1702, '127.0.0.1', '2023-03-19 20:36:58.874887', '/myapp/admin/order/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (1703, '127.0.0.1', '2023-03-19 20:37:00.233146', '/myapp/admin/overview/count', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1704, '127.0.0.1', '2023-03-19 20:37:36.198274', '/myapp/admin/thing/list', 'GET', NULL, '220');
INSERT INTO `b_op_log` VALUES (1705, '127.0.0.1', '2023-03-19 20:39:16.162277', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1706, '127.0.0.1', '2023-03-19 20:39:24.759553', '/myapp/admin/classification/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (1707, '127.0.0.1', '2023-03-19 20:39:24.813428', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1708, '127.0.0.1', '2023-03-19 20:39:28.528793', '/myapp/admin/tag/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1709, '127.0.0.1', '2023-03-19 20:39:34.266694', '/myapp/admin/tag/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (1710, '127.0.0.1', '2023-03-19 20:39:34.322865', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1711, '127.0.0.1', '2023-03-19 20:39:43.462469', '/myapp/admin/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1712, '127.0.0.1', '2023-03-19 20:39:46.665063', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1713, '127.0.0.1', '2023-03-19 20:39:46.667045', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1714, '127.0.0.1', '2023-03-19 20:40:53.410837', '/myapp/admin/thing/create', 'POST', NULL, '138');
INSERT INTO `b_op_log` VALUES (1715, '127.0.0.1', '2023-03-19 20:40:53.544757', '/myapp/admin/thing/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (1716, '127.0.0.1', '2023-03-19 20:41:00.669033', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1717, '127.0.0.1', '2023-03-19 20:41:00.671780', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1718, '127.0.0.1', '2023-03-19 20:41:00.678333', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1719, '127.0.0.1', '2023-03-19 20:41:00.725823', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1720, '127.0.0.1', '2023-03-19 20:41:00.759296', '/upload/cover/1679229610791.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1721, '127.0.0.1', '2023-03-19 20:42:49.929892', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1722, '127.0.0.1', '2023-03-19 20:42:49.934685', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1723, '127.0.0.1', '2023-03-19 20:43:38.314154', '/myapp/admin/thing/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (1724, '127.0.0.1', '2023-03-19 20:43:38.447963', '/myapp/admin/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1725, '127.0.0.1', '2023-03-19 20:43:54.367514', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1726, '127.0.0.1', '2023-03-19 20:43:54.368972', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1727, '127.0.0.1', '2023-03-19 20:44:33.562792', '/myapp/admin/thing/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1728, '127.0.0.1', '2023-03-19 20:44:33.698482', '/myapp/admin/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1729, '127.0.0.1', '2023-03-19 20:45:37.878451', '/myapp/admin/tag/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1730, '127.0.0.1', '2023-03-19 20:45:37.878954', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1731, '127.0.0.1', '2023-03-19 20:46:23.752375', '/myapp/admin/thing/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1732, '127.0.0.1', '2023-03-19 20:46:23.894680', '/myapp/admin/thing/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (1733, '127.0.0.1', '2023-03-19 20:46:51.674277', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1734, '127.0.0.1', '2023-03-19 20:46:51.678599', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1735, '127.0.0.1', '2023-03-19 20:47:33.751046', '/myapp/admin/thing/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (1736, '127.0.0.1', '2023-03-19 20:47:33.911370', '/myapp/admin/thing/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (1737, '127.0.0.1', '2023-03-19 20:47:53.442459', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1738, '127.0.0.1', '2023-03-19 20:47:53.444670', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1739, '127.0.0.1', '2023-03-19 20:48:34.752234', '/myapp/admin/thing/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (1740, '127.0.0.1', '2023-03-19 20:48:34.935065', '/myapp/admin/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (1741, '127.0.0.1', '2023-03-19 20:48:49.018537', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1742, '127.0.0.1', '2023-03-19 20:48:49.021862', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1743, '127.0.0.1', '2023-03-19 20:49:43.156635', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (1744, '127.0.0.1', '2023-03-19 20:49:43.326158', '/myapp/admin/thing/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1745, '127.0.0.1', '2023-03-19 20:50:43.814463', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1746, '127.0.0.1', '2023-03-19 20:50:43.811471', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1747, '127.0.0.1', '2023-03-19 20:54:05.446335', '/myapp/admin/thing/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (1748, '127.0.0.1', '2023-03-19 20:54:05.702086', '/myapp/admin/thing/list', 'GET', NULL, '200');
INSERT INTO `b_op_log` VALUES (1749, '127.0.0.1', '2023-03-19 20:54:11.046381', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1750, '127.0.0.1', '2023-03-19 20:54:11.048813', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1751, '127.0.0.1', '2023-03-19 20:54:11.068988', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1752, '127.0.0.1', '2023-03-19 20:54:11.126544', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1753, '127.0.0.1', '2023-03-19 20:54:11.297322', '/upload/cover/1679230147996.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1754, '127.0.0.1', '2023-03-19 20:54:11.305739', '/upload/cover/1679230045590.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1755, '127.0.0.1', '2023-03-19 20:54:11.306306', '/upload/cover/1679230092657.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1756, '127.0.0.1', '2023-03-19 20:54:11.310794', '/upload/cover/1679230045590.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1757, '127.0.0.1', '2023-03-19 20:54:11.314124', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1758, '127.0.0.1', '2023-03-19 20:54:11.318238', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1759, '127.0.0.1', '2023-03-19 20:54:11.332404', '/upload/cover/1679229610791.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1760, '127.0.0.1', '2023-03-19 20:54:11.332784', '/upload/cover/1679229610791.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1761, '127.0.0.1', '2023-03-19 20:55:28.163889', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1762, '127.0.0.1', '2023-03-19 20:55:28.166972', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1763, '127.0.0.1', '2023-03-19 20:55:57.732503', '/myapp/admin/thing/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (1764, '127.0.0.1', '2023-03-19 20:55:57.922788', '/myapp/admin/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (1765, '127.0.0.1', '2023-03-19 20:56:00.371251', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1766, '127.0.0.1', '2023-03-19 20:56:00.373304', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1767, '127.0.0.1', '2023-03-19 20:56:46.061199', '/myapp/admin/thing/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (1768, '127.0.0.1', '2023-03-19 20:56:46.365666', '/myapp/admin/thing/list', 'GET', NULL, '240');
INSERT INTO `b_op_log` VALUES (1769, '127.0.0.1', '2023-03-19 20:56:52.082037', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1770, '127.0.0.1', '2023-03-19 20:56:52.079482', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1771, '127.0.0.1', '2023-03-19 20:56:52.086380', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1772, '127.0.0.1', '2023-03-19 20:56:52.176139', '/myapp/index/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (1773, '127.0.0.1', '2023-03-19 20:56:52.231366', '/upload/cover/1679230045590.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1774, '127.0.0.1', '2023-03-19 20:56:52.233796', '/upload/cover/1679230045590.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1775, '127.0.0.1', '2023-03-19 20:56:52.235225', '/upload/cover/1679230045590.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1776, '127.0.0.1', '2023-03-19 20:56:52.242374', '/upload/cover/1679230045590.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1777, '127.0.0.1', '2023-03-19 20:56:52.246838', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1778, '127.0.0.1', '2023-03-19 20:56:52.255429', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1779, '127.0.0.1', '2023-03-19 20:56:52.262574', '/upload/cover/1679229610791.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1780, '127.0.0.1', '2023-03-19 20:56:52.267584', '/upload/cover/1679229610791.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1781, '127.0.0.1', '2023-03-19 20:56:52.269711', '/upload/cover/1679230543572.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1782, '127.0.0.1', '2023-03-19 20:56:52.270395', '/upload/cover/1679230543572.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1783, '127.0.0.1', '2023-03-19 20:57:11.102594', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1784, '127.0.0.1', '2023-03-19 20:57:11.105078', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1785, '127.0.0.1', '2023-03-19 20:57:37.069308', '/myapp/admin/thing/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (1786, '127.0.0.1', '2023-03-19 20:57:37.265287', '/myapp/admin/thing/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (1787, '127.0.0.1', '2023-03-19 20:57:41.477996', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1788, '127.0.0.1', '2023-03-19 20:57:41.490540', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1789, '127.0.0.1', '2023-03-19 20:57:41.492912', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1790, '127.0.0.1', '2023-03-19 20:57:41.553272', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1791, '127.0.0.1', '2023-03-19 20:57:41.593955', '/upload/cover/1679230147996.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1792, '127.0.0.1', '2023-03-19 20:57:41.594487', '/upload/cover/1679230147996.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1793, '127.0.0.1', '2023-03-19 20:57:41.597621', '/upload/cover/1679230147996.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1794, '127.0.0.1', '2023-03-19 20:57:41.599522', '/upload/cover/1679230147996.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1795, '127.0.0.1', '2023-03-19 20:57:41.645914', '/upload/cover/1679230641879.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1796, '127.0.0.1', '2023-03-19 20:57:44.067871', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1797, '127.0.0.1', '2023-03-19 20:57:44.078536', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1798, '127.0.0.1', '2023-03-19 20:57:44.119492', '/upload/cover/1679230641879.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1799, '127.0.0.1', '2023-03-19 20:57:44.141264', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1800, '127.0.0.1', '2023-03-19 20:57:44.146029', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1801, '127.0.0.1', '2023-03-19 20:57:55.722269', '/myapp/index/thing/addWishUser', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (1802, '127.0.0.1', '2023-03-19 20:58:27.911865', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1803, '127.0.0.1', '2023-03-19 20:58:36.650468', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1804, '127.0.0.1', '2023-03-19 21:01:22.320635', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1805, '127.0.0.1', '2023-03-19 21:01:22.324769', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1806, '127.0.0.1', '2023-03-19 21:01:52.128352', '/myapp/admin/thing/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (1807, '127.0.0.1', '2023-03-19 21:01:52.326284', '/myapp/admin/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (1808, '127.0.0.1', '2023-03-19 21:01:57.209792', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1809, '127.0.0.1', '2023-03-19 21:01:57.212150', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1810, '127.0.0.1', '2023-03-19 21:02:32.441962', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (1811, '127.0.0.1', '2023-03-19 21:02:32.670496', '/myapp/admin/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (1812, '127.0.0.1', '2023-03-19 21:02:34.246586', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1813, '127.0.0.1', '2023-03-19 21:02:40.212224', '/myapp/admin/tag/create', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (1814, '127.0.0.1', '2023-03-19 21:02:40.258177', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1815, '127.0.0.1', '2023-03-19 21:02:44.971560', '/myapp/admin/tag/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (1816, '127.0.0.1', '2023-03-19 21:02:45.015561', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1817, '127.0.0.1', '2023-03-19 21:02:58.093878', '/myapp/admin/thing/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (1818, '127.0.0.1', '2023-03-19 21:02:59.076495', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1819, '127.0.0.1', '2023-03-19 21:02:59.078826', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1820, '127.0.0.1', '2023-03-19 21:03:22.302994', '/myapp/admin/thing/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (1821, '127.0.0.1', '2023-03-19 21:03:22.553042', '/myapp/admin/thing/list', 'GET', NULL, '202');
INSERT INTO `b_op_log` VALUES (1822, '127.0.0.1', '2023-03-19 21:03:33.679607', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1823, '127.0.0.1', '2023-03-19 21:03:33.681126', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1824, '127.0.0.1', '2023-03-19 21:03:56.562426', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (1825, '127.0.0.1', '2023-03-19 21:03:56.833269', '/myapp/admin/thing/list', 'GET', NULL, '212');
INSERT INTO `b_op_log` VALUES (1826, '127.0.0.1', '2023-03-19 21:04:04.701532', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1827, '127.0.0.1', '2023-03-19 21:04:04.706304', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1828, '127.0.0.1', '2023-03-19 21:04:25.892777', '/myapp/admin/thing/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1829, '127.0.0.1', '2023-03-19 21:04:26.148709', '/myapp/admin/thing/list', 'GET', NULL, '205');
INSERT INTO `b_op_log` VALUES (1830, '127.0.0.1', '2023-03-19 21:04:36.273467', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1831, '127.0.0.1', '2023-03-19 21:04:36.275024', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1832, '127.0.0.1', '2023-03-19 21:04:57.539926', '/myapp/admin/thing/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (1833, '127.0.0.1', '2023-03-19 21:04:57.816802', '/myapp/admin/thing/list', 'GET', NULL, '225');
INSERT INTO `b_op_log` VALUES (1834, '127.0.0.1', '2023-03-19 21:05:04.267877', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1835, '127.0.0.1', '2023-03-19 21:05:04.270592', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1836, '127.0.0.1', '2023-03-19 21:05:28.363795', '/myapp/admin/thing/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1837, '127.0.0.1', '2023-03-19 21:05:28.621945', '/myapp/admin/thing/list', 'GET', NULL, '212');
INSERT INTO `b_op_log` VALUES (1838, '127.0.0.1', '2023-03-19 21:05:39.936309', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1839, '127.0.0.1', '2023-03-19 21:05:39.937748', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1840, '127.0.0.1', '2023-03-19 21:06:05.086884', '/myapp/admin/thing/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1841, '127.0.0.1', '2023-03-19 21:06:05.354728', '/myapp/admin/thing/list', 'GET', NULL, '213');
INSERT INTO `b_op_log` VALUES (1842, '127.0.0.1', '2023-03-19 21:06:14.625010', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1843, '127.0.0.1', '2023-03-19 21:06:14.626432', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1844, '127.0.0.1', '2023-03-19 21:06:38.041428', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (1845, '127.0.0.1', '2023-03-19 21:06:38.459718', '/myapp/admin/thing/list', 'GET', NULL, '359');
INSERT INTO `b_op_log` VALUES (1846, '127.0.0.1', '2023-03-19 21:06:47.517741', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1847, '127.0.0.1', '2023-03-19 21:06:47.521267', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1848, '127.0.0.1', '2023-03-19 21:07:15.081059', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (1849, '127.0.0.1', '2023-03-19 21:07:15.365467', '/myapp/admin/thing/list', 'GET', NULL, '219');
INSERT INTO `b_op_log` VALUES (1850, '127.0.0.1', '2023-03-19 21:07:17.980388', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1851, '127.0.0.1', '2023-03-19 21:07:18.005087', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1852, '127.0.0.1', '2023-03-19 21:07:18.014176', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1853, '127.0.0.1', '2023-03-19 21:07:18.126717', '/myapp/index/thing/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (1854, '127.0.0.1', '2023-03-19 21:07:18.188462', '/upload/cover/1679231221940.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1855, '127.0.0.1', '2023-03-19 21:07:18.195839', '/upload/cover/1679231084420.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1856, '127.0.0.1', '2023-03-19 21:07:18.198280', '/upload/cover/1679231084420.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1857, '127.0.0.1', '2023-03-19 21:07:18.199142', '/upload/cover/1679231052822.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1858, '127.0.0.1', '2023-03-19 21:07:18.201727', '/upload/cover/1679231084420.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1859, '127.0.0.1', '2023-03-19 21:07:18.223741', '/upload/cover/1679231052822.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1860, '127.0.0.1', '2023-03-19 21:07:18.234725', '/upload/cover/1679230894621.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1861, '127.0.0.1', '2023-03-19 21:07:18.238767', '/upload/cover/1679230586243.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1862, '127.0.0.1', '2023-03-19 21:07:18.239645', '/upload/cover/1679230894621.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1863, '127.0.0.1', '2023-03-19 21:07:18.241276', '/upload/cover/1679230894621.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1864, '127.0.0.1', '2023-03-19 21:07:18.242941', '/upload/cover/1679230894621.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1865, '127.0.0.1', '2023-03-19 21:07:34.610349', '/myapp/index/thing/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (1866, '127.0.0.1', '2023-03-19 21:07:34.653343', '/upload/cover/1679229780971.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1867, '127.0.0.1', '2023-03-19 21:07:34.654621', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1868, '127.0.0.1', '2023-03-19 21:07:34.655333', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1869, '127.0.0.1', '2023-03-19 21:07:34.655590', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1870, '127.0.0.1', '2023-03-19 21:07:34.656085', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1871, '127.0.0.1', '2023-03-19 21:07:34.663074', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1872, '127.0.0.1', '2023-03-19 21:07:35.915461', '/myapp/index/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (1873, '127.0.0.1', '2023-03-19 21:07:49.292487', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1874, '127.0.0.1', '2023-03-19 21:07:56.866358', '/myapp/index/thing/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (1875, '127.0.0.1', '2023-03-19 21:10:43.464913', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1876, '127.0.0.1', '2023-03-19 21:10:43.467596', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1877, '127.0.0.1', '2023-03-19 21:11:17.349728', '/myapp/admin/thing/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (1878, '127.0.0.1', '2023-03-19 21:11:17.631870', '/myapp/admin/thing/list', 'GET', NULL, '223');
INSERT INTO `b_op_log` VALUES (1879, '127.0.0.1', '2023-03-19 21:17:11.189189', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1880, '127.0.0.1', '2023-03-19 21:17:11.193179', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1881, '127.0.0.1', '2023-03-19 21:17:11.199332', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1882, '127.0.0.1', '2023-03-19 21:17:11.331058', '/myapp/index/thing/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (1883, '127.0.0.1', '2023-03-19 21:17:11.402288', '/upload/cover/1679231465845.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1884, '127.0.0.1', '2023-03-19 21:17:11.408632', '/upload/cover/1679231113572.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1885, '127.0.0.1', '2023-03-19 21:17:11.410772', '/upload/cover/1679231113572.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1886, '127.0.0.1', '2023-03-19 21:17:11.416274', '/upload/cover/1679231151929.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1887, '127.0.0.1', '2023-03-19 21:17:11.416515', '/upload/cover/1679231184020.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1888, '127.0.0.1', '2023-03-19 21:17:11.421315', '/upload/cover/1679231084420.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1889, '127.0.0.1', '2023-03-19 21:17:11.430732', '/upload/cover/1679231022326.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1890, '127.0.0.1', '2023-03-19 21:17:11.431106', '/upload/cover/1679231022326.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1891, '127.0.0.1', '2023-03-19 21:17:11.450539', '/upload/cover/1679230641879.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1892, '127.0.0.1', '2023-03-19 21:17:11.452029', '/upload/cover/1679230641879.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1893, '127.0.0.1', '2023-03-19 21:17:11.454819', '/upload/cover/1679230641879.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1894, '127.0.0.1', '2023-03-19 21:17:11.455621', '/upload/cover/1679230641879.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1895, '127.0.0.1', '2023-03-19 21:17:29.589427', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1896, '127.0.0.1', '2023-03-19 21:17:29.598336', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1897, '127.0.0.1', '2023-03-19 21:17:29.686016', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1898, '127.0.0.1', '2023-03-19 21:17:29.719965', '/myapp/index/notice/list_api', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1899, '127.0.0.1', '2023-03-19 21:17:29.750738', '/upload/cover/1679229610791.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1900, '127.0.0.1', '2023-03-19 21:17:34.083175', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1901, '127.0.0.1', '2023-03-19 21:17:34.133535', '/myapp/index/comment/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1902, '127.0.0.1', '2023-03-19 21:17:34.199897', '/myapp/index/comment/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (1903, '127.0.0.1', '2023-03-19 21:17:34.215916', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1904, '127.0.0.1', '2023-03-19 21:17:38.175515', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1905, '127.0.0.1', '2023-03-19 21:17:38.192511', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1906, '127.0.0.1', '2023-03-19 21:17:38.267019', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1907, '127.0.0.1', '2023-03-19 21:17:38.299500', '/myapp/index/notice/list_api', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1908, '127.0.0.1', '2023-03-19 21:18:32.839536', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1909, '127.0.0.1', '2023-03-19 21:18:33.605481', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1910, '127.0.0.1', '2023-03-19 21:18:33.665307', '/upload/cover/1679230543572.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1911, '127.0.0.1', '2023-03-19 21:18:33.666422', '/upload/cover/1679230586243.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1912, '127.0.0.1', '2023-03-19 21:18:33.667708', '/upload/cover/1679230586243.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1913, '127.0.0.1', '2023-03-19 21:18:33.668290', '/upload/cover/1679230586243.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1914, '127.0.0.1', '2023-03-19 21:18:33.668936', '/upload/cover/1679230364390.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1915, '127.0.0.1', '2023-03-19 21:18:33.680816', '/upload/cover/1679230586243.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1916, '127.0.0.1', '2023-03-19 21:18:33.699436', '/upload/cover/1679229963230.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1917, '127.0.0.1', '2023-03-19 21:18:33.701085', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1918, '127.0.0.1', '2023-03-19 21:18:33.703817', '/upload/cover/1679229780971.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1919, '127.0.0.1', '2023-03-19 21:18:34.411073', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1920, '127.0.0.1', '2023-03-19 21:18:34.975545', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1921, '127.0.0.1', '2023-03-19 21:18:35.737494', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1922, '127.0.0.1', '2023-03-19 21:18:36.303135', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1923, '127.0.0.1', '2023-03-19 21:18:36.950383', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1924, '127.0.0.1', '2023-03-19 21:18:38.362325', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1925, '127.0.0.1', '2023-03-19 21:18:48.664807', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1926, '127.0.0.1', '2023-03-19 21:18:49.359869', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1927, '127.0.0.1', '2023-03-19 21:19:05.371100', '/myapp/admin/tag/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1928, '127.0.0.1', '2023-03-19 21:19:05.422564', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1929, '127.0.0.1', '2023-03-19 21:24:36.408199', '/myapp/admin/thing/list', 'GET', NULL, '221');
INSERT INTO `b_op_log` VALUES (1930, '127.0.0.1', '2023-03-19 21:25:39.134023', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1931, '127.0.0.1', '2023-03-19 21:25:39.145143', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1932, '127.0.0.1', '2023-03-19 21:27:07.713874', '/myapp/admin/thing/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1933, '127.0.0.1', '2023-03-19 21:27:08.020962', '/myapp/admin/thing/list', 'GET', NULL, '255');
INSERT INTO `b_op_log` VALUES (1934, '127.0.0.1', '2023-03-19 21:27:09.611962', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1935, '127.0.0.1', '2023-03-19 21:27:09.616472', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1936, '127.0.0.1', '2023-03-19 21:27:44.843390', '/myapp/admin/thing/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1937, '127.0.0.1', '2023-03-19 21:27:45.174374', '/myapp/admin/thing/list', 'GET', NULL, '272');
INSERT INTO `b_op_log` VALUES (1938, '127.0.0.1', '2023-03-19 21:27:46.475601', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1939, '127.0.0.1', '2023-03-19 21:27:46.478273', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1940, '127.0.0.1', '2023-03-19 21:28:13.915746', '/myapp/admin/thing/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (1941, '127.0.0.1', '2023-03-19 21:28:14.246250', '/myapp/admin/thing/list', 'GET', NULL, '276');
INSERT INTO `b_op_log` VALUES (1942, '127.0.0.1', '2023-03-19 21:28:26.355155', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1943, '127.0.0.1', '2023-03-19 21:28:26.357087', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1944, '127.0.0.1', '2023-03-19 21:28:47.299137', '/myapp/admin/thing/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1945, '127.0.0.1', '2023-03-19 21:28:47.610096', '/myapp/admin/thing/list', 'GET', NULL, '250');
INSERT INTO `b_op_log` VALUES (1946, '127.0.0.1', '2023-03-19 21:28:49.488842', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1947, '127.0.0.1', '2023-03-19 21:28:49.491122', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1948, '127.0.0.1', '2023-03-19 21:29:27.403440', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (1949, '127.0.0.1', '2023-03-19 21:29:27.761619', '/myapp/admin/thing/list', 'GET', NULL, '297');
INSERT INTO `b_op_log` VALUES (1950, '127.0.0.1', '2023-03-19 21:29:36.230284', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1951, '127.0.0.1', '2023-03-19 21:29:36.234112', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1952, '127.0.0.1', '2023-03-19 21:30:00.708653', '/myapp/admin/thing/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (1953, '127.0.0.1', '2023-03-19 21:30:01.034725', '/myapp/admin/thing/list', 'GET', NULL, '277');
INSERT INTO `b_op_log` VALUES (1954, '127.0.0.1', '2023-03-19 21:30:02.286196', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1955, '127.0.0.1', '2023-03-19 21:30:02.287965', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1956, '127.0.0.1', '2023-03-19 21:30:27.245794', '/myapp/admin/thing/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1957, '127.0.0.1', '2023-03-19 21:30:27.564135', '/myapp/admin/thing/list', 'GET', NULL, '261');
INSERT INTO `b_op_log` VALUES (1958, '127.0.0.1', '2023-03-19 21:30:28.837176', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1959, '127.0.0.1', '2023-03-19 21:30:28.839453', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1960, '127.0.0.1', '2023-03-19 21:31:01.623773', '/myapp/admin/thing/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1961, '127.0.0.1', '2023-03-19 21:31:01.960307', '/myapp/admin/thing/list', 'GET', NULL, '273');
INSERT INTO `b_op_log` VALUES (1962, '127.0.0.1', '2023-03-19 21:31:02.904283', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1963, '127.0.0.1', '2023-03-19 21:31:02.906053', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1964, '127.0.0.1', '2023-03-19 21:31:29.942366', '/myapp/admin/thing/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1965, '127.0.0.1', '2023-03-19 21:31:30.265101', '/myapp/admin/thing/list', 'GET', NULL, '279');
INSERT INTO `b_op_log` VALUES (1966, '127.0.0.1', '2023-03-19 21:31:33.258323', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1967, '127.0.0.1', '2023-03-19 21:31:33.293659', '/upload/cover/1679230935716.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1968, '127.0.0.1', '2023-03-19 21:31:33.294277', '/upload/cover/1679230894621.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1969, '127.0.0.1', '2023-03-19 21:31:34.007553', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1970, '127.0.0.1', '2023-03-19 21:31:34.053588', '/upload/cover/1679232676818.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1971, '127.0.0.1', '2023-03-19 21:31:34.060842', '/upload/cover/1679232650073.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1972, '127.0.0.1', '2023-03-19 21:31:34.086327', '/upload/cover/1679232543082.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1973, '127.0.0.1', '2023-03-19 21:31:34.088225', '/upload/cover/1679232615578.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1974, '127.0.0.1', '2023-03-19 21:31:34.092299', '/upload/cover/1679232587234.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1975, '127.0.0.1', '2023-03-19 21:31:34.094957', '/upload/cover/1679232480948.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1976, '127.0.0.1', '2023-03-19 21:31:34.111938', '/upload/cover/1679232514230.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1977, '127.0.0.1', '2023-03-19 21:31:34.133217', '/upload/cover/1679232448857.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1978, '127.0.0.1', '2023-03-19 21:31:34.136796', '/upload/cover/1679232418133.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1979, '127.0.0.1', '2023-03-19 21:31:34.137822', '/upload/cover/1679231465845.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1980, '127.0.0.1', '2023-03-19 21:31:52.859166', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1981, '127.0.0.1', '2023-03-19 21:31:52.865682', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1982, '127.0.0.1', '2023-03-19 21:32:14.054730', '/myapp/admin/thing/update', 'POST', NULL, '118');
INSERT INTO `b_op_log` VALUES (1983, '127.0.0.1', '2023-03-19 21:32:14.463193', '/myapp/admin/thing/list', 'GET', NULL, '358');
INSERT INTO `b_op_log` VALUES (1984, '127.0.0.1', '2023-03-19 21:32:18.748279', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1985, '127.0.0.1', '2023-03-19 21:32:18.760130', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1986, '127.0.0.1', '2023-03-19 21:32:18.769784', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1987, '127.0.0.1', '2023-03-19 21:32:18.944843', '/myapp/index/thing/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (1988, '127.0.0.1', '2023-03-19 21:32:19.117033', '/upload/cover/1679232676818.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1989, '127.0.0.1', '2023-03-19 21:32:19.119761', '/upload/cover/1679232650073.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1990, '127.0.0.1', '2023-03-19 21:32:19.128396', '/upload/cover/1679232615578.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1991, '127.0.0.1', '2023-03-19 21:32:19.140396', '/upload/cover/1679232543082.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1992, '127.0.0.1', '2023-03-19 21:32:19.141231', '/upload/cover/1679232543082.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1993, '127.0.0.1', '2023-03-19 21:32:19.157349', '/upload/cover/1679232514230.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1994, '127.0.0.1', '2023-03-19 21:32:19.177057', '/upload/cover/1679232418133.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1995, '127.0.0.1', '2023-03-19 21:32:19.182795', '/upload/cover/1679232480948.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1996, '127.0.0.1', '2023-03-19 21:32:19.183236', '/upload/cover/1679231221940.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1997, '127.0.0.1', '2023-03-19 21:32:19.184663', '/upload/cover/1679231184020.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1998, '127.0.0.1', '2023-03-19 21:32:19.187447', '/upload/cover/1679232448857.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1999, '127.0.0.1', '2023-03-19 21:32:22.394459', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (2000, '127.0.0.1', '2023-03-19 21:32:22.470339', '/upload/cover/1679232717023.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2001, '127.0.0.1', '2023-03-19 21:32:31.952661', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2002, '127.0.0.1', '2023-03-19 21:32:31.954883', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2003, '127.0.0.1', '2023-03-19 21:32:53.940751', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (2004, '127.0.0.1', '2023-03-19 21:32:54.253242', '/myapp/admin/thing/list', 'GET', NULL, '260');
INSERT INTO `b_op_log` VALUES (2005, '127.0.0.1', '2023-03-19 21:32:57.334568', '/myapp/index/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (2006, '127.0.0.1', '2023-03-19 21:32:57.395241', '/upload/cover/1679231113572.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2007, '127.0.0.1', '2023-03-19 21:32:57.397320', '/upload/cover/1679231151929.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2008, '127.0.0.1', '2023-03-19 21:32:57.400538', '/upload/cover/1679231022326.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2009, '127.0.0.1', '2023-03-19 21:32:57.399701', '/upload/cover/1679231022326.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2010, '127.0.0.1', '2023-03-19 21:32:57.404094', '/upload/cover/1679231022326.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2011, '127.0.0.1', '2023-03-19 21:32:57.408300', '/upload/cover/1679231022326.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2012, '127.0.0.1', '2023-03-19 21:32:58.181320', '/myapp/index/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (2013, '127.0.0.1', '2023-03-19 21:32:58.208897', '/upload/cover/1679232756075.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2014, '127.0.0.1', '2023-03-19 21:33:03.525954', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (2015, '127.0.0.1', '2023-03-19 21:33:04.542505', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (2016, '127.0.0.1', '2023-03-19 21:33:04.595248', '/upload/cover/1679230641879.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2017, '127.0.0.1', '2023-03-19 21:33:04.596502', '/upload/cover/1679230364390.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2018, '127.0.0.1', '2023-03-19 21:33:04.596790', '/upload/cover/1679230364390.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2019, '127.0.0.1', '2023-03-19 21:33:04.605364', '/upload/cover/1679230364390.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2020, '127.0.0.1', '2023-03-19 21:33:04.609063', '/upload/cover/1679230364390.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2021, '127.0.0.1', '2023-03-19 21:33:04.609569', '/upload/cover/1679230364390.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2022, '127.0.0.1', '2023-03-19 21:33:04.641453', '/upload/cover/1679230045590.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2023, '127.0.0.1', '2023-03-19 21:33:04.641722', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2024, '127.0.0.1', '2023-03-19 21:33:04.644907', '/upload/cover/1679229963230.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2025, '127.0.0.1', '2023-03-19 21:33:04.645259', '/upload/cover/1679229610791.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2026, '127.0.0.1', '2023-03-19 21:33:04.646225', '/upload/cover/1679229780971.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2027, '127.0.0.1', '2023-03-19 21:33:06.443929', '/myapp/index/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (2028, '127.0.0.1', '2023-03-19 21:33:14.930154', '/myapp/index/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (2029, '127.0.0.1', '2023-03-19 21:35:08.047028', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (2030, '127.0.0.1', '2023-03-19 21:35:08.089906', '/upload/cover/1679231465845.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2031, '127.0.0.1', '2023-03-19 21:35:08.091482', '/upload/cover/1679232418133.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2032, '127.0.0.1', '2023-03-19 21:35:08.093492', '/upload/cover/1679232717023.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2033, '127.0.0.1', '2023-03-19 21:35:09.277760', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (2034, '127.0.0.1', '2023-03-19 21:35:09.328012', '/upload/cover/1679232587234.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2035, '127.0.0.1', '2023-03-19 21:35:09.327588', '/upload/cover/1679232587234.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2036, '127.0.0.1', '2023-03-19 21:35:09.329748', '/upload/cover/1679232587234.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2037, '127.0.0.1', '2023-03-19 21:35:09.331137', '/upload/cover/1679232676818.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2038, '127.0.0.1', '2023-03-19 21:35:09.331696', '/upload/cover/1679232587234.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2039, '127.0.0.1', '2023-03-19 21:35:09.343767', '/upload/cover/1679232587234.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2040, '127.0.0.1', '2023-03-19 21:35:09.357903', '/upload/cover/1679232448857.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2041, '127.0.0.1', '2023-03-19 21:35:09.359107', '/upload/cover/1679232480948.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2042, '127.0.0.1', '2023-03-19 21:35:11.642746', '/myapp/index/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (2043, '127.0.0.1', '2023-03-19 21:35:14.401271', '/myapp/admin/overview/count', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (2044, '127.0.0.1', '2023-03-19 21:35:33.427565', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2045, '127.0.0.1', '2023-03-19 21:35:33.447491', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (2046, '127.0.0.1', '2023-03-19 21:35:33.500251', '/upload/cover/1679232676818.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2047, '127.0.0.1', '2023-03-19 21:35:33.538754', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2048, '127.0.0.1', '2023-03-19 21:35:33.624236', '/myapp/index/notice/list_api', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (2049, '127.0.0.1', '2023-03-19 21:35:33.669311', '/upload/cover/1679232756075.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2050, '127.0.0.1', '2023-03-19 21:35:33.677682', '/upload/cover/1679232717023.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2051, '127.0.0.1', '2023-03-19 21:35:34.546161', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2052, '127.0.0.1', '2023-03-19 21:35:34.551269', '/myapp/index/address/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2053, '127.0.0.1', '2023-03-19 21:35:36.098885', '/myapp/index/order/create', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (2054, '127.0.0.1', '2023-03-19 21:35:36.182817', '/myapp/index/notice/list_api', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (2055, '127.0.0.1', '2023-03-19 21:35:40.748475', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (2056, '127.0.0.1', '2023-03-19 21:35:42.937330', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2057, '127.0.0.1', '2023-03-19 21:35:42.959795', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (2058, '127.0.0.1', '2023-03-19 21:35:43.086291', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2059, '127.0.0.1', '2023-03-19 21:35:43.134371', '/myapp/index/notice/list_api', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (2060, '127.0.0.1', '2023-03-19 21:35:44.188375', '/myapp/index/address/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2061, '127.0.0.1', '2023-03-19 21:35:44.196373', '/myapp/index/address/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2062, '127.0.0.1', '2023-03-19 21:35:45.620724', '/myapp/index/order/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (2063, '127.0.0.1', '2023-03-19 21:35:45.737012', '/myapp/index/notice/list_api', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (2064, '127.0.0.1', '2023-03-19 21:35:50.177181', '/myapp/admin/order/list', 'GET', NULL, '210');
INSERT INTO `b_op_log` VALUES (2065, '127.0.0.1', '2023-03-19 21:35:50.853910', '/myapp/admin/overview/count', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (2066, '127.0.0.1', '2023-03-19 21:36:07.971159', '/myapp/index/thing/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (2067, '127.0.0.1', '2023-03-19 21:36:08.029637', '/upload/cover/1679232543082.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2068, '127.0.0.1', '2023-03-19 21:36:08.030281', '/upload/cover/1679232543082.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2069, '127.0.0.1', '2023-03-19 21:36:08.033014', '/upload/cover/1679232650073.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2070, '127.0.0.1', '2023-03-19 21:36:08.033586', '/upload/cover/1679232543082.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2071, '127.0.0.1', '2023-03-19 21:36:08.038557', '/upload/cover/1679232543082.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2072, '127.0.0.1', '2023-03-19 21:36:08.053934', '/upload/cover/1679232543082.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2073, '127.0.0.1', '2023-03-19 21:36:08.081793', '/upload/cover/1679232480948.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2074, '127.0.0.1', '2023-03-19 21:36:08.084535', '/upload/cover/1679232418133.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2075, '127.0.0.1', '2023-03-19 21:36:08.086039', '/upload/cover/1679232448857.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2076, '127.0.0.1', '2023-03-19 21:36:08.086909', '/upload/cover/1679231221940.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2077, '127.0.0.1', '2023-03-19 21:36:08.102976', '/upload/cover/1679231184020.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2078, '127.0.0.1', '2023-03-19 21:36:09.685137', '/upload/cover/1679232717023.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2079, '127.0.0.1', '2023-03-19 21:36:09.686858', '/upload/cover/1679232756075.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2080, '127.0.0.1', '2023-03-19 21:36:15.988758', '/myapp/admin/thing/list', 'GET', NULL, '386');
INSERT INTO `b_op_log` VALUES (2081, '127.0.0.1', '2023-03-19 21:36:20.257319', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2082, '127.0.0.1', '2023-03-19 21:36:20.260105', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2083, '127.0.0.1', '2023-03-19 21:36:32.914973', '/myapp/admin/thing/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (2084, '127.0.0.1', '2023-03-19 21:36:33.216987', '/myapp/admin/thing/list', 'GET', NULL, '260');
INSERT INTO `b_op_log` VALUES (2085, '127.0.0.1', '2023-03-19 21:36:36.933041', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (2086, '127.0.0.1', '2023-03-19 21:36:36.970606', '/upload/cover/1679230641879.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2087, '127.0.0.1', '2023-03-19 21:36:37.623028', '/myapp/index/thing/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (2088, '127.0.0.1', '2023-03-19 21:36:37.674176', '/upload/cover/1679232676818.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2089, '127.0.0.1', '2023-03-19 21:36:46.177149', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (2090, '127.0.0.1', '2023-03-19 21:36:53.602435', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (2091, '127.0.0.1', '2023-03-19 21:36:53.645855', '/upload/cover/1679230989243.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2092, '127.0.0.1', '2023-03-19 21:36:53.647124', '/upload/cover/1679231151929.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2093, '127.0.0.1', '2023-03-19 21:36:53.647782', '/upload/cover/1679230989243.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2094, '127.0.0.1', '2023-03-19 21:36:53.651043', '/upload/cover/1679230989243.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2095, '127.0.0.1', '2023-03-19 21:36:53.652163', '/upload/cover/1679231052822.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2096, '127.0.0.1', '2023-03-19 21:36:53.666709', '/upload/cover/1679231151929.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2097, '127.0.0.1', '2023-03-19 21:36:53.677685', '/upload/cover/1679230894621.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2098, '127.0.0.1', '2023-03-19 21:36:53.679408', '/upload/cover/1679230894621.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2099, '127.0.0.1', '2023-03-19 21:36:54.434147', '/myapp/index/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (2100, '127.0.0.1', '2023-03-20 20:20:39.359331', '/myapp/index/thing/list', 'GET', NULL, '178');
INSERT INTO `b_op_log` VALUES (2101, '127.0.0.1', '2023-03-20 20:20:39.400431', '/upload/cover/1679058036014.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2102, '127.0.0.1', '2023-03-20 20:22:45.913952', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2103, '127.0.0.1', '2023-03-20 20:22:48.055662', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (2104, '127.0.0.1', '2023-03-20 20:22:58.407145', '/myapp/admin/tag/create', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (2105, '127.0.0.1', '2023-03-20 20:22:58.457238', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2106, '127.0.0.1', '2023-03-20 20:23:03.859819', '/myapp/admin/thing/list', 'GET', NULL, '532');
INSERT INTO `b_op_log` VALUES (2107, '127.0.0.1', '2023-03-20 20:23:04.536027', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2108, '127.0.0.1', '2023-03-20 20:23:04.539492', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2109, '127.0.0.1', '2023-03-20 20:26:09.993520', '/myapp/admin/thing/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (2110, '127.0.0.1', '2023-03-20 20:26:10.352760', '/myapp/admin/thing/list', 'GET', NULL, '293');
INSERT INTO `b_op_log` VALUES (2111, '127.0.0.1', '2023-03-20 20:26:11.395816', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2112, '127.0.0.1', '2023-03-20 20:26:11.407271', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2113, '127.0.0.1', '2023-03-20 20:27:01.027118', '/myapp/admin/thing/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (2114, '127.0.0.1', '2023-03-20 20:27:01.381187', '/myapp/admin/thing/list', 'GET', NULL, '294');
INSERT INTO `b_op_log` VALUES (2115, '127.0.0.1', '2023-03-20 20:27:02.956347', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2116, '127.0.0.1', '2023-03-20 20:27:02.958882', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (2117, '127.0.0.1', '2023-03-20 20:27:36.076475', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (2118, '127.0.0.1', '2023-03-20 20:27:36.463343', '/myapp/admin/thing/list', 'GET', NULL, '321');
INSERT INTO `b_op_log` VALUES (2119, '127.0.0.1', '2023-03-20 20:27:45.112279', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2120, '127.0.0.1', '2023-03-20 20:27:45.115545', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2121, '127.0.0.1', '2023-03-20 20:28:10.257571', '/myapp/admin/thing/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (2122, '127.0.0.1', '2023-03-20 20:28:10.619713', '/myapp/admin/thing/list', 'GET', NULL, '303');
INSERT INTO `b_op_log` VALUES (2123, '127.0.0.1', '2023-03-20 20:28:20.370698', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2124, '127.0.0.1', '2023-03-20 20:28:20.373823', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2125, '127.0.0.1', '2023-03-20 20:28:44.199078', '/myapp/admin/thing/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (2126, '127.0.0.1', '2023-03-20 20:28:44.575417', '/myapp/admin/thing/list', 'GET', NULL, '315');
INSERT INTO `b_op_log` VALUES (2127, '127.0.0.1', '2023-03-20 20:28:46.136270', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2128, '127.0.0.1', '2023-03-20 20:28:46.143007', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2129, '127.0.0.1', '2023-03-20 20:29:19.058967', '/myapp/admin/thing/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (2130, '127.0.0.1', '2023-03-20 20:29:19.435214', '/myapp/admin/thing/list', 'GET', NULL, '316');
INSERT INTO `b_op_log` VALUES (2131, '127.0.0.1', '2023-03-20 20:29:20.684903', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2132, '127.0.0.1', '2023-03-20 20:29:20.687072', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2133, '127.0.0.1', '2023-03-20 20:29:52.072832', '/myapp/admin/thing/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (2134, '127.0.0.1', '2023-03-20 20:29:52.463199', '/myapp/admin/thing/list', 'GET', NULL, '329');
INSERT INTO `b_op_log` VALUES (2135, '127.0.0.1', '2023-03-20 20:29:53.436167', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2136, '127.0.0.1', '2023-03-20 20:29:53.440244', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2137, '127.0.0.1', '2023-03-20 20:30:24.464795', '/myapp/admin/thing/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (2138, '127.0.0.1', '2023-03-20 20:30:24.887749', '/myapp/admin/thing/list', 'GET', NULL, '361');
INSERT INTO `b_op_log` VALUES (2139, '127.0.0.1', '2023-03-20 20:30:32.999177', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2140, '127.0.0.1', '2023-03-20 20:30:33.006528', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (2141, '127.0.0.1', '2023-03-20 20:30:57.205082', '/myapp/admin/thing/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (2142, '127.0.0.1', '2023-03-20 20:30:57.595081', '/myapp/admin/thing/list', 'GET', NULL, '321');
INSERT INTO `b_op_log` VALUES (2143, '127.0.0.1', '2023-03-20 20:31:08.894250', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2144, '127.0.0.1', '2023-03-20 20:31:08.898944', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2145, '127.0.0.1', '2023-03-20 20:31:31.232575', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (2146, '127.0.0.1', '2023-03-20 20:31:31.636760', '/myapp/admin/thing/list', 'GET', NULL, '344');
INSERT INTO `b_op_log` VALUES (2147, '127.0.0.1', '2023-03-20 20:31:33.160127', '/myapp/admin/order/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (2148, '127.0.0.1', '2023-03-20 20:31:35.870481', '/myapp/admin/thing/list', 'GET', NULL, '351');
INSERT INTO `b_op_log` VALUES (2149, '127.0.0.1', '2023-03-20 20:31:39.321282', '/myapp/index/thing/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (2150, '127.0.0.1', '2023-03-20 20:31:39.382299', '/upload/cover/1679315478327.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2151, '127.0.0.1', '2023-03-20 20:31:39.387576', '/upload/cover/1679315365210.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2152, '127.0.0.1', '2023-03-20 20:31:39.389691', '/upload/cover/1679315396953.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2153, '127.0.0.1', '2023-03-20 20:31:39.400549', '/upload/cover/1679315310720.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2154, '127.0.0.1', '2023-03-20 20:31:39.406848', '/upload/cover/1679315310720.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2155, '127.0.0.1', '2023-03-20 20:31:39.410726', '/upload/cover/1679315310720.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2156, '127.0.0.1', '2023-03-20 20:31:39.434105', '/upload/cover/1679315276060.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2157, '127.0.0.1', '2023-03-20 20:31:39.448298', '/upload/cover/1679315191893.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2158, '127.0.0.1', '2023-03-20 20:31:39.449654', '/upload/cover/1679315151478.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2159, '127.0.0.1', '2023-03-20 20:31:39.450005', '/upload/cover/1679315191893.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2160, '127.0.0.1', '2023-03-20 20:31:39.452820', '/upload/cover/1679232650073.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2161, '127.0.0.1', '2023-03-20 20:31:39.455784', '/upload/cover/1679232650073.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2162, '127.0.0.1', '2023-03-20 20:31:40.316752', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (2163, '127.0.0.1', '2023-03-20 20:34:53.839584', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (2164, '127.0.0.1', '2023-03-20 20:34:59.125032', '/myapp/admin/classification/create', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (2165, '127.0.0.1', '2023-03-20 20:34:59.168286', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2166, '127.0.0.1', '2023-03-20 20:35:00.649388', '/myapp/admin/tag/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (2167, '127.0.0.1', '2023-03-20 20:35:11.296172', '/myapp/admin/tag/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (2168, '127.0.0.1', '2023-03-20 20:35:11.350764', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2169, '127.0.0.1', '2023-03-20 20:35:17.787273', '/myapp/admin/thing/list', 'GET', NULL, '368');
INSERT INTO `b_op_log` VALUES (2170, '127.0.0.1', '2023-03-20 20:35:18.633400', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2171, '127.0.0.1', '2023-03-20 20:35:18.635750', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2172, '127.0.0.1', '2023-03-20 20:35:56.657302', '/myapp/admin/thing/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (2173, '127.0.0.1', '2023-03-20 20:35:57.073666', '/myapp/admin/thing/list', 'GET', NULL, '367');
INSERT INTO `b_op_log` VALUES (2174, '127.0.0.1', '2023-03-20 20:35:58.433752', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2175, '127.0.0.1', '2023-03-20 20:35:58.437231', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2176, '127.0.0.1', '2023-03-20 20:36:38.213686', '/myapp/admin/thing/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (2177, '127.0.0.1', '2023-03-20 20:36:38.659059', '/myapp/admin/thing/list', 'GET', NULL, '386');
INSERT INTO `b_op_log` VALUES (2178, '127.0.0.1', '2023-03-20 20:36:39.919504', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2179, '127.0.0.1', '2023-03-20 20:36:39.924554', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2180, '127.0.0.1', '2023-03-20 20:37:16.710178', '/myapp/admin/thing/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (2181, '127.0.0.1', '2023-03-20 20:37:17.135149', '/myapp/admin/thing/list', 'GET', NULL, '379');
INSERT INTO `b_op_log` VALUES (2182, '127.0.0.1', '2023-03-20 20:37:17.972227', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2183, '127.0.0.1', '2023-03-20 20:37:17.973715', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2184, '127.0.0.1', '2023-03-20 20:37:55.585701', '/myapp/admin/thing/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (2185, '127.0.0.1', '2023-03-20 20:37:56.034422', '/myapp/admin/thing/list', 'GET', NULL, '390');
INSERT INTO `b_op_log` VALUES (2186, '127.0.0.1', '2023-03-20 20:37:59.547530', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2187, '127.0.0.1', '2023-03-20 20:37:59.550504', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2188, '127.0.0.1', '2023-03-20 20:38:30.570897', '/myapp/admin/thing/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (2189, '127.0.0.1', '2023-03-20 20:38:31.004555', '/myapp/admin/thing/list', 'GET', NULL, '369');
INSERT INTO `b_op_log` VALUES (2190, '127.0.0.1', '2023-03-20 20:38:32.104797', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2191, '127.0.0.1', '2023-03-20 20:38:32.118011', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (2192, '127.0.0.1', '2023-03-20 20:39:08.186926', '/myapp/admin/thing/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (2193, '127.0.0.1', '2023-03-20 20:39:08.635773', '/myapp/admin/thing/list', 'GET', NULL, '384');
INSERT INTO `b_op_log` VALUES (2194, '127.0.0.1', '2023-03-20 20:39:10.011080', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2195, '127.0.0.1', '2023-03-20 20:39:10.013328', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2196, '127.0.0.1', '2023-03-20 20:39:41.112174', '/myapp/admin/thing/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (2197, '127.0.0.1', '2023-03-20 20:39:41.564858', '/myapp/admin/thing/list', 'GET', NULL, '407');
INSERT INTO `b_op_log` VALUES (2198, '127.0.0.1', '2023-03-20 20:39:42.404290', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2199, '127.0.0.1', '2023-03-20 20:39:42.406328', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2200, '127.0.0.1', '2023-03-20 20:40:32.619257', '/myapp/admin/thing/create', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (2201, '127.0.0.1', '2023-03-20 20:40:33.090994', '/myapp/admin/thing/list', 'GET', NULL, '424');
INSERT INTO `b_op_log` VALUES (2202, '127.0.0.1', '2023-03-20 20:40:34.133326', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2203, '127.0.0.1', '2023-03-20 20:40:34.134803', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2204, '127.0.0.1', '2023-03-20 20:41:08.232181', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (2205, '127.0.0.1', '2023-03-20 20:41:08.730435', '/myapp/admin/thing/list', 'GET', NULL, '437');
INSERT INTO `b_op_log` VALUES (2206, '127.0.0.1', '2023-03-20 20:41:09.389059', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2207, '127.0.0.1', '2023-03-20 20:41:09.391133', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2208, '127.0.0.1', '2023-03-20 20:41:39.864072', '/myapp/admin/thing/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (2209, '127.0.0.1', '2023-03-20 20:41:40.314680', '/myapp/admin/thing/list', 'GET', NULL, '405');
INSERT INTO `b_op_log` VALUES (2210, '127.0.0.1', '2023-03-20 20:41:42.751892', '/myapp/admin/overview/count', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (2211, '127.0.0.1', '2023-03-20 20:41:58.737144', '/myapp/index/thing/list', 'GET', NULL, '208');
INSERT INTO `b_op_log` VALUES (2212, '127.0.0.1', '2023-03-20 20:41:58.803310', '/upload/cover/1679058043365.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2213, '127.0.0.1', '2023-03-20 20:41:58.806868', '/upload/cover/1679232756075.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2214, '127.0.0.1', '2023-03-20 20:41:58.808846', '/upload/cover/1679232717023.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2215, '127.0.0.1', '2023-03-20 20:41:58.820748', '/upload/cover/1679229780971.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2216, '127.0.0.1', '2023-03-20 20:41:58.834234', '/upload/cover/1679229780971.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2217, '127.0.0.1', '2023-03-20 20:41:58.839528', '/upload/cover/1679229780971.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2218, '127.0.0.1', '2023-03-20 20:41:58.840524', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2219, '127.0.0.1', '2023-03-20 20:41:58.852846', '/upload/cover/1679229963230.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2220, '127.0.0.1', '2023-03-20 20:41:58.858049', '/upload/cover/1679230092657.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2221, '127.0.0.1', '2023-03-20 20:41:58.860278', '/upload/cover/1679230045590.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2222, '127.0.0.1', '2023-03-20 20:41:58.875699', '/upload/cover/1679230147996.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2223, '127.0.0.1', '2023-03-20 20:41:59.908311', '/myapp/index/thing/list', 'GET', NULL, '239');
INSERT INTO `b_op_log` VALUES (2224, '127.0.0.1', '2023-03-20 20:42:00.824921', '/myapp/index/thing/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (2225, '127.0.0.1', '2023-03-20 20:42:00.870495', '/upload/cover/1679315915467.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2226, '127.0.0.1', '2023-03-20 20:42:00.870793', '/upload/cover/1679315915467.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2227, '127.0.0.1', '2023-03-20 20:42:00.871282', '/upload/cover/1679315915467.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2228, '127.0.0.1', '2023-03-20 20:42:00.871570', '/upload/cover/1679315915467.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2229, '127.0.0.1', '2023-03-20 20:42:00.872523', '/upload/cover/1679316072493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2230, '127.0.0.1', '2023-03-20 20:42:00.875063', '/upload/cover/1679315915467.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2231, '127.0.0.1', '2023-03-20 20:42:00.904847', '/upload/cover/1679315842977.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2232, '127.0.0.1', '2023-03-20 20:42:00.907314', '/upload/cover/1679315803245.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2233, '127.0.0.1', '2023-03-20 20:42:00.907731', '/upload/cover/1679315761797.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2234, '127.0.0.1', '2023-03-20 20:42:00.909334', '/upload/cover/1679315749022.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2235, '127.0.0.1', '2023-03-20 20:42:02.201290', '/myapp/index/thing/list', 'GET', NULL, '194');
INSERT INTO `b_op_log` VALUES (2236, '127.0.0.1', '2023-03-20 20:42:05.273247', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (2237, '127.0.0.1', '2023-03-20 20:42:05.316005', '/upload/cover/1679230543572.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2238, '127.0.0.1', '2023-03-20 20:42:05.317890', '/upload/cover/1679230364390.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2239, '127.0.0.1', '2023-03-20 20:42:05.317504', '/upload/cover/1679230543572.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2240, '127.0.0.1', '2023-03-20 20:42:05.323277', '/upload/cover/1679230364390.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2241, '127.0.0.1', '2023-03-20 20:42:07.024743', '/myapp/index/thing/list', 'GET', NULL, '195');
INSERT INTO `b_op_log` VALUES (2242, '127.0.0.1', '2023-03-20 20:42:14.252962', '/myapp/index/thing/list', 'GET', NULL, '204');
INSERT INTO `b_op_log` VALUES (2243, '127.0.0.1', '2023-03-20 20:42:15.377019', '/myapp/index/thing/list', 'GET', NULL, '205');
INSERT INTO `b_op_log` VALUES (2244, '127.0.0.1', '2023-03-20 20:42:17.165767', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (2245, '127.0.0.1', '2023-03-20 20:42:18.613236', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2246, '127.0.0.1', '2023-03-20 20:42:19.530323', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (2247, '127.0.0.1', '2023-03-20 20:42:19.554533', '/upload/cover/1679230935716.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2248, '127.0.0.1', '2023-03-20 20:42:19.555275', '/upload/cover/1679230935716.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2249, '127.0.0.1', '2023-03-20 20:42:20.518768', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (2250, '127.0.0.1', '2023-03-20 20:42:20.543390', '/upload/cover/1679232418133.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2251, '127.0.0.1', '2023-03-20 20:42:20.545856', '/upload/cover/1679232418133.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2252, '127.0.0.1', '2023-03-20 20:42:21.602087', '/myapp/index/thing/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (2253, '127.0.0.1', '2023-03-20 20:42:22.285792', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2254, '127.0.0.1', '2023-03-20 20:42:23.719036', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2255, '127.0.0.1', '2023-03-20 20:42:25.083278', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (2256, '127.0.0.1', '2023-03-20 20:42:25.139038', '/upload/cover/1679232615578.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2257, '127.0.0.1', '2023-03-20 20:42:25.148549', '/upload/cover/1679232587234.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2258, '127.0.0.1', '2023-03-20 20:42:25.148916', '/upload/cover/1679232448857.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2259, '127.0.0.1', '2023-03-20 20:42:25.149335', '/upload/cover/1679232480948.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2260, '127.0.0.1', '2023-03-20 20:42:25.149695', '/upload/cover/1679232514230.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2261, '127.0.0.1', '2023-03-20 20:42:25.159043', '/upload/cover/1679232514230.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2262, '127.0.0.1', '2023-03-20 20:42:59.253292', '/myapp/index/thing/list', 'GET', NULL, '199');
INSERT INTO `b_op_log` VALUES (2263, '127.0.0.1', '2023-03-20 20:44:13.932144', '/myapp/admin/order/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (2264, '127.0.0.1', '2023-03-20 20:44:15.850742', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2265, '127.0.0.1', '2023-03-20 20:44:38.008214', '/myapp/admin/classification/create', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (2266, '127.0.0.1', '2023-03-20 20:44:38.060314', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2267, '127.0.0.1', '2023-03-20 20:44:42.425359', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2268, '127.0.0.1', '2023-03-20 20:44:42.437976', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2269, '127.0.0.1', '2023-03-20 20:44:42.454933', '/myapp/index/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2270, '127.0.0.1', '2023-03-20 20:44:42.673329', '/myapp/index/tag/list', 'GET', NULL, '241');
INSERT INTO `b_op_log` VALUES (2271, '127.0.0.1', '2023-03-20 20:44:42.724710', '/upload/cover/1679316072493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2272, '127.0.0.1', '2023-03-20 20:44:42.727059', '/upload/cover/1679315883620.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2273, '127.0.0.1', '2023-03-20 20:44:42.728899', '/upload/cover/1679315883620.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2274, '127.0.0.1', '2023-03-20 20:44:42.729356', '/upload/cover/1679315883620.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2275, '127.0.0.1', '2023-03-20 20:44:42.731350', '/upload/cover/1679315883620.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2276, '127.0.0.1', '2023-03-20 20:44:42.732593', '/upload/cover/1679315883620.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2277, '127.0.0.1', '2023-03-20 20:44:42.762851', '/upload/cover/1679315749022.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2278, '127.0.0.1', '2023-03-20 20:44:42.763169', '/upload/cover/1679315842977.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2279, '127.0.0.1', '2023-03-20 20:44:42.763506', '/upload/cover/1679315478327.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2280, '127.0.0.1', '2023-03-20 20:44:42.778261', '/upload/cover/1679315478327.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2281, '127.0.0.1', '2023-03-20 20:44:42.778883', '/upload/cover/1679315437571.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2282, '127.0.0.1', '2023-03-20 20:44:42.780206', '/upload/cover/1679315478327.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2283, '127.0.0.1', '2023-03-20 20:45:25.355800', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2284, '127.0.0.1', '2023-03-20 20:45:32.143694', '/myapp/admin/tag/create', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (2285, '127.0.0.1', '2023-03-20 20:45:32.196079', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2286, '127.0.0.1', '2023-03-20 20:46:39.576069', '/myapp/admin/thing/list', 'GET', NULL, '396');
INSERT INTO `b_op_log` VALUES (2287, '127.0.0.1', '2023-03-20 20:46:40.638025', '/myapp/admin/tag/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (2288, '127.0.0.1', '2023-03-20 20:46:40.650183', '/myapp/admin/tag/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (2289, '127.0.0.1', '2023-03-20 20:47:14.484805', '/myapp/admin/thing/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (2290, '127.0.0.1', '2023-03-20 20:47:14.982825', '/myapp/admin/thing/list', 'GET', NULL, '452');
INSERT INTO `b_op_log` VALUES (2291, '127.0.0.1', '2023-03-20 20:47:17.984048', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (2292, '127.0.0.1', '2023-03-20 20:47:17.987614', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (2293, '127.0.0.1', '2023-03-20 20:47:44.924403', '/myapp/admin/thing/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (2294, '127.0.0.1', '2023-03-20 20:47:45.422415', '/myapp/admin/thing/list', 'GET', NULL, '439');
INSERT INTO `b_op_log` VALUES (2295, '127.0.0.1', '2023-03-20 20:47:48.104255', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2296, '127.0.0.1', '2023-03-20 20:47:48.106773', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2297, '127.0.0.1', '2023-03-20 20:48:15.909374', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (2298, '127.0.0.1', '2023-03-20 20:48:16.377630', '/myapp/admin/thing/list', 'GET', NULL, '408');
INSERT INTO `b_op_log` VALUES (2299, '127.0.0.1', '2023-03-20 20:48:17.543910', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2300, '127.0.0.1', '2023-03-20 20:48:17.546631', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2301, '127.0.0.1', '2023-03-20 20:48:48.140050', '/myapp/admin/thing/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (2302, '127.0.0.1', '2023-03-20 20:48:48.633644', '/myapp/admin/thing/list', 'GET', NULL, '435');
INSERT INTO `b_op_log` VALUES (2303, '127.0.0.1', '2023-03-20 20:48:49.504277', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2304, '127.0.0.1', '2023-03-20 20:48:49.506756', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (2305, '127.0.0.1', '2023-03-20 20:49:20.102652', '/myapp/admin/thing/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (2306, '127.0.0.1', '2023-03-20 20:49:20.608604', '/myapp/admin/thing/list', 'GET', NULL, '445');
INSERT INTO `b_op_log` VALUES (2307, '127.0.0.1', '2023-03-20 20:49:21.812249', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2308, '127.0.0.1', '2023-03-20 20:49:21.815397', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2309, '127.0.0.1', '2023-03-20 20:49:57.245864', '/myapp/admin/thing/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (2310, '127.0.0.1', '2023-03-20 20:49:57.746828', '/myapp/admin/thing/list', 'GET', NULL, '440');
INSERT INTO `b_op_log` VALUES (2311, '127.0.0.1', '2023-03-20 20:50:01.642616', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2312, '127.0.0.1', '2023-03-20 20:50:01.646749', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2313, '127.0.0.1', '2023-03-20 20:50:32.635887', '/myapp/admin/thing/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (2314, '127.0.0.1', '2023-03-20 20:50:33.171897', '/myapp/admin/thing/list', 'GET', NULL, '489');
INSERT INTO `b_op_log` VALUES (2315, '127.0.0.1', '2023-03-20 20:50:34.096353', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2316, '127.0.0.1', '2023-03-20 20:50:34.101294', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2317, '127.0.0.1', '2023-03-20 20:51:02.214504', '/myapp/admin/thing/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (2318, '127.0.0.1', '2023-03-20 20:51:02.841633', '/myapp/admin/thing/list', 'GET', NULL, '580');
INSERT INTO `b_op_log` VALUES (2319, '127.0.0.1', '2023-03-20 20:51:03.575145', '/myapp/admin/tag/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (2320, '127.0.0.1', '2023-03-20 20:51:03.595404', '/myapp/admin/tag/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (2321, '127.0.0.1', '2023-03-20 20:51:32.794098', '/myapp/admin/thing/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (2322, '127.0.0.1', '2023-03-20 20:51:33.348176', '/myapp/admin/thing/list', 'GET', NULL, '489');
INSERT INTO `b_op_log` VALUES (2323, '127.0.0.1', '2023-03-20 20:51:34.314386', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2324, '127.0.0.1', '2023-03-20 20:51:34.312885', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2325, '127.0.0.1', '2023-03-20 20:52:05.033032', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (2326, '127.0.0.1', '2023-03-20 20:52:05.551173', '/myapp/admin/thing/list', 'GET', NULL, '459');
INSERT INTO `b_op_log` VALUES (2327, '127.0.0.1', '2023-03-20 20:52:08.323823', '/myapp/index/thing/list', 'GET', NULL, '226');
INSERT INTO `b_op_log` VALUES (2328, '127.0.0.1', '2023-03-20 20:52:08.384501', '/upload/cover/1679316637185.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2329, '127.0.0.1', '2023-03-20 20:52:08.384867', '/upload/cover/1679316698087.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2330, '127.0.0.1', '2023-03-20 20:52:08.386343', '/upload/cover/1679316605104.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2331, '127.0.0.1', '2023-03-20 20:52:08.403354', '/upload/cover/1679316533369.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2332, '127.0.0.1', '2023-03-20 20:52:08.414046', '/upload/cover/1679316605104.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2333, '127.0.0.1', '2023-03-20 20:52:08.414532', '/upload/cover/1679316566135.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2334, '127.0.0.1', '2023-03-20 20:52:08.437681', '/upload/cover/1679316484842.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2335, '127.0.0.1', '2023-03-20 20:52:08.439974', '/upload/cover/1679316453474.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2336, '127.0.0.1', '2023-03-20 20:52:08.450159', '/upload/cover/1679316422812.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2337, '127.0.0.1', '2023-03-20 20:52:08.455785', '/upload/cover/1679316422812.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2338, '127.0.0.1', '2023-03-20 20:52:10.842688', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2339, '127.0.0.1', '2023-03-20 20:52:10.848047', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2340, '127.0.0.1', '2023-03-20 20:52:10.860095', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (2341, '127.0.0.1', '2023-03-20 20:52:11.085090', '/myapp/index/thing/list', 'GET', NULL, '249');
INSERT INTO `b_op_log` VALUES (2342, '127.0.0.1', '2023-03-20 20:52:11.106000', '/upload/cover/1679316698087.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2343, '127.0.0.1', '2023-03-20 20:52:11.119366', '/upload/cover/1679316037517.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2344, '127.0.0.1', '2023-03-20 20:52:11.119731', '/upload/cover/1679316037517.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2345, '127.0.0.1', '2023-03-20 20:53:10.749949', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2346, '127.0.0.1', '2023-03-20 20:53:18.615849', '/myapp/admin/classification/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (2347, '127.0.0.1', '2023-03-20 20:53:18.666659', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2348, '127.0.0.1', '2023-03-20 20:53:20.237095', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2349, '127.0.0.1', '2023-03-20 20:53:50.846731', '/myapp/admin/tag/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (2350, '127.0.0.1', '2023-03-20 20:53:50.914093', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2351, '127.0.0.1', '2023-03-20 20:54:00.732462', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2352, '127.0.0.1', '2023-03-20 20:54:00.737638', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2353, '127.0.0.1', '2023-03-20 20:54:00.740659', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2354, '127.0.0.1', '2023-03-20 20:54:01.161680', '/myapp/index/thing/list', 'GET', NULL, '437');
INSERT INTO `b_op_log` VALUES (2355, '127.0.0.1', '2023-03-20 20:54:01.199806', '/upload/cover/1679316666891.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2356, '127.0.0.1', '2023-03-20 20:54:01.202067', '/upload/cover/1679316637185.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2357, '127.0.0.1', '2023-03-20 20:54:01.204064', '/upload/cover/1679316637185.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2358, '127.0.0.1', '2023-03-20 20:54:01.207665', '/upload/cover/1679316637185.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2359, '127.0.0.1', '2023-03-20 20:54:01.209781', '/upload/cover/1679316637185.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2360, '127.0.0.1', '2023-03-20 20:54:01.217726', '/upload/cover/1679316637185.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2361, '127.0.0.1', '2023-03-20 20:54:01.234950', '/upload/cover/1679316453474.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2362, '127.0.0.1', '2023-03-20 20:54:01.237802', '/upload/cover/1679316037517.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2363, '127.0.0.1', '2023-03-20 20:54:01.236220', '/upload/cover/1679316513693.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2364, '127.0.0.1', '2023-03-20 20:54:01.240726', '/upload/cover/1679316484842.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2365, '127.0.0.1', '2023-03-20 20:54:01.243447', '/upload/cover/1679316422812.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2366, '127.0.0.1', '2023-03-20 20:54:01.247912', '/upload/cover/1679316072493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2367, '127.0.0.1', '2023-03-20 20:54:23.677387', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2368, '127.0.0.1', '2023-03-20 20:54:23.694093', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (2369, '127.0.0.1', '2023-03-20 20:54:23.732060', '/upload/cover/1679230989243.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2370, '127.0.0.1', '2023-03-20 20:54:32.973680', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2371, '127.0.0.1', '2023-03-20 20:54:32.991908', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2372, '127.0.0.1', '2023-03-20 20:54:33.016463', '/upload/cover/1679316605104.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2373, '127.0.0.1', '2023-03-20 20:54:43.118103', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (2374, '127.0.0.1', '2023-03-20 20:54:43.121379', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2375, '127.0.0.1', '2023-03-20 20:54:43.214099', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2376, '127.0.0.1', '2023-03-20 20:54:43.335296', '/myapp/index/notice/list_api', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (2377, '127.0.0.1', '2023-03-20 20:54:45.240192', '/myapp/index/thing/addWishUser', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (2378, '127.0.0.1', '2023-03-20 20:54:45.768726', '/myapp/index/thing/addCollectUser', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (2379, '127.0.0.1', '2023-03-20 20:55:26.626688', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2380, '127.0.0.1', '2023-03-20 20:55:26.652443', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (2381, '127.0.0.1', '2023-03-20 20:55:27.293400', '/myapp/index/comment/list', 'GET', NULL, '685');
INSERT INTO `b_op_log` VALUES (2382, '127.0.0.1', '2023-03-20 20:55:27.810132', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2383, '127.0.0.1', '2023-03-20 20:55:27.824278', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (2384, '127.0.0.1', '2023-03-20 20:55:27.882274', '/upload/cover/1679316605104.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2385, '127.0.0.1', '2023-03-20 20:55:27.933319', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2386, '127.0.0.1', '2023-03-20 20:55:28.075350', '/myapp/index/notice/list_api', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (2387, '127.0.0.1', '2023-03-20 20:55:33.457740', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2388, '127.0.0.1', '2023-03-20 20:55:33.459952', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2389, '127.0.0.1', '2023-03-20 20:55:33.464241', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (2390, '127.0.0.1', '2023-03-20 20:55:33.693394', '/myapp/index/thing/list', 'GET', NULL, '244');
INSERT INTO `b_op_log` VALUES (2391, '127.0.0.1', '2023-03-20 20:55:33.744661', '/upload/cover/1679316637185.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2392, '127.0.0.1', '2023-03-20 20:55:33.749797', '/upload/cover/1679316637185.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2393, '127.0.0.1', '2023-03-20 20:55:33.750821', '/upload/cover/1679316566135.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2394, '127.0.0.1', '2023-03-20 20:55:33.755689', '/upload/cover/1679316698087.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2395, '127.0.0.1', '2023-03-20 20:55:33.769315', '/upload/cover/1679316533369.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2396, '127.0.0.1', '2023-03-20 20:55:33.787574', '/upload/cover/1679316453474.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2397, '127.0.0.1', '2023-03-20 20:55:33.789868', '/upload/cover/1679316422812.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2398, '127.0.0.1', '2023-03-20 20:55:33.796131', '/upload/cover/1679316422812.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2399, '127.0.0.1', '2023-03-20 20:55:33.790221', '/upload/cover/1679316513693.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2400, '127.0.0.1', '2023-03-20 20:55:33.798334', '/upload/cover/1679316037517.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2401, '127.0.0.1', '2023-03-20 20:55:33.805487', '/upload/cover/1679316037517.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2402, '127.0.0.1', '2023-03-20 20:55:56.669359', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2403, '127.0.0.1', '2023-03-20 20:55:57.907263', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (2404, '127.0.0.1', '2023-03-20 20:56:09.784171', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (2405, '127.0.0.1', '2023-03-20 20:56:09.837531', '/upload/cover/1679315985852.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2406, '127.0.0.1', '2023-03-20 20:56:09.838520', '/upload/cover/1679315842977.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2407, '127.0.0.1', '2023-03-20 20:56:09.839474', '/upload/cover/1679315915467.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2408, '127.0.0.1', '2023-03-20 20:56:09.841816', '/upload/cover/1679315842977.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2409, '127.0.0.1', '2023-03-20 20:56:09.845749', '/upload/cover/1679315915467.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2410, '127.0.0.1', '2023-03-20 20:56:09.846277', '/upload/cover/1679315803245.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2411, '127.0.0.1', '2023-03-20 20:56:09.865635', '/upload/cover/1679315761797.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2412, '127.0.0.1', '2023-03-20 20:56:09.866574', '/upload/cover/1679315749022.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2413, '127.0.0.1', '2023-03-20 20:56:11.989801', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (2414, '127.0.0.1', '2023-03-20 20:56:13.167406', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (2415, '127.0.0.1', '2023-03-20 20:56:14.349928', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (2416, '127.0.0.1', '2023-03-20 20:56:14.409227', '/upload/cover/1679231221940.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2417, '127.0.0.1', '2023-03-20 20:56:14.410292', '/upload/cover/1679231184020.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2418, '127.0.0.1', '2023-03-20 20:56:14.410780', '/upload/cover/1679231052822.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2419, '127.0.0.1', '2023-03-20 20:56:14.411077', '/upload/cover/1679231151929.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2420, '127.0.0.1', '2023-03-20 20:56:14.429597', '/upload/cover/1679231052822.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2421, '127.0.0.1', '2023-03-20 20:56:14.430176', '/upload/cover/1679231084420.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2422, '127.0.0.1', '2023-03-20 20:56:14.438384', '/upload/cover/1679231022326.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2423, '127.0.0.1', '2023-03-20 20:56:15.745223', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (2424, '127.0.0.1', '2023-03-20 20:56:16.730811', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2425, '127.0.0.1', '2023-03-20 20:56:34.524079', '/myapp/admin/overview/count', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (2426, '127.0.0.1', '2023-03-20 20:56:46.526192', '/myapp/admin/order/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (2427, '127.0.0.1', '2023-03-20 20:56:52.429740', '/myapp/admin/thing/list', 'GET', NULL, '471');
INSERT INTO `b_op_log` VALUES (2428, '127.0.0.1', '2023-03-20 20:56:53.529612', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2429, '127.0.0.1', '2023-03-20 20:56:54.831207', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (2430, '127.0.0.1', '2023-03-20 20:56:56.062488', '/myapp/admin/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (2431, '127.0.0.1', '2023-03-20 20:56:57.358855', '/myapp/admin/user/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (2432, '127.0.0.1', '2023-03-20 20:57:05.037173', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1047');
INSERT INTO `b_op_log` VALUES (2433, '127.0.0.1', '2023-03-20 20:57:20.711456', '/myapp/admin/order/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (2434, '127.0.0.1', '2023-03-20 20:57:22.934675', '/myapp/admin/overview/count', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (2435, '127.0.0.1', '2023-03-20 20:57:26.623161', '/myapp/admin/opLog/list', 'GET', NULL, '252');
INSERT INTO `b_op_log` VALUES (2436, '127.0.0.1', '2023-03-20 20:57:39.371809', '/myapp/admin/order/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (2437, '127.0.0.1', '2023-03-20 20:57:42.086823', '/myapp/admin/overview/count', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (2438, '127.0.0.1', '2023-03-20 20:58:11.050534', '/myapp/admin/user/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2439, '127.0.0.1', '2023-03-20 20:58:49.848474', '/myapp/admin/user/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (2440, '127.0.0.1', '2023-03-20 20:58:49.918605', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2441, '127.0.0.1', '2023-03-20 21:06:11.691174', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2442, '127.0.0.1', '2023-03-21 20:47:12.234296', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (2443, '127.0.0.1', '2023-03-21 20:47:12.238790', '/myapp/index/thing/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (2444, '127.0.0.1', '2023-03-21 20:47:12.240867', '/myapp/index/thing/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (2445, '127.0.0.1', '2023-03-21 20:47:12.635862', '/myapp/index/thing/list', 'GET', NULL, '483');
INSERT INTO `b_op_log` VALUES (2446, '127.0.0.1', '2023-03-21 20:47:12.673099', '/upload/cover/1679316698087.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2447, '127.0.0.1', '2023-03-21 20:47:12.674280', '/upload/cover/1679316666891.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2448, '127.0.0.1', '2023-03-21 20:47:12.691580', '/upload/cover/1679316637185.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2449, '127.0.0.1', '2023-03-21 20:47:12.692146', '/upload/cover/1679316605104.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2450, '127.0.0.1', '2023-03-21 20:47:12.708690', '/upload/cover/1679316566135.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2451, '127.0.0.1', '2023-03-21 20:47:12.717008', '/upload/cover/1679316533369.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2452, '127.0.0.1', '2023-03-21 20:47:12.724721', '/upload/cover/1679316513693.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2453, '127.0.0.1', '2023-03-21 20:47:12.725164', '/upload/cover/1679316484842.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2454, '127.0.0.1', '2023-03-21 20:47:12.736249', '/upload/cover/1679316453474.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2455, '127.0.0.1', '2023-03-21 20:47:12.740943', '/upload/cover/1679316422812.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2456, '127.0.0.1', '2023-03-21 20:47:13.237660', '/upload/cover/1679316072493.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2457, '127.0.0.1', '2023-03-21 20:47:13.238874', '/upload/cover/1679316037517.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2458, '127.0.0.1', '2023-03-21 20:47:15.236045', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2459, '127.0.0.1', '2023-03-21 20:47:19.193139', '/myapp/admin/thing/list', 'GET', NULL, '522');
INSERT INTO `b_op_log` VALUES (2460, '127.0.0.1', '2023-03-21 20:50:18.256389', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2461, '127.0.0.1', '2023-03-21 20:50:18.259083', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (2462, '127.0.0.1', '2023-03-21 20:50:59.079094', '/myapp/admin/thing/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (2463, '127.0.0.1', '2023-03-21 20:50:59.618041', '/myapp/admin/thing/list', 'GET', NULL, '485');
INSERT INTO `b_op_log` VALUES (2464, '127.0.0.1', '2023-03-21 20:51:00.623753', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2465, '127.0.0.1', '2023-03-21 20:51:00.625965', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2466, '127.0.0.1', '2023-03-21 20:51:19.618007', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (2467, '127.0.0.1', '2023-03-21 20:51:26.631044', '/myapp/admin/tag/create', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (2468, '127.0.0.1', '2023-03-21 20:51:26.685591', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2469, '127.0.0.1', '2023-03-21 20:51:30.054493', '/myapp/admin/order/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (2470, '127.0.0.1', '2023-03-21 20:51:31.153689', '/myapp/admin/thing/list', 'GET', NULL, '516');
INSERT INTO `b_op_log` VALUES (2471, '127.0.0.1', '2023-03-21 20:51:32.173028', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2472, '127.0.0.1', '2023-03-21 20:51:32.176353', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2473, '127.0.0.1', '2023-03-21 20:51:55.249162', '/myapp/admin/thing/create', 'POST', NULL, '101');
INSERT INTO `b_op_log` VALUES (2474, '127.0.0.1', '2023-03-21 20:51:56.146496', '/myapp/admin/thing/list', 'GET', NULL, '790');
INSERT INTO `b_op_log` VALUES (2475, '127.0.0.1', '2023-03-21 20:51:57.878652', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2476, '127.0.0.1', '2023-03-21 20:51:57.880821', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2477, '127.0.0.1', '2023-03-21 20:52:32.848025', '/myapp/admin/thing/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (2478, '127.0.0.1', '2023-03-21 20:52:33.380287', '/myapp/admin/thing/list', 'GET', NULL, '487');
INSERT INTO `b_op_log` VALUES (2479, '127.0.0.1', '2023-03-21 20:52:34.544632', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2480, '127.0.0.1', '2023-03-21 20:52:34.546758', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2481, '127.0.0.1', '2023-03-21 20:53:08.511973', '/myapp/admin/thing/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (2482, '127.0.0.1', '2023-03-21 20:53:09.072568', '/myapp/admin/thing/list', 'GET', NULL, '513');
INSERT INTO `b_op_log` VALUES (2483, '127.0.0.1', '2023-03-21 20:53:10.009022', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2484, '127.0.0.1', '2023-03-21 20:53:10.013762', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2485, '127.0.0.1', '2023-03-21 20:53:44.005821', '/myapp/admin/thing/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (2486, '127.0.0.1', '2023-03-21 20:53:44.710833', '/myapp/admin/thing/list', 'GET', NULL, '659');
INSERT INTO `b_op_log` VALUES (2487, '127.0.0.1', '2023-03-21 20:53:55.571744', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2488, '127.0.0.1', '2023-03-21 20:53:55.573394', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2489, '127.0.0.1', '2023-03-21 20:54:40.429631', '/myapp/admin/thing/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (2490, '127.0.0.1', '2023-03-21 20:54:41.002028', '/myapp/admin/thing/list', 'GET', NULL, '509');
INSERT INTO `b_op_log` VALUES (2491, '127.0.0.1', '2023-03-21 20:54:41.866338', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2492, '127.0.0.1', '2023-03-21 20:54:41.867951', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2493, '127.0.0.1', '2023-03-21 20:55:24.432128', '/myapp/admin/thing/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (2494, '127.0.0.1', '2023-03-21 20:55:25.006043', '/myapp/admin/thing/list', 'GET', NULL, '529');
INSERT INTO `b_op_log` VALUES (2495, '127.0.0.1', '2023-03-21 20:55:27.595952', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2496, '127.0.0.1', '2023-03-21 20:55:27.597928', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2497, '127.0.0.1', '2023-03-21 20:56:06.295439', '/myapp/admin/thing/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (2498, '127.0.0.1', '2023-03-21 20:56:06.886283', '/myapp/admin/thing/list', 'GET', NULL, '531');
INSERT INTO `b_op_log` VALUES (2499, '127.0.0.1', '2023-03-21 20:56:07.485089', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2500, '127.0.0.1', '2023-03-21 20:56:07.488486', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2501, '127.0.0.1', '2023-03-21 20:56:39.006287', '/myapp/admin/thing/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (2502, '127.0.0.1', '2023-03-21 20:56:39.595984', '/myapp/admin/thing/list', 'GET', NULL, '527');
INSERT INTO `b_op_log` VALUES (2503, '127.0.0.1', '2023-03-21 20:56:40.365891', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2504, '127.0.0.1', '2023-03-21 20:56:40.368309', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2505, '127.0.0.1', '2023-03-21 20:57:15.114699', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (2506, '127.0.0.1', '2023-03-21 20:57:15.677796', '/myapp/admin/thing/list', 'GET', NULL, '506');
INSERT INTO `b_op_log` VALUES (2507, '127.0.0.1', '2023-03-21 20:57:21.673768', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2508, '127.0.0.1', '2023-03-21 20:57:21.677012', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2509, '127.0.0.1', '2023-03-21 20:57:21.692026', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (2510, '127.0.0.1', '2023-03-21 20:57:22.126691', '/myapp/index/thing/list', 'GET', NULL, '464');
INSERT INTO `b_op_log` VALUES (2511, '127.0.0.1', '2023-03-21 20:57:22.187998', '/upload/cover/1679403370669.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2512, '127.0.0.1', '2023-03-21 20:57:22.192050', '/upload/cover/1679403331202.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2513, '127.0.0.1', '2023-03-21 20:57:22.193918', '/upload/cover/1679403331202.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2514, '127.0.0.1', '2023-03-21 20:57:22.201386', '/upload/cover/1679403239138.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2515, '127.0.0.1', '2023-03-21 20:57:22.202336', '/upload/cover/1679403239138.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2516, '127.0.0.1', '2023-03-21 20:57:22.203533', '/upload/cover/1679403193320.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2517, '127.0.0.1', '2023-03-21 20:57:22.221725', '/upload/cover/1679403034316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2518, '127.0.0.1', '2023-03-21 20:57:22.222575', '/upload/cover/1679403034316.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2519, '127.0.0.1', '2023-03-21 20:57:22.224923', '/upload/cover/1679403158073.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2520, '127.0.0.1', '2023-03-21 20:57:22.225481', '/upload/cover/1679403034316.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2521, '127.0.0.1', '2023-03-21 20:57:23.459504', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (2522, '127.0.0.1', '2023-03-21 20:57:26.763645', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (2523, '127.0.0.1', '2023-03-21 20:57:27.894645', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (2524, '127.0.0.1', '2023-03-21 20:57:27.951686', '/upload/cover/1679315985852.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2525, '127.0.0.1', '2023-03-21 20:57:27.952619', '/upload/cover/1679315883620.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2526, '127.0.0.1', '2023-03-21 20:57:27.953116', '/upload/cover/1679315954931.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2527, '127.0.0.1', '2023-03-21 20:57:27.957668', '/upload/cover/1679315883620.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2528, '127.0.0.1', '2023-03-21 20:57:27.961204', '/upload/cover/1679315883620.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2529, '127.0.0.1', '2023-03-21 20:57:27.966153', '/upload/cover/1679315842977.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2530, '127.0.0.1', '2023-03-21 20:57:27.986007', '/upload/cover/1679315761797.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2531, '127.0.0.1', '2023-03-21 20:57:27.986427', '/upload/cover/1679315749022.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2532, '127.0.0.1', '2023-03-21 20:57:29.242526', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (2533, '127.0.0.1', '2023-03-21 20:57:29.298805', '/upload/cover/1679231184020.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2534, '127.0.0.1', '2023-03-21 20:57:29.301716', '/upload/cover/1679231221940.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2535, '127.0.0.1', '2023-03-21 20:57:29.302573', '/upload/cover/1679231151929.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2536, '127.0.0.1', '2023-03-21 20:57:29.305688', '/upload/cover/1679231084420.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2537, '127.0.0.1', '2023-03-21 20:57:29.305963', '/upload/cover/1679231084420.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2538, '127.0.0.1', '2023-03-21 20:57:29.307889', '/upload/cover/1679231052822.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2539, '127.0.0.1', '2023-03-21 20:57:29.343871', '/upload/cover/1679231022326.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2540, '127.0.0.1', '2023-03-21 20:57:29.345480', '/upload/cover/1679230989243.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2541, '127.0.0.1', '2023-03-21 20:57:29.346132', '/upload/cover/1679056479437.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2542, '127.0.0.1', '2023-03-21 20:57:29.348171', '/upload/cover/1679230935716.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2543, '127.0.0.1', '2023-03-21 20:57:29.350253', '/upload/cover/1679230894621.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2544, '127.0.0.1', '2023-03-21 20:57:32.947500', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (2545, '127.0.0.1', '2023-03-21 20:58:19.761065', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2546, '127.0.0.1', '2023-03-21 20:58:19.775314', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (2547, '127.0.0.1', '2023-03-21 20:58:48.414526', '/myapp/admin/thing/create', 'POST', NULL, '95');
INSERT INTO `b_op_log` VALUES (2548, '127.0.0.1', '2023-03-21 20:58:49.467584', '/myapp/admin/thing/list', 'GET', NULL, '876');
INSERT INTO `b_op_log` VALUES (2549, '127.0.0.1', '2023-03-21 21:00:06.052529', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2550, '127.0.0.1', '2023-03-21 21:00:06.058432', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2551, '127.0.0.1', '2023-03-21 21:00:43.683879', '/myapp/admin/thing/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (2552, '127.0.0.1', '2023-03-21 21:00:44.279062', '/myapp/admin/thing/list', 'GET', NULL, '546');
INSERT INTO `b_op_log` VALUES (2553, '127.0.0.1', '2023-03-21 21:00:48.359481', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2554, '127.0.0.1', '2023-03-21 21:00:48.356485', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2555, '127.0.0.1', '2023-03-21 21:00:48.380289', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (2556, '127.0.0.1', '2023-03-21 21:00:48.782837', '/myapp/index/thing/list', 'GET', NULL, '434');
INSERT INTO `b_op_log` VALUES (2557, '127.0.0.1', '2023-03-21 21:00:48.895953', '/upload/cover/1679403239138.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2558, '127.0.0.1', '2023-03-21 21:00:48.897039', '/upload/cover/1679403239138.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2559, '127.0.0.1', '2023-03-21 21:00:48.898612', '/upload/cover/1679403239138.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2560, '127.0.0.1', '2023-03-21 21:00:48.899221', '/upload/cover/1679403239138.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2561, '127.0.0.1', '2023-03-21 21:00:48.900610', '/upload/cover/1679403239138.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2562, '127.0.0.1', '2023-03-21 21:00:48.910259', '/upload/cover/1679403239138.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2563, '127.0.0.1', '2023-03-21 21:00:48.922358', '/upload/cover/1679403158073.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2564, '127.0.0.1', '2023-03-21 21:00:48.923058', '/upload/cover/1679403034316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2565, '127.0.0.1', '2023-03-21 21:00:48.924194', '/upload/cover/1679403138846.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2566, '127.0.0.1', '2023-03-21 21:00:48.924683', '/upload/cover/1679403034316.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2567, '127.0.0.1', '2023-03-21 21:00:49.192727', '/upload/cover/1679403503106.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2568, '127.0.0.1', '2023-03-21 21:00:49.194333', '/upload/cover/1679403503106.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2569, '127.0.0.1', '2023-03-21 21:00:52.961096', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (2570, '127.0.0.1', '2023-03-21 21:00:54.146172', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (2571, '127.0.0.1', '2023-03-21 21:00:55.512998', '/myapp/index/thing/list', 'GET', NULL, '256');
INSERT INTO `b_op_log` VALUES (2572, '127.0.0.1', '2023-03-21 21:01:33.620657', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2573, '127.0.0.1', '2023-03-21 21:01:33.625950', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2574, '127.0.0.1', '2023-03-21 21:02:11.383260', '/myapp/admin/thing/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (2575, '127.0.0.1', '2023-03-21 21:02:12.005862', '/myapp/admin/thing/list', 'GET', NULL, '559');
INSERT INTO `b_op_log` VALUES (2576, '127.0.0.1', '2023-03-21 21:02:13.125237', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2577, '127.0.0.1', '2023-03-21 21:02:13.127711', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2578, '127.0.0.1', '2023-03-21 21:02:52.472027', '/myapp/admin/thing/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (2579, '127.0.0.1', '2023-03-21 21:02:53.105154', '/myapp/admin/thing/list', 'GET', NULL, '569');
INSERT INTO `b_op_log` VALUES (2580, '127.0.0.1', '2023-03-21 21:02:56.506292', '/myapp/index/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2581, '127.0.0.1', '2023-03-21 21:02:56.510600', '/myapp/index/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2582, '127.0.0.1', '2023-03-21 21:02:56.513862', '/myapp/index/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2583, '127.0.0.1', '2023-03-21 21:02:57.011462', '/myapp/index/tag/list', 'GET', NULL, '518');
INSERT INTO `b_op_log` VALUES (2584, '127.0.0.1', '2023-03-21 21:02:57.128732', '/upload/cover/1679403331202.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2585, '127.0.0.1', '2023-03-21 21:02:57.129522', '/upload/cover/1679403503106.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2586, '127.0.0.1', '2023-03-21 21:02:57.130062', '/upload/cover/1679403370669.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2587, '127.0.0.1', '2023-03-21 21:02:57.131450', '/upload/cover/1679403370669.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2588, '127.0.0.1', '2023-03-21 21:02:57.132100', '/upload/cover/1679403331202.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2589, '127.0.0.1', '2023-03-21 21:02:57.135767', '/upload/cover/1679403370669.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2590, '127.0.0.1', '2023-03-21 21:02:57.156921', '/upload/cover/1679403158073.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2591, '127.0.0.1', '2023-03-21 21:02:57.157223', '/upload/cover/1679403158073.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2592, '127.0.0.1', '2023-03-21 21:02:57.157608', '/upload/cover/1679403158073.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2593, '127.0.0.1', '2023-03-21 21:02:57.158044', '/upload/cover/1679403193320.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2594, '127.0.0.1', '2023-03-21 21:02:57.206161', '/upload/cover/1679403697740.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2595, '127.0.0.1', '2023-03-21 21:02:57.843867', '/upload/cover/1679403736341.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2596, '127.0.0.1', '2023-03-21 21:03:05.646115', '/myapp/index/thing/list', 'GET', NULL, '269');
INSERT INTO `b_op_log` VALUES (2597, '127.0.0.1', '2023-03-21 21:03:07.924499', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (2598, '127.0.0.1', '2023-03-21 21:03:07.951922', '/upload/cover/1679403102225.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2599, '127.0.0.1', '2023-03-21 21:03:07.952756', '/upload/cover/1679403034316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2600, '127.0.0.1', '2023-03-21 21:03:08.943333', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (2601, '127.0.0.1', '2023-03-21 21:03:10.097441', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (2602, '127.0.0.1', '2023-03-21 21:03:11.433873', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (2603, '127.0.0.1', '2023-03-21 21:03:11.498386', '/upload/cover/1679230641879.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2604, '127.0.0.1', '2023-03-21 21:03:11.498923', '/upload/cover/1679230586243.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2605, '127.0.0.1', '2023-03-21 21:03:11.499689', '/upload/cover/1679230364390.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2606, '127.0.0.1', '2023-03-21 21:03:11.500620', '/upload/cover/1679230092657.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2607, '127.0.0.1', '2023-03-21 21:03:11.501740', '/upload/cover/1679230147996.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2608, '127.0.0.1', '2023-03-21 21:03:11.505637', '/upload/cover/1679230092657.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2609, '127.0.0.1', '2023-03-21 21:03:11.533670', '/upload/cover/1679230045590.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2610, '127.0.0.1', '2023-03-21 21:03:11.534376', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2611, '127.0.0.1', '2023-03-21 21:03:11.536091', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2612, '127.0.0.1', '2023-03-21 21:03:11.542285', '/upload/cover/1679229853940.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2613, '127.0.0.1', '2023-03-21 21:03:11.545776', '/upload/cover/1679229963230.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2614, '127.0.0.1', '2023-03-21 21:03:12.430311', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (2615, '127.0.0.1', '2023-03-21 21:03:14.046957', '/myapp/index/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (2616, '127.0.0.1', '2023-03-21 21:03:14.109840', '/upload/cover/1679232543082.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2617, '127.0.0.1', '2023-03-21 21:03:14.110703', '/upload/cover/1679232587234.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2618, '127.0.0.1', '2023-03-21 21:03:14.112315', '/upload/cover/1679232587234.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2619, '127.0.0.1', '2023-03-21 21:03:14.116832', '/upload/cover/1679232587234.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2620, '127.0.0.1', '2023-03-21 21:03:14.118975', '/upload/cover/1679232514230.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2621, '127.0.0.1', '2023-03-21 21:03:14.128079', '/upload/cover/1679232587234.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2622, '127.0.0.1', '2023-03-21 21:03:14.164277', '/upload/cover/1679231465845.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2623, '127.0.0.1', '2023-03-21 21:03:14.165835', '/upload/cover/1679232717023.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2624, '127.0.0.1', '2023-03-21 21:03:14.167934', '/upload/cover/1679232418133.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2625, '127.0.0.1', '2023-03-21 21:03:14.177151', '/upload/cover/1679232756075.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2626, '127.0.0.1', '2023-03-21 21:03:14.180750', '/upload/cover/1679232756075.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2627, '127.0.0.1', '2023-03-21 21:03:14.186151', '/upload/cover/1679232480948.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2628, '127.0.0.1', '2023-03-21 21:03:15.377983', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (2629, '127.0.0.1', '2023-03-21 21:03:15.432757', '/upload/cover/1679315310720.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2630, '127.0.0.1', '2023-03-21 21:03:15.433226', '/upload/cover/1679315310720.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2631, '127.0.0.1', '2023-03-21 21:03:15.433750', '/upload/cover/1679315478327.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2632, '127.0.0.1', '2023-03-21 21:03:15.434026', '/upload/cover/1679315310720.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2633, '127.0.0.1', '2023-03-21 21:03:15.433503', '/upload/cover/1679315310720.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2634, '127.0.0.1', '2023-03-21 21:03:15.452097', '/upload/cover/1679315310720.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2635, '127.0.0.1', '2023-03-21 21:03:15.480351', '/upload/cover/1679315276060.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2636, '127.0.0.1', '2023-03-21 21:03:15.481103', '/upload/cover/1679315191893.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2637, '127.0.0.1', '2023-03-21 21:03:15.481474', '/upload/cover/1679315151478.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2638, '127.0.0.1', '2023-03-21 21:03:15.482140', '/upload/cover/1679315191893.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2639, '127.0.0.1', '2023-03-21 21:03:17.016089', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (2640, '127.0.0.1', '2023-03-21 21:03:18.140947', '/myapp/index/thing/list', 'GET', NULL, '276');
INSERT INTO `b_op_log` VALUES (2641, '127.0.0.1', '2023-03-21 21:03:20.455889', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (2642, '127.0.0.1', '2023-03-21 21:03:21.550133', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (2643, '127.0.0.1', '2023-03-21 21:03:22.412973', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (2644, '127.0.0.1', '2023-03-21 21:03:23.676390', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (2645, '127.0.0.1', '2023-03-21 21:03:25.377147', '/myapp/index/thing/list', 'GET', NULL, '283');
INSERT INTO `b_op_log` VALUES (2646, '127.0.0.1', '2023-03-21 21:03:37.803006', '/myapp/admin/overview/count', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (2647, '127.0.0.1', '2023-03-21 21:06:30.047171', '/myapp/index/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (2648, '127.0.0.1', '2023-03-21 21:06:30.080432', '/upload/cover/1679403034316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2649, '127.0.0.1', '2023-03-21 21:06:30.081009', '/upload/cover/1679403102225.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2650, '127.0.0.1', '2023-03-21 21:06:31.322172', '/myapp/index/thing/list', 'GET', NULL, '300');
INSERT INTO `b_op_log` VALUES (2651, '127.0.0.1', '2023-03-21 21:06:31.378015', '/upload/cover/1679403697740.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2652, '127.0.0.1', '2023-03-21 21:06:31.381893', '/upload/cover/1679403736341.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2653, '127.0.0.1', '2023-03-21 21:06:31.379334', '/upload/cover/1679403736341.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2654, '127.0.0.1', '2023-03-21 21:06:31.391558', '/upload/cover/1679403631942.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2655, '127.0.0.1', '2023-03-22 20:27:43.962996', '/myapp/admin/tag/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (2656, '127.0.0.1', '2023-03-22 20:27:43.966392', '/myapp/admin/tag/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (2657, '127.0.0.1', '2023-03-22 20:29:00.329352', '/myapp/admin/thing/create', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (2658, '127.0.0.1', '2023-03-22 20:29:00.992052', '/myapp/admin/thing/list', 'GET', NULL, '608');
INSERT INTO `b_op_log` VALUES (2659, '127.0.0.1', '2023-03-22 20:29:05.152806', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2660, '127.0.0.1', '2023-03-22 20:29:05.155322', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2661, '127.0.0.1', '2023-03-22 20:29:05.186310', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2662, '127.0.0.1', '2023-03-22 20:29:05.524056', '/myapp/index/thing/list', 'GET', NULL, '345');
INSERT INTO `b_op_log` VALUES (2663, '127.0.0.1', '2023-03-22 20:29:05.588862', '/upload/cover/1679488092121.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2664, '127.0.0.1', '2023-03-22 20:29:05.594965', '/upload/cover/1679403736341.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2665, '127.0.0.1', '2023-03-22 20:29:05.595506', '/upload/cover/1679403697740.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2666, '127.0.0.1', '2023-03-22 20:29:05.603799', '/upload/cover/1679403631942.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2667, '127.0.0.1', '2023-03-22 20:29:05.606720', '/upload/cover/1679403403756.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2668, '127.0.0.1', '2023-03-22 20:29:05.619927', '/upload/cover/1679403503106.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2669, '127.0.0.1', '2023-03-22 20:29:05.627775', '/upload/cover/1679403370669.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2670, '127.0.0.1', '2023-03-22 20:29:05.634651', '/upload/cover/1679403285129.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2671, '127.0.0.1', '2023-03-22 20:29:05.644481', '/upload/cover/1679403285129.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2672, '127.0.0.1', '2023-03-22 20:29:05.645758', '/upload/cover/1679403239138.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2673, '127.0.0.1', '2023-03-22 20:29:05.647222', '/upload/cover/1679403193320.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2674, '127.0.0.1', '2023-03-22 20:29:05.649861', '/upload/cover/1679403158073.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2675, '127.0.0.1', '2023-03-22 20:29:08.809618', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2676, '127.0.0.1', '2023-03-22 20:29:08.827014', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (2677, '127.0.0.1', '2023-03-22 20:29:08.942144', '/upload/cover/1679488092121.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2678, '127.0.0.1', '2023-03-22 20:29:09.020663', '/myapp/index/notice/list_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2679, '127.0.0.1', '2023-03-22 20:29:09.251592', '/myapp/index/notice/list_api', 'GET', NULL, '247');
INSERT INTO `b_op_log` VALUES (2680, '127.0.0.1', '2023-03-22 20:29:09.291364', '/upload/cover/1679232717023.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2681, '127.0.0.1', '2023-03-22 20:29:09.291636', '/upload/cover/1679232717023.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2682, '127.0.0.1', '2023-03-22 20:29:09.292765', '/upload/cover/1679232717023.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2683, '127.0.0.1', '2023-03-22 20:29:09.295523', '/upload/cover/1679232717023.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2684, '127.0.0.1', '2023-03-22 20:29:09.296342', '/upload/cover/1679232717023.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2685, '127.0.0.1', '2023-03-22 20:29:09.296702', '/upload/cover/1679232717023.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2686, '127.0.0.1', '2023-03-22 20:29:40.515063', '/myapp/index/thing/addWishUser', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (2687, '127.0.0.1', '2023-03-22 20:29:41.173094', '/myapp/index/thing/addCollectUser', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (2688, '127.0.0.1', '2023-03-22 20:29:47.459052', '/myapp/index/comment/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (2689, '127.0.0.1', '2023-03-22 20:29:47.478356', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2690, '127.0.0.1', '2023-03-22 20:30:14.217939', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2691, '127.0.0.1', '2023-03-22 20:30:14.220665', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2692, '127.0.0.1', '2023-03-22 20:30:35.311622', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (2693, '127.0.0.1', '2023-03-22 20:30:35.911242', '/myapp/admin/thing/list', 'GET', NULL, '547');
INSERT INTO `b_op_log` VALUES (2694, '127.0.0.1', '2023-03-22 20:31:52.096919', '/myapp/admin/overview/count', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (2695, '127.0.0.1', '2023-03-22 20:43:23.196561', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2696, '127.0.0.1', '2023-03-22 20:43:23.204350', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2697, '127.0.0.1', '2023-03-22 20:43:23.210270', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (2698, '127.0.0.1', '2023-03-22 20:43:23.516836', '/myapp/index/thing/list', 'GET', NULL, '334');
INSERT INTO `b_op_log` VALUES (2699, '127.0.0.1', '2023-03-22 20:43:23.548465', '/upload/cover/1679488092121.jpeg', 'GET', NULL, '1');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (37, '7', '2023-03-19 20:28:22.413968', NULL, 5, 3, 1, '1679228902408', '河北省xxx路xxx号', '刘德华', '15877776666', NULL);
INSERT INTO `b_order` VALUES (40, '2', '2024-08-03 11:21:08.034810', NULL, 81, 5, 1, '1722655268024', '人民路99', '刘德华', '333333', NULL);

-- ----------------------------
-- Table structure for b_order_log
-- ----------------------------
DROP TABLE IF EXISTS `b_order_log`;
CREATE TABLE `b_order_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_log_thing_id_7306f624_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_log_user_id_1003e839_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_log_thing_id_7306f624_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_log_user_id_1003e839_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_classification_id_52591cc9_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_record_user_id_7e5958b0_fk_b_user_id`(`user_id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_classification_id_52591cc9_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_user_id_7e5958b0_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------
INSERT INTO `b_tag` VALUES (1, '户外', '2023-03-11 17:51:23.675901');
INSERT INTO `b_tag` VALUES (2, '汽车', '2023-03-11 17:51:33.103756');
INSERT INTO `b_tag` VALUES (3, '肯德基', '2023-03-11 18:08:49.502211');
INSERT INTO `b_tag` VALUES (4, '烧烤', '2023-03-11 18:08:55.345426');
INSERT INTO `b_tag` VALUES (5, '潮牌', '2023-03-11 18:09:02.663945');
INSERT INTO `b_tag` VALUES (6, '儿童', '2023-03-19 20:39:34.262960');
INSERT INTO `b_tag` VALUES (7, '编程', '2023-03-19 21:02:40.207798');
INSERT INTO `b_tag` VALUES (8, '科技', '2023-03-19 21:02:44.964374');
INSERT INTO `b_tag` VALUES (9, '吃货', '2023-03-19 21:19:05.366488');
INSERT INTO `b_tag` VALUES (10, '男装', '2023-03-20 20:22:58.402062');
INSERT INTO `b_tag` VALUES (11, '家电', '2023-03-20 20:35:11.294022');
INSERT INTO `b_tag` VALUES (12, '配件', '2023-03-20 20:45:32.139101');
INSERT INTO `b_tag` VALUES (13, '无线', '2023-03-20 20:53:50.843283');
INSERT INTO `b_tag` VALUES (14, '文具', '2023-03-21 20:51:26.627392');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repertory` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '西瓜呜呜呜哈哈哈', 'cover/1679058043365.jpeg', '打算收拾收拾宿舍', '330', '0', 30, 0, '2023-03-11 18:05:25.130644', 0, 0, 1, 1, 2);
INSERT INTO `b_thing` VALUES (2, '测试商品', 'cover/1679056479437.jpeg', '看看姐姐', '9', '0', 90, 0, '2023-03-17 20:34:49.160642', 0, 0, 0, 0, 3);
INSERT INTO `b_thing` VALUES (3, '古古怪怪哈哈哈哈', 'cover/1679232756075.jpeg', '哈哈哈哈哈哈哈哈哈哈哈刚刚发的第三十四撒身上', '9', '0', 98, 0, '2023-03-17 20:35:39.100000', 0, 0, 0, 0, 2);
INSERT INTO `b_thing` VALUES (4, '哈哈给哥', 'cover/1679232717023.jpeg', '饼干的诞生，背后的故事也同样充满着意外性，在 十九世纪五十年代的某一天，天空乌云密布，忽起狂风，使一艘出海勘察英国帆船触礁，被迫在法国比斯湾附近的一个荒岛上停泊，船员们虽死里逃生，但岛上没有任何食物亦是船员们重生后的又一个难题。百般无奈的他们只好等风停后再次登上那艘已经破烂不堪的船上搜刮粮食，但遗憾的是，船上储备的面粉、奶油、砂糖等等都已经泡在水里了，船员们毫无办法，只好将这一切几乎已经泡烂的东西带到岛上，待面团稍微烘干一点后，将它一点一点地撕下，捏成一个个小团，然后烤熟后分给大家吃。但让人感到意外的是，用此方法烤出来的东西竟是如此美味，酥松香脆，且饱腹感强，船员们因此也有了生存下去的希望。一段时间过后，船员们回到了英国，为了纪念此次脱险，他们再一次用这个方法做出来了同样的美味，并以海湾的名字命名这一份美味为 “比斯湾”，这就是饼干的英文名“ biscuit”的由来。\r\n\r\n然而在世界的另一边，饼干的英语被称为 “Cracker”，然而较为有趣的是，从美国市场流入中国广东来的 饼干，广东人却 称它为“克力架  ”，有人认为这是广东人为饼干营销而作出的“ 噱头 ”，不以为然，其实他们都错了。因为在美国英语里 ，饼干就叫Cracker，只是广东人按粤语音译为“克力架”。而法语饼干名称“Biscuit”在美国英语中是指“热食的软饼”，即可丽饼、华夫饼等等。\r\n\r\n\r\n时至今日，市面上的饼干产品已是多种多样，但总体而言分为两大类，分别是美国式的“薄而脆”和英国式的“厚而酥”，而近期流行的“披萨饼干”，也是采用西方披萨外形，增加水果元素，给传统饼干带来创新。', '8', '0', 3333, 0, '2023-03-17 20:36:14.478236', 0, 0, 1, 1, 2);
INSERT INTO `b_thing` VALUES (5, '哈哈哈', 'cover/1679058036014.jpeg', '哈哈哥哥', '98', '0', 2, 0, '2023-03-17 20:36:38.492528', 0, 0, 2, 2, 1);
INSERT INTO `b_thing` VALUES (6, '小红色敞篷车', 'cover/1679229610791.jpeg', '这款 Red 小跑车采用复古造型和高品质结构。 耐用的钢体、真正的橡胶轮胎和经典的加工提供了可靠的骑行体验,可持续使用多年。 工作转向帮助孩子在学习如何转向时发展运动技能。 舒适的座椅靠背增加了符合人体工程学的支撑力,橡胶轮胎提供安静、无刮痕的骑行体验。 Honking 喇叭增加了乐趣。最大承重能力为 42 磅。 适合 1-3 岁的儿童。', '211', '0', 1111, 0, '2023-03-19 20:40:53.393238', 0, 0, 0, 0, 4);
INSERT INTO `b_thing` VALUES (7, 'Little Tikes', 'cover/1679229780971.jpeg', 'Little Tikes 易得分篮球套装专为 18 个月至 5 岁的儿童设计,向孩子们介绍各种能力的篮球比赛和比赛。 高度可在 2.5 至 1.2 米之间进行六种设置,甚至是小的呼啦圈星星。 超大篮筐和儿童篮球确保轻松得分,帮助孩子发展手眼协调能力,同时提供合适的挑战水平。 在玩之前,将沙子添加到底座上以确保稳定性。', '211', '0', 213, 0, '2023-03-19 20:43:38.294480', 0, 0, 0, 0, 4);
INSERT INTO `b_thing` VALUES (8, '恐龙舒适轿车', 'cover/1679229853940.jpeg', '介绍 Little Tikes 舒适情侣恐龙。 几代，孩子们在玩具上 Cozy Coupee 的原始骑行者，一直在道路上冒险和想象力。 现在这款经典的儿童跑车拥有全新的外观 - 穿上我们的 Cozy Coupe Dino 骑行吧！ 有趣的恐龙造型让小孩子想象力奔跑，鼓励各种冒险。', '54', '0', 345, 0, '2023-03-19 20:44:33.546024', 0, 0, 0, 0, 4);
INSERT INTO `b_thing` VALUES (9, '婴儿摇铃玩具', 'cover/1679229963230.jpeg', '2003年，宝贝儿子呱呱坠地，让Ellen和Michael Diamant初尝为人父母的喜悦。像多数新晋爸妈一样，幸福之余面对琳琅满目的婴儿产品，要在很短的时间内选出满意的方案，他们也难免感到不知所措。\r\n为了觅得一款又美观又实用的尿布袋，他们各处寻找却一无所获，由此决定自力更生，踏上设计之途。\r\n将近十年来，Ellen和Michael先后推出数百种产品，始终致力于打造以“一切各得其所”为理念的解决方案，旨在为和自己一样忙碌的父母奉上贴心、实用而美观的产品。\r\n如今，SkipHop已成为婴儿用品行业备受赞誉的全球品牌，以创新、出色的设计和优异的品质赢得有要求的爸妈们的一致肯定。', '876', '0', 479, 0, '2023-03-19 20:46:23.734708', 0, 0, 0, 0, 4);
INSERT INTO `b_thing` VALUES (10, '贝适安busybuddy狗狗漏食玩具', 'cover/1679230045590.jpeg', '总公司创立于1988年，旗下的玩具品牌Busy Buddy，为一系列可塞零食抗***的创意玩具，每个玩具各有其独特的造型，相对的就有其专属的塞零食方式，可当成***赏玩具，也可以陪伴狗狗度过独处的时光，激发狗狗无线创意，同时消耗精力释放压力。天然无毒材质，结构密实。请依照狗狗体型及嗜咬程度选择正确的尺寸，才能让玩具发挥功效，并延长玩具的寿命。Busy Buddy曾因出色的设计和性能在国际宠物界多次***。目前产地是中国，产品主要在北美及欧洲销售。', '32', '0', 65, 0, '2023-03-19 20:47:33.732547', 0, 0, 0, 0, 4);
INSERT INTO `b_thing` VALUES (11, '大型犬拼图玩具', 'cover/1679230092657.jpeg', '大型犬拼图玩具 狗狗*拼图喂食器 用于智商训练和大脑刺激的玩具 用于*分配的狗狗丰富玩具 慢速喂食 心理刺激作为给小狗、中型、大型犬的礼物', '321', '0', 744, 0, '2023-03-19 20:48:34.733491', 0, 0, 0, 0, 4);
INSERT INTO `b_thing` VALUES (12, '侏罗纪世界 HLP16 玩具', 'cover/1679230147996.jpeg', '美国专业的婴幼儿学习用品品牌，旗下产品涉及针对不同年龄段儿童的学习点读机、学习桌、玩具等。 这款 探索工具箱，适用于2-5岁宝宝，学习拆卸和构建，培养宝宝工程师思维。', '56', '0', 432, 0, '2023-03-19 20:49:43.137552', 0, 0, 0, 0, 4);
INSERT INTO `b_thing` VALUES (13, '快乐小鲁班军事系列积木战斗机', 'cover/1679230364390.jpeg', '孩子到了适当的年纪，开始发挥他们无比的好奇心与想象力。这时候妈妈们就应该为孩子挑选一款适合的积木玩具。积木玩具是培养锻炼儿童智力最好的早教玩具。它提供更多的机会去发挥他们的想象力和创造力。孩子们在摆搭之前要想好自己搭些什么，要观察，思考选用什么样的块块才能体现他所构想的形象，因此对儿童的想象力，结构思维，造型能力是很好的锻炼，而且可发展孩子们的空间知觉，创造力，发挥儿童组织力和理解力，增强耐力及对建筑科学的兴趣。\r\n那么孩子玩积木玩具的有什么好处？ \r\n积木玩具可以锻炼宝宝以下能力：\r\n1、通过一些动作，处理视觉输入。良好的手触摸，眼睛协调能力也有利于一般身体协调和平衡。\r\n2、创造力和想象力的发挥能促进孩子们不断尝试一些新的想法，帮助他们逐渐形成一种创新思维和不断寻找解决问题的新方法。\r\n3、有利于发展“空间智慧”。孩子在玩具积木的过程中不停地研究布局、结构，这有利于他们掌握物体形状，辨别空间方位，把握二维和三维空间及其转换。\r\n4、帮助孩子们学会通过推理，来得出结论，包括数学，逻辑推理，科学分析等思维形式。在孩子们成长的过程中需要这种能力进行有效的统计，测量，推理，归纳，分析等。', '432', '0', 321, 0, '2023-03-19 20:54:05.429884', 0, 0, 0, 0, 4);
INSERT INTO `b_thing` VALUES (14, '烧烤和Groove Camper - 玩具套装带', 'cover/1679230543572.jpeg', '孩子到了适当的年纪，开始发挥他们无比的好奇心与想象力。这时候妈妈们就应该为孩子挑选一款适合的积木玩具。积木玩具是培养锻炼儿童智力最好的早教玩具。它提供更多的机会去发挥他们的想象力和创造力。孩子们在摆搭之前要想好自己搭些什么，要观察，思考选用什么样的块块才能体现他所构想的形象，因此对儿童的想象力，结构思维，造型能力是很好的锻炼，而且可发展孩子们的空间知觉，创造力，发挥儿童组织力和理解力，增强耐力及对建筑科学的兴趣。\r\n那么孩子玩积木玩具的有什么好处？ [1] \r\n积木玩具可以锻炼宝宝以下能力：\r\n1、通过一些动作，处理视觉输入。良好的手触摸，眼睛协调能力也有利于一般身体协调和平衡。\r\n2、创造力和想象力的发挥能促进孩子们不断尝试一些新的想法，帮助他们逐渐形成一种创新思维和不断寻找解决问题的新方法。\r\n3、有利于发展“空间智慧”。孩子在玩具积木的过程中不停地研究布局、结构，这有利于他们掌握物体形状，辨别空间方位，把握二维和三维空间及其转换。\r\n4、帮助孩子们学会通过推理，来得出结论，包括数学，逻辑推理，科学分析等思维形式。在孩子们成长的过程中需要这种能力进行有效的统计，测量，推理，归纳，分析等。', '32', '0', 211, 0, '2023-03-19 20:55:57.715472', 0, 0, 0, 0, 4);
INSERT INTO `b_thing` VALUES (15, '毛绒兔子幸运吉祥物玩具', 'cover/1679230586243.jpeg', '孩子到了适当的年纪，开始发挥他们无比的好奇心与想象力。这时候妈妈们就应该为孩子挑选一款适合的积木玩具。积木玩具是培养锻炼儿童智力最好的早教玩具。它提供更多的机会去发挥他们的想象力和创造力。孩子们在摆搭之前要想好自己搭些什么，要观察，思考选用什么样的块块才能体现他所构想的形象，因此对儿童的想象力，结构思维，造型能力是很好的锻炼，而且可发展孩子们的空间知觉，创造力，发挥儿童组织力和理解力，增强耐力及对建筑科学的兴趣。\r\n那么孩子玩积木玩具的有什么好处？ [1] \r\n积木玩具可以锻炼宝宝以下能力：\r\n1、通过一些动作，处理视觉输入。良好的手触摸，眼睛协调能力也有利于一般身体协调和平衡。\r\n2、创造力和想象力的发挥能促进孩子们不断尝试一些新的想法，帮助他们逐渐形成一种创新思维和不断寻找解决问题的新方法。\r\n3、有利于发展“空间智慧”。孩子在玩具积木的过程中不停地研究布局、结构，这有利于他们掌握物体形状，辨别空间方位，把握二维和三维空间及其转换。\r\n4、帮助孩子们学会通过推理，来得出结论，包括数学，逻辑推理，科学分析等思维形式。在孩子们成长的过程中需要这种能力进行有效的统计，测量，推理，归纳，分析等。', '887', '0', 987, 0, '2023-03-19 20:56:46.041419', 0, 0, 0, 0, 4);
INSERT INTO `b_thing` VALUES (16, '趣味水果计数器', 'cover/1679230641879.jpeg', '孩子到了适当的年纪，开始发挥他们无比的好奇心与想象力。这时候妈妈们就应该为孩子挑选一款适合的积木玩具。积木玩具是培养锻炼儿童智力最好的早教玩具。它提供更多的机会去发挥他们的想象力和创造力。孩子们在摆搭之前要想好自己搭些什么，要观察，思考选用什么样的块块才能体现他所构想的形象，因此对儿童的想象力，结构思维，造型能力是很好的锻炼，而且可发展孩子们的空间知觉，创造力，发挥儿童组织力和理解力，增强耐力及对建筑科学的兴趣。\r\n那么孩子玩积木玩具的有什么好处？ [1] \r\n积木玩具可以锻炼宝宝以下能力：\r\n1、通过一些动作，处理视觉输入。良好的手触摸，眼睛协调能力也有利于一般身体协调和平衡。\r\n2、创造力和想象力的发挥能促进孩子们不断尝试一些新的想法，帮助他们逐渐形成一种创新思维和不断寻找解决问题的新方法。\r\n3、有利于发展“空间智慧”。孩子在玩具积木的过程中不停地研究布局、结构，这有利于他们掌握物体形状，辨别空间方位，把握二维和三维空间及其转换。\r\n4、帮助孩子们学会通过推理，来得出结论，包括数学，逻辑推理，科学分析等思维形式。在孩子们成长的过程中需要这种能力进行有效的统计，测量，推理，归纳，分析等。', '321', '0', 444, 0, '2023-03-19 20:57:37.048066', 0, 0, 1, 0, 4);
INSERT INTO `b_thing` VALUES (17, 'SQL入门经典（第5版）（异步图书） (计算机编程入门经典系列 31)', 'cover/1679230894621.jpeg', '能开发 GUI 软件的编程语言众多，既有传统的 C++、C#、VB、Delphi、Java，也有新晋选手 Python、Node.js（JavaScript），还有小众的易语言（中文编程语言）。\r\n\r\n如果你只是想玩玩，那么你随意，适合自己的就行，其中 Python 上手比较简单。\r\n\r\n如果你想找一份工作，建议学习 C++ 或者 C#。C# 虽然比 C++ 简单一点，但是它只适用于 Windows 平台；而 C++ 是一种通用语言，它可以应用于 Windows、Linux 以及嵌入式平台，就业选择较多。\r\n2) 网站开发\r\n网站开发分为前端和后台，前端就是用户在浏览器中看到的界面，后台就是放在服务器上的程序。\r\n\r\n前端开发需要学习 HTML、CSS 和 JavaScript，没得选，而且必须都学习。\r\n\r\n后台发开语言则多如牛毛，有走进坟墓的 ASP、Ruby on Rails，也有常用的 PHP、Java（JSP）、C#（ASP.NET），还有新晋选手 Python、Node.js（JavaScript）、Go 语言。\r\n\r\n如果你想自己玩玩或者创业，建议选择 PHP，上手非常简单。我使用的也是 PHP，因为当时学不会 ASP.NET 和 JSP，所以选择了简单的 PHP。\r\n\r\n如果你想找一份工作，那么已经走近坟墓的 ASP、Ruby on Rails 就不要选了，没人用了。C# 也不要选了，只适用于 Windows 平台，而大量的服务器都是 Linux。Python 也不要选，实际应用场景不多。Go 语言主要用作 Web 底层开发，而不是应用层开发。\r\n\r\n剩下的 PHP、Java、Node.js 你自己看着办吧，没法说哪种语言一定有优势，它们只是适用于不同的场景。\r\n\r\n值得一提的是，这里我们将 Node.js 和 JavaScript 看做是等价的，如果你选择了 JavaScript，那么你既能开发网站前端，也能开发网站后台，就不用学习多种编程语言了。', '324', '0', 555, 0, '2023-03-19 21:01:52.110574', 0, 0, 0, 0, 3);
INSERT INTO `b_thing` VALUES (18, 'TCP/IP入门经典（第5版）（异步图书） (计算机编程入门经典系列 33)', 'cover/1679230935716.jpeg', '能开发 GUI 软件的编程语言众多，既有传统的 C++、C#、VB、Delphi、Java，也有新晋选手 Python、Node.js（JavaScript），还有小众的易语言（中文编程语言）。\r\n\r\n如果你只是想玩玩，那么你随意，适合自己的就行，其中 Python 上手比较简单。\r\n\r\n如果你想找一份工作，建议学习 C++ 或者 C#。C# 虽然比 C++ 简单一点，但是它只适用于 Windows 平台；而 C++ 是一种通用语言，它可以应用于 Windows、Linux 以及嵌入式平台，就业选择较多。\r\n2) 网站开发\r\n网站开发分为前端和后台，前端就是用户在浏览器中看到的界面，后台就是放在服务器上的程序。\r\n\r\n前端开发需要学习 HTML、CSS 和 JavaScript，没得选，而且必须都学习。\r\n\r\n后台发开语言则多如牛毛，有走进坟墓的 ASP、Ruby on Rails，也有常用的 PHP、Java（JSP）、C#（ASP.NET），还有新晋选手 Python、Node.js（JavaScript）、Go 语言。\r\n\r\n如果你想自己玩玩或者创业，建议选择 PHP，上手非常简单。我使用的也是 PHP，因为当时学不会 ASP.NET 和 JSP，所以选择了简单的 PHP。\r\n\r\n如果你想找一份工作，那么已经走近坟墓的 ASP、Ruby on Rails 就不要选了，没人用了。C# 也不要选了，只适用于 Windows 平台，而大量的服务器都是 Linux。Python 也不要选，实际应用场景不多。Go 语言主要用作 Web 底层开发，而不是应用层开发。\r\n\r\n剩下的 PHP、Java、Node.js 你自己看着办吧，没法说哪种语言一定有优势，它们只是适用于不同的场景。\r\n\r\n值得一提的是，这里我们将 Node.js 和 JavaScript 看做是等价的，如果你选择了 JavaScript，那么你既能开发网站前端，也能开发网站后台，就不用学习多种编程语言了。', '56', '0', 777, 0, '2023-03-19 21:02:32.424351', 0, 0, 0, 0, 3);
INSERT INTO `b_thing` VALUES (19, '像计算机科学家一样思考Python（第2版）（异步图书）', 'cover/1679230989243.jpeg', '能开发 GUI 软件的编程语言众多，既有传统的 C++、C#、VB、Delphi、Java，也有新晋选手 Python、Node.js（JavaScript），还有小众的易语言（中文编程语言）。\r\n\r\n如果你只是想玩玩，那么你随意，适合自己的就行，其中 Python 上手比较简单。\r\n\r\n如果你想找一份工作，建议学习 C++ 或者 C#。C# 虽然比 C++ 简单一点，但是它只适用于 Windows 平台；而 C++ 是一种通用语言，它可以应用于 Windows、Linux 以及嵌入式平台，就业选择较多。\r\n2) 网站开发\r\n网站开发分为前端和后台，前端就是用户在浏览器中看到的界面，后台就是放在服务器上的程序。\r\n\r\n前端开发需要学习 HTML、CSS 和 JavaScript，没得选，而且必须都学习。\r\n\r\n后台发开语言则多如牛毛，有走进坟墓的 ASP、Ruby on Rails，也有常用的 PHP、Java（JSP）、C#（ASP.NET），还有新晋选手 Python、Node.js（JavaScript）、Go 语言。\r\n\r\n如果你想自己玩玩或者创业，建议选择 PHP，上手非常简单。我使用的也是 PHP，因为当时学不会 ASP.NET 和 JSP，所以选择了简单的 PHP。\r\n\r\n如果你想找一份工作，那么已经走近坟墓的 ASP、Ruby on Rails 就不要选了，没人用了。C# 也不要选了，只适用于 Windows 平台，而大量的服务器都是 Linux。Python 也不要选，实际应用场景不多。Go 语言主要用作 Web 底层开发，而不是应用层开发。\r\n\r\n剩下的 PHP、Java、Node.js 你自己看着办吧，没法说哪种语言一定有优势，它们只是适用于不同的场景。\r\n\r\n值得一提的是，这里我们将 Node.js 和 JavaScript 看做是等价的，如果你选择了 JavaScript，那么你既能开发网站前端，也能开发网站后台，就不用学习多种编程语言了。', '321', '0', 66, 0, '2023-03-19 21:03:22.283539', 0, 0, 0, 0, 3);
INSERT INTO `b_thing` VALUES (20, '硅谷之火：个人计算机的诞生与衰落（第3版）（图灵图书）', 'cover/1679231022326.jpeg', '能开发 GUI 软件的编程语言众多，既有传统的 C++、C#、VB、Delphi、Java，也有新晋选手 Python、Node.js（JavaScript），还有小众的易语言（中文编程语言）。\r\n\r\n如果你只是想玩玩，那么你随意，适合自己的就行，其中 Python 上手比较简单。\r\n\r\n如果你想找一份工作，建议学习 C++ 或者 C#。C# 虽然比 C++ 简单一点，但是它只适用于 Windows 平台；而 C++ 是一种通用语言，它可以应用于 Windows、Linux 以及嵌入式平台，就业选择较多。\r\n2) 网站开发\r\n网站开发分为前端和后台，前端就是用户在浏览器中看到的界面，后台就是放在服务器上的程序。\r\n\r\n前端开发需要学习 HTML、CSS 和 JavaScript，没得选，而且必须都学习。\r\n\r\n后台发开语言则多如牛毛，有走进坟墓的 ASP、Ruby on Rails，也有常用的 PHP、Java（JSP）、C#（ASP.NET），还有新晋选手 Python、Node.js（JavaScript）、Go 语言。\r\n\r\n如果你想自己玩玩或者创业，建议选择 PHP，上手非常简单。我使用的也是 PHP，因为当时学不会 ASP.NET 和 JSP，所以选择了简单的 PHP。\r\n\r\n如果你想找一份工作，那么已经走近坟墓的 ASP、Ruby on Rails 就不要选了，没人用了。C# 也不要选了，只适用于 Windows 平台，而大量的服务器都是 Linux。Python 也不要选，实际应用场景不多。Go 语言主要用作 Web 底层开发，而不是应用层开发。\r\n\r\n剩下的 PHP、Java、Node.js 你自己看着办吧，没法说哪种语言一定有优势，它们只是适用于不同的场景。\r\n\r\n值得一提的是，这里我们将 Node.js 和 JavaScript 看做是等价的，如果你选择了 JavaScript，那么你既能开发网站前端，也能开发网站后台，就不用学习多种编程语言了。', '876', '0', 999, 0, '2023-03-19 21:03:56.544521', 0, 0, 0, 0, 3);
INSERT INTO `b_thing` VALUES (21, 'SAP从入门到精通（异步图书） (计算机行业应用软件系列)', 'cover/1679231052822.jpeg', '能开发 GUI 软件的编程语言众多，既有传统的 C++、C#、VB、Delphi、Java，也有新晋选手 Python、Node.js（JavaScript），还有小众的易语言（中文编程语言）。\r\n\r\n如果你只是想玩玩，那么你随意，适合自己的就行，其中 Python 上手比较简单。\r\n\r\n如果你想找一份工作，建议学习 C++ 或者 C#。C# 虽然比 C++ 简单一点，但是它只适用于 Windows 平台；而 C++ 是一种通用语言，它可以应用于 Windows、Linux 以及嵌入式平台，就业选择较多。\r\n2) 网站开发\r\n网站开发分为前端和后台，前端就是用户在浏览器中看到的界面，后台就是放在服务器上的程序。\r\n\r\n前端开发需要学习 HTML、CSS 和 JavaScript，没得选，而且必须都学习。\r\n\r\n后台发开语言则多如牛毛，有走进坟墓的 ASP、Ruby on Rails，也有常用的 PHP、Java（JSP）、C#（ASP.NET），还有新晋选手 Python、Node.js（JavaScript）、Go 语言。\r\n\r\n如果你想自己玩玩或者创业，建议选择 PHP，上手非常简单。我使用的也是 PHP，因为当时学不会 ASP.NET 和 JSP，所以选择了简单的 PHP。\r\n\r\n如果你想找一份工作，那么已经走近坟墓的 ASP、Ruby on Rails 就不要选了，没人用了。C# 也不要选了，只适用于 Windows 平台，而大量的服务器都是 Linux。Python 也不要选，实际应用场景不多。Go 语言主要用作 Web 底层开发，而不是应用层开发。\r\n\r\n剩下的 PHP、Java、Node.js 你自己看着办吧，没法说哪种语言一定有优势，它们只是适用于不同的场景。\r\n\r\n值得一提的是，这里我们将 Node.js 和 JavaScript 看做是等价的，如果你选择了 JavaScript，那么你既能开发网站前端，也能开发网站后台，就不用学习多种编程语言了。', '378', '0', 987, 0, '2023-03-19 21:04:25.873270', 0, 0, 0, 0, 3);
INSERT INTO `b_thing` VALUES (22, '数据结构与算法图解（图灵图书）', 'cover/1679231084420.jpeg', '能开发 GUI 软件的编程语言众多，既有传统的 C++、C#、VB、Delphi、Java，也有新晋选手 Python、Node.js（JavaScript），还有小众的易语言（中文编程语言）。\r\n\r\n如果你只是想玩玩，那么你随意，适合自己的就行，其中 Python 上手比较简单。\r\n\r\n如果你想找一份工作，建议学习 C++ 或者 C#。C# 虽然比 C++ 简单一点，但是它只适用于 Windows 平台；而 C++ 是一种通用语言，它可以应用于 Windows、Linux 以及嵌入式平台，就业选择较多。\r\n2) 网站开发\r\n网站开发分为前端和后台，前端就是用户在浏览器中看到的界面，后台就是放在服务器上的程序。\r\n\r\n前端开发需要学习 HTML、CSS 和 JavaScript，没得选，而且必须都学习。\r\n\r\n后台发开语言则多如牛毛，有走进坟墓的 ASP、Ruby on Rails，也有常用的 PHP、Java（JSP）、C#（ASP.NET），还有新晋选手 Python、Node.js（JavaScript）、Go 语言。\r\n\r\n如果你想自己玩玩或者创业，建议选择 PHP，上手非常简单。我使用的也是 PHP，因为当时学不会 ASP.NET 和 JSP，所以选择了简单的 PHP。\r\n\r\n如果你想找一份工作，那么已经走近坟墓的 ASP、Ruby on Rails 就不要选了，没人用了。C# 也不要选了，只适用于 Windows 平台，而大量的服务器都是 Linux。Python 也不要选，实际应用场景不多。Go 语言主要用作 Web 底层开发，而不是应用层开发。\r\n\r\n剩下的 PHP、Java、Node.js 你自己看着办吧，没法说哪种语言一定有优势，它们只是适用于不同的场景。\r\n\r\n值得一提的是，这里我们将 Node.js 和 JavaScript 看做是等价的，如果你选择了 JavaScript，那么你既能开发网站前端，也能开发网站后台，就不用学习多种编程语言了。', '874', '0', 846, 0, '2023-03-19 21:04:57.521332', 0, 0, 0, 0, 3);
INSERT INTO `b_thing` VALUES (23, '计算机科学精粹', 'cover/1679231113572.jpeg', '能开发 GUI 软件的编程语言众多，既有传统的 C++、C#、VB、Delphi、Java，也有新晋选手 Python、Node.js（JavaScript），还有小众的易语言（中文编程语言）。\r\n\r\n如果你只是想玩玩，那么你随意，适合自己的就行，其中 Python 上手比较简单。\r\n\r\n如果你想找一份工作，建议学习 C++ 或者 C#。C# 虽然比 C++ 简单一点，但是它只适用于 Windows 平台；而 C++ 是一种通用语言，它可以应用于 Windows、Linux 以及嵌入式平台，就业选择较多。\r\n2) 网站开发\r\n网站开发分为前端和后台，前端就是用户在浏览器中看到的界面，后台就是放在服务器上的程序。\r\n\r\n前端开发需要学习 HTML、CSS 和 JavaScript，没得选，而且必须都学习。\r\n\r\n后台发开语言则多如牛毛，有走进坟墓的 ASP、Ruby on Rails，也有常用的 PHP、Java（JSP）、C#（ASP.NET），还有新晋选手 Python、Node.js（JavaScript）、Go 语言。\r\n\r\n如果你想自己玩玩或者创业，建议选择 PHP，上手非常简单。我使用的也是 PHP，因为当时学不会 ASP.NET 和 JSP，所以选择了简单的 PHP。\r\n\r\n如果你想找一份工作，那么已经走近坟墓的 ASP、Ruby on Rails 就不要选了，没人用了。C# 也不要选了，只适用于 Windows 平台，而大量的服务器都是 Linux。Python 也不要选，实际应用场景不多。Go 语言主要用作 Web 底层开发，而不是应用层开发。\r\n\r\n剩下的 PHP、Java、Node.js 你自己看着办吧，没法说哪种语言一定有优势，它们只是适用于不同的场景。\r\n\r\n值得一提的是，这里我们将 Node.js 和 JavaScript 看做是等价的，如果你选择了 JavaScript，那么你既能开发网站前端，也能开发网站后台，就不用学习多种编程语言了。', '386', '0', 222, 0, '2023-03-19 21:05:28.347980', 0, 0, 0, 0, 3);
INSERT INTO `b_thing` VALUES (24, 'C++多线程编程实战', 'cover/1679231151929.jpeg', '能开发 GUI 软件的编程语言众多，既有传统的 C++、C#、VB、Delphi、Java，也有新晋选手 Python、Node.js（JavaScript），还有小众的易语言（中文编程语言）。\r\n\r\n如果你只是想玩玩，那么你随意，适合自己的就行，其中 Python 上手比较简单。\r\n\r\n如果你想找一份工作，建议学习 C++ 或者 C#。C# 虽然比 C++ 简单一点，但是它只适用于 Windows 平台；而 C++ 是一种通用语言，它可以应用于 Windows、Linux 以及嵌入式平台，就业选择较多。\r\n2) 网站开发\r\n网站开发分为前端和后台，前端就是用户在浏览器中看到的界面，后台就是放在服务器上的程序。\r\n\r\n前端开发需要学习 HTML、CSS 和 JavaScript，没得选，而且必须都学习。\r\n\r\n后台发开语言则多如牛毛，有走进坟墓的 ASP、Ruby on Rails，也有常用的 PHP、Java（JSP）、C#（ASP.NET），还有新晋选手 Python、Node.js（JavaScript）、Go 语言。\r\n\r\n如果你想自己玩玩或者创业，建议选择 PHP，上手非常简单。我使用的也是 PHP，因为当时学不会 ASP.NET 和 JSP，所以选择了简单的 PHP。\r\n\r\n如果你想找一份工作，那么已经走近坟墓的 ASP、Ruby on Rails 就不要选了，没人用了。C# 也不要选了，只适用于 Windows 平台，而大量的服务器都是 Linux。Python 也不要选，实际应用场景不多。Go 语言主要用作 Web 底层开发，而不是应用层开发。\r\n\r\n剩下的 PHP、Java、Node.js 你自己看着办吧，没法说哪种语言一定有优势，它们只是适用于不同的场景。\r\n\r\n值得一提的是，这里我们将 Node.js 和 JavaScript 看做是等价的，如果你选择了 JavaScript，那么你既能开发网站前端，也能开发网站后台，就不用学习多种编程语言了。', '837', '0', 322, 0, '2023-03-19 21:06:05.068109', 0, 0, 0, 0, 3);
INSERT INTO `b_thing` VALUES (25, '算法精粹：经典计算机科学问题的', 'cover/1679231184020.jpeg', '能开发 GUI 软件的编程语言众多，既有传统的 C++、C#、VB、Delphi、Java，也有新晋选手 Python、Node.js（JavaScript），还有小众的易语言（中文编程语言）。\r\n\r\n如果你只是想玩玩，那么你随意，适合自己的就行，其中 Python 上手比较简单。\r\n\r\n如果你想找一份工作，建议学习 C++ 或者 C#。C# 虽然比 C++ 简单一点，但是它只适用于 Windows 平台；而 C++ 是一种通用语言，它可以应用于 Windows、Linux 以及嵌入式平台，就业选择较多。\r\n2) 网站开发\r\n网站开发分为前端和后台，前端就是用户在浏览器中看到的界面，后台就是放在服务器上的程序。\r\n\r\n前端开发需要学习 HTML、CSS 和 JavaScript，没得选，而且必须都学习。\r\n\r\n后台发开语言则多如牛毛，有走进坟墓的 ASP、Ruby on Rails，也有常用的 PHP、Java（JSP）、C#（ASP.NET），还有新晋选手 Python、Node.js（JavaScript）、Go 语言。\r\n\r\n如果你想自己玩玩或者创业，建议选择 PHP，上手非常简单。我使用的也是 PHP，因为当时学不会 ASP.NET 和 JSP，所以选择了简单的 PHP。\r\n\r\n如果你想找一份工作，那么已经走近坟墓的 ASP、Ruby on Rails 就不要选了，没人用了。C# 也不要选了，只适用于 Windows 平台，而大量的服务器都是 Linux。Python 也不要选，实际应用场景不多。Go 语言主要用作 Web 底层开发，而不是应用层开发。\r\n\r\n剩下的 PHP、Java、Node.js 你自己看着办吧，没法说哪种语言一定有优势，它们只是适用于不同的场景。\r\n\r\n值得一提的是，这里我们将 Node.js 和 JavaScript 看做是等价的，如果你选择了 JavaScript，那么你既能开发网站前端，也能开发网站后台，就不用学习多种编程语言了。', '390', '0', 876, 0, '2023-03-19 21:06:38.022644', 0, 0, 0, 0, 3);
INSERT INTO `b_thing` VALUES (26, '计算机网络教程(第4版)', 'cover/1679231221940.jpeg', '能开发 GUI 软件的编程语言众多，既有传统的 C++、C#、VB、Delphi、Java，也有新晋选手 Python、Node.js（JavaScript），还有小众的易语言（中文编程语言）。\r\n\r\n如果你只是想玩玩，那么你随意，适合自己的就行，其中 Python 上手比较简单。\r\n\r\n如果你想找一份工作，建议学习 C++ 或者 C#。C# 虽然比 C++ 简单一点，但是它只适用于 Windows 平台；而 C++ 是一种通用语言，它可以应用于 Windows、Linux 以及嵌入式平台，就业选择较多。\r\n2) 网站开发\r\n网站开发分为前端和后台，前端就是用户在浏览器中看到的界面，后台就是放在服务器上的程序。\r\n\r\n前端开发需要学习 HTML、CSS 和 JavaScript，没得选，而且必须都学习。\r\n\r\n后台发开语言则多如牛毛，有走进坟墓的 ASP、Ruby on Rails，也有常用的 PHP、Java（JSP）、C#（ASP.NET），还有新晋选手 Python、Node.js（JavaScript）、Go 语言。\r\n\r\n如果你想自己玩玩或者创业，建议选择 PHP，上手非常简单。我使用的也是 PHP，因为当时学不会 ASP.NET 和 JSP，所以选择了简单的 PHP。\r\n\r\n如果你想找一份工作，那么已经走近坟墓的 ASP、Ruby on Rails 就不要选了，没人用了。C# 也不要选了，只适用于 Windows 平台，而大量的服务器都是 Linux。Python 也不要选，实际应用场景不多。Go 语言主要用作 Web 底层开发，而不是应用层开发。\r\n\r\n剩下的 PHP、Java、Node.js 你自己看着办吧，没法说哪种语言一定有优势，它们只是适用于不同的场景。\r\n\r\n值得一提的是，这里我们将 Node.js 和 JavaScript 看做是等价的，如果你选择了 JavaScript，那么你既能开发网站前端，也能开发网站后台，就不用学习多种编程语言了。', '556', '0', 900, 0, '2023-03-19 21:07:15.063253', 0, 0, 0, 0, 3);
INSERT INTO `b_thing` VALUES (27, '邱吉尔蝴蝶花罐装碎巧克力黄油饼', 'cover/1679231465845.jpeg', '一：苏打饼干\r\n\r\n纤维素很低，B族维生素消失殆尽\r\n\r\n苏打饼干含糖、含油较少，又加入了酵母，具有发酵制品特有香味，往往被认为是饼干里最有营养的，也被很多人当作早餐。但事实并非如此，为让饼干达到起层效果会添加小苏打，小苏打会减少面粉中的B族维生素，甚至会使之消失殆尽。\r\n\r\n二：曲奇饼干\r\n\r\n高糖、高油脂、低蛋白质\r\n\r\n曲奇饼干中的糖和油脂要高于其他种类的饼干。一小块曲奇饼干的热量往往超过一杯草莓汁!较酥脆的曲奇饼干选择的原料是“低筋粉”，也就是蛋白质比较少的小麦粉，这种饼干还不如馒头的蛋白质高。\r\n\r\n三：威化饼干\r\n\r\n热量高，结构密度低，吃多了不易察觉\r\n\r\n与其他饼干不同的是，威化饼干是以小米粉(糯米粉)、淀粉为主要原料，比精白面粉营养稍高。但威化饼中的奶油脂肪含量十分高，平均每一块60卡路里，而且密度低，吃不饱，所以吃多了也不容易察觉。其实，三块巧克力威化饼的热量就已经超过200卡路里了。\r\n\r\n四：夹心饼干\r\n\r\n“心”是添加剂合成，没有水果原料\r\n\r\n夹心饼干是在两块饼干之间添加糖、油脂或果酱为主要原料的各种夹心料的夹心焙烤食品。夹心饼干里的“心”为追求味道和颜色会使用添加剂，一般是 香精和色素，很少真正添加什么水果原料，\r\n\r\n比如橘子味夹心饼干，不是加入橘子，而是添加剂调和成的，虽然添加剂不一定有害，但不会带来营养，可能还不如单纯 的饼干好。因此不管多么美味的饼干都只能小食，而且饼干多半都很干，食用后很容易出现有\"热气\"(上火)针状。因此在平时生活中，对各种夹心饼干也只能点到为止。\r\n\r\n五：全麦饼干\r\n\r\n提高了营养同时也提高了油脂量\r\n\r\n纤维素含量较高的全麦饼干，因为纤维素口感较差，为弥补口感，生产商往往会在饼干里加入很多油，导致油脂含量较高。但如果包装上标榜的所谓全麦、燕麦、黑麦、五谷饼干等原料，在配料表里排名倒数几位，那可能不是真正的谷物饼干。', '901', '0', 321, 0, '2023-03-19 21:11:17.327821', 0, 0, 0, 0, 2);
INSERT INTO `b_thing` VALUES (28, 'SKATER 斯凯达 便当盒 储存容', 'cover/1679232418133.jpeg', '饼干的诞生，背后的故事也同样充满着意外性，在 十九世纪五十年代的某一天，天空乌云密布，忽起狂风，使一艘出海勘察英国帆船触礁，被迫在法国比斯湾附近的一个荒岛上停泊，船员们虽死里逃生，但岛上没有任何食物亦是船员们重生后的又一个难题。百般无奈的他们只好等风停后再次登上那艘已经破烂不堪的船上搜刮粮食，但遗憾的是，船上储备的面粉、奶油、砂糖等等都已经泡在水里了，船员们毫无办法，只好将这一切几乎已经泡烂的东西带到岛上，待面团稍微烘干一点后，将它一点一点地撕下，捏成一个个小团，然后烤熟后分给大家吃。但让人感到意外的是，用此方法烤出来的东西竟是如此美味，酥松香脆，且饱腹感强，船员们因此也有了生存下去的希望。一段时间过后，船员们回到了英国，为了纪念此次脱险，他们再一次用这个方法做出来了同样的美味，并以海湾的名字命名这一份美味为 “比斯湾”，这就是饼干的英文名“ biscuit”的由来。\r\n\r\n然而在世界的另一边，饼干的英语被称为 “Cracker”，然而较为有趣的是，从美国市场流入中国广东来的 饼干，广东人却 称它为“克力架  ”，有人认为这是广东人为饼干营销而作出的“ 噱头 ”，不以为然，其实他们都错了。因为在美国英语里 ，饼干就叫Cracker，只是广东人按粤语音译为“克力架”。而法语饼干名称“Biscuit”在美国英语中是指“热食的软饼”，即可丽饼、华夫饼等等。\r\n\r\n\r\n时至今日，市面上的饼干产品已是多种多样，但总体而言分为两大类，分别是美国式的“薄而脆”和英国式的“厚而酥”，而近期流行的“披萨饼干”，也是采用西方披萨外形，增加水果元素，给传统饼干带来创新。', '531', '0', 222, 0, '2023-03-19 21:27:07.696079', 0, 0, 0, 0, 2);
INSERT INTO `b_thing` VALUES (29, '米饭，我是汉堡！', 'cover/1679232448857.jpeg', '饼干的诞生，背后的故事也同样充满着意外性，在 十九世纪五十年代的某一天，天空乌云密布，忽起狂风，使一艘出海勘察英国帆船触礁，被迫在法国比斯湾附近的一个荒岛上停泊，船员们虽死里逃生，但岛上没有任何食物亦是船员们重生后的又一个难题。百般无奈的他们只好等风停后再次登上那艘已经破烂不堪的船上搜刮粮食，但遗憾的是，船上储备的面粉、奶油、砂糖等等都已经泡在水里了，船员们毫无办法，只好将这一切几乎已经泡烂的东西带到岛上，待面团稍微烘干一点后，将它一点一点地撕下，捏成一个个小团，然后烤熟后分给大家吃。但让人感到意外的是，用此方法烤出来的东西竟是如此美味，酥松香脆，且饱腹感强，船员们因此也有了生存下去的希望。一段时间过后，船员们回到了英国，为了纪念此次脱险，他们再一次用这个方法做出来了同样的美味，并以海湾的名字命名这一份美味为 “比斯湾”，这就是饼干的英文名“ biscuit”的由来。\r\n\r\n然而在世界的另一边，饼干的英语被称为 “Cracker”，然而较为有趣的是，从美国市场流入中国广东来的 饼干，广东人却 称它为“克力架  ”，有人认为这是广东人为饼干营销而作出的“ 噱头 ”，不以为然，其实他们都错了。因为在美国英语里 ，饼干就叫Cracker，只是广东人按粤语音译为“克力架”。而法语饼干名称“Biscuit”在美国英语中是指“热食的软饼”，即可丽饼、华夫饼等等。\r\n\r\n\r\n时至今日，市面上的饼干产品已是多种多样，但总体而言分为两大类，分别是美国式的“薄而脆”和英国式的“厚而酥”，而近期流行的“披萨饼干”，也是采用西方披萨外形，增加水果元素，给传统饼干带来创新。', '152', '0', 315, 0, '2023-03-19 21:27:44.825427', 0, 0, 0, 0, 2);
INSERT INTO `b_thing` VALUES (30, 'SKATER 斯凯达 收纳盒 折叠收纳', 'cover/1679232480948.jpeg', '饼干的诞生，背后的故事也同样充满着意外性，在 十九世纪五十年代的某一天，天空乌云密布，忽起狂风，使一艘出海勘察英国帆船触礁，被迫在法国比斯湾附近的一个荒岛上停泊，船员们虽死里逃生，但岛上没有任何食物亦是船员们重生后的又一个难题。百般无奈的他们只好等风停后再次登上那艘已经破烂不堪的船上搜刮粮食，但遗憾的是，船上储备的面粉、奶油、砂糖等等都已经泡在水里了，船员们毫无办法，只好将这一切几乎已经泡烂的东西带到岛上，待面团稍微烘干一点后，将它一点一点地撕下，捏成一个个小团，然后烤熟后分给大家吃。但让人感到意外的是，用此方法烤出来的东西竟是如此美味，酥松香脆，且饱腹感强，船员们因此也有了生存下去的希望。一段时间过后，船员们回到了英国，为了纪念此次脱险，他们再一次用这个方法做出来了同样的美味，并以海湾的名字命名这一份美味为 “比斯湾”，这就是饼干的英文名“ biscuit”的由来。\r\n\r\n然而在世界的另一边，饼干的英语被称为 “Cracker”，然而较为有趣的是，从美国市场流入中国广东来的 饼干，广东人却 称它为“克力架  ”，有人认为这是广东人为饼干营销而作出的“ 噱头 ”，不以为然，其实他们都错了。因为在美国英语里 ，饼干就叫Cracker，只是广东人按粤语音译为“克力架”。而法语饼干名称“Biscuit”在美国英语中是指“热食的软饼”，即可丽饼、华夫饼等等。\r\n\r\n\r\n时至今日，市面上的饼干产品已是多种多样，但总体而言分为两大类，分别是美国式的“薄而脆”和英国式的“厚而酥”，而近期流行的“披萨饼干”，也是采用西方披萨外形，增加水果元素，给传统饼干带来创新。', '315', '0', 415, 0, '2023-03-19 21:28:13.898216', 0, 0, 0, 0, 2);
INSERT INTO `b_thing` VALUES (31, '套烧烤汉堡套装，高品质汉堡套装，配有 Pro 汉堡压榨', 'cover/1679232514230.jpeg', '饼干的诞生，背后的故事也同样充满着意外性，在 十九世纪五十年代的某一天，天空乌云密布，忽起狂风，使一艘出海勘察英国帆船触礁，被迫在法国比斯湾附近的一个荒岛上停泊，船员们虽死里逃生，但岛上没有任何食物亦是船员们重生后的又一个难题。百般无奈的他们只好等风停后再次登上那艘已经破烂不堪的船上搜刮粮食，但遗憾的是，船上储备的面粉、奶油、砂糖等等都已经泡在水里了，船员们毫无办法，只好将这一切几乎已经泡烂的东西带到岛上，待面团稍微烘干一点后，将它一点一点地撕下，捏成一个个小团，然后烤熟后分给大家吃。但让人感到意外的是，用此方法烤出来的东西竟是如此美味，酥松香脆，且饱腹感强，船员们因此也有了生存下去的希望。一段时间过后，船员们回到了英国，为了纪念此次脱险，他们再一次用这个方法做出来了同样的美味，并以海湾的名字命名这一份美味为 “比斯湾”，这就是饼干的英文名“ biscuit”的由来。\r\n\r\n然而在世界的另一边，饼干的英语被称为 “Cracker”，然而较为有趣的是，从美国市场流入中国广东来的 饼干，广东人却 称它为“克力架  ”，有人认为这是广东人为饼干营销而作出的“ 噱头 ”，不以为然，其实他们都错了。因为在美国英语里 ，饼干就叫Cracker，只是广东人按粤语音译为“克力架”。而法语饼干名称“Biscuit”在美国英语中是指“热食的软饼”，即可丽饼、华夫饼等等。\r\n\r\n\r\n时至今日，市面上的饼干产品已是多种多样，但总体而言分为两大类，分别是美国式的“薄而脆”和英国式的“厚而酥”，而近期流行的“披萨饼干”，也是采用西方披萨外形，增加水果元素，给传统饼干带来创新。', '365', '0', 432, 0, '2023-03-19 21:28:47.277461', 0, 0, 0, 0, 2);
INSERT INTO `b_thing` VALUES (32, '疯狂汉堡游戏 快速建立', 'cover/1679232543082.jpeg', '饼干的诞生，背后的故事也同样充满着意外性，在 十九世纪五十年代的某一天，天空乌云密布，忽起狂风，使一艘出海勘察英国帆船触礁，被迫在法国比斯湾附近的一个荒岛上停泊，船员们虽死里逃生，但岛上没有任何食物亦是船员们重生后的又一个难题。百般无奈的他们只好等风停后再次登上那艘已经破烂不堪的船上搜刮粮食，但遗憾的是，船上储备的面粉、奶油、砂糖等等都已经泡在水里了，船员们毫无办法，只好将这一切几乎已经泡烂的东西带到岛上，待面团稍微烘干一点后，将它一点一点地撕下，捏成一个个小团，然后烤熟后分给大家吃。但让人感到意外的是，用此方法烤出来的东西竟是如此美味，酥松香脆，且饱腹感强，船员们因此也有了生存下去的希望。一段时间过后，船员们回到了英国，为了纪念此次脱险，他们再一次用这个方法做出来了同样的美味，并以海湾的名字命名这一份美味为 “比斯湾”，这就是饼干的英文名“ biscuit”的由来。\r\n\r\n然而在世界的另一边，饼干的英语被称为 “Cracker”，然而较为有趣的是，从美国市场流入中国广东来的 饼干，广东人却 称它为“克力架  ”，有人认为这是广东人为饼干营销而作出的“ 噱头 ”，不以为然，其实他们都错了。因为在美国英语里 ，饼干就叫Cracker，只是广东人按粤语音译为“克力架”。而法语饼干名称“Biscuit”在美国英语中是指“热食的软饼”，即可丽饼、华夫饼等等。\r\n\r\n\r\n时至今日，市面上的饼干产品已是多种多样，但总体而言分为两大类，分别是美国式的“薄而脆”和英国式的“厚而酥”，而近期流行的“披萨饼干”，也是采用西方披萨外形，增加水果元素，给传统饼干带来创新。', '416', '0', 155, 0, '2023-03-19 21:29:27.383885', 0, 0, 0, 0, 2);
INSERT INTO `b_thing` VALUES (33, '汉堡汽车卡车', 'cover/1679232587234.jpeg', '饼干的诞生，背后的故事也同样充满着意外性，在 十九世纪五十年代的某一天，天空乌云密布，忽起狂风，使一艘出海勘察英国帆船触礁，被迫在法国比斯湾附近的一个荒岛上停泊，船员们虽死里逃生，但岛上没有任何食物亦是船员们重生后的又一个难题。百般无奈的他们只好等风停后再次登上那艘已经破烂不堪的船上搜刮粮食，但遗憾的是，船上储备的面粉、奶油、砂糖等等都已经泡在水里了，船员们毫无办法，只好将这一切几乎已经泡烂的东西带到岛上，待面团稍微烘干一点后，将它一点一点地撕下，捏成一个个小团，然后烤熟后分给大家吃。但让人感到意外的是，用此方法烤出来的东西竟是如此美味，酥松香脆，且饱腹感强，船员们因此也有了生存下去的希望。一段时间过后，船员们回到了英国，为了纪念此次脱险，他们再一次用这个方法做出来了同样的美味，并以海湾的名字命名这一份美味为 “比斯湾”，这就是饼干的英文名“ biscuit”的由来。\r\n\r\n然而在世界的另一边，饼干的英语被称为 “Cracker”，然而较为有趣的是，从美国市场流入中国广东来的 饼干，广东人却 称它为“克力架  ”，有人认为这是广东人为饼干营销而作出的“ 噱头 ”，不以为然，其实他们都错了。因为在美国英语里 ，饼干就叫Cracker，只是广东人按粤语音译为“克力架”。而法语饼干名称“Biscuit”在美国英语中是指“热食的软饼”，即可丽饼、华夫饼等等。\r\n\r\n\r\n时至今日，市面上的饼干产品已是多种多样，但总体而言分为两大类，分别是美国式的“薄而脆”和英国式的“厚而酥”，而近期流行的“披萨饼干”，也是采用西方披萨外形，增加水果元素，给传统饼干带来创新。', '366', '0', 333, 0, '2023-03-19 21:30:00.683509', 0, 0, 0, 0, 2);
INSERT INTO `b_thing` VALUES (34, '美国经典汉堡狗玩具', 'cover/1679232615578.jpeg', '饼干的诞生，背后的故事也同样充满着意外性，在 十九世纪五十年代的某一天，天空乌云密布，忽起狂风，使一艘出海勘察英国帆船触礁，被迫在法国比斯湾附近的一个荒岛上停泊，船员们虽死里逃生，但岛上没有任何食物亦是船员们重生后的又一个难题。百般无奈的他们只好等风停后再次登上那艘已经破烂不堪的船上搜刮粮食，但遗憾的是，船上储备的面粉、奶油、砂糖等等都已经泡在水里了，船员们毫无办法，只好将这一切几乎已经泡烂的东西带到岛上，待面团稍微烘干一点后，将它一点一点地撕下，捏成一个个小团，然后烤熟后分给大家吃。但让人感到意外的是，用此方法烤出来的东西竟是如此美味，酥松香脆，且饱腹感强，船员们因此也有了生存下去的希望。一段时间过后，船员们回到了英国，为了纪念此次脱险，他们再一次用这个方法做出来了同样的美味，并以海湾的名字命名这一份美味为 “比斯湾”，这就是饼干的英文名“ biscuit”的由来。\r\n\r\n然而在世界的另一边，饼干的英语被称为 “Cracker”，然而较为有趣的是，从美国市场流入中国广东来的 饼干，广东人却 称它为“克力架  ”，有人认为这是广东人为饼干营销而作出的“ 噱头 ”，不以为然，其实他们都错了。因为在美国英语里 ，饼干就叫Cracker，只是广东人按粤语音译为“克力架”。而法语饼干名称“Biscuit”在美国英语中是指“热食的软饼”，即可丽饼、华夫饼等等。\r\n\r\n\r\n时至今日，市面上的饼干产品已是多种多样，但总体而言分为两大类，分别是美国式的“薄而脆”和英国式的“厚而酥”，而近期流行的“披萨饼干”，也是采用西方披萨外形，增加水果元素，给传统饼干带来创新。', '312', '0', 333, 0, '2023-03-19 21:30:27.226393', 0, 0, 0, 0, 2);
INSERT INTO `b_thing` VALUES (35, '卡套 带卷轴 收纳袋', 'cover/1679232650073.jpeg', '饼干的诞生，背后的故事也同样充满着意外性，在 十九世纪五十年代的某一天，天空乌云密布，忽起狂风，使一艘出海勘察英国帆船触礁，被迫在法国比斯湾附近的一个荒岛上停泊，船员们虽死里逃生，但岛上没有任何食物亦是船员们重生后的又一个难题。百般无奈的他们只好等风停后再次登上那艘已经破烂不堪的船上搜刮粮食，但遗憾的是，船上储备的面粉、奶油、砂糖等等都已经泡在水里了，船员们毫无办法，只好将这一切几乎已经泡烂的东西带到岛上，待面团稍微烘干一点后，将它一点一点地撕下，捏成一个个小团，然后烤熟后分给大家吃。但让人感到意外的是，用此方法烤出来的东西竟是如此美味，酥松香脆，且饱腹感强，船员们因此也有了生存下去的希望。一段时间过后，船员们回到了英国，为了纪念此次脱险，他们再一次用这个方法做出来了同样的美味，并以海湾的名字命名这一份美味为 “比斯湾”，这就是饼干的英文名“ biscuit”的由来。\r\n\r\n然而在世界的另一边，饼干的英语被称为 “Cracker”，然而较为有趣的是，从美国市场流入中国广东来的 饼干，广东人却 称它为“克力架  ”，有人认为这是广东人为饼干营销而作出的“ 噱头 ”，不以为然，其实他们都错了。因为在美国英语里 ，饼干就叫Cracker，只是广东人按粤语音译为“克力架”。而法语饼干名称“Biscuit”在美国英语中是指“热食的软饼”，即可丽饼、华夫饼等等。\r\n\r\n\r\n时至今日，市面上的饼干产品已是多种多样，但总体而言分为两大类，分别是美国式的“薄而脆”和英国式的“厚而酥”，而近期流行的“披萨饼干”，也是采用西方披萨外形，增加水果元素，给传统饼干带来创新。', '332', '0', 333, 0, '2023-03-19 21:31:01.606326', 0, 0, 0, 0, 2);
INSERT INTO `b_thing` VALUES (36, '斯凯达 杯子 洗碗机安全', 'cover/1679232676818.jpeg', '饼干的诞生，背后的故事也同样充满着意外性，在 十九世纪五十年代的某一天，天空乌云密布，忽起狂风，使一艘出海勘察英国帆船触礁，被迫在法国比斯湾附近的一个荒岛上停泊，船员们虽死里逃生，但岛上没有任何食物亦是船员们重生后的又一个难题。百般无奈的他们只好等风停后再次登上那艘已经破烂不堪的船上搜刮粮食，但遗憾的是，船上储备的面粉、奶油、砂糖等等都已经泡在水里了，船员们毫无办法，只好将这一切几乎已经泡烂的东西带到岛上，待面团稍微烘干一点后，将它一点一点地撕下，捏成一个个小团，然后烤熟后分给大家吃。但让人感到意外的是，用此方法烤出来的东西竟是如此美味，酥松香脆，且饱腹感强，船员们因此也有了生存下去的希望。一段时间过后，船员们回到了英国，为了纪念此次脱险，他们再一次用这个方法做出来了同样的美味，并以海湾的名字命名这一份美味为 “比斯湾”，这就是饼干的英文名“ biscuit”的由来。\r\n\r\n然而在世界的另一边，饼干的英语被称为 “Cracker”，然而较为有趣的是，从美国市场流入中国广东来的 饼干，广东人却 称它为“克力架  ”，有人认为这是广东人为饼干营销而作出的“ 噱头 ”，不以为然，其实他们都错了。因为在美国英语里 ，饼干就叫Cracker，只是广东人按粤语音译为“克力架”。而法语饼干名称“Biscuit”在美国英语中是指“热食的软饼”，即可丽饼、华夫饼等等。\r\n\r\n\r\n时至今日，市面上的饼干产品已是多种多样，但总体而言分为两大类，分别是美国式的“薄而脆”和英国式的“厚而酥”，而近期流行的“披萨饼干”，也是采用西方披萨外形，增加水果元素，给传统饼干带来创新。', '801', '0', 1111, 0, '2023-03-19 21:31:29.923693', 0, 0, 0, 0, 2);
INSERT INTO `b_thing` VALUES (37, '巴伐利亚短款男装 | 传统德国正品', 'cover/1679315151478.jpeg', '优衣库(Uniqlo) 的内在涵义是指通过摒弃了不必要装潢装饰的仓储型店铺，采用超市型的自助购物方式，以合理可信的价格提供顾客希望的商品。\r\n\r\n创造优衣库 (Uniqlo) 品牌的Fast retailing股份有限公司，前身是1949年3月开业的山口县的个人企业，1963年5月变更为股份有限公司，原名为小郡商事株式会社，1991年改为迅销。\r\n\r\n价廉物美的休闲装“UNIQLO”是Unique Clothing Warehouse的缩写，以为消费者提供“低价良品、品质保证”的经营理念，在日本经济低迷时期取得了惊人的业绩。\r\n\r\n迅销公司名称是FAST RETAILING，这其中包含了很多特别的含义。FAST（迅速）+RETAILING（零售）体现了如何将顾客的要求迅速商品化、如何迅速提供商品这一企业根本精神，也表达了他们期望成为拥有快餐文化这一世界通用理念的零售企业界之不可动摇的信念。\r\n\r\n这个理念是指通过全世界统一的服务、以合理可信的价格、大量持续提供任何时候、任何地方、任何人都可以穿着的服装。因此他们拥有独特的商品策划、开发和销售体系，从而实现店铺运作低成本化。', '477', '0', 421, 0, '2023-03-20 20:26:09.974673', 0, 0, 0, 0, 1);
INSERT INTO `b_thing` VALUES (38, '男士修身Polo衫,带标志细节', 'cover/1679315191893.jpeg', '优衣库(Uniqlo) 的内在涵义是指通过摒弃了不必要装潢装饰的仓储型店铺，采用超市型的自助购物方式，以合理可信的价格提供顾客希望的商品。\r\n\r\n创造优衣库 (Uniqlo) 品牌的Fast retailing股份有限公司，前身是1949年3月开业的山口县的个人企业，1963年5月变更为股份有限公司，原名为小郡商事株式会社，1991年改为迅销。\r\n\r\n价廉物美的休闲装“UNIQLO”是Unique Clothing Warehouse的缩写，以为消费者提供“低价良品、品质保证”的经营理念，在日本经济低迷时期取得了惊人的业绩。\r\n\r\n迅销公司名称是FAST RETAILING，这其中包含了很多特别的含义。FAST（迅速）+RETAILING（零售）体现了如何将顾客的要求迅速商品化、如何迅速提供商品这一企业根本精神，也表达了他们期望成为拥有快餐文化这一世界通用理念的零售企业界之不可动摇的信念。\r\n\r\n这个理念是指通过全世界统一的服务、以合理可信的价格、大量持续提供任何时候、任何地方、任何人都可以穿着的服装。因此他们拥有独特的商品策划、开发和销售体系，从而实现店铺运作低成本化。', '78', '0', 44, 0, '2023-03-20 20:27:01.006599', 0, 0, 0, 0, 1);
INSERT INTO `b_thing` VALUES (39, '男士带徽标弹力棉平角内裤（3件装）', 'cover/1679315240787.jpeg', '优衣库(Uniqlo) 的内在涵义是指通过摒弃了不必要装潢装饰的仓储型店铺，采用超市型的自助购物方式，以合理可信的价格提供顾客希望的商品。\r\n\r\n创造优衣库 (Uniqlo) 品牌的Fast retailing股份有限公司，前身是1949年3月开业的山口县的个人企业，1963年5月变更为股份有限公司，原名为小郡商事株式会社，1991年改为迅销。\r\n\r\n价廉物美的休闲装“UNIQLO”是Unique Clothing Warehouse的缩写，以为消费者提供“低价良品、品质保证”的经营理念，在日本经济低迷时期取得了惊人的业绩。\r\n\r\n迅销公司名称是FAST RETAILING，这其中包含了很多特别的含义。FAST（迅速）+RETAILING（零售）体现了如何将顾客的要求迅速商品化、如何迅速提供商品这一企业根本精神，也表达了他们期望成为拥有快餐文化这一世界通用理念的零售企业界之不可动摇的信念。\r\n\r\n这个理念是指通过全世界统一的服务、以合理可信的价格、大量持续提供任何时候、任何地方、任何人都可以穿着的服装。因此他们拥有独特的商品策划、开发和销售体系，从而实现店铺运作低成本化。', '876', '0', 904, 0, '2023-03-20 20:27:36.058562', 0, 0, 0, 0, 1);
INSERT INTO `b_thing` VALUES (40, '保罗拉夫劳伦 男士轻质华夫格长袖亨利衫', 'cover/1679315276060.jpeg', '优衣库(Uniqlo) 的内在涵义是指通过摒弃了不必要装潢装饰的仓储型店铺，采用超市型的自助购物方式，以合理可信的价格提供顾客希望的商品。\r\n\r\n创造优衣库 (Uniqlo) 品牌的Fast retailing股份有限公司，前身是1949年3月开业的山口县的个人企业，1963年5月变更为股份有限公司，原名为小郡商事株式会社，1991年改为迅销。\r\n\r\n价廉物美的休闲装“UNIQLO”是Unique Clothing Warehouse的缩写，以为消费者提供“低价良品、品质保证”的经营理念，在日本经济低迷时期取得了惊人的业绩。\r\n\r\n迅销公司名称是FAST RETAILING，这其中包含了很多特别的含义。FAST（迅速）+RETAILING（零售）体现了如何将顾客的要求迅速商品化、如何迅速提供商品这一企业根本精神，也表达了他们期望成为拥有快餐文化这一世界通用理念的零售企业界之不可动摇的信念。\r\n\r\n这个理念是指通过全世界统一的服务、以合理可信的价格、大量持续提供任何时候、任何地方、任何人都可以穿着的服装。因此他们拥有独特的商品策划、开发和销售体系，从而实现店铺运作低成本化。', '821', '0', 58, 0, '2023-03-20 20:28:10.238931', 0, 0, 0, 0, 1);
INSERT INTO `b_thing` VALUES (41, '工装HH标志棉质编织腰带，带扣可调腰带', 'cover/1679315310720.jpeg', '优衣库(Uniqlo) 的内在涵义是指通过摒弃了不必要装潢装饰的仓储型店铺，采用超市型的自助购物方式，以合理可信的价格提供顾客希望的商品。\r\n\r\n创造优衣库 (Uniqlo) 品牌的Fast retailing股份有限公司，前身是1949年3月开业的山口县的个人企业，1963年5月变更为股份有限公司，原名为小郡商事株式会社，1991年改为迅销。\r\n\r\n价廉物美的休闲装“UNIQLO”是Unique Clothing Warehouse的缩写，以为消费者提供“低价良品、品质保证”的经营理念，在日本经济低迷时期取得了惊人的业绩。\r\n\r\n迅销公司名称是FAST RETAILING，这其中包含了很多特别的含义。FAST（迅速）+RETAILING（零售）体现了如何将顾客的要求迅速商品化、如何迅速提供商品这一企业根本精神，也表达了他们期望成为拥有快餐文化这一世界通用理念的零售企业界之不可动摇的信念。\r\n\r\n这个理念是指通过全世界统一的服务、以合理可信的价格、大量持续提供任何时候、任何地方、任何人都可以穿着的服装。因此他们拥有独特的商品策划、开发和销售体系，从而实现店铺运作低成本化。', '908', '0', 43, 0, '2023-03-20 20:28:44.181929', 0, 0, 0, 0, 1);
INSERT INTO `b_thing` VALUES (42, '范思哲 男式 VE1241 眼镜 54 毫米', 'cover/1679315343720.jpeg', '优衣库(Uniqlo) 的内在涵义是指通过摒弃了不必要装潢装饰的仓储型店铺，采用超市型的自助购物方式，以合理可信的价格提供顾客希望的商品。\r\n\r\n创造优衣库 (Uniqlo) 品牌的Fast retailing股份有限公司，前身是1949年3月开业的山口县的个人企业，1963年5月变更为股份有限公司，原名为小郡商事株式会社，1991年改为迅销。\r\n\r\n价廉物美的休闲装“UNIQLO”是Unique Clothing Warehouse的缩写，以为消费者提供“低价良品、品质保证”的经营理念，在日本经济低迷时期取得了惊人的业绩。\r\n\r\n迅销公司名称是FAST RETAILING，这其中包含了很多特别的含义。FAST（迅速）+RETAILING（零售）体现了如何将顾客的要求迅速商品化、如何迅速提供商品这一企业根本精神，也表达了他们期望成为拥有快餐文化这一世界通用理念的零售企业界之不可动摇的信念。\r\n\r\n这个理念是指通过全世界统一的服务、以合理可信的价格、大量持续提供任何时候、任何地方、任何人都可以穿着的服装。因此他们拥有独特的商品策划、开发和销售体系，从而实现店铺运作低成本化。', '45', '0', 55, 0, '2023-03-20 20:29:19.038740', 0, 0, 0, 0, 1);
INSERT INTO `b_thing` VALUES (43, '多色大马钥匙扣 皮革 黑色', 'cover/1679315365210.jpeg', '优衣库(Uniqlo) 的内在涵义是指通过摒弃了不必要装潢装饰的仓储型店铺，采用超市型的自助购物方式，以合理可信的价格提供顾客希望的商品。\r\n\r\n创造优衣库 (Uniqlo) 品牌的Fast retailing股份有限公司，前身是1949年3月开业的山口县的个人企业，1963年5月变更为股份有限公司，原名为小郡商事株式会社，1991年改为迅销。\r\n\r\n价廉物美的休闲装“UNIQLO”是Unique Clothing Warehouse的缩写，以为消费者提供“低价良品、品质保证”的经营理念，在日本经济低迷时期取得了惊人的业绩。\r\n\r\n迅销公司名称是FAST RETAILING，这其中包含了很多特别的含义。FAST（迅速）+RETAILING（零售）体现了如何将顾客的要求迅速商品化、如何迅速提供商品这一企业根本精神，也表达了他们期望成为拥有快餐文化这一世界通用理念的零售企业界之不可动摇的信念。\r\n\r\n这个理念是指通过全世界统一的服务、以合理可信的价格、大量持续提供任何时候、任何地方、任何人都可以穿着的服装。因此他们拥有独特的商品策划、开发和销售体系，从而实现店铺运作低成本化。', '43', '0', 1111, 0, '2023-03-20 20:29:52.053595', 0, 0, 0, 0, 1);
INSERT INTO `b_thing` VALUES (44, '男士 凉鞋', 'cover/1679315396953.jpeg', '优衣库(Uniqlo) 的内在涵义是指通过摒弃了不必要装潢装饰的仓储型店铺，采用超市型的自助购物方式，以合理可信的价格提供顾客希望的商品。\r\n\r\n创造优衣库 (Uniqlo) 品牌的Fast retailing股份有限公司，前身是1949年3月开业的山口县的个人企业，1963年5月变更为股份有限公司，原名为小郡商事株式会社，1991年改为迅销。\r\n\r\n价廉物美的休闲装“UNIQLO”是Unique Clothing Warehouse的缩写，以为消费者提供“低价良品、品质保证”的经营理念，在日本经济低迷时期取得了惊人的业绩。\r\n\r\n迅销公司名称是FAST RETAILING，这其中包含了很多特别的含义。FAST（迅速）+RETAILING（零售）体现了如何将顾客的要求迅速商品化、如何迅速提供商品这一企业根本精神，也表达了他们期望成为拥有快餐文化这一世界通用理念的零售企业界之不可动摇的信念。\r\n\r\n这个理念是指通过全世界统一的服务、以合理可信的价格、大量持续提供任何时候、任何地方、任何人都可以穿着的服装。因此他们拥有独特的商品策划、开发和销售体系，从而实现店铺运作低成本化。', '87', '0', 877, 0, '2023-03-20 20:30:24.446335', 0, 0, 0, 0, 1);
INSERT INTO `b_thing` VALUES (45, '足部护理 男装 魔法粉 鞋子除臭粉', 'cover/1679315437571.jpeg', '优衣库(Uniqlo) 的内在涵义是指通过摒弃了不必要装潢装饰的仓储型店铺，采用超市型的自助购物方式，以合理可信的价格提供顾客希望的商品。\r\n\r\n创造优衣库 (Uniqlo) 品牌的Fast retailing股份有限公司，前身是1949年3月开业的山口县的个人企业，1963年5月变更为股份有限公司，原名为小郡商事株式会社，1991年改为迅销。\r\n\r\n价廉物美的休闲装“UNIQLO”是Unique Clothing Warehouse的缩写，以为消费者提供“低价良品、品质保证”的经营理念，在日本经济低迷时期取得了惊人的业绩。\r\n\r\n迅销公司名称是FAST RETAILING，这其中包含了很多特别的含义。FAST（迅速）+RETAILING（零售）体现了如何将顾客的要求迅速商品化、如何迅速提供商品这一企业根本精神，也表达了他们期望成为拥有快餐文化这一世界通用理念的零售企业界之不可动摇的信念。\r\n\r\n这个理念是指通过全世界统一的服务、以合理可信的价格、大量持续提供任何时候、任何地方、任何人都可以穿着的服装。因此他们拥有独特的商品策划、开发和销售体系，从而实现店铺运作低成本化。', '33', '0', 333, 0, '2023-03-20 20:30:57.188485', 0, 0, 0, 0, 1);
INSERT INTO `b_thing` VALUES (46, '短款网球袜，运动透气防气泡速干无绒单', 'cover/1679315478327.jpeg', '优衣库(Uniqlo) 的内在涵义是指通过摒弃了不必要装潢装饰的仓储型店铺，采用超市型的自助购物方式，以合理可信的价格提供顾客希望的商品。\r\n\r\n创造优衣库 (Uniqlo) 品牌的Fast retailing股份有限公司，前身是1949年3月开业的山口县的个人企业，1963年5月变更为股份有限公司，原名为小郡商事株式会社，1991年改为迅销。\r\n\r\n价廉物美的休闲装“UNIQLO”是Unique Clothing Warehouse的缩写，以为消费者提供“低价良品、品质保证”的经营理念，在日本经济低迷时期取得了惊人的业绩。\r\n\r\n迅销公司名称是FAST RETAILING，这其中包含了很多特别的含义。FAST（迅速）+RETAILING（零售）体现了如何将顾客的要求迅速商品化、如何迅速提供商品这一企业根本精神，也表达了他们期望成为拥有快餐文化这一世界通用理念的零售企业界之不可动摇的信念。\r\n\r\n这个理念是指通过全世界统一的服务、以合理可信的价格、大量持续提供任何时候、任何地方、任何人都可以穿着的服装。因此他们拥有独特的商品策划、开发和销售体系，从而实现店铺运作低成本化。', '467', '0', 555, 0, '2023-03-20 20:31:31.217097', 0, 0, 0, 0, 1);
INSERT INTO `b_thing` VALUES (47, '卷发棒 灰色 32毫米 熨斗 家电 家电 护发素', 'cover/1679315749022.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '999', '0', 888, 0, '2023-03-20 20:35:56.641337', 0, 0, 0, 0, 5);
INSERT INTO `b_thing` VALUES (48, '陶瓷涂层不粘煎锅 9.4 英寸(约 24 厘米易于抓握,柔', 'cover/1679315761797.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '789', '0', 654, 0, '2023-03-20 20:36:38.195239', 0, 0, 0, 0, 5);
INSERT INTO `b_thing` VALUES (49, '博朗 男士电动剃须刀 系列', 'cover/1679315803245.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '432', '0', 666, 0, '2023-03-20 20:37:16.692421', 0, 0, 0, 0, 5);
INSERT INTO `b_thing` VALUES (50, '食物垃圾处理器', 'cover/1679315842977.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '654', '0', 544, 0, '2023-03-20 20:37:55.567506', 0, 0, 0, 0, 5);
INSERT INTO `b_thing` VALUES (51, '流式麦克风音频 - 单向心型', 'cover/1679315883620.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '567', '0', 54, 0, '2023-03-20 20:38:30.550391', 0, 0, 0, 0, 5);
INSERT INTO `b_thing` VALUES (52, '冰箱门把手盖厨房家电防护手套防滑布保护套', 'cover/1679315915467.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '67', '0', 54, 0, '2023-03-20 20:39:08.169454', 0, 0, 0, 0, 5);
INSERT INTO `b_thing` VALUES (53, '传统家电企业如何互联', 'cover/1679315954931.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '543', '0', 43, 0, '2023-03-20 20:39:41.092252', 0, 0, 0, 0, 5);
INSERT INTO `b_thing` VALUES (54, '厨房 收纳 家电 置物架', 'cover/1679315985852.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '46', '0', 777, 0, '2023-03-20 20:40:32.602409', 0, 0, 0, 0, 5);
INSERT INTO `b_thing` VALUES (55, '多功能锅 可同时煎烤+炖煮（电烤盘和平底锅）', 'cover/1679316037517.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '43', '0', 333, 0, '2023-03-20 20:41:08.213680', 0, 0, 0, 0, 5);
INSERT INTO `b_thing` VALUES (56, '锁套装适用于家电厨', 'cover/1679316072493.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '908', '0', 777, 0, '2023-03-20 20:41:39.847980', 0, 0, 0, 0, 5);
INSERT INTO `b_thing` VALUES (57, 'ProClip 车载支架', 'cover/1679316422812.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '433', '0', 222, 0, '2023-03-20 20:47:14.464968', 0, 0, 0, 0, 6);
INSERT INTO `b_thing` VALUES (58, '数据电缆适用于黑莓', 'cover/1679316453474.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '32', '0', 1111, 0, '2023-03-20 20:47:44.902310', 0, 0, 0, 0, 6);
INSERT INTO `b_thing` VALUES (59, '自行车 Bike 婴儿车 管道', 'cover/1679316484842.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '433', '0', 322, 0, '2023-03-20 20:48:15.890308', 0, 0, 0, 0, 6);
INSERT INTO `b_thing` VALUES (60, '腊肠犬长毛皮狗包/钥匙圈饰品', 'cover/1679316513693.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '45', '0', 112, 0, '2023-03-20 20:48:48.121962', 0, 0, 0, 0, 6);
INSERT INTO `b_thing` VALUES (61, '数据线 适用于', 'cover/1679316533369.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '76', '0', 987, 0, '2023-03-20 20:49:20.085623', 0, 0, 0, 0, 6);
INSERT INTO `b_thing` VALUES (62, '手持防静电刷,适用于薄膜、玻璃和丙烯酸', 'cover/1679316566135.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '987', '0', 906, 0, '2023-03-20 20:49:57.228662', 0, 0, 0, 0, 6);
INSERT INTO `b_thing` VALUES (63, 'Damascena 获奖无年眼', 'cover/1679316605104.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '890', '0', 666, 0, '2023-03-20 20:50:32.617691', 0, 0, 1, 1, 6);
INSERT INTO `b_thing` VALUES (64, '挂绳 UCF迷你/M/Q', 'cover/1679316637185.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '433', '0', 888, 0, '2023-03-20 20:51:02.196500', 0, 0, 0, 0, 6);
INSERT INTO `b_thing` VALUES (65, '优质皮革翻盖外壳适用于', 'cover/1679316666891.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '655', '0', 433, 0, '2023-03-20 20:51:32.773396', 0, 0, 0, 0, 6);
INSERT INTO `b_thing` VALUES (66, '经典镀铬硬壳适用', 'cover/1679316698087.jpeg', '世界上第一台电饭煲，是由日本人井深大发明于1950年代。电饭煲又称作电锅，是利用电能转变为热能的炊具，使用方便，清洁卫生，还具有对食品进行蒸、煮、炖、煨等多种操作功能。\r\n中国第一台简易电饭煲则是1976年生产出的。从机械式控制，到电子式控制，再到微电脑控制，再是将要成为主流的电磁电饭煲和微压力电饭煲，电饭煲的控制技术也经历了几个重要的阶段。 电热水壶基本就是有水壶到电加热的一个过程，结构相比而言简单一些，电热水壶是一个不断改进的过程。现不仅有自动控温功能，更增添了童锁等安全设计，如特设黄色警告式锁盖，全方位保障用户使用安全。\r\n西式小家电电水壶正被中国市场逐步接受。据极品传播机构调研数据，2006年，中国国内电水壶市场容量达到了900万台。2007年1～4月份，国内电水壶销售量平均增幅为35%，预计下半年电水壶市场还继续保持这个增长速度，高于2006年的30%。参照海外市场80%以上城镇家庭普及率，中国的电水壶市场远未饱和，发展空间巨大。', '433', '0', 444, 0, '2023-03-20 20:52:05.014584', 0, 0, 0, 0, 6);
INSERT INTO `b_thing` VALUES (67, '揭秘美国打击商', 'cover/1679403034316.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '87', '0', 877, 0, '2023-03-21 20:50:59.061006', 0, 0, 0, 0, 7);
INSERT INTO `b_thing` VALUES (68, '用python实现办公自动', 'cover/1679403102225.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '76', '0', 789, 0, '2023-03-21 20:51:55.225562', 0, 0, 0, 0, 7);
INSERT INTO `b_thing` VALUES (69, '行政办公流程与制度范', 'cover/1679403138846.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '89', '0', 888, 0, '2023-03-21 20:52:32.828554', 0, 0, 0, 0, 7);
INSERT INTO `b_thing` VALUES (70, '苹果办公三剑客', 'cover/1679403158073.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '87', '0', 78, 0, '2023-03-21 20:53:08.491835', 0, 0, 0, 0, 7);
INSERT INTO `b_thing` VALUES (71, '玩转Access数据库', 'cover/1679403193320.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '899', '0', 89, 0, '2023-03-21 20:53:43.985441', 0, 0, 0, 0, 7);
INSERT INTO `b_thing` VALUES (72, '函数的一知半', 'cover/1679403239138.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '89', '0', 89, 0, '2023-03-21 20:54:40.412503', 0, 0, 0, 0, 7);
INSERT INTO `b_thing` VALUES (73, '家居办公用品 手推车和搬运', 'cover/1679403285129.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '89', '0', 980, 0, '2023-03-21 20:55:24.414391', 0, 0, 0, 0, 7);
INSERT INTO `b_thing` VALUES (74, 'Word办公应用技巧', 'cover/1679403331202.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '87', '0', 987, 0, '2023-03-21 20:56:06.272710', 0, 0, 0, 0, 7);
INSERT INTO `b_thing` VALUES (75, '文秘办公应用典', 'cover/1679403370669.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '899', '0', 98, 0, '2023-03-21 20:56:38.987872', 0, 0, 0, 0, 7);
INSERT INTO `b_thing` VALUES (76, '珍贵木制办公桌墨水瓶', 'cover/1679403403756.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '90', '0', 98, 0, '2023-03-21 20:57:15.095312', 0, 0, 0, 0, 7);
INSERT INTO `b_thing` VALUES (77, '英寸笔记本电', 'cover/1679403503106.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '32', '0', 322, 0, '2023-03-21 20:58:48.388531', 0, 0, 0, 0, 6);
INSERT INTO `b_thing` VALUES (78, '松下电器 Lumix 系统相', 'cover/1679403631942.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '344', '0', 33, 0, '2023-03-21 21:00:43.665083', 0, 0, 0, 0, 6);
INSERT INTO `b_thing` VALUES (79, '印花乌克兰别针翻领', 'cover/1679403697740.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '433', '0', 32, 0, '2023-03-21 21:02:11.366736', 0, 0, 0, 0, 1);
INSERT INTO `b_thing` VALUES (80, '印花休闲长袖蝴蝶结', 'cover/1679403736341.jpeg', '复印机、打印机、传真机、证卡机、考勤机等等……是集光学、机械、电子技术为一体的精密办公设备，通过使用颗小的静电墨粉，利用静电原理，在感光材料上形成静电潜像，使微小的墨粉附在感光材料上，再将其转印到纸上从而得到需要副本。这个工序是利用静电的特性进行的。因此，在机器内部的传动部件、光学部件以及高压部件上容易附着纸屑、漂浮的墨粉等，但这些的存在只会影响复印的质量。若放任不管，会增加机器的驱动负荷，妨碍热量的排除，说不定也可能是造成机器故障的原因。\r\n定期的维护保养，可以清除机器内部的污垢，在必要的部件上加注润滑油，清洁光学部件，改善复印品质量，将可能发生的故障消灭在萌芽状态，减少停机时间。\r\n为了始终得到良好的复印品质量，缩短停机时间，减少损失，建议用户在保修期结束之前，与授权代理商签订维修保养协议，以使您的机器在保修期后仍能享受保修期般的服务，获得长久保障。', '33', '0', 321, 0, '2023-03-21 21:02:52.454089', 0, 0, 0, 0, 1);
INSERT INTO `b_thing` VALUES (81, '英寸笔记本电脑包,黑色', 'cover/1679488092121.jpeg', '关于配送时间的预估仅供参考，实际配送受清关或天气等不可抗力因素的影响，您可在“我的订单”中跟踪包裹查看配送状态，如有疑问请联系客服咨询。\r\n• 亚马逊海外购商品符合海关进出口政策要求，且支持中国除港澳台地区之外的全境配送，但部分偏远地区的配送时间会相应延长，少数商品不支持配送。如果您已成功下单而我们无法为您配送，我们会及时通知您。\r\n• 亚马逊海外购商品目前不支持晚间送货、预约送货、自提等服务。', '321', '0', 333, 0, '2023-03-22 20:29:00.305841', 0, 0, 2, 2, 6);

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (1, 1, 2);
INSERT INTO `b_thing_collect` VALUES (2, 4, 2);
INSERT INTO `b_thing_collect` VALUES (3, 5, 2);
INSERT INTO `b_thing_collect` VALUES (4, 5, 3);
INSERT INTO `b_thing_collect` VALUES (5, 63, 3);
INSERT INTO `b_thing_collect` VALUES (6, 81, 3);
INSERT INTO `b_thing_collect` VALUES (7, 81, 5);

-- ----------------------------
-- Table structure for b_thing_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_tag`;
CREATE TABLE `b_thing_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_tag_thing_id_tag_id_a5d426b2_uniq`(`thing_id`, `tag_id`) USING BTREE,
  INDEX `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_tag_thing_id_fb8ecf3f_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 180 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_tag
-- ----------------------------
INSERT INTO `b_thing_tag` VALUES (1, 1, 2);
INSERT INTO `b_thing_tag` VALUES (2, 2, 4);
INSERT INTO `b_thing_tag` VALUES (3, 2, 5);
INSERT INTO `b_thing_tag` VALUES (4, 3, 3);
INSERT INTO `b_thing_tag` VALUES (5, 4, 4);
INSERT INTO `b_thing_tag` VALUES (6, 5, 2);
INSERT INTO `b_thing_tag` VALUES (7, 5, 3);
INSERT INTO `b_thing_tag` VALUES (8, 6, 6);
INSERT INTO `b_thing_tag` VALUES (9, 7, 6);
INSERT INTO `b_thing_tag` VALUES (10, 8, 5);
INSERT INTO `b_thing_tag` VALUES (11, 8, 6);
INSERT INTO `b_thing_tag` VALUES (12, 9, 1);
INSERT INTO `b_thing_tag` VALUES (13, 9, 6);
INSERT INTO `b_thing_tag` VALUES (14, 10, 5);
INSERT INTO `b_thing_tag` VALUES (15, 10, 6);
INSERT INTO `b_thing_tag` VALUES (16, 11, 5);
INSERT INTO `b_thing_tag` VALUES (17, 11, 6);
INSERT INTO `b_thing_tag` VALUES (18, 12, 5);
INSERT INTO `b_thing_tag` VALUES (19, 12, 6);
INSERT INTO `b_thing_tag` VALUES (20, 13, 5);
INSERT INTO `b_thing_tag` VALUES (21, 13, 6);
INSERT INTO `b_thing_tag` VALUES (22, 14, 5);
INSERT INTO `b_thing_tag` VALUES (23, 14, 6);
INSERT INTO `b_thing_tag` VALUES (24, 15, 2);
INSERT INTO `b_thing_tag` VALUES (25, 15, 5);
INSERT INTO `b_thing_tag` VALUES (26, 15, 6);
INSERT INTO `b_thing_tag` VALUES (27, 16, 5);
INSERT INTO `b_thing_tag` VALUES (28, 16, 6);
INSERT INTO `b_thing_tag` VALUES (29, 17, 3);
INSERT INTO `b_thing_tag` VALUES (30, 17, 4);
INSERT INTO `b_thing_tag` VALUES (31, 18, 3);
INSERT INTO `b_thing_tag` VALUES (32, 18, 4);
INSERT INTO `b_thing_tag` VALUES (33, 18, 5);
INSERT INTO `b_thing_tag` VALUES (35, 19, 7);
INSERT INTO `b_thing_tag` VALUES (34, 19, 8);
INSERT INTO `b_thing_tag` VALUES (37, 20, 7);
INSERT INTO `b_thing_tag` VALUES (36, 20, 8);
INSERT INTO `b_thing_tag` VALUES (39, 21, 7);
INSERT INTO `b_thing_tag` VALUES (38, 21, 8);
INSERT INTO `b_thing_tag` VALUES (41, 22, 7);
INSERT INTO `b_thing_tag` VALUES (40, 22, 8);
INSERT INTO `b_thing_tag` VALUES (43, 23, 7);
INSERT INTO `b_thing_tag` VALUES (42, 23, 8);
INSERT INTO `b_thing_tag` VALUES (45, 24, 7);
INSERT INTO `b_thing_tag` VALUES (44, 24, 8);
INSERT INTO `b_thing_tag` VALUES (47, 25, 7);
INSERT INTO `b_thing_tag` VALUES (46, 25, 8);
INSERT INTO `b_thing_tag` VALUES (49, 26, 7);
INSERT INTO `b_thing_tag` VALUES (48, 26, 8);
INSERT INTO `b_thing_tag` VALUES (50, 27, 4);
INSERT INTO `b_thing_tag` VALUES (51, 27, 6);
INSERT INTO `b_thing_tag` VALUES (53, 28, 4);
INSERT INTO `b_thing_tag` VALUES (52, 28, 9);
INSERT INTO `b_thing_tag` VALUES (54, 29, 9);
INSERT INTO `b_thing_tag` VALUES (55, 30, 9);
INSERT INTO `b_thing_tag` VALUES (56, 31, 9);
INSERT INTO `b_thing_tag` VALUES (57, 32, 9);
INSERT INTO `b_thing_tag` VALUES (58, 33, 9);
INSERT INTO `b_thing_tag` VALUES (59, 34, 9);
INSERT INTO `b_thing_tag` VALUES (60, 35, 9);
INSERT INTO `b_thing_tag` VALUES (61, 36, 9);
INSERT INTO `b_thing_tag` VALUES (63, 37, 5);
INSERT INTO `b_thing_tag` VALUES (62, 37, 10);
INSERT INTO `b_thing_tag` VALUES (65, 38, 5);
INSERT INTO `b_thing_tag` VALUES (64, 38, 10);
INSERT INTO `b_thing_tag` VALUES (67, 39, 5);
INSERT INTO `b_thing_tag` VALUES (66, 39, 10);
INSERT INTO `b_thing_tag` VALUES (69, 40, 5);
INSERT INTO `b_thing_tag` VALUES (68, 40, 10);
INSERT INTO `b_thing_tag` VALUES (71, 41, 5);
INSERT INTO `b_thing_tag` VALUES (70, 41, 10);
INSERT INTO `b_thing_tag` VALUES (73, 42, 5);
INSERT INTO `b_thing_tag` VALUES (72, 42, 10);
INSERT INTO `b_thing_tag` VALUES (75, 43, 5);
INSERT INTO `b_thing_tag` VALUES (74, 43, 10);
INSERT INTO `b_thing_tag` VALUES (77, 44, 5);
INSERT INTO `b_thing_tag` VALUES (76, 44, 10);
INSERT INTO `b_thing_tag` VALUES (79, 45, 5);
INSERT INTO `b_thing_tag` VALUES (78, 45, 10);
INSERT INTO `b_thing_tag` VALUES (81, 46, 5);
INSERT INTO `b_thing_tag` VALUES (80, 46, 10);
INSERT INTO `b_thing_tag` VALUES (82, 47, 8);
INSERT INTO `b_thing_tag` VALUES (83, 47, 11);
INSERT INTO `b_thing_tag` VALUES (86, 48, 5);
INSERT INTO `b_thing_tag` VALUES (84, 48, 8);
INSERT INTO `b_thing_tag` VALUES (85, 48, 11);
INSERT INTO `b_thing_tag` VALUES (89, 49, 5);
INSERT INTO `b_thing_tag` VALUES (87, 49, 8);
INSERT INTO `b_thing_tag` VALUES (88, 49, 11);
INSERT INTO `b_thing_tag` VALUES (92, 50, 5);
INSERT INTO `b_thing_tag` VALUES (90, 50, 8);
INSERT INTO `b_thing_tag` VALUES (91, 50, 11);
INSERT INTO `b_thing_tag` VALUES (95, 51, 5);
INSERT INTO `b_thing_tag` VALUES (93, 51, 8);
INSERT INTO `b_thing_tag` VALUES (94, 51, 11);
INSERT INTO `b_thing_tag` VALUES (99, 52, 5);
INSERT INTO `b_thing_tag` VALUES (96, 52, 8);
INSERT INTO `b_thing_tag` VALUES (97, 52, 9);
INSERT INTO `b_thing_tag` VALUES (98, 52, 11);
INSERT INTO `b_thing_tag` VALUES (100, 53, 8);
INSERT INTO `b_thing_tag` VALUES (101, 53, 11);
INSERT INTO `b_thing_tag` VALUES (102, 54, 5);
INSERT INTO `b_thing_tag` VALUES (103, 54, 6);
INSERT INTO `b_thing_tag` VALUES (104, 54, 7);
INSERT INTO `b_thing_tag` VALUES (105, 54, 10);
INSERT INTO `b_thing_tag` VALUES (106, 54, 11);
INSERT INTO `b_thing_tag` VALUES (107, 55, 8);
INSERT INTO `b_thing_tag` VALUES (108, 55, 11);
INSERT INTO `b_thing_tag` VALUES (109, 56, 8);
INSERT INTO `b_thing_tag` VALUES (110, 56, 11);
INSERT INTO `b_thing_tag` VALUES (111, 57, 8);
INSERT INTO `b_thing_tag` VALUES (112, 57, 12);
INSERT INTO `b_thing_tag` VALUES (113, 58, 8);
INSERT INTO `b_thing_tag` VALUES (114, 58, 12);
INSERT INTO `b_thing_tag` VALUES (115, 59, 8);
INSERT INTO `b_thing_tag` VALUES (116, 59, 12);
INSERT INTO `b_thing_tag` VALUES (117, 60, 8);
INSERT INTO `b_thing_tag` VALUES (118, 60, 12);
INSERT INTO `b_thing_tag` VALUES (119, 61, 8);
INSERT INTO `b_thing_tag` VALUES (120, 61, 12);
INSERT INTO `b_thing_tag` VALUES (121, 62, 8);
INSERT INTO `b_thing_tag` VALUES (122, 62, 12);
INSERT INTO `b_thing_tag` VALUES (123, 63, 8);
INSERT INTO `b_thing_tag` VALUES (124, 63, 12);
INSERT INTO `b_thing_tag` VALUES (125, 64, 8);
INSERT INTO `b_thing_tag` VALUES (126, 64, 12);
INSERT INTO `b_thing_tag` VALUES (127, 65, 8);
INSERT INTO `b_thing_tag` VALUES (128, 65, 12);
INSERT INTO `b_thing_tag` VALUES (129, 66, 8);
INSERT INTO `b_thing_tag` VALUES (130, 66, 12);
INSERT INTO `b_thing_tag` VALUES (133, 67, 7);
INSERT INTO `b_thing_tag` VALUES (131, 67, 8);
INSERT INTO `b_thing_tag` VALUES (132, 67, 9);
INSERT INTO `b_thing_tag` VALUES (134, 68, 13);
INSERT INTO `b_thing_tag` VALUES (135, 68, 14);
INSERT INTO `b_thing_tag` VALUES (136, 69, 8);
INSERT INTO `b_thing_tag` VALUES (137, 69, 9);
INSERT INTO `b_thing_tag` VALUES (138, 69, 12);
INSERT INTO `b_thing_tag` VALUES (139, 69, 14);
INSERT INTO `b_thing_tag` VALUES (140, 70, 11);
INSERT INTO `b_thing_tag` VALUES (141, 70, 13);
INSERT INTO `b_thing_tag` VALUES (142, 70, 14);
INSERT INTO `b_thing_tag` VALUES (143, 71, 12);
INSERT INTO `b_thing_tag` VALUES (144, 71, 13);
INSERT INTO `b_thing_tag` VALUES (145, 71, 14);
INSERT INTO `b_thing_tag` VALUES (146, 72, 12);
INSERT INTO `b_thing_tag` VALUES (147, 72, 13);
INSERT INTO `b_thing_tag` VALUES (148, 72, 14);
INSERT INTO `b_thing_tag` VALUES (149, 73, 12);
INSERT INTO `b_thing_tag` VALUES (150, 73, 13);
INSERT INTO `b_thing_tag` VALUES (151, 73, 14);
INSERT INTO `b_thing_tag` VALUES (152, 74, 8);
INSERT INTO `b_thing_tag` VALUES (153, 74, 13);
INSERT INTO `b_thing_tag` VALUES (154, 74, 14);
INSERT INTO `b_thing_tag` VALUES (155, 75, 11);
INSERT INTO `b_thing_tag` VALUES (156, 75, 13);
INSERT INTO `b_thing_tag` VALUES (157, 75, 14);
INSERT INTO `b_thing_tag` VALUES (158, 76, 12);
INSERT INTO `b_thing_tag` VALUES (159, 76, 13);
INSERT INTO `b_thing_tag` VALUES (160, 76, 14);
INSERT INTO `b_thing_tag` VALUES (161, 77, 5);
INSERT INTO `b_thing_tag` VALUES (162, 77, 6);
INSERT INTO `b_thing_tag` VALUES (163, 77, 7);
INSERT INTO `b_thing_tag` VALUES (164, 77, 8);
INSERT INTO `b_thing_tag` VALUES (165, 77, 11);
INSERT INTO `b_thing_tag` VALUES (166, 78, 9);
INSERT INTO `b_thing_tag` VALUES (167, 78, 10);
INSERT INTO `b_thing_tag` VALUES (168, 78, 11);
INSERT INTO `b_thing_tag` VALUES (169, 79, 10);
INSERT INTO `b_thing_tag` VALUES (170, 79, 12);
INSERT INTO `b_thing_tag` VALUES (171, 79, 14);
INSERT INTO `b_thing_tag` VALUES (173, 80, 6);
INSERT INTO `b_thing_tag` VALUES (172, 80, 10);
INSERT INTO `b_thing_tag` VALUES (174, 81, 3);
INSERT INTO `b_thing_tag` VALUES (175, 81, 4);
INSERT INTO `b_thing_tag` VALUES (176, 81, 5);
INSERT INTO `b_thing_tag` VALUES (177, 81, 8);
INSERT INTO `b_thing_tag` VALUES (178, 81, 11);
INSERT INTO `b_thing_tag` VALUES (179, 81, 12);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (1, 1, 2);
INSERT INTO `b_thing_wish` VALUES (2, 4, 2);
INSERT INTO `b_thing_wish` VALUES (3, 5, 2);
INSERT INTO `b_thing_wish` VALUES (4, 5, 3);
INSERT INTO `b_thing_wish` VALUES (5, 16, 3);
INSERT INTO `b_thing_wish` VALUES (6, 63, 3);
INSERT INTO `b_thing_wish` VALUES (7, 81, 3);
INSERT INTO `b_thing_wish` VALUES (8, 81, 5);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin111', 'bbad8d72c1fac1d081727158807a8798', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-03-11 14:17:28.149448', 0, NULL, 0, 'bbad8d72c1fac1d081727158807a8798', NULL);
INSERT INTO `b_user` VALUES (2, 'test1', '5a105e8b9d40e1329780d62ea2265d8a', '2', '0', NULL, 'avatar/1679146350134.jpeg', NULL, NULL, NULL, NULL, '2023-03-11 19:46:15.050601', 0, NULL, 0, '5a105e8b9d40e1329780d62ea2265d8a', '5a105e8b9d40e1329780d62ea2265d8a');
INSERT INTO `b_user` VALUES (3, 'bbb@qq.com', '08f8e0260c64418510cefb2b06eee5cd', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-03-19 20:27:03.001816', 0, 'hhhhhh@hh.cc', 1, NULL, 'efa26214a23636cb7fa71d2aec96ffb7');
INSERT INTO `b_user` VALUES (4, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-03-20 20:58:49.845663', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (5, 'dddd', '11ddbaf3386aea1f2974eee984542152', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-08-03 11:20:36.116227', 0, NULL, 0, NULL, '11ddbaf3386aea1f2974eee984542152');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (21, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'book');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'borrow');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'borrowlog');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (23, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (24, 'myapp', 'orderlog');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (22, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-03-10 21:59:57.495329');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-03-10 21:59:57.836543');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-03-10 21:59:57.905816');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-03-10 21:59:57.924045');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-10 21:59:57.943381');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-03-10 21:59:58.024461');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-03-10 21:59:58.062651');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-03-10 21:59:58.097135');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-03-10 21:59:58.108274');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-03-10 21:59:58.144232');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-03-10 21:59:58.147244');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-10 21:59:58.161792');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-03-10 21:59:58.199414');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-10 21:59:58.230721');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-03-10 21:59:58.272283');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-03-10 21:59:58.299329');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-10 21:59:58.335643');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2023-03-10 21:59:58.378371');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0001_initial', '2023-03-10 22:06:35.739452');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0002_auto_20230311_1411', '2023-03-11 14:12:54.952788');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0003_auto_20230311_1759', '2023-03-11 17:59:20.814386');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0004_auto_20230311_1957', '2023-03-11 19:58:03.300645');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0005_auto_20230311_2111', '2023-03-11 21:11:34.350576');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_auto_20230311_2131', '2023-03-11 21:31:33.277748');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0007_auto_20230312_1035', '2023-03-12 10:35:05.971850');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
