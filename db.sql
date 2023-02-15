/*
 Navicat Premium Data Transfer

 Source Server         : gouwu
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : db

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 12/01/2023 16:12:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('小明', '13617686680', '广东省广州市天河区棠下');
INSERT INTO `address` VALUES ('小红', '15667597097', '广东省广州市天河区渔沙坦');

-- ----------------------------
-- Table structure for clothes
-- ----------------------------
DROP TABLE IF EXISTS `clothes`;
CREATE TABLE `clothes`  (
  `clothesId` int(0) NOT NULL AUTO_INCREMENT,
  `clothesName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `clothesPrice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `clothesNum` int(0) NULL DEFAULT NULL,
  `clothesPicture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`clothesId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clothes
-- ----------------------------
INSERT INTO `clothes` VALUES (3, '【SSUR PLUS】ICONSLAB 小熊卫衣卡通连帽帽衫情侣宽松百搭外套', '129', 112, 'https://img.alicdn.com/bao/uploaded/i4/2213092701561/O1CN014WLKX61NOz3ggsMFL_!!0-item_pic.jpg');
INSERT INTO `clothes` VALUES (4, 'MardiMercredi小雏菊圆领印花休闲卫衣男女2022年秋冬新款宽松', '779', 23, 'https://img.alicdn.com/bao/uploaded/i3/2214124486854/O1CN01N8oWEi20VBRDHb23s_!!0-item_pic.jpg');
INSERT INTO `clothes` VALUES (5, '色彩博物馆丨鸿星尔克羽绒服2022冬季男女运动面包服男士上衣外套', '259', 23, 'https://img.alicdn.com/bao/uploaded/i3/349740505/O1CN01H8RTfK1FbKob4OIbJ_!!0-item_pic.jpg');
INSERT INTO `clothes` VALUES (6, '\r\n00:05\r\n00:16\r\n\r\nadidas阿迪达斯官方男女冬季情侣加绒加厚运动圆领长袖卫衣IB2713', '279', 89, 'https://img.alicdn.com/bao/uploaded/O1CN0178cGhj1x8KoQhystq_!!6000000006398-0-yinhe.jpg');
INSERT INTO `clothes` VALUES (7, 'Dickies商场同款连帽套头卫衣 印花情侣款毛圈上衣10124', '209', 77, 'https://img.alicdn.com/bao/uploaded/O1CN01l1Ztrz1tYf8HeX9Yv_!!6000000005914-0-yinhe.jpg');
INSERT INTO `clothes` VALUES (8, 'GUUKA&Agaho潮牌联名圆领卫衣男女情侣嘻哈长春花蓝刺绣上衣宽松', '299', 34, 'https://img.alicdn.com/bao/uploaded/i3/332741003/O1CN01F7znTN1JHQ1ip1wKd_!!332741003.jpg');
INSERT INTO `clothes` VALUES (9, '李宁加绒外套男士冬季2022新款韦德男装开衫卫衣男连帽上衣运动服', '278', 67, 'https://img.alicdn.com/bao/uploaded/O1CN01zT8dtJ1spmJXHSm0C_!!6000000005816-0-yinhe.jpg');

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `spPicture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `spName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `spPrice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `payment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xdtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('1670047769419557', '15667597097', '小红', '广东省广州市天河区渔沙坦', 'https://gw.alicdn.com/imgextra/O1CN01nAiXXV1RaDDslYx8i_!!0-item_pic.jpg_240x240q75.jpg_.webp', '【王一博同款】安踏街顽丨板鞋男女2022新款厚底情侣鞋休闲运动鞋', '439', '2', '878', '2022/12/3下午2:09:29', 0);
INSERT INTO `orderlist` VALUES ('1670047769420309', '15667597097', '小红', '广东省广州市天河区渔沙坦', 'https://img.alicdn.com/bao/uploaded/i3/385132127/O1CN01w5m4Br1RaDDtgVgg8_!!0-item_pic.jpg_468x468q75.jpg', '安踏KT7丨氮科技篮球鞋男回弹缓震专业实战耐磨高帮碳板运动鞋', '519', '2', '1038', '2022/12/3下午2:09:29', 0);
INSERT INTO `orderlist` VALUES ('1670047799940796', '13617686680', '小明', '广东省广州市', 'https://img.alicdn.com/bao/uploaded/i4/2214298363404/O1CN019rdFCM1b14zzuMRwa_!!2214298363404.jpg_468x468q75.jpg', 'Nike耐克AirJordan1LowAJ1复古灰白男女休闲板鞋篮球鞋553558-053', '679', '2', '1358', '2022/12/3下午2:09:59', 1);
INSERT INTO `orderlist` VALUES ('1670047799941837', '13617686680', '小明', '广东省广州市天河区', 'https://img.alicdn.com/bao/uploaded/i2/2901205208/O1CN01Q9bQOX1oLJVFSCRgc_!!2901205208.jpg_468x468q75.jpg', 'NIKE耐克Jordan2022秋冬季男女大童加绒高帮休闲运动板鞋DO2207', '499', '1', '499', '2022/12/3下午2:09:59', 0);
INSERT INTO `orderlist` VALUES ('1670229466675679', '13617686680', '小明', '广东省广州市', 'https://img.alicdn.com/bao/uploaded/i2/446338500/O1CN01MnZ8ar2Cf3Lspttng_!!0-item_pic.jpg_468x468q75.jpg', 'adidas阿迪达斯官方GALAXY 5男女挑战里程网面跑步运动鞋FW5705', '199', '1', '199', '2022/12/5下午4:37:46', 1);
INSERT INTO `orderlist` VALUES ('1671095322952523', '13617686680', '小明', '广东省广州市', 'https://img.alicdn.com/bao/uploaded/O1CN01gBWp4G1OS1IjUAy32_!!6000000001703-0-yinhe.jpg', '安踏型动裤丨加绒裤男士冬季运动长裤加厚保暖休闲直筒针织裤子', '293', '4', '1172', '2022/12/15下午5:08:42', 2);
INSERT INTO `orderlist` VALUES ('1671095322952132', '13617686680', '小明', '广东省广州市', 'https://img.alicdn.com/bao/uploaded/i1/446338500/O1CN01UBbOow2Cf3Lhu1epP_!!446338500.jpg_468x468q75.jpg', 'adidas阿迪达斯官方Marquee Boost男子团队款专业篮球鞋G26212', '499', '4', '1996', '2022/12/15下午5:08:42', 1);
INSERT INTO `orderlist` VALUES ('1671095322952533', '13617686680', '小明', '广东省广州市', 'https://img.alicdn.com/bao/uploaded/i2/2214881634260/O1CN019d3el91hL81hfUmXv_!!0-item_pic.jpg', 'FOG MURUA重磅潮牌第七季主线7数字连帽衫oversize情侣套头卫衣潮', '69', '1', '69', '2022/12/15下午5:08:42', 2);
INSERT INTO `orderlist` VALUES ('1671095640144398', '15667597097', '小红', '广东省广州市天河区渔沙坦', 'https://img.alicdn.com/bao/uploaded/i2/2214881634260/O1CN019d3el91hL81hfUmXv_!!0-item_pic.jpg', 'FOG MURUA重磅潮牌第七季主线7数字连帽衫oversize情侣套头卫衣潮', '69', '1', '69', '2022/12/15下午5:14:00', 1);
INSERT INTO `orderlist` VALUES ('1671095640144079', '15667597097', '小红', '广东省广州市天河区渔沙坦', 'https://img.alicdn.com/bao/uploaded/i3/688058032/O1CN0144C4US29Ci0GUjmaQ_!!688058032.jpg', '骆驼冲锋衣男女三合一外套 防风防水可拆卸登山服冬季', '235', '1', '235', '2022/12/15下午5:14:00', 1);
INSERT INTO `orderlist` VALUES ('1671095640144684', '15667597097', '小红', '广东省广州市天河区渔沙坦', 'https://img.alicdn.com/bao/uploaded/O1CN01gBWp4G1OS1IjUAy32_!!6000000001703-0-yinhe.jpg', '安踏型动裤丨加绒裤男士冬季运动长裤加厚保暖休闲直筒针织裤子', '293', '5', '1465', '2022/12/15下午5:14:00', 1);
INSERT INTO `orderlist` VALUES ('1671096537805066', '13617686680', '小明', '广东省广州市', 'https://img.alicdn.com/bao/uploaded/i3/688058032/O1CN0144C4US29Ci0GUjmaQ_!!688058032.jpg', '骆驼冲锋衣男女三合一外套 防风防水可拆卸登山服冬季', '235', '3', '705', '2022/12/15下午5:28:57', 1);
INSERT INTO `orderlist` VALUES ('1671096537805841', '13617686680', '小明', '广东省广州市', 'https://img.alicdn.com/bao/uploaded/O1CN01gBWp4G1OS1IjUAy32_!!6000000001703-0-yinhe.jpg', '安踏型动裤丨加绒裤男士冬季运动长裤加厚保暖休闲直筒针织裤子', '293', '2', '586', '2022/12/15下午5:28:57', 2);
INSERT INTO `orderlist` VALUES ('1671100762897751', '13617686680', '小明', '广东省广州市', 'https://img.alicdn.com/bao/uploaded/i2/2214881634260/O1CN019d3el91hL81hfUmXv_!!0-item_pic.jpg', 'FOG MURUA重磅潮牌第七季主线7数字连帽衫oversize情侣套头卫衣潮', '69', '4', '276', '2022/12/15下午6:39:22', 1);
INSERT INTO `orderlist` VALUES ('1671100762897890', '13617686680', '小明', '广东省广州市', 'https://img.alicdn.com/bao/uploaded/O1CN01gBWp4G1OS1IjUAy32_!!6000000001703-0-yinhe.jpg', '安踏型动裤丨加绒裤男士冬季运动长裤加厚保暖休闲直筒针织裤子', '293', '1', '293', '2022/12/15下午6:39:22', 1);
INSERT INTO `orderlist` VALUES ('1672222697770786', '15667597097', '小红', '广东省广州市天河区渔沙坦', 'https://img.alicdn.com/bao/uploaded/i4/2213092701561/O1CN014WLKX61NOz3ggsMFL_!!0-item_pic.jpg', '【SSUR PLUS】ICONSLAB 小熊卫衣卡通连帽帽衫情侣宽松百搭外套', '129', '3', '387', '2022/12/28下午6:18:17', 1);
INSERT INTO `orderlist` VALUES ('1672222697770119', '15667597097', '小红', '广东省广州市天河区渔沙坦', 'https://img.alicdn.com/bao/uploaded/i3/688058032/O1CN0144C4US29Ci0GUjmaQ_!!688058032.jpg', '骆驼冲锋衣男女三合一外套 防风防水可拆卸登山服冬季', '235', '2', '470', '2022/12/28下午6:18:17', 1);
INSERT INTO `orderlist` VALUES ('1672314082748411', '13617686680', '小明', '广东省广州市天河区棠下', 'https://img.alicdn.com/bao/uploaded/i3/385132127/O1CN01w5m4Br1RaDDtgVgg8_!!0-item_pic.jpg_468x468q75.jpg', '安踏KT7丨氮科技篮球鞋男回弹缓震专业实战耐磨高帮碳板运动鞋', '519', '6', '3114', '2022/12/29下午7:41:22', 1);
INSERT INTO `orderlist` VALUES ('1672314082748827', '13617686680', '小明', '广东省广州市天河区棠下', 'https://img.alicdn.com/bao/uploaded/O1CN01gBWp4G1OS1IjUAy32_!!6000000001703-0-yinhe.jpg', '安踏型动裤丨加绒裤男士冬季运动长裤加厚保暖休闲直筒针织裤子', '293', '1', '293', '2022/12/29下午7:41:22', 0);

-- ----------------------------
-- Table structure for pants
-- ----------------------------
DROP TABLE IF EXISTS `pants`;
CREATE TABLE `pants`  (
  `pantsId` int(0) NOT NULL,
  `pantsName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pantsPrice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pantsNum` int(0) NULL DEFAULT NULL,
  `pantsPicture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pantsId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pants
-- ----------------------------
INSERT INTO `pants` VALUES (10, '安踏加绒卫裤女士2022冬季灰色运动裤束脚裤保暖加厚休闲长裤子', '149', 57, 'https://img.alicdn.com/bao/uploaded/O1CN01got7Es27N7ltTAg37_!!6000000007784-0-yinhe.jpg');
INSERT INTO `pants` VALUES (11, '安踏型动裤丨加绒裤男士冬季运动长裤加厚保暖休闲直筒针织裤子', '293', 67, 'https://img.alicdn.com/bao/uploaded/O1CN01gBWp4G1OS1IjUAy32_!!6000000001703-0-yinhe.jpg');
INSERT INTO `pants` VALUES (12, '安踏KT裤丨加绒运动长裤男士冬季针织束脚裤卫裤休闲运动裤长裤子', '179', 88, 'https://img.alicdn.com/bao/uploaded/O1CN01cx9BJ61KdEWCCOG8k_!!6000000001186-0-yinhe.jpg');
INSERT INTO `pants` VALUES (13, '李宁空气层卫裤男士×2022新款官方冬季休闲裤子束脚男款运动裤男', '178', 56, 'https://img.alicdn.com/bao/uploaded/O1CN01mTiizj29hOWsJQPjV_!!6000000008099-0-yinhe.jpg');
INSERT INTO `pants` VALUES (14, '特步加绒运动裤女冬季加厚女裤束脚直筒针织长裤宽松卫裤保暖裤子', '108', 78, 'https://img.alicdn.com/bao/uploaded/O1CN01OwDPMB1fkesxhUY6W_!!6000000004045-0-yinhe.jpg');
INSERT INTO `pants` VALUES (15, '【直播专享】李宁暖绒卫裤男士2022新款冬季男款加绒束脚运动长裤', '178', 67, 'https://img.alicdn.com/bao/uploaded/i4/92688455/O1CN01IADleg2CKRXCuTGtO_!!92688455.jpg');
INSERT INTO `pants` VALUES (16, '安踏软绒长裤丨加绒卫裤男士冬季运动裤保暖束脚宽松加厚潮流裤子', '159', 78, 'https://img.alicdn.com/bao/uploaded/O1CN01qsYDcm28SuNUGMgui_!!6000000007932-0-yinhe.jpg');
INSERT INTO `pants` VALUES (111, '李宁运动裤男加绒宽松裤子秋冬新款正品卫裤篮球冬季保暖休闲长裤', '109', 89, 'https://img.alicdn.com/bao/uploaded/i2/1777425651/O1CN01MeESvB1rcCxkwm0yZ_!!0-item_pic.jpg');

-- ----------------------------
-- Table structure for shoes
-- ----------------------------
DROP TABLE IF EXISTS `shoes`;
CREATE TABLE `shoes`  (
  `shoesId` int(0) NOT NULL AUTO_INCREMENT,
  `shoesName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shoesPrice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shoesNum` int(0) NULL DEFAULT NULL,
  `shoesPicture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`shoesId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoes
-- ----------------------------
INSERT INTO `shoes` VALUES (17, '【王一博同款】安踏街顽丨板鞋男女2022新款厚底情侣鞋休闲运动鞋', '439', 222, 'https://gw.alicdn.com/imgextra/O1CN01nAiXXV1RaDDslYx8i_!!0-item_pic.jpg_240x240q75.jpg_.webp');
INSERT INTO `shoes` VALUES (18, '安踏KT7丨氮科技篮球鞋男回弹缓震专业实战耐磨高帮碳板运动鞋', '519', 225, 'https://img.alicdn.com/bao/uploaded/i3/385132127/O1CN01w5m4Br1RaDDtgVgg8_!!0-item_pic.jpg_468x468q75.jpg');
INSERT INTO `shoes` VALUES (19, '【白敬亭同款】安踏海沃德3GH3圣诞丨氮科技篮球鞋男鞋专业运动鞋', '799', 222, 'https://img.alicdn.com/bao/uploaded/i1/385132127/O1CN01Wx62k51RaDE00xMFd_!!0-item_pic.jpg_468x468q75.jpg');
INSERT INTO `shoes` VALUES (20, 'adidas阿迪达斯官方Pro Bounce 2018男子团队款实战篮球鞋FW5744', '299', 222, 'https://img.alicdn.com/bao/uploaded/i1/446338500/O1CN01FIbhl12Cf3LkrIdKI_!!446338500.jpg_468x468q75.jpg');
INSERT INTO `shoes` VALUES (21, 'adidas阿迪达斯官方Marquee Boost男子团队款专业篮球鞋G26212', '499', 22, 'https://img.alicdn.com/bao/uploaded/i1/446338500/O1CN01UBbOow2Cf3Lhu1epP_!!446338500.jpg_468x468q75.jpg');
INSERT INTO `shoes` VALUES (22, 'adidas阿迪达斯官方GALAXY 5男女挑战里程网面跑步运动鞋FW5705', '199', 222, 'https://img.alicdn.com/bao/uploaded/i2/446338500/O1CN01MnZ8ar2Cf3Lspttng_!!0-item_pic.jpg_468x468q75.jpg');
INSERT INTO `shoes` VALUES (23, 'Nike耐克AirJordan1LowAJ1复古灰白男女休闲板鞋篮球鞋553558-053', '679', 322, 'https://img.alicdn.com/bao/uploaded/i4/2214298363404/O1CN019rdFCM1b14zzuMRwa_!!2214298363404.jpg_468x468q75.jpg');
INSERT INTO `shoes` VALUES (24, 'NIKE耐克Jordan2022秋冬季男女大童加绒高帮休闲运动板鞋DO2207', '499', 333, 'https://img.alicdn.com/bao/uploaded/i2/2901205208/O1CN01Q9bQOX1oLJVFSCRgc_!!2901205208.jpg_468x468q75.jpg');
INSERT INTO `shoes` VALUES (25, 'nike耐克男鞋AIR MONARCH IV运动鞋跑步鞋', '399', 222, 'https://img.alicdn.com/bao/uploaded/i3/848014414/O1CN01rZcG2r1iTf1i9wL0T_!!848014414.jpg_468x468q75.jpg');
INSERT INTO `shoes` VALUES (26, 'nike耐克男鞋AIR ZOOM PEGASUS运动训练鞋跑步鞋', '349', 222, 'https://img.alicdn.com/bao/uploaded/i2/848014414/O1CN01iBS3qv1iTf1hUXFdy_!!848014414.jpg_468x468q75.jpg');
INSERT INTO `shoes` VALUES (27, 'PUMA彪马中性运动时尚潮流舒适缓震休闲鞋374800-03', '769', 222, 'https://img.alicdn.com/bao/uploaded/i2/814612768/O1CN01QxSFBY1WJn64xoflw_!!814612768.jpg_468x468q75.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `headIcon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '111', 'https://img0.baidu.com/it/u=1095454086,743072542&fm=253&fmt=auto&app=138&f=PNG?w=461&h=500');
INSERT INTO `user` VALUES ('111', '111', 'https://img0.baidu.com/it/u=1095454086,743072542&fm=253&fmt=auto&app=138&f=PNG?w=461&h=500');
INSERT INTO `user` VALUES ('12', '111', 'https://img0.baidu.com/it/u=1095454086,743072542&fm=253&fmt=auto&app=138&f=PNG?w=461&h=500');
INSERT INTO `user` VALUES ('123', '123', 'https://img1.baidu.com/it/u=1518761498,2099192274&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500');
INSERT INTO `user` VALUES ('1233', '111', 'https://img0.baidu.com/it/u=1095454086,743072542&fm=253&fmt=auto&app=138&f=PNG?w=461&h=500');

-- ----------------------------
-- View structure for splist
-- ----------------------------
DROP VIEW IF EXISTS `splist`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `splist` AS select `shoes`.`shoesId` AS `shoesId`,`shoes`.`shoesName` AS `shoesName`,`shoes`.`shoesPrice` AS `shoesPrice`,`shoes`.`shoesNum` AS `shoesNum`,`shoes`.`shoesPicture` AS `shoesPicture` from `shoes` union all select `clothes`.`clothesId` AS `clothesId`,`clothes`.`clothesName` AS `clothesName`,`clothes`.`clothesPrice` AS `clothesPrice`,`clothes`.`clothesNum` AS `clothesNum`,`clothes`.`clothesPicture` AS `clothesPicture` from `clothes` union all select `pants`.`pantsId` AS `pantsId`,`pants`.`pantsName` AS `pantsName`,`pants`.`pantsPrice` AS `pantsPrice`,`pants`.`pantsNum` AS `pantsNum`,`pants`.`pantsPicture` AS `pantsPicture` from `pants`;

SET FOREIGN_KEY_CHECKS = 1;
