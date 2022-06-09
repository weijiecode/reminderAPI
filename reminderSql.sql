/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : reminderSql

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 09/06/2022 18:00:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `introduction` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES (1, 'admin', 'admin1', 'b9a44f06013c2cb37e18a7458b66e83c', 'http://localhost:5001/public/upload/933d4dbfb38111f45c100cd921095495', '0', '111', '222', '12');
COMMIT;

-- ----------------------------
-- Table structure for admin_login_data
-- ----------------------------
DROP TABLE IF EXISTS `admin_login_data`;
CREATE TABLE `admin_login_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createtime` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_login_data
-- ----------------------------
BEGIN;
INSERT INTO `admin_login_data` VALUES (1, 'admin', '2022-06-01', '192.168.0.1');
INSERT INTO `admin_login_data` VALUES (2, 'admin', '2022-06-07 00:55:05', '106.122.83.171');
INSERT INTO `admin_login_data` VALUES (3, 'admin', '2022-06-07 00:57:46', '106.122.83.171');
INSERT INTO `admin_login_data` VALUES (4, 'admin', '2022-06-07 01:01:15', '106.122.83.171');
INSERT INTO `admin_login_data` VALUES (5, 'admin', '2022-06-07 01:04:27', '106.122.83.171');
INSERT INTO `admin_login_data` VALUES (6, 'admin', '2022-06-07 01:09:42', '106.122.83.171');
INSERT INTO `admin_login_data` VALUES (7, 'admin', '2022-06-07 02:23:23', '106.122.83.171');
INSERT INTO `admin_login_data` VALUES (8, 'admin', '2022-06-08 01:56:40', '106.122.83.171');
INSERT INTO `admin_login_data` VALUES (9, 'admin', '2022-06-08 01:59:37', '106.122.83.171');
INSERT INTO `admin_login_data` VALUES (10, 'admin', '2022-06-08 12:43:09', '106.122.83.171');
INSERT INTO `admin_login_data` VALUES (11, 'admin', '2022-06-08 20:17:09', '106.122.83.171');
INSERT INTO `admin_login_data` VALUES (12, 'admin', '2022-06-08 23:41:08', '106.122.83.171');
INSERT INTO `admin_login_data` VALUES (13, 'admin', '2022-06-09 13:04:43', '220.249.191.58');
INSERT INTO `admin_login_data` VALUES (14, 'admin', '2022-06-09 13:06:01', '220.249.191.58');
INSERT INTO `admin_login_data` VALUES (15, 'admin', '2022-06-09 13:23:48', '220.249.191.58');
INSERT INTO `admin_login_data` VALUES (16, 'admin', '2022-06-09 13:26:19', '220.249.191.58');
INSERT INTO `admin_login_data` VALUES (17, 'admin', '2022-06-09 16:17:25', '220.249.191.58');
INSERT INTO `admin_login_data` VALUES (18, 'admin', '2022-06-09 16:23:15', '220.249.191.58');
COMMIT;

