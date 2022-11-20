/*
 Navicat Premium Data Transfer

 Source Server         : MySQL-Dev
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 192.168.199.131:3306
 Source Schema         : annie_user

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 25/05/2022 00:38:54
*/

SET NAMES utf8mb4;
SET
FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
    `uid`      bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
    `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
    `is_admin` tinyint(1) NULL DEFAULT NULL,
    PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user`
VALUES (1, 'flswld', '25d55ad283aa400af464c76d713c07ad', 1);
INSERT INTO `user`
VALUES (2, 'fhqs', '25d55ad283aa400af464c76d713c07ad', 0);

SET
FOREIGN_KEY_CHECKS = 1;
