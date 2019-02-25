/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 25/02/2019 14:48:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, '首页', 'fa-bar-chart', '/', NULL, NULL, '2019-01-09 06:20:02');
INSERT INTO `admin_menu` VALUES (2, 0, 9, '管理员管理', 'fa-tasks', NULL, NULL, NULL, '2019-02-15 02:17:44');
INSERT INTO `admin_menu` VALUES (3, 2, 10, '用户管理', 'fa-users', 'auth/users', NULL, NULL, '2019-02-15 02:17:44');
INSERT INTO `admin_menu` VALUES (4, 2, 11, '角色管理', 'fa-user', 'auth/roles', NULL, NULL, '2019-02-15 02:17:44');
INSERT INTO `admin_menu` VALUES (5, 2, 12, '权限管理', 'fa-ban', 'auth/permissions', NULL, NULL, '2019-02-15 02:17:44');
INSERT INTO `admin_menu` VALUES (6, 2, 13, '菜单管理', 'fa-bars', 'auth/menu', NULL, NULL, '2019-02-15 02:17:44');
INSERT INTO `admin_menu` VALUES (7, 2, 14, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, '2019-02-15 02:17:44');
INSERT INTO `admin_menu` VALUES (8, 0, 4, '教师管理', 'fa-users', '/teachers', '*', '2019-01-03 03:46:48', '2019-01-09 06:19:51');
INSERT INTO `admin_menu` VALUES (9, 0, 5, '课程管理', 'fa-mortar-board', '/courses', '*', '2019-01-04 07:26:41', '2019-01-09 06:19:51');
INSERT INTO `admin_menu` VALUES (10, 0, 2, '学院管理', 'fa-university', 'colleges', '*', '2019-01-08 01:51:27', '2019-01-22 03:55:50');
INSERT INTO `admin_menu` VALUES (11, 0, 3, '班级管理', 'fa-list-alt', 'classes', '*', '2019-01-09 06:14:04', '2019-01-09 06:19:51');
INSERT INTO `admin_menu` VALUES (12, 0, 6, '教学工作量', 'fa-bar-chart-o', 'teachingWorks', '*', '2019-01-16 06:13:42', '2019-01-16 06:14:03');
INSERT INTO `admin_menu` VALUES (13, 0, 7, '科研工作量', 'fa-align-right', 'scienceWorks', '*', '2019-01-29 02:20:26', '2019-01-29 03:42:29');
INSERT INTO `admin_menu` VALUES (14, 0, 8, '工作量统计', 'fa-bars', '/tongjis', NULL, '2019-02-15 02:16:55', '2019-02-19 00:31:45');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 804 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-02 07:53:38', '2019-01-02 07:53:38');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 07:54:20', '2019-01-02 07:54:20');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-02 08:51:45', '2019-01-02 08:51:45');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-02 08:52:10', '2019-01-02 08:52:10');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-02 08:53:48', '2019-01-02 08:53:48');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-03 00:51:52', '2019-01-03 00:51:52');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2019-01-03 02:23:40', '2019-01-03 02:23:40');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-03 02:23:40', '2019-01-03 02:23:40');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 02:23:50', '2019-01-03 02:23:50');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 02:23:57', '2019-01-03 02:23:57');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6559\\u5e08\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/teachers\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"OsC7spTWMzzlCgMS6oI6MdaaKFS5fldkK0BTuuPi\"}', '2019-01-03 03:46:45', '2019-01-03 03:46:45');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-03 03:46:50', '2019-01-03 03:46:50');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"OsC7spTWMzzlCgMS6oI6MdaaKFS5fldkK0BTuuPi\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-01-03 03:47:31', '2019-01-03 03:47:31');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 03:47:32', '2019-01-03 03:47:32');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-03 03:47:34', '2019-01-03 03:47:34');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-03 03:47:58', '2019-01-03 03:47:58');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-03 05:32:32', '2019-01-03 05:32:32');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 05:33:30', '2019-01-03 05:33:30');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '[]', '2019-01-03 05:36:48', '2019-01-03 05:36:48');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '[]', '2019-01-03 06:58:16', '2019-01-03 06:58:16');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-03 07:01:02', '2019-01-03 07:01:02');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 07:01:05', '2019-01-03 07:01:05');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 07:04:19', '2019-01-03 07:04:19');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 07:04:31', '2019-01-03 07:04:31');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 07:04:41', '2019-01-03 07:04:41');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 07:04:44', '2019-01-03 07:04:44');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-03 07:08:15', '2019-01-03 07:08:15');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-03 07:08:19', '2019-01-03 07:08:19');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 07:08:22', '2019-01-03 07:08:22');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-03 07:10:23', '2019-01-03 07:10:23');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 07:10:34', '2019-01-03 07:10:34');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-03 07:12:55', '2019-01-03 07:12:55');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-04 03:25:11', '2019-01-04 03:25:11');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-04 03:25:54', '2019-01-04 03:25:54');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 03:26:03', '2019-01-04 03:26:03');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 03:26:11', '2019-01-04 03:26:11');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/teachers', 'POST', '127.0.0.1', '{\"username\":\"\\u4e07\\u5c0f\\u578b\",\"password\":\"123456\",\"sex\":\"1\",\"college\":\"\\u8ba1\\u7b97\\u673a\",\"job_title\":\"\\u8bb2\\u5e08\",\"content\":\"php\",\"phone\":\"15844460823\",\"_token\":\"7h1Xxmly4Lkmb6VEtXBYYIZJLOvkEWsFZsjSeTPx\",\"after-save\":\"3\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachers\"}', '2019-01-04 03:28:04', '2019-01-04 03:28:04');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-04 03:28:05', '2019-01-04 03:28:05');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 03:29:41', '2019-01-04 03:29:41');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/teachers', 'POST', '127.0.0.1', '{\"username\":\"\\u4e07\\u5c0f\\u578b\",\"password\":\"123456\",\"sex\":\"1\",\"college\":\"\\u8ba1\\u7b97\\u673a\",\"job_title\":\"\\u8bb2\\u5e08\",\"content\":\"php\",\"phone\":\"15844460823\",\"_token\":\"7h1Xxmly4Lkmb6VEtXBYYIZJLOvkEWsFZsjSeTPx\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachers\"}', '2019-01-04 03:30:18', '2019-01-04 03:30:18');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-04 03:30:19', '2019-01-04 03:30:19');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/teachers/1', 'GET', '127.0.0.1', '[]', '2019-01-04 06:12:39', '2019-01-04 06:12:39');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/teachers/1', 'GET', '127.0.0.1', '[]', '2019-01-04 06:12:49', '2019-01-04 06:12:49');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-04 06:13:50', '2019-01-04 06:13:50');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 06:13:55', '2019-01-04 06:13:55');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 06:13:55', '2019-01-04 06:13:55');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 06:13:58', '2019-01-04 06:13:58');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-04 06:13:58', '2019-01-04 06:13:58');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-04 06:19:44', '2019-01-04 06:19:44');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 06:19:48', '2019-01-04 06:19:48');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-04 06:19:48', '2019-01-04 06:19:48');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 06:21:51', '2019-01-04 06:21:51');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-04 06:21:51', '2019-01-04 06:21:51');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-04 06:21:52', '2019-01-04 06:21:52');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 06:21:56', '2019-01-04 06:21:56');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-04 06:21:56', '2019-01-04 06:21:56');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/teachers/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 06:22:01', '2019-01-04 06:22:01');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/teachers/1/edit', 'GET', '127.0.0.1', '[]', '2019-01-04 06:30:47', '2019-01-04 06:30:47');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 06:31:41', '2019-01-04 06:31:41');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 07:12:58', '2019-01-04 07:12:58');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bfe\\u7a0b\\u7ba1\\u7406\",\"icon\":\"fa-mortar-board\",\"uri\":\"\\/courses\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"xj9MK8Lpd2o1ExpQtkOHmv7YfrNGzKNk8p65uyin\"}', '2019-01-04 07:26:41', '2019-01-04 07:26:41');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-04 07:26:42', '2019-01-04 07:26:42');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"xj9MK8Lpd2o1ExpQtkOHmv7YfrNGzKNk8p65uyin\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-01-04 07:26:50', '2019-01-04 07:26:50');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 07:26:51', '2019-01-04 07:26:51');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-04 07:26:53', '2019-01-04 07:26:53');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 07:26:56', '2019-01-04 07:26:56');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2019-01-04 07:32:38', '2019-01-04 07:32:38');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-04 08:15:04', '2019-01-04 08:15:04');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-08 01:04:33', '2019-01-08 01:04:33');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 01:04:39', '2019-01-08 01:04:39');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 01:05:39', '2019-01-08 01:05:39');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 01:05:45', '2019-01-08 01:05:45');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 01:05:48', '2019-01-08 01:05:48');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2019-01-08 01:34:53', '2019-01-08 01:34:53');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 01:35:00', '2019-01-08 01:35:00');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5b66\\u9662\\u7ba1\\u7406\",\"icon\":\"fa-university\",\"uri\":\"grades\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"qT2vANcy7Su3WGiLDPwCj6jhG75WItn4pPWFry4B\"}', '2019-01-08 01:51:27', '2019-01-08 01:51:27');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-08 01:51:28', '2019-01-08 01:51:28');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"qT2vANcy7Su3WGiLDPwCj6jhG75WItn4pPWFry4B\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":10},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-01-08 01:51:38', '2019-01-08 01:51:38');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 01:51:38', '2019-01-08 01:51:38');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-08 01:51:47', '2019-01-08 01:51:47');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/grades', 'GET', '127.0.0.1', '[]', '2019-01-08 01:52:41', '2019-01-08 01:52:41');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/grades/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 01:52:54', '2019-01-08 01:52:54');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/grades', 'POST', '127.0.0.1', '{\"grade_name\":\"\\u8ba1\\u7b97\\u673a\\u5b66\\u9662\",\"phone\":\"15844460823\",\"_token\":\"qT2vANcy7Su3WGiLDPwCj6jhG75WItn4pPWFry4B\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/grades\"}', '2019-01-08 01:53:48', '2019-01-08 01:53:48');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/grades', 'GET', '127.0.0.1', '[]', '2019-01-08 01:53:49', '2019-01-08 01:53:49');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 01:53:53', '2019-01-08 01:53:53');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 01:53:56', '2019-01-08 01:53:56');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 01:53:59', '2019-01-08 01:53:59');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"course_name\":\"\\u8ba1\\u7b97\\u673a\\u5bfc\\u8bba\",\"class_hour\":\"40\",\"credit\":\"5\",\"_token\":\"qT2vANcy7Su3WGiLDPwCj6jhG75WItn4pPWFry4B\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/courses\"}', '2019-01-08 01:54:30', '2019-01-08 01:54:30');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2019-01-08 01:54:30', '2019-01-08 01:54:30');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 01:54:34', '2019-01-08 01:54:34');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 01:54:35', '2019-01-08 01:54:35');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 02:01:45', '2019-01-08 02:01:45');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 02:42:04', '2019-01-08 02:42:04');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 02:42:08', '2019-01-08 02:42:08');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 02:56:37', '2019-01-08 02:56:37');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-01-08 02:57:48', '2019-01-08 02:57:48');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 03:00:41', '2019-01-08 03:00:41');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-01-08 03:02:57', '2019-01-08 03:02:57');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-01-08 03:08:40', '2019-01-08 03:08:40');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-01-08 03:08:44', '2019-01-08 03:08:44');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-01-08 03:14:45', '2019-01-08 03:14:45');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-01-08 05:26:27', '2019-01-08 05:26:27');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-01-08 05:29:52', '2019-01-08 05:29:52');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-01-08 05:32:27', '2019-01-08 05:32:27');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 05:32:32', '2019-01-08 05:32:32');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-08 05:32:41', '2019-01-08 05:32:41');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 05:32:57', '2019-01-08 05:32:57');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 05:33:00', '2019-01-08 05:33:00');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-01-08 07:03:16', '2019-01-08 07:03:16');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-01-08 07:03:58', '2019-01-08 07:03:58');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 07:04:01', '2019-01-08 07:04:01');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 07:04:08', '2019-01-08 07:04:08');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-08 07:21:33', '2019-01-08 07:21:33');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-09 00:58:16', '2019-01-09 00:58:16');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-09 05:57:37', '2019-01-09 05:57:37');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:12:17', '2019-01-09 06:12:17');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u73ed\\u7ea7\\u7ba1\\u7406\",\"icon\":\"fa-list-alt\",\"uri\":\"classes\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"eOjSCqkpDSe38ViKmYLHIOibAz4niDezRsFqV9Me\"}', '2019-01-09 06:14:04', '2019-01-09 06:14:04');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-09 06:14:05', '2019-01-09 06:14:05');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:14:26', '2019-01-09 06:14:26');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"eOjSCqkpDSe38ViKmYLHIOibAz4niDezRsFqV9Me\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2019-01-09 06:14:41', '2019-01-09 06:14:41');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-09 06:14:41', '2019-01-09 06:14:41');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:14:48', '2019-01-09 06:14:48');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"eOjSCqkpDSe38ViKmYLHIOibAz4niDezRsFqV9Me\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2019-01-09 06:15:00', '2019-01-09 06:15:00');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-09 06:15:00', '2019-01-09 06:15:00');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:15:04', '2019-01-09 06:15:04');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"eOjSCqkpDSe38ViKmYLHIOibAz4niDezRsFqV9Me\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2019-01-09 06:15:12', '2019-01-09 06:15:12');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-09 06:15:12', '2019-01-09 06:15:12');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:15:15', '2019-01-09 06:15:15');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"eOjSCqkpDSe38ViKmYLHIOibAz4niDezRsFqV9Me\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2019-01-09 06:15:26', '2019-01-09 06:15:26');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-09 06:15:26', '2019-01-09 06:15:26');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:16:40', '2019-01-09 06:16:40');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"eOjSCqkpDSe38ViKmYLHIOibAz4niDezRsFqV9Me\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2019-01-09 06:16:48', '2019-01-09 06:16:48');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-09 06:16:48', '2019-01-09 06:16:48');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:17:19', '2019-01-09 06:17:19');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"eOjSCqkpDSe38ViKmYLHIOibAz4niDezRsFqV9Me\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2019-01-09 06:17:35', '2019-01-09 06:17:35');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-09 06:17:36', '2019-01-09 06:17:36');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eOjSCqkpDSe38ViKmYLHIOibAz4niDezRsFqV9Me\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-01-09 06:19:51', '2019-01-09 06:19:51');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:19:51', '2019-01-09 06:19:51');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:19:55', '2019-01-09 06:19:55');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"eOjSCqkpDSe38ViKmYLHIOibAz4niDezRsFqV9Me\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2019-01-09 06:20:02', '2019-01-09 06:20:02');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-09 06:20:03', '2019-01-09 06:20:03');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-09 06:20:07', '2019-01-09 06:20:07');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:20:14', '2019-01-09 06:20:14');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:20:17', '2019-01-09 06:20:17');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:20:19', '2019-01-09 06:20:19');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:20:21', '2019-01-09 06:20:21');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 06:20:24', '2019-01-09 06:20:24');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-09 07:11:57', '2019-01-09 07:11:57');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-09 07:15:42', '2019-01-09 07:15:42');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-10 00:17:03', '2019-01-10 00:17:03');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 00:25:04', '2019-01-10 00:25:04');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 00:27:01', '2019-01-10 00:27:01');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 00:27:32', '2019-01-10 00:27:32');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 00:28:43', '2019-01-10 00:28:43');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 00:28:47', '2019-01-10 00:28:47');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-10 00:29:24', '2019-01-10 00:29:24');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 00:29:30', '2019-01-10 00:29:30');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 00:29:36', '2019-01-10 00:29:36');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 00:29:38', '2019-01-10 00:29:38');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 00:29:40', '2019-01-10 00:29:40');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 00:29:44', '2019-01-10 00:29:44');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-10 00:32:57', '2019-01-10 00:32:57');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-10 00:36:03', '2019-01-10 00:36:03');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-10 00:37:28', '2019-01-10 00:37:28');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-10 00:37:57', '2019-01-10 00:37:57');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-10 00:41:01', '2019-01-10 00:41:01');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-10 00:49:32', '2019-01-10 00:49:32');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-10 00:52:46', '2019-01-10 00:52:46');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 00:55:43', '2019-01-10 00:55:43');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-10 01:11:40', '2019-01-10 01:11:40');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-10 01:18:02', '2019-01-10 01:18:02');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-10 06:44:58', '2019-01-10 06:44:58');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 06:45:17', '2019-01-10 06:45:17');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 06:45:21', '2019-01-10 06:45:21');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-10 06:45:25', '2019-01-10 06:45:25');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 06:45:49', '2019-01-10 06:45:49');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-10 06:45:50', '2019-01-10 06:45:50');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 06:45:52', '2019-01-10 06:45:52');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-10 06:45:53', '2019-01-10 06:45:53');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 08:12:08', '2019-01-10 08:12:08');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-14 03:32:01', '2019-01-14 03:32:01');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-14 06:19:25', '2019-01-14 06:19:25');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:20:00', '2019-01-14 06:20:00');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:20:39', '2019-01-14 06:20:39');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:20:55', '2019-01-14 06:20:55');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/grades/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:21:01', '2019-01-14 06:21:01');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:21:12', '2019-01-14 06:21:12');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/grades/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:21:16', '2019-01-14 06:21:16');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:21:28', '2019-01-14 06:21:28');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:21:31', '2019-01-14 06:21:31');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:21:34', '2019-01-14 06:21:34');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/grades/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:21:37', '2019-01-14 06:21:37');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/grades', 'POST', '127.0.0.1', '{\"grade_name\":\"\\u8ba1\\u7b97\\u673a\\u5b66\\u9662\",\"phone\":\"15844460823\",\"_token\":\"HvjCVIxa03CwoY0zj3psSSSNSUoBu9YDw0JtZg61\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/grades\"}', '2019-01-14 06:21:47', '2019-01-14 06:21:47');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/grades', 'GET', '127.0.0.1', '[]', '2019-01-14 06:21:47', '2019-01-14 06:21:47');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/grades/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"HvjCVIxa03CwoY0zj3psSSSNSUoBu9YDw0JtZg61\"}', '2019-01-14 06:21:53', '2019-01-14 06:21:53');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:21:54', '2019-01-14 06:21:54');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/grades', 'GET', '127.0.0.1', '[]', '2019-01-14 06:22:28', '2019-01-14 06:22:28');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:23:09', '2019-01-14 06:23:09');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:23:18', '2019-01-14 06:23:18');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:23:21', '2019-01-14 06:23:21');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:24:23', '2019-01-14 06:24:23');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:24:25', '2019-01-14 06:24:25');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:24:26', '2019-01-14 06:24:26');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:24:38', '2019-01-14 06:24:38');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:25:09', '2019-01-14 06:25:09');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:25:13', '2019-01-14 06:25:13');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-14 06:25:18', '2019-01-14 06:25:18');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:25:25', '2019-01-14 06:25:25');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:25:29', '2019-01-14 06:25:29');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:25:29', '2019-01-14 06:25:29');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:25:30', '2019-01-14 06:25:30');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:25:34', '2019-01-14 06:25:34');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:25:36', '2019-01-14 06:25:36');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-14 06:26:11', '2019-01-14 06:26:11');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:26:21', '2019-01-14 06:26:21');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:29:56', '2019-01-14 06:29:56');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:30:00', '2019-01-14 06:30:00');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:30:01', '2019-01-14 06:30:01');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:31:01', '2019-01-14 06:31:01');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:31:03', '2019-01-14 06:31:03');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:31:09', '2019-01-14 06:31:09');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:36:52', '2019-01-14 06:36:52');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:37:19', '2019-01-14 06:37:19');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:37:33', '2019-01-14 06:37:33');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/grades/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:37:39', '2019-01-14 06:37:39');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:39:06', '2019-01-14 06:39:06');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:39:06', '2019-01-14 06:39:06');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:39:13', '2019-01-14 06:39:13');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/teachers/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:39:15', '2019-01-14 06:39:15');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/teachers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-14 06:39:18', '2019-01-14 06:39:18');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/teachers/1', 'PUT', '127.0.0.1', '{\"username\":\"\\u4e07\\u5c0f\\u578b\",\"password\":\"123456\",\"sex\":\"2\",\"college\":\"\\u8ba1\\u7b97\\u673a\",\"job_title\":\"\\u8bb2\\u5e08\",\"content\":\"php\",\"phone\":\"15844460823\",\"_token\":\"HvjCVIxa03CwoY0zj3psSSSNSUoBu9YDw0JtZg61\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachers\\/1\"}', '2019-01-14 06:39:23', '2019-01-14 06:39:23');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/teachers/1', 'GET', '127.0.0.1', '[]', '2019-01-14 06:39:23', '2019-01-14 06:39:23');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-16 01:04:21', '2019-01-16 01:04:21');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-16 03:36:55', '2019-01-16 03:36:55');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 03:37:15', '2019-01-16 03:37:15');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/teachers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 03:37:20', '2019-01-16 03:37:20');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/teachers/1', 'PUT', '127.0.0.1', '{\"username\":\"\\u4e07\\u5c0f\\u578b\",\"password\":\"123456\",\"sex\":\"1\",\"college\":\"\\u8ba1\\u7b97\\u673a\",\"job_title\":\"\\u8bb2\\u5e08\",\"content\":\"php\",\"phone\":\"15844460823\",\"_token\":\"WQodp9I7OW24207YccddVYr11mrTfmSgVlNx65Jp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachers\"}', '2019-01-16 03:37:26', '2019-01-16 03:37:26');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-16 03:37:27', '2019-01-16 03:37:27');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/teachers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 03:37:30', '2019-01-16 03:37:30');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/teachers/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 03:37:35', '2019-01-16 03:37:35');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/teachers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 03:37:44', '2019-01-16 03:37:44');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/teachers/1', 'PUT', '127.0.0.1', '{\"username\":\"\\u4e07\\u5c0f\\u578b\",\"password\":\"123456\",\"sex\":\"1\",\"college\":\"\\u8ba1\\u7b97\\u673a\",\"job_title\":\"\\u8bb2\\u5e08\",\"content\":\"php\",\"phone\":\"15844460823\",\"_token\":\"WQodp9I7OW24207YccddVYr11mrTfmSgVlNx65Jp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachers\\/1\"}', '2019-01-16 03:37:50', '2019-01-16 03:37:50');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/teachers/1', 'GET', '127.0.0.1', '[]', '2019-01-16 03:37:51', '2019-01-16 03:37:51');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-16 03:39:06', '2019-01-16 03:39:06');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/teachers/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 03:39:12', '2019-01-16 03:39:12');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/teachers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 03:39:42', '2019-01-16 03:39:42');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/teachers/1', 'PUT', '127.0.0.1', '{\"username\":\"\\u4e07\\u5c0f\\u578b\",\"password\":\"123456\",\"sex\":\"1\",\"college\":\"\\u8ba1\\u7b97\\u673a\",\"job_title\":\"\\u8bb2\\u5e08\",\"content\":\"php\",\"phone\":\"15844460823\",\"_token\":\"WQodp9I7OW24207YccddVYr11mrTfmSgVlNx65Jp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachers\\/1\"}', '2019-01-16 03:39:47', '2019-01-16 03:39:47');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/teachers/1', 'GET', '127.0.0.1', '[]', '2019-01-16 03:39:47', '2019-01-16 03:39:47');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/teachers/1', 'GET', '127.0.0.1', '[]', '2019-01-16 03:42:24', '2019-01-16 03:42:24');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 05:29:37', '2019-01-16 05:29:37');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 05:31:40', '2019-01-16 05:31:40');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 05:58:36', '2019-01-16 05:58:36');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 05:58:45', '2019-01-16 05:58:45');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 05:58:46', '2019-01-16 05:58:46');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 06:01:06', '2019-01-16 06:01:06');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 06:01:17', '2019-01-16 06:01:17');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 06:01:19', '2019-01-16 06:01:19');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 06:11:56', '2019-01-16 06:11:56');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6559\\u5b66\\u5de5\\u4f5c\\u91cf\",\"icon\":\"fa-bar-chart-o\",\"uri\":\"teachingWorks\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"WQodp9I7OW24207YccddVYr11mrTfmSgVlNx65Jp\"}', '2019-01-16 06:13:42', '2019-01-16 06:13:42');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6559\\u5b66\\u5de5\\u4f5c\\u91cf\",\"icon\":\"fa-bar-chart-o\",\"uri\":\"teachingWorks\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"WQodp9I7OW24207YccddVYr11mrTfmSgVlNx65Jp\"}', '2019-01-16 06:13:43', '2019-01-16 06:13:43');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-16 06:13:43', '2019-01-16 06:13:43');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"WQodp9I7OW24207YccddVYr11mrTfmSgVlNx65Jp\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":12},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":13}]\"}', '2019-01-16 06:14:03', '2019-01-16 06:14:03');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 06:14:04', '2019-01-16 06:14:04');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 06:14:10', '2019-01-16 06:14:10');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-16 06:14:18', '2019-01-16 06:14:18');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/auth/menu/13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WQodp9I7OW24207YccddVYr11mrTfmSgVlNx65Jp\"}', '2019-01-16 06:14:35', '2019-01-16 06:14:35');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 06:14:35', '2019-01-16 06:14:35');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"WQodp9I7OW24207YccddVYr11mrTfmSgVlNx65Jp\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":12},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-01-16 06:14:42', '2019-01-16 06:14:42');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 06:14:42', '2019-01-16 06:14:42');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-16 06:14:46', '2019-01-16 06:14:46');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 06:14:51', '2019-01-16 06:14:51');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 06:14:54', '2019-01-16 06:14:54');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '[]', '2019-01-16 07:39:23', '2019-01-16 07:39:23');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 08:02:16', '2019-01-16 08:02:16');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 08:02:18', '2019-01-16 08:02:18');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/grades', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 08:02:18', '2019-01-16 08:02:18');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 08:09:50', '2019-01-16 08:09:50');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 08:09:50', '2019-01-16 08:09:50');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 08:09:53', '2019-01-16 08:09:53');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 08:25:57', '2019-01-16 08:25:57');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 08:25:57', '2019-01-16 08:25:57');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-16 08:26:00', '2019-01-16 08:26:00');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-17 02:34:20', '2019-01-17 02:34:20');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-17 02:36:05', '2019-01-17 02:36:05');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-18 00:23:44', '2019-01-18 00:23:44');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-18 00:26:43', '2019-01-18 00:26:43');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-18 00:26:59', '2019-01-18 00:26:59');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-18 00:51:01', '2019-01-18 00:51:01');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-18 00:51:05', '2019-01-18 00:51:05');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-18 01:05:50', '2019-01-18 01:05:50');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-18 01:05:54', '2019-01-18 01:05:54');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"course_name\":\"JAVA\",\"class_hour\":\"30\",\"credit\":\"6\",\"_token\":\"FwqV3M34qY0PJoJEerBtjSViK8WTDOBMsuZTSN1b\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/courses\"}', '2019-01-18 01:06:13', '2019-01-18 01:06:13');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2019-01-18 01:06:13', '2019-01-18 01:06:13');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-18 01:40:52', '2019-01-18 01:40:52');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-18 01:40:52', '2019-01-18 01:40:52');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-21 00:21:26', '2019-01-21 00:21:26');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 01:29:49', '2019-01-21 01:29:49');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-21 02:36:42', '2019-01-21 02:36:42');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-21 02:36:42', '2019-01-21 02:36:42');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-21 02:36:42', '2019-01-21 02:36:42');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 03:18:23', '2019-01-21 03:18:23');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 03:22:48', '2019-01-21 03:22:48');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 03:47:16', '2019-01-21 03:47:16');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 03:48:24', '2019-01-21 03:48:24');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/classes', 'POST', '127.0.0.1', '{\"class_name\":null,\"grade_id\":\"1\",\"num\":null,\"_token\":\"tGnOoqiaxvZ3KwpijnB0i065EjilMOmQmlHx0WKg\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/classes\"}', '2019-01-21 03:48:39', '2019-01-21 03:48:39');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-21 03:48:50', '2019-01-21 03:48:50');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 03:51:05', '2019-01-21 03:51:05');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 03:51:26', '2019-01-21 03:51:26');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/classes', 'POST', '127.0.0.1', '{\"class_name\":\"2018\\u8f6f\\u4ef6\\u5de5\\u7a0b\\u73ed\",\"college_id\":\"2\",\"num\":\"45\",\"_token\":\"tGnOoqiaxvZ3KwpijnB0i065EjilMOmQmlHx0WKg\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/classes\"}', '2019-01-21 03:52:16', '2019-01-21 03:52:16');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-21 03:52:17', '2019-01-21 03:52:17');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-21 06:58:00', '2019-01-21 06:58:00');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 07:00:42', '2019-01-21 07:00:42');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 07:00:49', '2019-01-21 07:00:49');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-21 07:00:55', '2019-01-21 07:00:55');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 07:03:39', '2019-01-21 07:03:39');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-21 07:03:40', '2019-01-21 07:03:40');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 07:05:43', '2019-01-21 07:05:43');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-21 07:05:50', '2019-01-21 07:05:50');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 07:06:43', '2019-01-21 07:06:43');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 07:06:45', '2019-01-21 07:06:45');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-21 07:06:46', '2019-01-21 07:06:46');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 07:07:04', '2019-01-21 07:07:04');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 07:07:06', '2019-01-21 07:07:06');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-21 07:07:07', '2019-01-21 07:07:07');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 07:09:13', '2019-01-21 07:09:13');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-21 07:09:15', '2019-01-21 07:09:15');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 00:21:46', '2019-01-22 00:21:46');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 00:37:48', '2019-01-22 00:37:48');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-22 00:40:45', '2019-01-22 00:40:45');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-22 00:40:49', '2019-01-22 00:40:49');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 00:47:42', '2019-01-22 00:47:42');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 00:49:16', '2019-01-22 00:49:16');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 01:18:49', '2019-01-22 01:18:49');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 01:33:38', '2019-01-22 01:33:38');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 01:34:26', '2019-01-22 01:34:26');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 01:34:27', '2019-01-22 01:34:27');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 01:50:57', '2019-01-22 01:50:57');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 02:00:20', '2019-01-22 02:00:20');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 02:01:14', '2019-01-22 02:01:14');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 02:06:52', '2019-01-22 02:06:52');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 02:07:09', '2019-01-22 02:07:09');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 02:25:57', '2019-01-22 02:25:57');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 02:27:48', '2019-01-22 02:27:48');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 02:28:16', '2019-01-22 02:28:16');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 02:30:21', '2019-01-22 02:30:21');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 02:30:44', '2019-01-22 02:30:44');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/classes/create', 'GET', '127.0.0.1', '[]', '2019-01-22 02:33:03', '2019-01-22 02:33:03');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 02:33:23', '2019-01-22 02:33:23');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 02:33:35', '2019-01-22 02:33:35');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 02:35:20', '2019-01-22 02:35:20');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 02:36:45', '2019-01-22 02:36:45');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 02:39:56', '2019-01-22 02:39:56');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 02:39:59', '2019-01-22 02:39:59');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-22 02:40:04', '2019-01-22 02:40:04');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 02:41:24', '2019-01-22 02:41:24');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 02:41:26', '2019-01-22 02:41:26');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-22 02:41:27', '2019-01-22 02:41:27');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 02:42:02', '2019-01-22 02:42:02');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 02:42:15', '2019-01-22 02:42:15');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 02:43:23', '2019-01-22 02:43:23');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/classes', 'POST', '127.0.0.1', '{\"class_name\":\"2018\\u8ba1\\u7b97\\u673a\\u672c\\u79d1\",\"college_id\":\"1\",\"num\":\"50\",\"_token\":\"zdiXOhs02gO0ipWoFwb8gBQkAmVXj0T0lxBGJqet\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/classes\"}', '2019-01-22 02:46:09', '2019-01-22 02:46:09');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-22 02:46:09', '2019-01-22 02:46:09');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 03:05:54', '2019-01-22 03:05:54');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 03:09:59', '2019-01-22 03:09:59');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/classes/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 03:10:10', '2019-01-22 03:10:10');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/classes/1', 'PUT', '127.0.0.1', '{\"class_name\":\"2018\\u8f6f\\u4ef6\\u5de5\\u7a0b\\u73ed\",\"college_id\":\"1\",\"num\":\"45\",\"_token\":\"zdiXOhs02gO0ipWoFwb8gBQkAmVXj0T0lxBGJqet\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/classes\"}', '2019-01-22 03:10:15', '2019-01-22 03:10:15');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-01-22 03:10:16', '2019-01-22 03:10:16');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 03:12:01', '2019-01-22 03:12:01');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 03:44:22', '2019-01-22 03:44:22');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/teachers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 03:52:53', '2019-01-22 03:52:53');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/teachers/1', 'PUT', '127.0.0.1', '{\"username\":\"\\u4e07\\u5c0f\\u578b\",\"password\":\"123456\",\"sex\":\"0\",\"job_title\":\"\\u8bb2\\u5e08\",\"content\":\"php\",\"phone\":\"15844460823\",\"_token\":\"zdiXOhs02gO0ipWoFwb8gBQkAmVXj0T0lxBGJqet\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachers\"}', '2019-01-22 03:53:16', '2019-01-22 03:53:16');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-22 03:53:17', '2019-01-22 03:53:17');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/teachers/1/edit', 'GET', '127.0.0.1', '[]', '2019-01-22 03:55:05', '2019-01-22 03:55:05');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 03:55:16', '2019-01-22 03:55:16');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 03:55:27', '2019-01-22 03:55:27');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5b66\\u9662\\u7ba1\\u7406\",\"icon\":\"fa-university\",\"uri\":\"colleges\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"zdiXOhs02gO0ipWoFwb8gBQkAmVXj0T0lxBGJqet\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2019-01-22 03:55:49', '2019-01-22 03:55:49');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-22 03:55:51', '2019-01-22 03:55:51');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"zdiXOhs02gO0ipWoFwb8gBQkAmVXj0T0lxBGJqet\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":12},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-01-22 03:56:08', '2019-01-22 03:56:08');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 03:56:09', '2019-01-22 03:56:09');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-22 03:56:53', '2019-01-22 03:56:53');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-22 03:57:00', '2019-01-22 03:57:00');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 03:57:05', '2019-01-22 03:57:05');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin/colleges/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-22 03:57:11', '2019-01-22 03:57:11');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-01-23 00:53:32', '2019-01-23 00:53:32');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 00:55:44', '2019-01-23 00:55:44');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 01:12:17', '2019-01-23 01:12:17');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-23 08:21:16', '2019-01-23 08:21:16');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 08:22:12', '2019-01-23 08:22:12');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 08:29:04', '2019-01-23 08:29:04');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 08:29:04', '2019-01-23 08:29:04');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-23 08:29:04', '2019-01-23 08:29:04');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-24 00:50:04', '2019-01-24 00:50:04');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 01:04:56', '2019-01-24 01:04:56');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 01:06:21', '2019-01-24 01:06:21');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 01:22:50', '2019-01-24 01:22:50');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 01:23:05', '2019-01-24 01:23:05');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 01:23:14', '2019-01-24 01:23:14');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 02:21:46', '2019-01-24 02:21:46');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '[]', '2019-01-24 02:21:46', '2019-01-24 02:21:46');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-24 02:22:28', '2019-01-24 02:22:28');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 02:30:58', '2019-01-24 02:30:58');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-24 02:30:58', '2019-01-24 02:30:58');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '[]', '2019-01-24 02:35:56', '2019-01-24 02:35:56');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '[]', '2019-01-24 02:59:13', '2019-01-24 02:59:13');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/teachingWorks', 'POST', '127.0.0.1', '{\"coures_id\":\"1\",\"class_id\":\"2\",\"teacher_id\":\"1\",\"start_time\":\"2019-01-17 00:00:00\",\"remark\":null,\"_token\":\"1fh1GpWp5Psr9yaDV8EsFqIgTUuFgp7ryklB1ifg\"}', '2019-01-24 03:10:37', '2019-01-24 03:10:37');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '[]', '2019-01-24 03:11:13', '2019-01-24 03:11:13');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin/teachingWorks', 'POST', '127.0.0.1', '{\"coures_id\":\"1\",\"class_id\":\"2\",\"teacher_id\":\"1\",\"start_time\":\"2019-01-17 00:00:00\",\"remark\":\"000\",\"_token\":\"1fh1GpWp5Psr9yaDV8EsFqIgTUuFgp7ryklB1ifg\"}', '2019-01-24 03:13:47', '2019-01-24 03:13:47');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-24 03:13:50', '2019-01-24 03:13:50');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 03:14:22', '2019-01-24 03:14:22');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 03:38:13', '2019-01-24 03:38:13');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 03:40:40', '2019-01-24 03:40:40');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/teachingWorks', 'POST', '127.0.0.1', '{\"coures_id\":\"2\",\"class_id\":\"2\",\"teacher_id\":\"1\",\"start_time\":\"2019-01-18 00:00:00\",\"remark\":\"000\",\"_token\":\"1fh1GpWp5Psr9yaDV8EsFqIgTUuFgp7ryklB1ifg\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachingWorks\"}', '2019-01-24 03:45:30', '2019-01-24 03:45:30');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-24 03:45:35', '2019-01-24 03:45:35');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-24 06:54:03', '2019-01-24 06:54:03');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 06:54:11', '2019-01-24 06:54:11');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 06:56:06', '2019-01-24 06:56:06');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 07:33:44', '2019-01-24 07:33:44');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 07:33:44', '2019-01-24 07:33:44');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'admin/teachers/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 07:33:51', '2019-01-24 07:33:51');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'admin/teachers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 07:33:53', '2019-01-24 07:33:53');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'admin/teachers/1', 'PUT', '127.0.0.1', '{\"username\":\"\\u4e07\\u5c0f\\u578b\",\"password\":\"123456\",\"sex\":\"1\",\"job_title\":\"\\u8bb2\\u5e08\",\"content\":\"php\",\"phone\":\"15844460823\",\"_token\":\"XYygr0p5XDXZjGRUj0zLzUOpuOuafs2q8c4xcGFz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachers\\/1\"}', '2019-01-24 07:33:59', '2019-01-24 07:33:59');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'admin/teachers/1', 'GET', '127.0.0.1', '[]', '2019-01-24 07:34:00', '2019-01-24 07:34:00');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 07:34:04', '2019-01-24 07:34:04');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 07:34:06', '2019-01-24 07:34:06');
INSERT INTO `admin_operation_log` VALUES (425, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"course_name\":\"\\u8ba1\\u7b97\\u673a\\u5bfc\\u8bba\",\"class_hour\":null,\"credit\":null,\"_token\":\"XYygr0p5XDXZjGRUj0zLzUOpuOuafs2q8c4xcGFz\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/courses\"}', '2019-01-24 07:34:13', '2019-01-24 07:34:13');
INSERT INTO `admin_operation_log` VALUES (426, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2019-01-24 07:34:15', '2019-01-24 07:34:15');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 07:34:18', '2019-01-24 07:34:18');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 07:34:18', '2019-01-24 07:34:18');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 07:34:21', '2019-01-24 07:34:21');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-24 07:40:36', '2019-01-24 07:40:36');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2019-01-24 07:44:44', '2019-01-24 07:44:44');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-28 02:14:14', '2019-01-28 02:14:14');
INSERT INTO `admin_operation_log` VALUES (433, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 02:14:37', '2019-01-28 02:14:37');
INSERT INTO `admin_operation_log` VALUES (434, 1, 'admin/teachingWorks/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 02:14:53', '2019-01-28 02:14:53');
INSERT INTO `admin_operation_log` VALUES (435, 1, 'admin/teachingWorks/2', 'PUT', '127.0.0.1', '{\"coures_id\":\"2\",\"class_id\":\"2\",\"teacher_id\":\"1\",\"start_time\":\"2019-01-18 00:00:00\",\"remark\":\"000\",\"_token\":\"gR7toTxQ4fNVewl2Npu69MDqM8RX4fol2oZBtY0s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachingWorks\"}', '2019-01-28 02:15:05', '2019-01-28 02:15:05');
INSERT INTO `admin_operation_log` VALUES (436, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-28 02:15:06', '2019-01-28 02:15:06');
INSERT INTO `admin_operation_log` VALUES (437, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 02:15:10', '2019-01-28 02:15:10');
INSERT INTO `admin_operation_log` VALUES (438, 1, 'admin/teachingWorks', 'POST', '127.0.0.1', '{\"coures_id\":\"2\",\"class_id\":\"2\",\"teacher_id\":\"1\",\"start_time\":\"2019-01-28 00:00:00\",\"remark\":\"000\",\"_token\":\"gR7toTxQ4fNVewl2Npu69MDqM8RX4fol2oZBtY0s\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachingWorks\"}', '2019-01-28 02:15:23', '2019-01-28 02:15:23');
INSERT INTO `admin_operation_log` VALUES (439, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-28 02:15:23', '2019-01-28 02:15:23');
INSERT INTO `admin_operation_log` VALUES (440, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 02:17:12', '2019-01-28 02:17:12');
INSERT INTO `admin_operation_log` VALUES (441, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 02:18:31', '2019-01-28 02:18:31');
INSERT INTO `admin_operation_log` VALUES (442, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 02:18:55', '2019-01-28 02:18:55');
INSERT INTO `admin_operation_log` VALUES (443, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 02:19:28', '2019-01-28 02:19:28');
INSERT INTO `admin_operation_log` VALUES (444, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-28 02:19:59', '2019-01-28 02:19:59');
INSERT INTO `admin_operation_log` VALUES (445, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 02:44:04', '2019-01-28 02:44:04');
INSERT INTO `admin_operation_log` VALUES (446, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-28 02:44:04', '2019-01-28 02:44:04');
INSERT INTO `admin_operation_log` VALUES (447, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 02:44:04', '2019-01-28 02:44:04');
INSERT INTO `admin_operation_log` VALUES (448, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-28 03:05:21', '2019-01-28 03:05:21');
INSERT INTO `admin_operation_log` VALUES (449, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 03:05:49', '2019-01-28 03:05:49');
INSERT INTO `admin_operation_log` VALUES (450, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 03:06:45', '2019-01-28 03:06:45');
INSERT INTO `admin_operation_log` VALUES (451, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-28 05:49:56', '2019-01-28 05:49:56');
INSERT INTO `admin_operation_log` VALUES (452, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-28 05:51:33', '2019-01-28 05:51:33');
INSERT INTO `admin_operation_log` VALUES (453, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-28 05:51:34', '2019-01-28 05:51:34');
INSERT INTO `admin_operation_log` VALUES (454, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 05:51:40', '2019-01-28 05:51:40');
INSERT INTO `admin_operation_log` VALUES (455, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 05:55:06', '2019-01-28 05:55:06');
INSERT INTO `admin_operation_log` VALUES (456, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 05:55:19', '2019-01-28 05:55:19');
INSERT INTO `admin_operation_log` VALUES (457, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 06:10:13', '2019-01-28 06:10:13');
INSERT INTO `admin_operation_log` VALUES (458, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 06:14:23', '2019-01-28 06:14:23');
INSERT INTO `admin_operation_log` VALUES (459, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-28 07:28:40', '2019-01-28 07:28:40');
INSERT INTO `admin_operation_log` VALUES (460, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-28 07:28:40', '2019-01-28 07:28:40');
INSERT INTO `admin_operation_log` VALUES (461, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-28 07:44:42', '2019-01-28 07:44:42');
INSERT INTO `admin_operation_log` VALUES (462, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 07:54:56', '2019-01-28 07:54:56');
INSERT INTO `admin_operation_log` VALUES (463, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 07:55:01', '2019-01-28 07:55:01');
INSERT INTO `admin_operation_log` VALUES (464, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 08:02:55', '2019-01-28 08:02:55');
INSERT INTO `admin_operation_log` VALUES (465, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 08:02:57', '2019-01-28 08:02:57');
INSERT INTO `admin_operation_log` VALUES (466, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-28 08:06:25', '2019-01-28 08:06:25');
INSERT INTO `admin_operation_log` VALUES (467, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-29 00:19:42', '2019-01-29 00:19:42');
INSERT INTO `admin_operation_log` VALUES (468, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 00:40:21', '2019-01-29 00:40:21');
INSERT INTO `admin_operation_log` VALUES (469, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 00:40:21', '2019-01-29 00:40:21');
INSERT INTO `admin_operation_log` VALUES (470, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 00:40:31', '2019-01-29 00:40:31');
INSERT INTO `admin_operation_log` VALUES (471, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 00:40:59', '2019-01-29 00:40:59');
INSERT INTO `admin_operation_log` VALUES (472, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 00:41:30', '2019-01-29 00:41:30');
INSERT INTO `admin_operation_log` VALUES (473, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-29 00:41:32', '2019-01-29 00:41:32');
INSERT INTO `admin_operation_log` VALUES (474, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 00:44:24', '2019-01-29 00:44:24');
INSERT INTO `admin_operation_log` VALUES (475, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 00:45:26', '2019-01-29 00:45:26');
INSERT INTO `admin_operation_log` VALUES (476, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-29 00:46:40', '2019-01-29 00:46:40');
INSERT INTO `admin_operation_log` VALUES (477, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 00:59:10', '2019-01-29 00:59:10');
INSERT INTO `admin_operation_log` VALUES (478, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 01:01:53', '2019-01-29 01:01:53');
INSERT INTO `admin_operation_log` VALUES (479, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 01:03:14', '2019-01-29 01:03:14');
INSERT INTO `admin_operation_log` VALUES (480, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 01:04:15', '2019-01-29 01:04:15');
INSERT INTO `admin_operation_log` VALUES (481, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 01:04:21', '2019-01-29 01:04:21');
INSERT INTO `admin_operation_log` VALUES (482, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 01:05:17', '2019-01-29 01:05:17');
INSERT INTO `admin_operation_log` VALUES (483, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 01:07:47', '2019-01-29 01:07:47');
INSERT INTO `admin_operation_log` VALUES (484, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 01:25:46', '2019-01-29 01:25:46');
INSERT INTO `admin_operation_log` VALUES (485, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-29 01:25:46', '2019-01-29 01:25:46');
INSERT INTO `admin_operation_log` VALUES (486, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 01:34:06', '2019-01-29 01:34:06');
INSERT INTO `admin_operation_log` VALUES (487, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 01:38:26', '2019-01-29 01:38:26');
INSERT INTO `admin_operation_log` VALUES (488, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 01:38:31', '2019-01-29 01:38:31');
INSERT INTO `admin_operation_log` VALUES (489, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 01:38:45', '2019-01-29 01:38:45');
INSERT INTO `admin_operation_log` VALUES (490, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 01:38:56', '2019-01-29 01:38:56');
INSERT INTO `admin_operation_log` VALUES (491, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-01-29 01:56:50', '2019-01-29 01:56:50');
INSERT INTO `admin_operation_log` VALUES (492, 1, 'admin/teachingWorks/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 02:06:22', '2019-01-29 02:06:22');
INSERT INTO `admin_operation_log` VALUES (493, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 02:06:34', '2019-01-29 02:06:34');
INSERT INTO `admin_operation_log` VALUES (494, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 02:07:55', '2019-01-29 02:07:55');
INSERT INTO `admin_operation_log` VALUES (495, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 02:07:57', '2019-01-29 02:07:57');
INSERT INTO `admin_operation_log` VALUES (496, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 02:10:53', '2019-01-29 02:10:53');
INSERT INTO `admin_operation_log` VALUES (497, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 02:14:42', '2019-01-29 02:14:42');
INSERT INTO `admin_operation_log` VALUES (498, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 02:19:19', '2019-01-29 02:19:19');
INSERT INTO `admin_operation_log` VALUES (499, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 02:19:28', '2019-01-29 02:19:28');
INSERT INTO `admin_operation_log` VALUES (500, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 02:19:31', '2019-01-29 02:19:31');
INSERT INTO `admin_operation_log` VALUES (501, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u79d1\\u7814\\u5de5\\u4f5c\\u91cf\",\"icon\":\"fa-align-right\",\"uri\":\"sciences\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"GUrJLqW21ii23Pd9GFVXGGo8U6LmBAEc8tDEMBqa\"}', '2019-01-29 02:20:26', '2019-01-29 02:20:26');
INSERT INTO `admin_operation_log` VALUES (502, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-29 02:20:27', '2019-01-29 02:20:27');
INSERT INTO `admin_operation_log` VALUES (503, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"GUrJLqW21ii23Pd9GFVXGGo8U6LmBAEc8tDEMBqa\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":12},{\\\"id\\\":13},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-01-29 02:20:35', '2019-01-29 02:20:35');
INSERT INTO `admin_operation_log` VALUES (504, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 02:20:37', '2019-01-29 02:20:37');
INSERT INTO `admin_operation_log` VALUES (505, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 02:21:22', '2019-01-29 02:21:22');
INSERT INTO `admin_operation_log` VALUES (506, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-29 02:21:25', '2019-01-29 02:21:25');
INSERT INTO `admin_operation_log` VALUES (507, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 03:41:37', '2019-01-29 03:41:37');
INSERT INTO `admin_operation_log` VALUES (508, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 03:41:37', '2019-01-29 03:41:37');
INSERT INTO `admin_operation_log` VALUES (509, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 03:41:57', '2019-01-29 03:41:57');
INSERT INTO `admin_operation_log` VALUES (510, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 03:42:14', '2019-01-29 03:42:14');
INSERT INTO `admin_operation_log` VALUES (511, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u79d1\\u7814\\u5de5\\u4f5c\\u91cf\",\"icon\":\"fa-align-right\",\"uri\":\"scienceWorks\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"GUrJLqW21ii23Pd9GFVXGGo8U6LmBAEc8tDEMBqa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2019-01-29 03:42:28', '2019-01-29 03:42:28');
INSERT INTO `admin_operation_log` VALUES (512, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-29 03:42:30', '2019-01-29 03:42:30');
INSERT INTO `admin_operation_log` VALUES (513, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"GUrJLqW21ii23Pd9GFVXGGo8U6LmBAEc8tDEMBqa\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":12},{\\\"id\\\":13},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-01-29 03:43:15', '2019-01-29 03:43:15');
INSERT INTO `admin_operation_log` VALUES (514, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 03:43:15', '2019-01-29 03:43:15');
INSERT INTO `admin_operation_log` VALUES (515, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-29 05:53:24', '2019-01-29 05:53:24');
INSERT INTO `admin_operation_log` VALUES (516, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 05:53:39', '2019-01-29 05:53:39');
INSERT INTO `admin_operation_log` VALUES (517, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 06:24:14', '2019-01-29 06:24:14');
INSERT INTO `admin_operation_log` VALUES (518, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 06:31:52', '2019-01-29 06:31:52');
INSERT INTO `admin_operation_log` VALUES (519, 1, 'admin/scienceWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 06:31:58', '2019-01-29 06:31:58');
INSERT INTO `admin_operation_log` VALUES (520, 1, 'admin/scienceWorks/create', 'GET', '127.0.0.1', '[]', '2019-01-29 06:42:53', '2019-01-29 06:42:53');
INSERT INTO `admin_operation_log` VALUES (521, 1, 'admin/scienceWorks/create', 'GET', '127.0.0.1', '[]', '2019-01-29 06:43:52', '2019-01-29 06:43:52');
INSERT INTO `admin_operation_log` VALUES (522, 1, 'admin/scienceWorks/create', 'GET', '127.0.0.1', '[]', '2019-01-29 06:52:55', '2019-01-29 06:52:55');
INSERT INTO `admin_operation_log` VALUES (523, 1, 'admin/scienceWorks', 'POST', '127.0.0.1', '{\"science_name\":\"\\u5f53\\u9762\\u4ed8\\u8bbe\\u8ba1\",\"science_type\":\"1\",\"level\":\"1\",\"award\":\"1\",\"year\":\"2019-01-29\",\"teacher_id\":\"1\",\"remake\":null,\"_token\":\"0Gx7mAPAm86yjZHX28V4YvauItY4v2wMebFsxKWz\"}', '2019-01-29 06:54:20', '2019-01-29 06:54:20');
INSERT INTO `admin_operation_log` VALUES (524, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '[]', '2019-01-29 06:54:21', '2019-01-29 06:54:21');
INSERT INTO `admin_operation_log` VALUES (525, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 08:47:30', '2019-01-29 08:47:30');
INSERT INTO `admin_operation_log` VALUES (526, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 08:47:30', '2019-01-29 08:47:30');
INSERT INTO `admin_operation_log` VALUES (527, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 08:48:15', '2019-01-29 08:48:15');
INSERT INTO `admin_operation_log` VALUES (528, 1, 'admin/classes/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-29 08:48:21', '2019-01-29 08:48:21');
INSERT INTO `admin_operation_log` VALUES (529, 1, 'admin/classes/1/edit', 'GET', '127.0.0.1', '[]', '2019-01-30 00:38:15', '2019-01-30 00:38:15');
INSERT INTO `admin_operation_log` VALUES (530, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 00:40:33', '2019-01-30 00:40:33');
INSERT INTO `admin_operation_log` VALUES (531, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 00:40:43', '2019-01-30 00:40:43');
INSERT INTO `admin_operation_log` VALUES (532, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 02:13:08', '2019-01-30 02:13:08');
INSERT INTO `admin_operation_log` VALUES (533, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 02:13:08', '2019-01-30 02:13:08');
INSERT INTO `admin_operation_log` VALUES (534, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 02:13:08', '2019-01-30 02:13:08');
INSERT INTO `admin_operation_log` VALUES (535, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 02:13:08', '2019-01-30 02:13:08');
INSERT INTO `admin_operation_log` VALUES (536, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 02:13:08', '2019-01-30 02:13:08');
INSERT INTO `admin_operation_log` VALUES (537, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 02:13:08', '2019-01-30 02:13:08');
INSERT INTO `admin_operation_log` VALUES (538, 1, 'admin/scienceWorks/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 02:15:24', '2019-01-30 02:15:24');
INSERT INTO `admin_operation_log` VALUES (539, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 02:15:44', '2019-01-30 02:15:44');
INSERT INTO `admin_operation_log` VALUES (540, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 02:42:16', '2019-01-30 02:42:16');
INSERT INTO `admin_operation_log` VALUES (541, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '[]', '2019-01-30 06:00:44', '2019-01-30 06:00:44');
INSERT INTO `admin_operation_log` VALUES (542, 1, 'admin/scienceWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 06:01:10', '2019-01-30 06:01:10');
INSERT INTO `admin_operation_log` VALUES (543, 1, 'admin/scienceWorks/create', 'GET', '127.0.0.1', '[]', '2019-01-30 06:31:20', '2019-01-30 06:31:20');
INSERT INTO `admin_operation_log` VALUES (544, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-15 00:17:56', '2019-02-15 00:17:56');
INSERT INTO `admin_operation_log` VALUES (545, 1, 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 00:35:47', '2019-02-15 00:35:47');
INSERT INTO `admin_operation_log` VALUES (546, 1, 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 00:35:47', '2019-02-15 00:35:47');
INSERT INTO `admin_operation_log` VALUES (547, 1, 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 00:35:48', '2019-02-15 00:35:48');
INSERT INTO `admin_operation_log` VALUES (548, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 00:35:57', '2019-02-15 00:35:57');
INSERT INTO `admin_operation_log` VALUES (549, 1, 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 00:36:00', '2019-02-15 00:36:00');
INSERT INTO `admin_operation_log` VALUES (550, 1, 'admin/colleges/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 00:36:01', '2019-02-15 00:36:01');
INSERT INTO `admin_operation_log` VALUES (551, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 00:36:07', '2019-02-15 00:36:07');
INSERT INTO `admin_operation_log` VALUES (552, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 00:36:09', '2019-02-15 00:36:09');
INSERT INTO `admin_operation_log` VALUES (553, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 01:53:21', '2019-02-15 01:53:21');
INSERT INTO `admin_operation_log` VALUES (554, 1, 'admin/scienceWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 01:56:33', '2019-02-15 01:56:33');
INSERT INTO `admin_operation_log` VALUES (555, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 02:14:20', '2019-02-15 02:14:20');
INSERT INTO `admin_operation_log` VALUES (556, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 02:14:22', '2019-02-15 02:14:22');
INSERT INTO `admin_operation_log` VALUES (557, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 02:14:25', '2019-02-15 02:14:25');
INSERT INTO `admin_operation_log` VALUES (558, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 02:14:27', '2019-02-15 02:14:27');
INSERT INTO `admin_operation_log` VALUES (559, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 02:14:30', '2019-02-15 02:14:30');
INSERT INTO `admin_operation_log` VALUES (560, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 02:14:32', '2019-02-15 02:14:32');
INSERT INTO `admin_operation_log` VALUES (561, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 02:14:42', '2019-02-15 02:14:42');
INSERT INTO `admin_operation_log` VALUES (562, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5de5\\u4f5c\\u91cf\\u7edf\\u8ba1\",\"icon\":\"fa-bars\",\"uri\":\"\\/tongji\",\"roles\":[null],\"permission\":null,\"_token\":\"mZdTXgC8x7xqeyuEesKoErUAMfMkds717ByL5itL\"}', '2019-02-15 02:16:54', '2019-02-15 02:16:54');
INSERT INTO `admin_operation_log` VALUES (563, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-15 02:16:55', '2019-02-15 02:16:55');
INSERT INTO `admin_operation_log` VALUES (564, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"mZdTXgC8x7xqeyuEesKoErUAMfMkds717ByL5itL\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":12},{\\\"id\\\":13},{\\\"id\\\":14},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-02-15 02:17:44', '2019-02-15 02:17:44');
INSERT INTO `admin_operation_log` VALUES (565, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 02:17:44', '2019-02-15 02:17:44');
INSERT INTO `admin_operation_log` VALUES (566, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-15 02:17:51', '2019-02-15 02:17:51');
INSERT INTO `admin_operation_log` VALUES (567, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-18 00:34:11', '2019-02-18 00:34:11');
INSERT INTO `admin_operation_log` VALUES (568, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 01:09:14', '2019-02-18 01:09:14');
INSERT INTO `admin_operation_log` VALUES (569, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 02:07:40', '2019-02-18 02:07:40');
INSERT INTO `admin_operation_log` VALUES (570, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 02:18:28', '2019-02-18 02:18:28');
INSERT INTO `admin_operation_log` VALUES (571, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 02:19:14', '2019-02-18 02:19:14');
INSERT INTO `admin_operation_log` VALUES (572, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 02:21:26', '2019-02-18 02:21:26');
INSERT INTO `admin_operation_log` VALUES (573, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 02:26:14', '2019-02-18 02:26:14');
INSERT INTO `admin_operation_log` VALUES (574, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 02:29:46', '2019-02-18 02:29:46');
INSERT INTO `admin_operation_log` VALUES (575, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 02:56:47', '2019-02-18 02:56:47');
INSERT INTO `admin_operation_log` VALUES (576, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 02:57:42', '2019-02-18 02:57:42');
INSERT INTO `admin_operation_log` VALUES (577, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 02:59:24', '2019-02-18 02:59:24');
INSERT INTO `admin_operation_log` VALUES (578, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 03:00:36', '2019-02-18 03:00:36');
INSERT INTO `admin_operation_log` VALUES (579, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 03:02:19', '2019-02-18 03:02:19');
INSERT INTO `admin_operation_log` VALUES (580, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 03:03:16', '2019-02-18 03:03:16');
INSERT INTO `admin_operation_log` VALUES (581, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 03:03:37', '2019-02-18 03:03:37');
INSERT INTO `admin_operation_log` VALUES (582, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 03:07:01', '2019-02-18 03:07:01');
INSERT INTO `admin_operation_log` VALUES (583, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 03:13:55', '2019-02-18 03:13:55');
INSERT INTO `admin_operation_log` VALUES (584, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-18 06:10:47', '2019-02-18 06:10:47');
INSERT INTO `admin_operation_log` VALUES (585, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-19 00:30:47', '2019-02-19 00:30:47');
INSERT INTO `admin_operation_log` VALUES (586, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 00:31:30', '2019-02-19 00:31:30');
INSERT INTO `admin_operation_log` VALUES (587, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 00:31:38', '2019-02-19 00:31:38');
INSERT INTO `admin_operation_log` VALUES (588, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5de5\\u4f5c\\u91cf\\u7edf\\u8ba1\",\"icon\":\"fa-bars\",\"uri\":\"\\/tongjis\",\"roles\":[null],\"permission\":null,\"_token\":\"z5ZdlE1zbLJ8izbQZUwleKVkE1L6bjGTqp27vkry\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2019-02-19 00:31:44', '2019-02-19 00:31:44');
INSERT INTO `admin_operation_log` VALUES (589, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-19 00:31:45', '2019-02-19 00:31:45');
INSERT INTO `admin_operation_log` VALUES (590, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"z5ZdlE1zbLJ8izbQZUwleKVkE1L6bjGTqp27vkry\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":12},{\\\"id\\\":13},{\\\"id\\\":14},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-02-19 00:31:54', '2019-02-19 00:31:54');
INSERT INTO `admin_operation_log` VALUES (591, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 00:31:54', '2019-02-19 00:31:54');
INSERT INTO `admin_operation_log` VALUES (592, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"z5ZdlE1zbLJ8izbQZUwleKVkE1L6bjGTqp27vkry\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":12},{\\\"id\\\":13},{\\\"id\\\":14},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-02-19 00:32:04', '2019-02-19 00:32:04');
INSERT INTO `admin_operation_log` VALUES (593, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 00:32:04', '2019-02-19 00:32:04');
INSERT INTO `admin_operation_log` VALUES (594, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-19 00:32:06', '2019-02-19 00:32:06');
INSERT INTO `admin_operation_log` VALUES (595, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 00:32:14', '2019-02-19 00:32:14');
INSERT INTO `admin_operation_log` VALUES (596, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 00:43:17', '2019-02-19 00:43:17');
INSERT INTO `admin_operation_log` VALUES (597, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 00:43:31', '2019-02-19 00:43:31');
INSERT INTO `admin_operation_log` VALUES (598, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 00:43:33', '2019-02-19 00:43:33');
INSERT INTO `admin_operation_log` VALUES (599, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 00:43:35', '2019-02-19 00:43:35');
INSERT INTO `admin_operation_log` VALUES (600, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 00:43:36', '2019-02-19 00:43:36');
INSERT INTO `admin_operation_log` VALUES (601, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 01:00:37', '2019-02-19 01:00:37');
INSERT INTO `admin_operation_log` VALUES (602, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 01:00:45', '2019-02-19 01:00:45');
INSERT INTO `admin_operation_log` VALUES (603, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 01:01:29', '2019-02-19 01:01:29');
INSERT INTO `admin_operation_log` VALUES (604, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 01:02:53', '2019-02-19 01:02:53');
INSERT INTO `admin_operation_log` VALUES (605, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 01:02:56', '2019-02-19 01:02:56');
INSERT INTO `admin_operation_log` VALUES (606, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 01:03:07', '2019-02-19 01:03:07');
INSERT INTO `admin_operation_log` VALUES (607, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 01:03:10', '2019-02-19 01:03:10');
INSERT INTO `admin_operation_log` VALUES (608, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 01:03:12', '2019-02-19 01:03:12');
INSERT INTO `admin_operation_log` VALUES (609, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 01:16:48', '2019-02-19 01:16:48');
INSERT INTO `admin_operation_log` VALUES (610, 1, 'admin/scienceWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 01:17:09', '2019-02-19 01:17:09');
INSERT INTO `admin_operation_log` VALUES (611, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 01:19:13', '2019-02-19 01:19:13');
INSERT INTO `admin_operation_log` VALUES (612, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 01:20:04', '2019-02-19 01:20:04');
INSERT INTO `admin_operation_log` VALUES (613, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 02:49:31', '2019-02-19 02:49:31');
INSERT INTO `admin_operation_log` VALUES (614, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-02-19 03:24:29', '2019-02-19 03:24:29');
INSERT INTO `admin_operation_log` VALUES (615, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 03:24:48', '2019-02-19 03:24:48');
INSERT INTO `admin_operation_log` VALUES (616, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 03:25:14', '2019-02-19 03:25:14');
INSERT INTO `admin_operation_log` VALUES (617, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 03:25:18', '2019-02-19 03:25:18');
INSERT INTO `admin_operation_log` VALUES (618, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 03:26:19', '2019-02-19 03:26:19');
INSERT INTO `admin_operation_log` VALUES (619, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '[]', '2019-02-19 03:29:50', '2019-02-19 03:29:50');
INSERT INTO `admin_operation_log` VALUES (620, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-19 05:43:51', '2019-02-19 05:43:51');
INSERT INTO `admin_operation_log` VALUES (621, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-19 05:44:08', '2019-02-19 05:44:08');
INSERT INTO `admin_operation_log` VALUES (622, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-19 05:44:12', '2019-02-19 05:44:12');
INSERT INTO `admin_operation_log` VALUES (623, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 05:44:18', '2019-02-19 05:44:18');
INSERT INTO `admin_operation_log` VALUES (624, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-19 07:28:58', '2019-02-19 07:28:58');
INSERT INTO `admin_operation_log` VALUES (625, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 07:28:58', '2019-02-19 07:28:58');
INSERT INTO `admin_operation_log` VALUES (626, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-20 01:33:32', '2019-02-20 01:33:32');
INSERT INTO `admin_operation_log` VALUES (627, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:35:32', '2019-02-20 01:35:32');
INSERT INTO `admin_operation_log` VALUES (628, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 02:32:00', '2019-02-20 02:32:00');
INSERT INTO `admin_operation_log` VALUES (629, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 02:32:00', '2019-02-20 02:32:00');
INSERT INTO `admin_operation_log` VALUES (630, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 02:33:11', '2019-02-20 02:33:11');
INSERT INTO `admin_operation_log` VALUES (631, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 02:36:05', '2019-02-20 02:36:05');
INSERT INTO `admin_operation_log` VALUES (632, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 02:37:47', '2019-02-20 02:37:47');
INSERT INTO `admin_operation_log` VALUES (633, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 02:39:39', '2019-02-20 02:39:39');
INSERT INTO `admin_operation_log` VALUES (634, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 02:42:48', '2019-02-20 02:42:48');
INSERT INTO `admin_operation_log` VALUES (635, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 02:43:11', '2019-02-20 02:43:11');
INSERT INTO `admin_operation_log` VALUES (636, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 02:43:52', '2019-02-20 02:43:52');
INSERT INTO `admin_operation_log` VALUES (637, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 02:46:33', '2019-02-20 02:46:33');
INSERT INTO `admin_operation_log` VALUES (638, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 02:47:08', '2019-02-20 02:47:08');
INSERT INTO `admin_operation_log` VALUES (639, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 02:47:12', '2019-02-20 02:47:12');
INSERT INTO `admin_operation_log` VALUES (640, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 03:34:19', '2019-02-20 03:34:19');
INSERT INTO `admin_operation_log` VALUES (641, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 03:42:58', '2019-02-20 03:42:58');
INSERT INTO `admin_operation_log` VALUES (642, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 03:51:31', '2019-02-20 03:51:31');
INSERT INTO `admin_operation_log` VALUES (643, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 06:18:08', '2019-02-20 06:18:08');
INSERT INTO `admin_operation_log` VALUES (644, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 06:27:20', '2019-02-20 06:27:20');
INSERT INTO `admin_operation_log` VALUES (645, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 06:28:01', '2019-02-20 06:28:01');
INSERT INTO `admin_operation_log` VALUES (646, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 06:28:25', '2019-02-20 06:28:25');
INSERT INTO `admin_operation_log` VALUES (647, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-20 06:48:58', '2019-02-20 06:48:58');
INSERT INTO `admin_operation_log` VALUES (648, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-20 06:51:55', '2019-02-20 06:51:55');
INSERT INTO `admin_operation_log` VALUES (649, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-21 00:20:59', '2019-02-21 00:20:59');
INSERT INTO `admin_operation_log` VALUES (650, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 00:31:41', '2019-02-21 00:31:41');
INSERT INTO `admin_operation_log` VALUES (651, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 00:31:47', '2019-02-21 00:31:47');
INSERT INTO `admin_operation_log` VALUES (652, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 00:31:53', '2019-02-21 00:31:53');
INSERT INTO `admin_operation_log` VALUES (653, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 00:31:57', '2019-02-21 00:31:57');
INSERT INTO `admin_operation_log` VALUES (654, 1, 'admin/teachers', 'POST', '127.0.0.1', '{\"username\":\"\\u90ed\\u5c0f\\u9e4f\",\"password\":\"admin\",\"sex\":\"1\",\"job_title\":\"\\u8bb2\\u5e08\",\"content\":\"java\",\"phone\":\"15844460823\",\"_token\":\"8GH9apZ7pAFHbAwzvbV0xGrm6tEUVpUZE18gtdwE\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachers\"}', '2019-02-21 00:32:51', '2019-02-21 00:32:51');
INSERT INTO `admin_operation_log` VALUES (655, 1, 'admin/teachers', 'GET', '127.0.0.1', '[]', '2019-02-21 00:32:51', '2019-02-21 00:32:51');
INSERT INTO `admin_operation_log` VALUES (656, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 00:32:56', '2019-02-21 00:32:56');
INSERT INTO `admin_operation_log` VALUES (657, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 00:33:01', '2019-02-21 00:33:01');
INSERT INTO `admin_operation_log` VALUES (658, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 00:33:07', '2019-02-21 00:33:07');
INSERT INTO `admin_operation_log` VALUES (659, 1, 'admin/teachingWorks/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 00:33:14', '2019-02-21 00:33:14');
INSERT INTO `admin_operation_log` VALUES (660, 1, 'admin/teachingWorks/3', 'PUT', '127.0.0.1', '{\"coures_id\":\"1\",\"class_id\":\"2\",\"teacher_id\":\"1\",\"start_time\":\"2019-01-28 00:00:00\",\"end_time\":null,\"remark\":\"000\",\"_token\":\"8GH9apZ7pAFHbAwzvbV0xGrm6tEUVpUZE18gtdwE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachingWorks\"}', '2019-02-21 00:33:28', '2019-02-21 00:33:28');
INSERT INTO `admin_operation_log` VALUES (661, 1, 'admin/teachingWorks/3/edit', 'GET', '127.0.0.1', '[]', '2019-02-21 00:33:30', '2019-02-21 00:33:30');
INSERT INTO `admin_operation_log` VALUES (662, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 00:42:09', '2019-02-21 00:42:09');
INSERT INTO `admin_operation_log` VALUES (663, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 00:42:09', '2019-02-21 00:42:09');
INSERT INTO `admin_operation_log` VALUES (664, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 00:42:09', '2019-02-21 00:42:09');
INSERT INTO `admin_operation_log` VALUES (665, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 00:42:09', '2019-02-21 00:42:09');
INSERT INTO `admin_operation_log` VALUES (666, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-02-21 00:42:09', '2019-02-21 00:42:09');
INSERT INTO `admin_operation_log` VALUES (667, 1, 'admin/teachingWorks/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 00:43:49', '2019-02-21 00:43:49');
INSERT INTO `admin_operation_log` VALUES (668, 1, 'admin/teachingWorks/2/edit', 'GET', '127.0.0.1', '[]', '2019-02-21 00:44:28', '2019-02-21 00:44:28');
INSERT INTO `admin_operation_log` VALUES (669, 1, 'admin/teachingWorks/2', 'GET', '127.0.0.1', '[]', '2019-02-21 07:00:09', '2019-02-21 07:00:09');
INSERT INTO `admin_operation_log` VALUES (670, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 00:26:48', '2019-02-22 00:26:48');
INSERT INTO `admin_operation_log` VALUES (671, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2019-02-22 00:37:22', '2019-02-22 00:37:22');
INSERT INTO `admin_operation_log` VALUES (672, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-22 00:38:25', '2019-02-22 00:38:25');
INSERT INTO `admin_operation_log` VALUES (673, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 00:38:56', '2019-02-22 00:38:56');
INSERT INTO `admin_operation_log` VALUES (674, 1, 'admin/scienceWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 00:39:12', '2019-02-22 00:39:12');
INSERT INTO `admin_operation_log` VALUES (675, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 00:49:15', '2019-02-22 00:49:15');
INSERT INTO `admin_operation_log` VALUES (676, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 02:33:57', '2019-02-22 02:33:57');
INSERT INTO `admin_operation_log` VALUES (677, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 02:36:18', '2019-02-22 02:36:18');
INSERT INTO `admin_operation_log` VALUES (678, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 02:36:24', '2019-02-22 02:36:24');
INSERT INTO `admin_operation_log` VALUES (679, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 02:36:46', '2019-02-22 02:36:46');
INSERT INTO `admin_operation_log` VALUES (680, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 02:37:55', '2019-02-22 02:37:55');
INSERT INTO `admin_operation_log` VALUES (681, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 02:38:36', '2019-02-22 02:38:36');
INSERT INTO `admin_operation_log` VALUES (682, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 02:39:22', '2019-02-22 02:39:22');
INSERT INTO `admin_operation_log` VALUES (683, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 02:41:13', '2019-02-22 02:41:13');
INSERT INTO `admin_operation_log` VALUES (684, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:05:35', '2019-02-22 03:05:35');
INSERT INTO `admin_operation_log` VALUES (685, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:06:45', '2019-02-22 03:06:45');
INSERT INTO `admin_operation_log` VALUES (686, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:14:34', '2019-02-22 03:14:34');
INSERT INTO `admin_operation_log` VALUES (687, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:15:14', '2019-02-22 03:15:14');
INSERT INTO `admin_operation_log` VALUES (688, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:15:40', '2019-02-22 03:15:40');
INSERT INTO `admin_operation_log` VALUES (689, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:16:18', '2019-02-22 03:16:18');
INSERT INTO `admin_operation_log` VALUES (690, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:29:31', '2019-02-22 03:29:31');
INSERT INTO `admin_operation_log` VALUES (691, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:31:08', '2019-02-22 03:31:08');
INSERT INTO `admin_operation_log` VALUES (692, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:31:46', '2019-02-22 03:31:46');
INSERT INTO `admin_operation_log` VALUES (693, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:32:00', '2019-02-22 03:32:00');
INSERT INTO `admin_operation_log` VALUES (694, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:33:01', '2019-02-22 03:33:01');
INSERT INTO `admin_operation_log` VALUES (695, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:33:34', '2019-02-22 03:33:34');
INSERT INTO `admin_operation_log` VALUES (696, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:34:53', '2019-02-22 03:34:53');
INSERT INTO `admin_operation_log` VALUES (697, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:36:02', '2019-02-22 03:36:02');
INSERT INTO `admin_operation_log` VALUES (698, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:39:54', '2019-02-22 03:39:54');
INSERT INTO `admin_operation_log` VALUES (699, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:40:16', '2019-02-22 03:40:16');
INSERT INTO `admin_operation_log` VALUES (700, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 03:40:39', '2019-02-22 03:40:39');
INSERT INTO `admin_operation_log` VALUES (701, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 05:47:21', '2019-02-22 05:47:21');
INSERT INTO `admin_operation_log` VALUES (702, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 05:51:11', '2019-02-22 05:51:11');
INSERT INTO `admin_operation_log` VALUES (703, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 06:01:17', '2019-02-22 06:01:17');
INSERT INTO `admin_operation_log` VALUES (704, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 06:06:53', '2019-02-22 06:06:53');
INSERT INTO `admin_operation_log` VALUES (705, 1, 'admin/tongjis', 'GET', '127.0.0.1', '[]', '2019-02-22 06:15:56', '2019-02-22 06:15:56');
INSERT INTO `admin_operation_log` VALUES (706, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:18:51', '2019-02-22 07:18:51');
INSERT INTO `admin_operation_log` VALUES (707, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:19:16', '2019-02-22 07:19:16');
INSERT INTO `admin_operation_log` VALUES (708, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:19:20', '2019-02-22 07:19:20');
INSERT INTO `admin_operation_log` VALUES (709, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:19:24', '2019-02-22 07:19:24');
INSERT INTO `admin_operation_log` VALUES (710, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:19:32', '2019-02-22 07:19:32');
INSERT INTO `admin_operation_log` VALUES (711, 1, 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:19:34', '2019-02-22 07:19:34');
INSERT INTO `admin_operation_log` VALUES (712, 1, 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:19:43', '2019-02-22 07:19:43');
INSERT INTO `admin_operation_log` VALUES (713, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:19:48', '2019-02-22 07:19:48');
INSERT INTO `admin_operation_log` VALUES (714, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:19:50', '2019-02-22 07:19:50');
INSERT INTO `admin_operation_log` VALUES (715, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:19:53', '2019-02-22 07:19:53');
INSERT INTO `admin_operation_log` VALUES (716, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:33:19', '2019-02-22 07:33:19');
INSERT INTO `admin_operation_log` VALUES (717, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:33:25', '2019-02-22 07:33:25');
INSERT INTO `admin_operation_log` VALUES (718, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:33:28', '2019-02-22 07:33:28');
INSERT INTO `admin_operation_log` VALUES (719, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:33:59', '2019-02-22 07:33:59');
INSERT INTO `admin_operation_log` VALUES (720, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-22 07:34:02', '2019-02-22 07:34:02');
INSERT INTO `admin_operation_log` VALUES (721, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-25 00:21:21', '2019-02-25 00:21:21');
INSERT INTO `admin_operation_log` VALUES (722, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:24:19', '2019-02-25 00:24:19');
INSERT INTO `admin_operation_log` VALUES (723, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:24:26', '2019-02-25 00:24:26');
INSERT INTO `admin_operation_log` VALUES (724, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:24:30', '2019-02-25 00:24:30');
INSERT INTO `admin_operation_log` VALUES (725, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:24:33', '2019-02-25 00:24:33');
INSERT INTO `admin_operation_log` VALUES (726, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:24:41', '2019-02-25 00:24:41');
INSERT INTO `admin_operation_log` VALUES (727, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:24:44', '2019-02-25 00:24:44');
INSERT INTO `admin_operation_log` VALUES (728, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"course_name\":\"HTML\\u57fa\\u7840\",\"class_hour\":\"50\",\"credit\":\"10\",\"_token\":\"86QmBBC6UI3AfN1vb0IfW0cIRPv2a8p9XLGtGsYM\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/courses\"}', '2019-02-25 00:25:43', '2019-02-25 00:25:43');
INSERT INTO `admin_operation_log` VALUES (729, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2019-02-25 00:25:45', '2019-02-25 00:25:45');
INSERT INTO `admin_operation_log` VALUES (730, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2019-02-25 00:35:26', '2019-02-25 00:35:26');
INSERT INTO `admin_operation_log` VALUES (731, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2019-02-25 00:37:55', '2019-02-25 00:37:55');
INSERT INTO `admin_operation_log` VALUES (732, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:38:04', '2019-02-25 00:38:04');
INSERT INTO `admin_operation_log` VALUES (733, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2019-02-25 00:38:04', '2019-02-25 00:38:04');
INSERT INTO `admin_operation_log` VALUES (734, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2019-02-25 00:43:21', '2019-02-25 00:43:21');
INSERT INTO `admin_operation_log` VALUES (735, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:43:27', '2019-02-25 00:43:27');
INSERT INTO `admin_operation_log` VALUES (736, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"course_name\":\"HTML\\u57fa\\u7840\",\"class_hour\":\"50\",\"credit\":\"10\",\"type\":\"0\",\"_token\":\"86QmBBC6UI3AfN1vb0IfW0cIRPv2a8p9XLGtGsYM\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/courses\"}', '2019-02-25 00:43:37', '2019-02-25 00:43:37');
INSERT INTO `admin_operation_log` VALUES (737, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2019-02-25 00:43:37', '2019-02-25 00:43:37');
INSERT INTO `admin_operation_log` VALUES (738, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:44:06', '2019-02-25 00:44:06');
INSERT INTO `admin_operation_log` VALUES (739, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:49:30', '2019-02-25 00:49:30');
INSERT INTO `admin_operation_log` VALUES (740, 1, 'admin/courses/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:49:32', '2019-02-25 00:49:32');
INSERT INTO `admin_operation_log` VALUES (741, 1, 'admin/courses/3', 'PUT', '127.0.0.1', '{\"course_name\":\"HTML\\u57fa\\u7840\",\"class_hour\":\"50\",\"credit\":\"10\",\"type\":\"\\u5b9e\\u8df5\\u8bfe\",\"_token\":\"86QmBBC6UI3AfN1vb0IfW0cIRPv2a8p9XLGtGsYM\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/courses\"}', '2019-02-25 00:49:37', '2019-02-25 00:49:37');
INSERT INTO `admin_operation_log` VALUES (742, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2019-02-25 00:49:38', '2019-02-25 00:49:38');
INSERT INTO `admin_operation_log` VALUES (743, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:49:43', '2019-02-25 00:49:43');
INSERT INTO `admin_operation_log` VALUES (744, 1, 'admin/courses/1', 'PUT', '127.0.0.1', '{\"course_name\":\"\\u8ba1\\u7b97\\u673a\\u5bfc\\u8bba\",\"class_hour\":\"40\",\"credit\":\"5\",\"type\":\"\\u7406\\u8bba\\u8bfe\",\"_token\":\"86QmBBC6UI3AfN1vb0IfW0cIRPv2a8p9XLGtGsYM\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/courses\"}', '2019-02-25 00:49:47', '2019-02-25 00:49:47');
INSERT INTO `admin_operation_log` VALUES (745, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2019-02-25 00:49:48', '2019-02-25 00:49:48');
INSERT INTO `admin_operation_log` VALUES (746, 1, 'admin/courses/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:49:50', '2019-02-25 00:49:50');
INSERT INTO `admin_operation_log` VALUES (747, 1, 'admin/courses/2', 'PUT', '127.0.0.1', '{\"course_name\":\"JAVA\",\"class_hour\":\"30\",\"credit\":\"6\",\"type\":\"\\u7406\\u8bba\\u8bfe\",\"_token\":\"86QmBBC6UI3AfN1vb0IfW0cIRPv2a8p9XLGtGsYM\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/courses\"}', '2019-02-25 00:49:53', '2019-02-25 00:49:53');
INSERT INTO `admin_operation_log` VALUES (748, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2019-02-25 00:49:54', '2019-02-25 00:49:54');
INSERT INTO `admin_operation_log` VALUES (749, 1, 'admin/courses/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:49:57', '2019-02-25 00:49:57');
INSERT INTO `admin_operation_log` VALUES (750, 1, 'admin/colleges', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:50:03', '2019-02-25 00:50:03');
INSERT INTO `admin_operation_log` VALUES (751, 1, 'admin/colleges/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:50:05', '2019-02-25 00:50:05');
INSERT INTO `admin_operation_log` VALUES (752, 1, 'admin/colleges', 'POST', '127.0.0.1', '{\"college_name\":\"\\u8f6f\\u4ef6\\u5b66\\u9662\",\"phone\":\"11111111111\",\"_token\":\"86QmBBC6UI3AfN1vb0IfW0cIRPv2a8p9XLGtGsYM\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/colleges\"}', '2019-02-25 00:50:24', '2019-02-25 00:50:24');
INSERT INTO `admin_operation_log` VALUES (753, 1, 'admin/colleges', 'GET', '127.0.0.1', '[]', '2019-02-25 00:50:25', '2019-02-25 00:50:25');
INSERT INTO `admin_operation_log` VALUES (754, 1, 'admin/colleges/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:50:29', '2019-02-25 00:50:29');
INSERT INTO `admin_operation_log` VALUES (755, 1, 'admin/colleges/2', 'PUT', '127.0.0.1', '{\"college_name\":\"\\u7269\\u7406\\u5b66\\u9662\",\"phone\":\"15844460823\",\"_token\":\"86QmBBC6UI3AfN1vb0IfW0cIRPv2a8p9XLGtGsYM\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/colleges\"}', '2019-02-25 00:50:36', '2019-02-25 00:50:36');
INSERT INTO `admin_operation_log` VALUES (756, 1, 'admin/colleges', 'GET', '127.0.0.1', '[]', '2019-02-25 00:50:36', '2019-02-25 00:50:36');
INSERT INTO `admin_operation_log` VALUES (757, 1, 'admin/classes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:51:04', '2019-02-25 00:51:04');
INSERT INTO `admin_operation_log` VALUES (758, 1, 'admin/classes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:51:06', '2019-02-25 00:51:06');
INSERT INTO `admin_operation_log` VALUES (759, 1, 'admin/classes', 'POST', '127.0.0.1', '{\"class_name\":\"2018\\u8f6f\\u4ef6\\u5de5\\u7a0b\\u73ed\",\"college_id\":\"4\",\"num\":\"30\",\"_token\":\"86QmBBC6UI3AfN1vb0IfW0cIRPv2a8p9XLGtGsYM\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/classes\"}', '2019-02-25 00:52:04', '2019-02-25 00:52:04');
INSERT INTO `admin_operation_log` VALUES (760, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-02-25 00:52:04', '2019-02-25 00:52:04');
INSERT INTO `admin_operation_log` VALUES (761, 1, 'admin/classes/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:52:09', '2019-02-25 00:52:09');
INSERT INTO `admin_operation_log` VALUES (762, 1, 'admin/classes/3', 'PUT', '127.0.0.1', '{\"class_name\":\"2018\\u7f51\\u7edc\\u5de5\\u7a0b\\u73ed\",\"college_id\":\"1\",\"num\":\"30\",\"_token\":\"86QmBBC6UI3AfN1vb0IfW0cIRPv2a8p9XLGtGsYM\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/classes\"}', '2019-02-25 00:56:09', '2019-02-25 00:56:09');
INSERT INTO `admin_operation_log` VALUES (763, 1, 'admin/classes', 'GET', '127.0.0.1', '[]', '2019-02-25 00:56:09', '2019-02-25 00:56:09');
INSERT INTO `admin_operation_log` VALUES (764, 1, 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:56:15', '2019-02-25 00:56:15');
INSERT INTO `admin_operation_log` VALUES (765, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:56:18', '2019-02-25 00:56:18');
INSERT INTO `admin_operation_log` VALUES (766, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:56:21', '2019-02-25 00:56:21');
INSERT INTO `admin_operation_log` VALUES (767, 1, 'admin/teachingWorks/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 00:56:30', '2019-02-25 00:56:30');
INSERT INTO `admin_operation_log` VALUES (768, 1, 'admin/teachingWorks/2', 'PUT', '127.0.0.1', '{\"coures_id\":\"3\",\"class_id\":\"3\",\"teacher_id\":\"1\",\"start_time\":\"2019-01-18 00:00:00\",\"end_time\":\"2019-09-08 00:00:00\",\"remark\":\"000\",\"_token\":\"86QmBBC6UI3AfN1vb0IfW0cIRPv2a8p9XLGtGsYM\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachingWorks\"}', '2019-02-25 00:58:48', '2019-02-25 00:58:48');
INSERT INTO `admin_operation_log` VALUES (769, 1, 'admin/teachingWorks/2/edit', 'GET', '127.0.0.1', '[]', '2019-02-25 00:58:49', '2019-02-25 00:58:49');
INSERT INTO `admin_operation_log` VALUES (770, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '[]', '2019-02-25 03:38:52', '2019-02-25 03:38:52');
INSERT INTO `admin_operation_log` VALUES (771, 1, 'admin/scienceWorks/create', 'GET', '127.0.0.1', '[]', '2019-02-25 06:31:25', '2019-02-25 06:31:25');
INSERT INTO `admin_operation_log` VALUES (772, 1, 'admin/scienceWorks', 'POST', '127.0.0.1', '{\"science_name\":\"\\u6536\\u94f6\\u5b9d\\u7cfb\\u7edf\",\"science_type\":\"2\",\"level\":\"1\",\"award\":\"1\",\"year\":\"2019-02-25\",\"teacher_id\":\"2\",\"remake\":\"00\",\"_token\":\"KtMM5OjSeBszzHkvT3DLkbnZmVOELcNVSv0meFOJ\"}', '2019-02-25 06:31:59', '2019-02-25 06:31:59');
INSERT INTO `admin_operation_log` VALUES (773, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '[]', '2019-02-25 06:32:00', '2019-02-25 06:32:00');
INSERT INTO `admin_operation_log` VALUES (774, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:32:05', '2019-02-25 06:32:05');
INSERT INTO `admin_operation_log` VALUES (775, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:32:13', '2019-02-25 06:32:13');
INSERT INTO `admin_operation_log` VALUES (776, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:32:15', '2019-02-25 06:32:15');
INSERT INTO `admin_operation_log` VALUES (777, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:32:18', '2019-02-25 06:32:18');
INSERT INTO `admin_operation_log` VALUES (778, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:32:21', '2019-02-25 06:32:21');
INSERT INTO `admin_operation_log` VALUES (779, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:32:28', '2019-02-25 06:32:28');
INSERT INTO `admin_operation_log` VALUES (780, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:32:30', '2019-02-25 06:32:30');
INSERT INTO `admin_operation_log` VALUES (781, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:32:32', '2019-02-25 06:32:32');
INSERT INTO `admin_operation_log` VALUES (782, 1, 'admin/teachingWorks', 'POST', '127.0.0.1', '{\"coures_id\":\"3\",\"class_id\":\"3\",\"teacher_id\":\"2\",\"start_time\":\"2019-02-25 00:00:00\",\"end_time\":\"2019-10-30 00:00:00\",\"remark\":null,\"_token\":\"KtMM5OjSeBszzHkvT3DLkbnZmVOELcNVSv0meFOJ\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachingWorks\"}', '2019-02-25 06:32:53', '2019-02-25 06:32:53');
INSERT INTO `admin_operation_log` VALUES (783, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '[]', '2019-02-25 06:32:54', '2019-02-25 06:32:54');
INSERT INTO `admin_operation_log` VALUES (784, 1, 'admin/teachingWorks', 'POST', '127.0.0.1', '{\"coures_id\":\"3\",\"class_id\":\"3\",\"teacher_id\":\"2\",\"start_time\":\"2019-02-25 00:00:00\",\"end_time\":\"2019-10-30 00:00:00\",\"remark\":\"00\",\"_token\":\"KtMM5OjSeBszzHkvT3DLkbnZmVOELcNVSv0meFOJ\"}', '2019-02-25 06:41:43', '2019-02-25 06:41:43');
INSERT INTO `admin_operation_log` VALUES (785, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '[]', '2019-02-25 06:41:44', '2019-02-25 06:41:44');
INSERT INTO `admin_operation_log` VALUES (786, 1, 'admin/teachingWorks', 'POST', '127.0.0.1', '{\"course_id\":null,\"class_id\":\"3\",\"teacher_id\":\"2\",\"start_time\":\"2019-02-25 00:00:00\",\"end_time\":\"2019-10-30 00:00:00\",\"remark\":\"00\",\"_token\":\"KtMM5OjSeBszzHkvT3DLkbnZmVOELcNVSv0meFOJ\"}', '2019-02-25 06:42:06', '2019-02-25 06:42:06');
INSERT INTO `admin_operation_log` VALUES (787, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '[]', '2019-02-25 06:42:07', '2019-02-25 06:42:07');
INSERT INTO `admin_operation_log` VALUES (788, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:42:54', '2019-02-25 06:42:54');
INSERT INTO `admin_operation_log` VALUES (789, 1, 'admin/teachingWorks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:42:57', '2019-02-25 06:42:57');
INSERT INTO `admin_operation_log` VALUES (790, 1, 'admin/teachingWorks', 'POST', '127.0.0.1', '{\"course_id\":\"3\",\"classes_id\":\"3\",\"teacher_id\":\"2\",\"start_time\":\"2019-02-25 00:00:00\",\"end_time\":\"2019-10-30 00:00:00\",\"remark\":\"00\",\"_token\":\"KtMM5OjSeBszzHkvT3DLkbnZmVOELcNVSv0meFOJ\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachingWorks\"}', '2019-02-25 06:43:13', '2019-02-25 06:43:13');
INSERT INTO `admin_operation_log` VALUES (791, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-02-25 06:43:14', '2019-02-25 06:43:14');
INSERT INTO `admin_operation_log` VALUES (792, 1, 'admin/teachingWorks/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:43:19', '2019-02-25 06:43:19');
INSERT INTO `admin_operation_log` VALUES (793, 1, 'admin/teachingWorks/3', 'PUT', '127.0.0.1', '{\"course_id\":\"2\",\"classes_id\":\"2\",\"teacher_id\":\"1\",\"start_time\":\"2019-01-28 00:00:00\",\"end_time\":\"2019-09-24 00:00:00\",\"remark\":\"000\",\"_token\":\"KtMM5OjSeBszzHkvT3DLkbnZmVOELcNVSv0meFOJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/teachingWorks\"}', '2019-02-25 06:43:30', '2019-02-25 06:43:30');
INSERT INTO `admin_operation_log` VALUES (794, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '[]', '2019-02-25 06:43:30', '2019-02-25 06:43:30');
INSERT INTO `admin_operation_log` VALUES (795, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:43:38', '2019-02-25 06:43:38');
INSERT INTO `admin_operation_log` VALUES (796, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:43:42', '2019-02-25 06:43:42');
INSERT INTO `admin_operation_log` VALUES (797, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:44:08', '2019-02-25 06:44:08');
INSERT INTO `admin_operation_log` VALUES (798, 1, 'admin/teachingWorks/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:44:11', '2019-02-25 06:44:11');
INSERT INTO `admin_operation_log` VALUES (799, 1, 'admin/teachingWorks/2', 'GET', '127.0.0.1', '[]', '2019-02-25 06:45:49', '2019-02-25 06:45:49');
INSERT INTO `admin_operation_log` VALUES (800, 1, 'admin/teachingWorks/2', 'GET', '127.0.0.1', '[]', '2019-02-25 06:46:07', '2019-02-25 06:46:07');
INSERT INTO `admin_operation_log` VALUES (801, 1, 'admin/teachingWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:46:34', '2019-02-25 06:46:34');
INSERT INTO `admin_operation_log` VALUES (802, 1, 'admin/scienceWorks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:46:37', '2019-02-25 06:46:37');
INSERT INTO `admin_operation_log` VALUES (803, 1, 'admin/tongjis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 06:46:39', '2019-02-25 06:46:39');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 8, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 9, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 10, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 11, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 12, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 13, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2019-01-02 07:51:59', '2019-01-02 07:51:59');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$0Oej1GhGHOTJ7G6CSFsioOh7IE5jhdCNb1B.XftrFDJ5XrazV.3xK', 'Administrator', NULL, 'T1JPro6pwXIlpt9I5KlZ2ooyO0cZhnRGxAWUpyLQ2GkFGYQyKXRtTU8VblJv', '2019-01-02 07:51:59', '2019-01-02 07:51:59');

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '班级名称',
  `college_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属学院编号',
  `num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属学院名称',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES (1, '2018软件工程班', '1', '45', '2019-01-21 03:52:17', '2019-01-22 03:10:15');
INSERT INTO `classes` VALUES (2, '2018计算机本科', '1', '50', '2019-01-22 02:46:09', '2019-01-22 02:46:09');
INSERT INTO `classes` VALUES (3, '2018网络工程班', '1', '30', '2019-02-25 00:52:04', '2019-02-25 00:56:09');

-- ----------------------------
-- Table structure for colleges
-- ----------------------------
DROP TABLE IF EXISTS `colleges`;
CREATE TABLE `colleges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `college_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '学院名称',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系电话',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of colleges
-- ----------------------------
INSERT INTO `colleges` VALUES (1, '计算机学院', '15844460823', '2019-01-08 01:53:48', '2019-01-08 01:53:48');
INSERT INTO `colleges` VALUES (2, '物理学院', '15844460823', NULL, '2019-02-25 00:50:36');
INSERT INTO `colleges` VALUES (3, '经济管理', '15141564156', NULL, NULL);
INSERT INTO `colleges` VALUES (4, '软件学院', '11111111111', '2019-02-25 00:50:24', '2019-02-25 00:50:24');

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '课程名称',
  `class_hour` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '学时',
  `credit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '学分',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES (1, '计算机导论', '40', '5', '理论课', '2019-01-08 01:54:30', '2019-02-25 00:49:47');
INSERT INTO `courses` VALUES (2, 'JAVA', '30', '6', '理论课', '2019-01-18 01:06:13', '2019-02-25 00:49:53');
INSERT INTO `courses` VALUES (3, 'HTML基础', '50', '10', '实践课', '2019-02-25 00:43:37', '2019-02-25 00:49:37');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_01_02_081017_create_teachers_table', 2);
INSERT INTO `migrations` VALUES (5, '2019_01_02_083133_create_courses_table', 2);
INSERT INTO `migrations` VALUES (6, '2019_01_02_084230_create_grades_table', 2);
INSERT INTO `migrations` VALUES (7, '2019_01_03_011159_create_sciences_table', 2);
INSERT INTO `migrations` VALUES (8, '2019_01_03_013416_create_teaching_works_table', 2);
INSERT INTO `migrations` VALUES (9, '2019_01_03_014300_create_science_works_table', 2);
INSERT INTO `migrations` VALUES (10, '2019_01_08_073231_create_classes_table', 3);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for science_works
-- ----------------------------
DROP TABLE IF EXISTS `science_works`;
CREATE TABLE `science_works`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `science_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '科研名称',
  `science_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '科研类型',
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '等级',
  `award` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '获奖情况',
  `year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '年纪',
  `teacher_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属人员',
  `remake` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of science_works
-- ----------------------------
INSERT INTO `science_works` VALUES (1, '当面付设计', '1', '1', '1', '2019-01-29', '1', NULL, '2019-01-29 06:54:20', '2019-01-29 06:54:20');
INSERT INTO `science_works` VALUES (2, '收银宝系统', '2', '1', '1', '2019-02-25', '2', '00', '2019-02-25 06:32:00', '2019-02-25 06:32:00');

-- ----------------------------
-- Table structure for sciences
-- ----------------------------
DROP TABLE IF EXISTS `sciences`;
CREATE TABLE `sciences`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `science_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '科研名称',
  `science_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '科研类型',
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '等级',
  `award` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '获奖情况',
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '学年',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属人员',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for teachers
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '教师编号',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '教师姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录密码',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '性别',
  `job_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '职称',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '备注/研究方向',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系电话',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teachers
-- ----------------------------
INSERT INTO `teachers` VALUES (1, '万小型', '123456', '1', '讲师', 'php', '15844460823', '2019-01-04 03:30:18', '2019-01-24 07:33:59');
INSERT INTO `teachers` VALUES (2, '郭小鹏', 'admin', '1', '讲师', 'java', '15844460823', '2019-02-21 00:32:51', '2019-02-21 00:32:51');

-- ----------------------------
-- Table structure for teaching_works
-- ----------------------------
DROP TABLE IF EXISTS `teaching_works`;
CREATE TABLE `teaching_works`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '课程编号',
  `classes_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '班级名称',
  `teacher_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '教师编号',
  `start_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '开课时间',
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '结课时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teaching_works
-- ----------------------------
INSERT INTO `teaching_works` VALUES (2, '2', '2', '1', '2019-01-18 00:00:00', NULL, '000', '2019-01-24 03:45:32', '2019-01-24 03:45:32');
INSERT INTO `teaching_works` VALUES (3, '2', '2', '1', '2019-01-28 00:00:00', '2019-09-24 00:00:00', '000', '2019-01-28 02:15:23', '2019-02-25 06:43:30');
INSERT INTO `teaching_works` VALUES (4, '3', '3', '2', '2019-02-25 00:00:00', '2019-10-30 00:00:00', '00', '2019-02-25 06:43:13', '2019-02-25 06:43:13');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