-- ----------------------------
-- Table structure for admin_safe
-- ----------------------------
DROP TABLE IF EXISTS `admin_safe`;
CREATE TABLE `admin_safe` (
  `id` int NOT NULL,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `question` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `answer` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `qq` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_safe
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for backlog
-- ----------------------------
DROP TABLE IF EXISTS `backlog`;
CREATE TABLE `backlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contents` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `datetime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `classvalue` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `colorbg` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createtime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `done` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of backlog
-- ----------------------------
BEGIN;
INSERT INTO `backlog` VALUES (2, 'root', '1234', '2022-05-01 00:05', '#icon-health', '#1DBD84', '2022-02-10 03:33:59', 1);
INSERT INTO `backlog` VALUES (3, 'root', '12345', '2022-05-01 00:05', '#icon-social', '#518BF1', '2022-02-10 03:38:03', 0);
INSERT INTO `backlog` VALUES (7, 'root', 'test', '2022-03-06 21:13', '#icon-work', '#518BF1', '2022-02-11 02:20:47', 1);
INSERT INTO `backlog` VALUES (8, 'root', 'test', '2022-03-06 21:56', '#icon-work', '#518BF1', '2022-02-13 03:59:09', 1);
INSERT INTO `backlog` VALUES (12, 'root2', '123', '2022-01-31 02:28', '#icon-work', '#518BF1', '2022-02-13 04:57:32', 0);
INSERT INTO `backlog` VALUES (13, 'root2', 'root2', '2022-02-22 22:37', '#icon-work', '#518BF1', '2022-02-13 17:58:27', 0);
INSERT INTO `backlog` VALUES (15, 'root2', '666', '2022-02-22 22:37', '#icon-work', '#518BF1', '2022-02-13 18:00:01', 0);
INSERT INTO `backlog` VALUES (16, 'root2', '12', '2022-02-23 22:37', '#icon-work', '#518BF1', '2022-02-13 18:01:32', 0);
INSERT INTO `backlog` VALUES (17, 'root2', '3', '2022-03-22 22:37', '#icon-work', '#518BF1', '2022-02-13 18:17:05', 0);
INSERT INTO `backlog` VALUES (29, 'root', '234234', '2022-05-01 00:05', '#icon-social', '#FE738A', '2022-02-20 20:08:34', 1);
INSERT INTO `backlog` VALUES (30, 'root', '324234', '2022-05-01 00:06', '#icon-study', '#FFCD00', '2022-02-20 20:08:40', 0);
INSERT INTO `backlog` VALUES (31, 'root', '1', '2022-03-06 21:14', '#icon-life', '#7766E7', '2022-02-20 20:16:59', 1);
INSERT INTO `backlog` VALUES (33, 'root', '测试', '2022-04-03 12:30', '#icon-life', '#7766E7', '2022-02-21 16:52:23', 1);
INSERT INTO `backlog` VALUES (34, 'root', '测试2', '2022-05-11 06:00', '#icon-other', '#C4C4C4', '2022-02-21 16:52:31', 1);
INSERT INTO `backlog` VALUES (36, 'root', '测试4', '2022-03-06 21:56', '#icon-work', '#518BF1', '2022-02-21 16:52:51', 1);
INSERT INTO `backlog` VALUES (37, 'root', 'test', '2022-05-01 00:06', '#icon-study', '#FFCD00', '2022-02-22 22:33:42', 1);
INSERT INTO `backlog` VALUES (39, 'root', '乌克兰', '2022-04-30 03:02', '#icon-health', '#1DBD84', '2022-02-25 23:31:06', 1);
INSERT INTO `backlog` VALUES (40, 'root', '打乌克兰123', '2022-05-10 01:01', '#icon-life', '#7766E7', '2022-02-25 23:31:22', 0);
INSERT INTO `backlog` VALUES (43, 'root', '1', '2022-03-07 11:57', '#icon-life', '#7766E7', '2022-03-01 14:05:40', 1);
INSERT INTO `backlog` VALUES (44, 'root', '1', '2022-05-01 00:05', '#icon-life', '#7766E7', '2022-03-02 20:46:39', 1);
INSERT INTO `backlog` VALUES (48, 'root', '324', '2022-04-30 03:02', '#icon-other', '#C4C4C4', '2022-03-03 21:19:31', 0);
INSERT INTO `backlog` VALUES (50, 'root', '123', '2022-04-30 03:02', '#icon-health', '#1DBD84', '2022-03-04 16:25:47', 0);
INSERT INTO `backlog` VALUES (51, 'root3', '12', '2022-03-07 16:09', '#icon-work', '#518BF1', '2022-03-07 16:09:04', 1);
INSERT INTO `backlog` VALUES (52, 'root3', '31', '2022-03-07 00:00', '#icon-life', '#7766E7', '2022-03-07 16:41:01', 0);
INSERT INTO `backlog` VALUES (53, 'root3', '5', '2022-03-08 15:06', '#icon-life', '#7766E7', '2022-03-07 21:04:36', 0);
INSERT INTO `backlog` VALUES (54, 'root3', '123', '2022-03-08 15:06', '#icon-life', '#7766E7', '2022-03-08 14:49:25', 0);
INSERT INTO `backlog` VALUES (55, 'root', '4234', '2022-03-17 20:04', '#icon-life', '#7766E7', '2022-03-17 20:04:19', 0);
INSERT INTO `backlog` VALUES (57, 'root', '123', '2022-04-27 01:20', '#icon-work', '#518BF1', '2022-04-01 19:25:57', 1);
INSERT INTO `backlog` VALUES (58, 'root', '456665', '2022-04-01 19:26', '#icon-study', '#FFCD00', '2022-04-01 19:26:06', 0);
INSERT INTO `backlog` VALUES (59, 'root', '讨厌她', '2022-04-01 19:26', '#icon-life', '#7766E7', '2022-04-01 19:26:22', 0);
INSERT INTO `backlog` VALUES (60, 'root', 'iioip', '2022-04-01 19:26', '#icon-social', '#FE738A', '2022-04-01 19:26:35', 0);
INSERT INTO `backlog` VALUES (62, 'root', '21654653fughjkl', '2022-04-01 19:27', '#icon-life', '#7766E7', '2022-04-01 19:27:01', 0);
INSERT INTO `backlog` VALUES (63, 'root', '风格和健康', '2022-04-01 19:27', '#icon-health', '#1DBD84', '2022-04-01 19:27:14', 0);
INSERT INTO `backlog` VALUES (65, 'root', '你还是我问他测试测试测试测试测试测试测试测试测试测试测试测试', '2022-04-01 21:18', '#icon-life', '#7766E7', '2022-04-01 21:18:26', 1);
INSERT INTO `backlog` VALUES (66, 'root', 'test', '2022-04-01 22:20', '#icon-work', '#518BF1', '2022-04-01 22:20:50', 1);
INSERT INTO `backlog` VALUES (67, 'root', 'testtest', '2022-04-01 22:24', '#icon-study', '#FFCD00', '2022-04-01 22:24:54', 0);
INSERT INTO `backlog` VALUES (69, 'root', 'asdasdasdda好我爱上大拉手打了会打击是不打算不单单', '2022-04-02 01:20', '#icon-life', '#7766E7', '2022-04-02 01:20:20', 0);
INSERT INTO `backlog` VALUES (70, 'root', 'tezst', '2022-04-02 01:26', '#icon-life', '#7766E7', '2022-04-02 01:26:25', 0);
INSERT INTO `backlog` VALUES (71, 'root', 'test', '2022-04-27 01:20', '#icon-life', '#7766E7', '2022-04-27 01:20:26', 0);
INSERT INTO `backlog` VALUES (72, 'root', 'test', '2022-04-28 01:42', '#icon-work', '#518BF1', '2022-04-28 01:42:47', 0);
INSERT INTO `backlog` VALUES (74, 'root', '钱213', '2022-04-28 01:43', '#icon-study', '#FFCD00', '2022-04-28 01:43:26', 1);
INSERT INTO `backlog` VALUES (76, 'root', '234234', '2022-04-28 01:47', '#icon-life', '#7766E7', '2022-04-28 01:47:43', 0);
INSERT INTO `backlog` VALUES (77, 'root', '阿萨达4', '2022-04-28 01:47', '#icon-other', '#C4C4C4', '2022-04-28 01:47:54', 0);
INSERT INTO `backlog` VALUES (78, 'root', '123', '2022-04-28 19:13', '#icon-life', '#7766E7', '2022-04-28 19:13:14', 0);
INSERT INTO `backlog` VALUES (79, 'root', '11111', '2022-04-28 19:13', '#icon-life', '#7766E7', '2022-04-28 19:13:23', 1);
INSERT INTO `backlog` VALUES (91, 'root', '213', '2022-04-29 01:47', '#icon-life', '#7766E7', '2022-04-29 01:47:56', 0);
INSERT INTO `backlog` VALUES (92, 'root', 'qeqwe', '2022-04-29 01:49', '#icon-life', '#7766E7', '2022-04-29 01:49:07', 0);
INSERT INTO `backlog` VALUES (93, 'root', '24242', '2022-04-29 01:49', '#icon-life', '#7766E7', '2022-04-29 01:49:13', 0);
INSERT INTO `backlog` VALUES (94, 'root', '234234242342342342423423424234', '2022-04-29 01:49', '#icon-life', '#7766E7', '2022-04-29 01:49:20', 1);
INSERT INTO `backlog` VALUES (95, 'root', '24234242', '2022-04-29 01:49', '#icon-life', '#7766E7', '2022-04-29 01:49:25', 1);
INSERT INTO `backlog` VALUES (96, 'root', '2342423', '2022-04-29 01:49', '#icon-study', '#FFCD00', '2022-04-29 01:49:33', 0);
INSERT INTO `backlog` VALUES (97, 'root', '2342', '2022-04-29 01:49', '#icon-health', '#1DBD84', '2022-04-29 01:49:40', 0);
INSERT INTO `backlog` VALUES (98, 'root', '13123', '2022-04-29 01:50', '#icon-life', '#7766E7', '2022-04-29 01:50:38', 0);
INSERT INTO `backlog` VALUES (99, 'root', '1231', '2022-04-29 01:50', '#icon-life', '#7766E7', '2022-04-29 01:50:42', 0);
INSERT INTO `backlog` VALUES (100, 'root', '123', '2022-04-30 15:31', '#icon-life', '#7766E7', '2022-04-30 15:31:09', 1);
INSERT INTO `backlog` VALUES (101, 'root', '123124', '2022-04-30 15:31', '#icon-life', '#7766E7', '2022-04-30 15:31:14', 1);
INSERT INTO `backlog` VALUES (102, 'root', '45645', '2022-04-30 15:31', '#icon-life', '#7766E7', '2022-04-30 15:31:19', 0);
INSERT INTO `backlog` VALUES (103, 'root', '9886', '2022-04-30 15:31', '#icon-life', '#7766E7', '2022-04-30 15:31:24', 0);
INSERT INTO `backlog` VALUES (104, 'root', '456346', '2022-04-30 15:31', '#icon-life', '#7766E7', '2022-04-30 15:31:28', 0);
INSERT INTO `backlog` VALUES (105, 'root', '34536', '2022-04-30 15:31', '#icon-life', '#7766E7', '2022-04-30 15:31:32', 0);
INSERT INTO `backlog` VALUES (106, 'root', '36', '2022-04-30 15:31', '#icon-life', '#7766E7', '2022-04-30 15:31:36', 0);
INSERT INTO `backlog` VALUES (107, 'root', '757', '2022-04-30 15:31', '#icon-life', '#7766E7', '2022-04-30 15:31:41', 1);
INSERT INTO `backlog` VALUES (108, 'root', '企鹅请问', '2022-04-30 18:40', '#icon-work', '#518BF1', '2022-04-30 18:40:35', 0);
INSERT INTO `backlog` VALUES (109, 'root', '请问去', '2022-04-30 18:40', '#icon-work', '#518BF1', '2022-04-30 18:40:41', 0);
INSERT INTO `backlog` VALUES (110, 'root', '辅导费给对方', '2022-04-30 18:40', '#icon-study', '#FFCD00', '2022-04-30 18:40:49', 0);
INSERT INTO `backlog` VALUES (111, 'root', '发送到 ', '2022-04-30 18:40', '#icon-study', '#FFCD00', '2022-04-30 18:40:56', 0);
INSERT INTO `backlog` VALUES (112, 'root', '多少分是', '2022-04-30 18:41', '#icon-health', '#1DBD84', '2022-04-30 18:41:02', 0);
INSERT INTO `backlog` VALUES (113, 'root', ' 胜多负少', '2022-04-30 18:41', '#icon-social', '#FE738A', '2022-04-30 18:41:09', 0);
INSERT INTO `backlog` VALUES (114, 'root', ' 收到', '2022-04-30 18:41', '#icon-social', '#FE738A', '2022-04-30 18:41:15', 0);
INSERT INTO `backlog` VALUES (115, 'root', '的的', '2022-04-30 18:41', '#icon-other', '#C4C4C4', '2022-04-30 18:41:22', 0);
INSERT INTO `backlog` VALUES (116, 'root', '收到发', '2022-04-30 18:41', '#icon-other', '#C4C4C4', '2022-04-30 18:41:31', 0);
INSERT INTO `backlog` VALUES (117, 'root', '123456789', '2022-04-30 23:38', '#icon-life', '#7766E7', '2022-04-30 23:38:52', 1);
INSERT INTO `backlog` VALUES (127, 'root', '56', '2022-05-02 15:14', '#icon-work', '#518BF1', '2022-05-02 15:14:43', 0);
INSERT INTO `backlog` VALUES (128, 'root', '6789', '2022-05-02 15:14', '#icon-work', '#518BF1', '2022-05-02 15:14:50', 0);
INSERT INTO `backlog` VALUES (129, 'root', '就欧派', '2022-05-02 15:14', '#icon-work', '#518BF1', '2022-05-02 15:14:58', 0);
INSERT INTO `backlog` VALUES (130, 'root', '789', '2022-05-02 15:15', '#icon-work', '#518BF1', '2022-05-02 15:15:05', 0);
INSERT INTO `backlog` VALUES (133, 'root', 'ttttttt', '2022-05-04 02:01', '#icon-life', '#7766E7', '2022-05-04 22:15:27', 1);
INSERT INTO `backlog` VALUES (134, 'root', 'ttt', '2022-05-04 02:01', '#icon-life', '#7766E7', '2022-05-04 22:18:38', 0);
INSERT INTO `backlog` VALUES (135, 'root', '1111', '2022-05-04 00:aN', '#icon-life', '#7766E7', '2022-05-04 22:26:39', 0);
INSERT INTO `backlog` VALUES (136, 'root', '13123', '2022-05-04 13:00', '#icon-study', '#FFCD00', '2022-05-04 22:27:48', 1);
INSERT INTO `backlog` VALUES (137, 'root', '1', '2022-05-04 00:02', '#icon-life', '#7766E7', '2022-05-04 23:43:31', 0);
INSERT INTO `backlog` VALUES (138, 'root', '6666', '2022-05-04 00:02', '#icon-study', '#FFCD00', '2022-05-04 23:46:22', 1);
INSERT INTO `backlog` VALUES (139, 'root', '2222', '2022-05-05 01:02', '#icon-life', '#7766E7', '2022-05-05 16:38:09', 1);
INSERT INTO `backlog` VALUES (140, 'root', '滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴滴', '2022-05-07 06:00', '#icon-other', '#C4C4C4', '2022-05-07 14:03:51', 1);
INSERT INTO `backlog` VALUES (141, 'root', 'color: #aaa;     font-size: 12', '2022-05-10 09:00', '#icon-other', '#C4C4C4', '2022-05-08 23:38:17', 1);
COMMIT;

-- ----------------------------
-- Table structure for clock
-- ----------------------------
DROP TABLE IF EXISTS `clock`;
CREATE TABLE `clock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `daytype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `startdatetime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of clock
-- ----------------------------
BEGIN;
INSERT INTO `clock` VALUES (10, 'root', '学习', '21', '2022-03-01');
INSERT INTO `clock` VALUES (11, 'root3', '1', '7', '2022-03-08');
COMMIT;

-- ----------------------------
-- Table structure for clock_user
-- ----------------------------
DROP TABLE IF EXISTS `clock_user`;
CREATE TABLE `clock_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `donedatetime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of clock_user
-- ----------------------------
BEGIN;
INSERT INTO `clock_user` VALUES (36, 'root', '2022-03-02');
INSERT INTO `clock_user` VALUES (41, 'root', '2022-03-01');
INSERT INTO `clock_user` VALUES (52, 'root', '2022-03-03');
INSERT INTO `clock_user` VALUES (55, 'root', '2022-03-04');
INSERT INTO `clock_user` VALUES (56, 'root', '2022-03-05');
INSERT INTO `clock_user` VALUES (57, 'root', '2022-03-06');
INSERT INTO `clock_user` VALUES (58, 'root3', '2022-03-08');
INSERT INTO `clock_user` VALUES (60, 'root', '2022-03-08');
INSERT INTO `clock_user` VALUES (64, 'root', '2022-03-12');
INSERT INTO `clock_user` VALUES (65, 'root', '2022-03-17');
INSERT INTO `clock_user` VALUES (67, 'root', '2022-03-20');
INSERT INTO `clock_user` VALUES (69, 'root', '2022-04-01');
INSERT INTO `clock_user` VALUES (70, 'root', '2022-04-09');
INSERT INTO `clock_user` VALUES (71, 'root', '2022-04-27');
INSERT INTO `clock_user` VALUES (72, 'root', '2022-04-28');
INSERT INTO `clock_user` VALUES (73, 'root', '2022-05-04');
COMMIT;

-- ----------------------------
-- Table structure for diary
-- ----------------------------
DROP TABLE IF EXISTS `diary`;
CREATE TABLE `diary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `datetime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `weather` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of diary
-- ----------------------------
BEGIN;
INSERT INTO `diary` VALUES (1, 'root', '今天天气就这啊', '2022/05/10 15:08 周二', '雨天');
INSERT INTO `diary` VALUES (2, 'root', '111211', '2022/05/10 15:08 周二', '雨天');
INSERT INTO `diary` VALUES (3, 'root', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '2022/05/10 15:08 周二', '雨天');
INSERT INTO `diary` VALUES (4, 'root', '123', '2022/05/10 15:08 周二', '晴天');
INSERT INTO `diary` VALUES (5, 'root', 'test', '2022/05/10 15:08 周二', '多云');
INSERT INTO `diary` VALUES (6, 'root', 'test1', '2022/05/10 15:08 周二', '大风');
INSERT INTO `diary` VALUES (7, 'root', '666', '2022/05/10 15:08 周二', '下雪');
INSERT INTO `diary` VALUES (8, 'root', '11111', '2022/05/10 15:08 周二', '晴天');
INSERT INTO `diary` VALUES (9, 'root', '222222', '2022/05/10 15:08 周二', '晴天');
INSERT INTO `diary` VALUES (10, 'root', '333333', '2022/05/10 15:08 周二', '晴天');
INSERT INTO `diary` VALUES (11, 'root', '123123123123', '2022/05/10 15:08 周二', '晴天');
INSERT INTO `diary` VALUES (12, 'root', 'ttttt', '2022/05/10 15:11 周二', '晴天');
INSERT INTO `diary` VALUES (13, 'root', '0000000000', '2022/05/10 15:40 周二', '晴天');
COMMIT;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `updatetime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `photourl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of feedback
-- ----------------------------
BEGIN;
INSERT INTO `feedback` VALUES (1, 'root', '123', '<p>1231231</p>', NULL, NULL);
INSERT INTO `feedback` VALUES (2, 'root', '123', '<p>123123<img src=\"http://localhost:5001/public/uploadeditor/6082142832aec6d1f505c1aad8a8e0b8\"></p>', '2022-03-13 12:23:01', NULL);
INSERT INTO `feedback` VALUES (3, 'root', '123', '<p>1231<img src=\"http://localhost:5001/public/uploadeditor/1eb7481e2fb1d27e24ace6e94054976c\"></p>', '2022-03-13 12:25:48', NULL);
INSERT INTO `feedback` VALUES (4, 'root', '123', '<p>1231<img src=\"http://localhost:5001/public/uploadeditor/1eb7481e2fb1d27e24ace6e94054976c\"></p>', '2022-03-13 12:29:25', NULL);
INSERT INTO `feedback` VALUES (5, 'root', '123', '<p>1231<img src=\"http://localhost:5001/public/uploadeditor/d2dc62eaa72d485242d21193a27c7c55\"></p>', '2022-03-13 12:29:39', NULL);
INSERT INTO `feedback` VALUES (6, 'root', '123', '<p>123<img src=\"http://localhost:5001/public/uploadeditor/3bb74917d947ae7ea53c376945bd4c8f\"></p>', '2022-03-13 12:30:22', NULL);
INSERT INTO `feedback` VALUES (7, 'root', 'title', '<p>123<img src=\"http://localhost:5001/public/uploadeditor/12f0fb0709f50e643097e64117e48032\"></p>', '2022-03-29 19:21:11', NULL);
COMMIT;

-- ----------------------------
-- Table structure for memo
-- ----------------------------
DROP TABLE IF EXISTS `memo`;
CREATE TABLE `memo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `datetime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of memo
-- ----------------------------
BEGIN;
INSERT INTO `memo` VALUES (1, 'root', '123', '6666666666666', '2022-09-10 16:28:26');
INSERT INTO `memo` VALUES (2, 'root', '111', '1111', '2022-05-10 14:57:25');
INSERT INTO `memo` VALUES (4, 'root', '0000', '0000000', '2022-05-07 16:28:26');
INSERT INTO `memo` VALUES (6, 'root', '1', '1', '2022-05-09 23:39:54');
INSERT INTO `memo` VALUES (7, 'root', '2', '3', '2022-05-09 23:40:00');
INSERT INTO `memo` VALUES (8, 'root', '3', '4', '2022-05-09 23:40:04');
INSERT INTO `memo` VALUES (9, 'root', '5', '5', '2022-05-09 23:40:08');
INSERT INTO `memo` VALUES (10, 'root', '6', '6', '2022-05-09 23:40:11');
COMMIT;

-- ----------------------------
-- Table structure for memorial
-- ----------------------------
DROP TABLE IF EXISTS `memorial`;
CREATE TABLE `memorial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `datetime` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nums` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of memorial
-- ----------------------------
BEGIN;
INSERT INTO `memorial` VALUES (1, 'root', '生日1', '2022-06-09', NULL);
INSERT INTO `memorial` VALUES (3, 'root', 'mmmm', '2023-05-03', NULL);
INSERT INTO `memorial` VALUES (4, 'root', '7777', '2024-05-06', NULL);
INSERT INTO `memorial` VALUES (6, 'root', 'ttttt', '2022-05-07', NULL);
INSERT INTO `memorial` VALUES (11, 'root', '12321312', '2022-05-07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `datetime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------
BEGIN;
INSERT INTO `message` VALUES (1, '【通知】', '消息功能已上线~~~', '2022-03-12');
INSERT INTO `message` VALUES (2, '【官方】', '测试测试', '2022-03-12');
COMMIT;

-- ----------------------------
-- Table structure for tally
-- ----------------------------
DROP TABLE IF EXISTS `tally`;
CREATE TABLE `tally` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tallytype` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remark` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `num` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `datetime` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tally
-- ----------------------------
BEGIN;
INSERT INTO `tally` VALUES (1, 'root', '餐饮', '123。。', '-10', '2022/05/14');
INSERT INTO `tally` VALUES (2, 'root', '餐饮', '', '-12', '2022/05/14');
INSERT INTO `tally` VALUES (3, 'root', '餐饮', '', '-0.01', '2022/05/19');
INSERT INTO `tally` VALUES (4, 'root', '餐饮', '123', '-6', '2022/05/14');
INSERT INTO `tally` VALUES (5, 'root', '餐饮', '123', '-3', '2022/05/15');
INSERT INTO `tally` VALUES (6, 'root', '餐饮', '', '-36', '2022/05/15');
INSERT INTO `tally` VALUES (7, 'root', '餐饮', '', '-8.00', '2022/05/14');
INSERT INTO `tally` VALUES (8, 'root', '餐饮', '测试', '-9.00', '2022/05/15');
INSERT INTO `tally` VALUES (9, 'root', '餐饮', '123', '-3366', '2022/06/15');
INSERT INTO `tally` VALUES (10, 'root', '工资', '', '3', '2022/05/15');
INSERT INTO `tally` VALUES (11, 'root', '餐饮', '', '-1', '2022/05/15');
INSERT INTO `tally` VALUES (12, 'root', '工资', '', '99', '2022/05/15');
INSERT INTO `tally` VALUES (13, 'root', '餐饮', '', '-11', '2022/05/15');
INSERT INTO `tally` VALUES (14, 'root', '餐饮', '', '-12', '2022/05/15');
INSERT INTO `tally` VALUES (15, 'root', '工资', '', '62', '2022/05/15');
INSERT INTO `tally` VALUES (16, 'root', '工资', '测试', '12', '2022/05/15');
INSERT INTO `tally` VALUES (17, 'root', '餐饮', '测试2', '-55', '2022/05/15');
INSERT INTO `tally` VALUES (18, 'root', '工资', '', '23', '2022/05/15');
INSERT INTO `tally` VALUES (19, 'root', '餐饮', '', '-21', '2022/05/15');
INSERT INTO `tally` VALUES (20, 'root', '工资', '测试11', '26.00', '2022/05/15');
INSERT INTO `tally` VALUES (21, 'root', '餐饮', '测试22', '-23', '2022/05/15');
INSERT INTO `tally` VALUES (22, 'root', '工资', '', '6666666525', '2022/05/15');
INSERT INTO `tally` VALUES (23, 'root', '工资', '', '36.12', '2022/05/15');
INSERT INTO `tally` VALUES (24, 'root', '工资', '', '36', '2022/05/15');
INSERT INTO `tally` VALUES (25, 'root', '工资', '', '12.12', '2022/05/15');
INSERT INTO `tally` VALUES (26, 'root', '餐饮', '', '-12', '2022/05/15');
INSERT INTO `tally` VALUES (27, 'root', '红包', '', '3', '2022/05/15');
INSERT INTO `tally` VALUES (28, 'root', '红包', '', '22', '2022/05/15');
INSERT INTO `tally` VALUES (29, 'root', '日用', '', '-3', '2022/05/15');
INSERT INTO `tally` VALUES (30, 'root', '住房', '', '-2', '2022/05/15');
INSERT INTO `tally` VALUES (31, 'root', '旅行', '', '-9', '2022/05/15');
INSERT INTO `tally` VALUES (32, 'root', '旅行', '', '-1', '2022/05/15');
INSERT INTO `tally` VALUES (34, 'root', '住房', '租房水电', '-500', '2022/05/16');
INSERT INTO `tally` VALUES (35, 'root', '工资', '', '123', '2022/05/16');
INSERT INTO `tally` VALUES (36, 'root', '住房', '', '-188', '2022/05/16');
INSERT INTO `tally` VALUES (37, 'root', '住房', '', '-39', '2022/05/16');
INSERT INTO `tally` VALUES (38, 'root', '住房', '', '-123.7', '2022/05/16');
INSERT INTO `tally` VALUES (39, 'root', '住房', '', '-366', '2022/05/16');
INSERT INTO `tally` VALUES (40, 'root', '住房', '', '-100', '2022/05/16');
INSERT INTO `tally` VALUES (41, 'root', '住房', '', '-1', '2022/05/16');
INSERT INTO `tally` VALUES (44, 'root', '工资', '', '100', '2022/05/16');
INSERT INTO `tally` VALUES (45, 'root', '娱乐', '', '-20.8', '2022/05/16');
INSERT INTO `tally` VALUES (47, 'root3', '工资', '1234', '10', '2022/05/16');
INSERT INTO `tally` VALUES (48, 'root3', '工资', 'test', '96', '2022/05/16');
INSERT INTO `tally` VALUES (49, 'root3', '餐饮', '', '-30', '2022/05/16');
INSERT INTO `tally` VALUES (50, 'root3', '工资', '', '100', '2022/06/17');
INSERT INTO `tally` VALUES (51, 'root3', '工资', '', '3666', '2021/05/18');
INSERT INTO `tally` VALUES (52, 'root3', '餐饮', '', '-100', '2021/05/18');
INSERT INTO `tally` VALUES (53, 'root3', '餐饮', '', '-10', '2022/05/19');
INSERT INTO `tally` VALUES (54, 'root3', '理财', '', '3', '2022/05/19');
INSERT INTO `tally` VALUES (55, 'root3', '日用', '', '-20', '2022/05/19');
INSERT INTO `tally` VALUES (56, 'root3', '旅行', '', '-30', '2022/05/19');
INSERT INTO `tally` VALUES (57, 'root3', '娱乐', '', '-20', '2022/05/19');
INSERT INTO `tally` VALUES (58, 'root3', '红包', '', '30', '2022/05/19');
INSERT INTO `tally` VALUES (59, 'root3', '兼职', '', '20', '2022/05/19');
INSERT INTO `tally` VALUES (60, 'root3', '现金', '', '20', '2022/05/19');
INSERT INTO `tally` VALUES (61, 'root3', '餐饮', '', '-12', '2022/05/23');
COMMIT;

-- ----------------------------
-- Table structure for tally_budget
-- ----------------------------
DROP TABLE IF EXISTS `tally_budget`;
CREATE TABLE `tally_budget` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `budget` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tally_budget
-- ----------------------------
BEGIN;
INSERT INTO `tally_budget` VALUES (1, 'root', '20');
INSERT INTO `tally_budget` VALUES (6, 'root3', '100');
COMMIT;

-- ----------------------------
-- Table structure for user_message
-- ----------------------------
DROP TABLE IF EXISTS `user_message`;
CREATE TABLE `user_message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_id` int DEFAULT NULL,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `isread` int DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_message
-- ----------------------------
BEGIN;
INSERT INTO `user_message` VALUES (1, 1, 'root', 1);
INSERT INTO `user_message` VALUES (2, 2, 'root', 0);
INSERT INTO `user_message` VALUES (3, 1, 'root16', 0);
INSERT INTO `user_message` VALUES (4, 2, 'root16', 0);
COMMIT;

-- ----------------------------
-- Table structure for user_position
-- ----------------------------
DROP TABLE IF EXISTS `user_position`;
CREATE TABLE `user_position` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `province` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `district` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `street` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `latitude` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `longitude` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_position
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `sex` int DEFAULT '0',
  `introduction` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'root', '你吃晚饭了吗', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '15207054150', 'http://localhost:5001/public/upload/933d4dbfb38111f45c100cd921095495', 'weijiecode@163.com', '2022-01-31 02:28:22', 1, '好好学习，天天向上');
INSERT INTO `users` VALUES (2, 'root2', '我吃晚饭', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '1253669654', 'http://localhost:5001/public/upload/3586c28132b111b4a6bc381fb320b689', 'weqw4242@qq.com', '2022-01-31 02:29:39', 0, 'good good studay');
INSERT INTO `users` VALUES (3, 'root3', '测试测试', 'b9a44f06013c2cb37e18a7458b66e83c', 1, NULL, 'http://localhost:5001/public/upload/3d4d1923b85a575d10efe84b1a522592', '245619254@qq.com', '2022-02-13 16:35:32', 1, NULL);
INSERT INTO `users` VALUES (4, 'root4', '123', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '19970591880', 'http://localhost:5001/public/upload/fafaaa73bfe97a6e30281dd86b39c3cd', NULL, '2022-03-10 21:25:08', 0, NULL);
INSERT INTO `users` VALUES (5, 'root5', '123', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', 'http://localhost:5001/public/upload/7822c4a626fcc6f7bd2efc60b9ea3041', NULL, '2022-03-10 21:27:26', 1, NULL);
INSERT INTO `users` VALUES (6, 'root6', '121', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', 'http://localhost:5001/public/upload/792b99fb57c908cf187845b5473de08d', '@undefined', '2022-03-10 21:28:47', 0, NULL);
INSERT INTO `users` VALUES (7, 'root7', '424', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', 'http://localhost:5001/public/upload/792b99fb57c908cf187845b5473de08d', NULL, '2022-03-10 21:29:45', 1, NULL);
INSERT INTO `users` VALUES (8, 'root8', '123123', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '15932802279', 'http://localhost:5001/public/upload/792b99fb57c908cf187845b5473de08d', '245619254@qq.com', '2022-03-17 01:41:05', 0, '123');
INSERT INTO `users` VALUES (9, 'root9', '142', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', 'http://localhost:5001/public/upload/792b99fb57c908cf187845b5473de08d', NULL, '2022-03-17 01:43:25', 1, NULL);
INSERT INTO `users` VALUES (11, 'root10', '你好啊', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '12314567899', 'http://localhost:5001/public/upload/833916c1d0b7675c8a0e592a4c7094ed', '245619254@qq.com', '2022-03-17 01:44:09', 1, 'testtes');
INSERT INTO `users` VALUES (12, 'root11', '3123', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-17 01:58:41', 1, NULL);
INSERT INTO `users` VALUES (13, 'root12', '4434', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-17 02:03:34', 1, NULL);
INSERT INTO `users` VALUES (14, 'root13', '4234', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-17 02:04:27', 1, NULL);
INSERT INTO `users` VALUES (15, 'root14', '12312', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-17 02:06:27', 1, NULL);
INSERT INTO `users` VALUES (16, 'root15', '123', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-17 02:07:01', 1, NULL);
INSERT INTO `users` VALUES (17, 'root16', '5524', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-17 02:08:45', 1, NULL);
INSERT INTO `users` VALUES (18, 'root20', '123', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-23 10:54:46', 1, NULL);
INSERT INTO `users` VALUES (19, 'root21', 'ceshi测试', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '12345678900', NULL, NULL, '2022-03-23 11:01:29', 0, NULL);
INSERT INTO `users` VALUES (20, 'root22', '234', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-23 11:04:54', 1, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
