/*
 Navicat Premium Data Transfer

 Source Server         : onus
 Source Server Type    : MySQL
 Source Server Version : 50739
 Source Host           : localhost:3306
 Source Schema         : onu

 Target Server Type    : MySQL
 Target Server Version : 50739
 File Encoding         : 65001

 Date: 17/11/2022 22:09:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for _prisma_migrations
-- ----------------------------
DROP TABLE IF EXISTS `_prisma_migrations`;
CREATE TABLE `_prisma_migrations`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) NULL DEFAULT NULL,
  `migration_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `rolled_back_at` datetime(3) NULL DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _prisma_migrations
-- ----------------------------
INSERT INTO `_prisma_migrations` VALUES ('e0fac2d0-3e67-4c41-bad9-72e4216fd9c2', '7311b7b94ed7cd6a21ed62b7d4243d94a7094696b97b150e462b19d862730827', '2022-10-02 14:07:36.682', '20221002140736_gti_db', NULL, NULL, '2022-10-02 14:07:36.654', 1);

-- ----------------------------
-- Table structure for onu
-- ----------------------------
DROP TABLE IF EXISTS `onu`;
CREATE TABLE `onu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpe_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `onu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `olt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of onu
-- ----------------------------
INSERT INTO `onu` VALUES (1, 'sandro servo', 'servo', '1203', 'mirador', 'mirador', '1/12/14', '0001', '20000');
INSERT INTO `onu` VALUES (2, 'teste', 'teste3', '0001', 'teste', 'miradopr', '12/09/12', '00003', '30000');
INSERT INTO `onu` VALUES (3, 'marcos', 'teste', '00006', 'mirador', 'mirador', '12/14/16', '00007', '40000');
INSERT INTO `onu` VALUES (4, 'marcos  aurelio ', 'marcos', '000009', 'mirador', 'de mirador', '13/17/00', '00000010', '2000');

SET FOREIGN_KEY_CHECKS = 1;
