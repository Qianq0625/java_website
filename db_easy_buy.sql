/*
 Navicat Premium Data Transfer

 Source Server         : library
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : db_easy_buy

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 16/06/2020 13:13:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for easybuy_news
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_news`;
CREATE TABLE `easybuy_news`  (
  `EN_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EN_TITLE` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EN_CONTENT` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EN_CREATE_TIME` datetime(0) NULL,
  PRIMARY KEY (`EN_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of easybuy_news
-- ----------------------------
INSERT INTO `easybuy_news` VALUES (9, '123', '12345', '2020-06-09 15:13:19');
INSERT INTO `easybuy_news` VALUES (11, '疫情期间全场满200-150', '欢迎大家选购！！!', '2020-06-09 15:49:46');
INSERT INTO `easybuy_news` VALUES (14, '618', '大酬宾', '2020-06-16 10:50:01');

-- ----------------------------
-- Table structure for easybuy_order
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order`;
CREATE TABLE `easybuy_order`  (
  `EO_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_USER_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EO_USER_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EO_USER_ADDRESS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EO_CREATE_TIME` datetime(0) NULL,
  `EO_COST` decimal(10, 2) NOT NULL,
  `EO_STATUS` decimal(6, 0) NOT NULL,
  `EO_TYPE` decimal(6, 0) NOT NULL,
  PRIMARY KEY (`EO_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of easybuy_order
-- ----------------------------
INSERT INTO `easybuy_order` VALUES (9, 'kate', 'zzz', '北京', '2020-06-09 11:31:41', 20.00, 1, 1);
INSERT INTO `easybuy_order` VALUES (14, '67711', '陆', '江苏', '2020-06-15 20:54:31', 11.00, 4, 1);
INSERT INTO `easybuy_order` VALUES (19, 'admin', '管理员', '上海', '2020-06-16 10:34:22', 11.00, 1, 1);
INSERT INTO `easybuy_order` VALUES (20, 'admin', '管理员', '上海', '2020-06-16 10:37:30', 23.00, 1, 1);
INSERT INTO `easybuy_order` VALUES (21, 'sharon', '陆倩倩', '盐城', '2020-06-16 10:44:28', 11.00, 4, 1);
INSERT INTO `easybuy_order` VALUES (22, 'sharon', '陆倩倩', '盐城', '2020-06-16 10:47:59', 35.00, 1, 1);
INSERT INTO `easybuy_order` VALUES (23, 'admin', '管理员', '上海', '2020-06-16 10:50:33', 35.00, 1, 1);
INSERT INTO `easybuy_order` VALUES (24, 'admin', '管理员', '上海', '2020-06-16 11:05:23', 207.00, 1, 1);

-- ----------------------------
-- Table structure for easybuy_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order_detail`;
CREATE TABLE `easybuy_order_detail`  (
  `EOD_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_ID` decimal(10, 0) NOT NULL,
  `EP_ID` decimal(10, 0) NOT NULL,
  `EOD_QUANTITY` decimal(6, 0) NOT NULL,
  `EOD_COST` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`EOD_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of easybuy_order_detail
-- ----------------------------
INSERT INTO `easybuy_order_detail` VALUES (11, 8, 8, 1, 14.00);
INSERT INTO `easybuy_order_detail` VALUES (12, 8, 7, 1, 20.00);
INSERT INTO `easybuy_order_detail` VALUES (13, 8, 7, 2, 40.00);
INSERT INTO `easybuy_order_detail` VALUES (14, 8, 7, 1, 20.00);
INSERT INTO `easybuy_order_detail` VALUES (15, 9, 7, 1, 20.00);
INSERT INTO `easybuy_order_detail` VALUES (16, 10, 12, 1, 33.00);
INSERT INTO `easybuy_order_detail` VALUES (17, 11, 12, 2, 66.00);
INSERT INTO `easybuy_order_detail` VALUES (18, 11, 11, 1, 12.00);
INSERT INTO `easybuy_order_detail` VALUES (19, 12, 13, 2, 22.00);
INSERT INTO `easybuy_order_detail` VALUES (20, 12, 18, 1, 34.00);
INSERT INTO `easybuy_order_detail` VALUES (21, 12, 16, 1, 11.00);
INSERT INTO `easybuy_order_detail` VALUES (22, 12, 18, 1, 34.00);
INSERT INTO `easybuy_order_detail` VALUES (23, 13, 12, 1, 33.00);
INSERT INTO `easybuy_order_detail` VALUES (24, 14, 16, 1, 11.00);
INSERT INTO `easybuy_order_detail` VALUES (25, 15, 9, 1, 35.00);
INSERT INTO `easybuy_order_detail` VALUES (26, 15, 9, 1, 35.00);
INSERT INTO `easybuy_order_detail` VALUES (27, 15, 13, 1, 11.00);
INSERT INTO `easybuy_order_detail` VALUES (28, 16, 20, 1, 23.00);
INSERT INTO `easybuy_order_detail` VALUES (29, 17, 13, 1, 11.00);
INSERT INTO `easybuy_order_detail` VALUES (30, 18, 9, 1, 35.00);
INSERT INTO `easybuy_order_detail` VALUES (31, 19, 19, 1, 33.00);
INSERT INTO `easybuy_order_detail` VALUES (32, 19, 13, 1, 11.00);
INSERT INTO `easybuy_order_detail` VALUES (33, 20, 20, 1, 23.00);
INSERT INTO `easybuy_order_detail` VALUES (34, 21, 13, 1, 11.00);
INSERT INTO `easybuy_order_detail` VALUES (35, 22, 9, 1, 35.00);
INSERT INTO `easybuy_order_detail` VALUES (36, 23, 9, 1, 35.00);
INSERT INTO `easybuy_order_detail` VALUES (37, 24, 20, 9, 207.00);
INSERT INTO `easybuy_order_detail` VALUES (38, 24, 20, 2, 46.00);
INSERT INTO `easybuy_order_detail` VALUES (39, 24, 13, 5, 55.00);

-- ----------------------------
-- Table structure for easybuy_product
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product`;
CREATE TABLE `easybuy_product`  (
  `EP_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EP_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EP_DESCRIPTION` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EP_PRICE` decimal(10, 2) NOT NULL,
  `EP_STOCK` decimal(10, 0) NOT NULL,
  `EPC_ID` decimal(10, 0) NULL DEFAULT NULL,
  `EPC_CHILD_ID` decimal(10, 0) NULL DEFAULT NULL,
  `EP_FILE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`EP_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of easybuy_product
-- ----------------------------
INSERT INTO `easybuy_product` VALUES (9, 'Linux', 'linux', 35.00, 328, 29, 29, 'ts5.jpg');
INSERT INTO `easybuy_product` VALUES (13, 'Design', '11', 11.00, 0, 27, 27, 'jg1.jpg');
INSERT INTO `easybuy_product` VALUES (18, '诗集', '1', 34.00, 0, 27, 27, 'ys1.jpg');
INSERT INTO `easybuy_product` VALUES (19, '笨狗狗', '儿童读物', 33.00, 19, 25, 25, 's1.jpg');
INSERT INTO `easybuy_product` VALUES (20, '宋史', '白话宋史', 23.00, 20, 24, 24, 'x2.jpg');
INSERT INTO `easybuy_product` VALUES (21, '空军', '111', 11.00, 11, 25, 25, 'x1.jpg');

-- ----------------------------
-- Table structure for easybuy_product_category
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product_category`;
CREATE TABLE `easybuy_product_category`  (
  `EPC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EPC_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EPC_PARENT_ID` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`EPC_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of easybuy_product_category
-- ----------------------------
INSERT INTO `easybuy_product_category` VALUES (19, '生活', 19);
INSERT INTO `easybuy_product_category` VALUES (21, '经管', 0);
INSERT INTO `easybuy_product_category` VALUES (22, '励志', 0);
INSERT INTO `easybuy_product_category` VALUES (23, '社科', 0);
INSERT INTO `easybuy_product_category` VALUES (24, '学术', 0);
INSERT INTO `easybuy_product_category` VALUES (25, '少儿', 0);
INSERT INTO `easybuy_product_category` VALUES (26, '艺术', 0);
INSERT INTO `easybuy_product_category` VALUES (27, '原版', 0);
INSERT INTO `easybuy_product_category` VALUES (28, '考试', 0);
INSERT INTO `easybuy_product_category` VALUES (29, '计算机', 0);
INSERT INTO `easybuy_product_category` VALUES (30, '文学', 0);
INSERT INTO `easybuy_product_category` VALUES (31, '生活', 0);

-- ----------------------------
-- Table structure for easybuy_shop
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_shop`;
CREATE TABLE `easybuy_shop`  (
  `es_id` int(11) NOT NULL AUTO_INCREMENT,
  `es_ep_file_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `es_ep_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `es_ep_price` decimal(10, 0) NULL DEFAULT NULL,
  `es_eod_quantity` int(11) NULL DEFAULT NULL,
  `es_ep_stock` int(11) NULL DEFAULT NULL,
  `es_ep_id` int(11) NULL DEFAULT NULL,
  `es_eu_user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `es_valid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`es_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1267 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of easybuy_shop
-- ----------------------------
INSERT INTO `easybuy_shop` VALUES (1256, NULL, 'Leo', 223, 2, NULL, 23, '23', NULL);
INSERT INTO `easybuy_shop` VALUES (1257, 'w1.jpg', '藏地牛皮书', 14, 1, 3, 8, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1258, 'wy1.jpg', '韩语书', 20, 1, 1, 7, '378674223@qq.com', 2);
INSERT INTO `easybuy_shop` VALUES (1259, 'wy1.jpg', '韩语书', 20, 1, 0, 7, '378674223@qq.com', 2);
INSERT INTO `easybuy_shop` VALUES (1260, 'wy1.jpg', '韩语书', 20, 1, -2, 7, '378674223@qq.com', 2);
INSERT INTO `easybuy_shop` VALUES (1261, 'wy1.jpg', '韩语书', 20, 1, -3, 7, 'kate', 2);
INSERT INTO `easybuy_shop` VALUES (1262, 'ys1.jpg', '诗集', 33, 1, 22, 12, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1263, 'x1.jpg', '中国空军', 12, 1, 30, 11, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1264, 'ys1.jpg', '诗集', 33, 2, 21, 12, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1265, 'ys1.jpg', '诗集', 34, 1, 2, 18, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1266, 'yb1.jpg', '诗集', 11, 1, 11, 16, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1267, 'ys1.jpg', '诗集', 34, 1, 2, 18, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1268, 'jg1.jpg', '11', 11, 2, 11, 13, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1269, 'ys1.jpg', '诗集', 33, 1, 19, 12, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1270, 'w2.jpg', '你是人间四月天', 11, 1, 10, 16, '67711', 2);
INSERT INTO `easybuy_shop` VALUES (1271, 'jg1.jpg', 'Design', 11, 1, 9, 13, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1272, 'ts5.jpg', 'Linux', 35, 1, 333, 9, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1273, 'ts5.jpg', 'Linux', 35, 1, 333, 9, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1275, 'x2.jpg', '宋史', 23, 1, 33, 20, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1276, 'jg1.jpg', 'Design', 11, 1, 8, 13, 'sharon', 2);
INSERT INTO `easybuy_shop` VALUES (1277, 'ts5.jpg', 'Linux', 35, 1, 331, 9, 'sharon', 2);
INSERT INTO `easybuy_shop` VALUES (1279, 'jg1.jpg', 'Design', 11, 1, 7, 13, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1280, 's1.jpg', '笨狗狗', 33, 1, 20, 19, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1281, 'x2.jpg', '宋史', 23, 1, 32, 20, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1282, 'jg1.jpg', 'Design', 11, 1, 6, 13, 'sharon', 2);
INSERT INTO `easybuy_shop` VALUES (1283, 'ts5.jpg', 'Linux', 35, 1, 330, 9, 'sharon', 2);
INSERT INTO `easybuy_shop` VALUES (1284, 'ts5.jpg', 'Linux', 35, 1, 329, 9, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1285, 'jg1.jpg', 'Design', 11, 5, 5, 13, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1286, 'x2.jpg', '宋史', 23, 2, 31, 20, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1287, 'x2.jpg', '宋史', 23, 9, 31, 20, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (1288, 'jg1.jpg', 'Design', 11, 0, 0, 13, 'admin', 1);

-- ----------------------------
-- Table structure for easybuy_user
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_user`;
CREATE TABLE `easybuy_user`  (
  `EU_USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EU_USER_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EU_PASSWORD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EU_SEX` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EU_BIRTHDAY` datetime(0) NULL DEFAULT NULL,
  `EU_IDENTITY_CODE` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EU_EMAIL` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EU_MOBILE` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EU_ADDRESS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EU_STATUS` decimal(6, 0) NOT NULL,
  PRIMARY KEY (`EU_USER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of easybuy_user
-- ----------------------------
INSERT INTO `easybuy_user` VALUES ('admin', '管理员', 'admin', 'F', '2018-04-11 00:00:00', '', 'llqqxf@163.com', '13666666666', '上海', 2);
INSERT INTO `easybuy_user` VALUES ('kate', 'zz', '1234', 'F', '2020-06-14 00:00:00', NULL, '123@123.com', '123456', '北京', 1);
INSERT INTO `easybuy_user` VALUES ('sharon', '陆倩倩', '12345', 'F', '2018-06-10 00:00:00', NULL, '12345@154.com', '12345', '盐城', 1);

SET FOREIGN_KEY_CHECKS = 1;
