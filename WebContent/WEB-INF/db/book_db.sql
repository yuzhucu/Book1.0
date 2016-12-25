/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : book_db

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-26 00:06:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('cyz', 'cyz');

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `barcode` varchar(200) NOT NULL COMMENT '国际标准书号ISBN',
  `bookName` varchar(200) NOT NULL COMMENT '图书名称',
  `bookType` int(11) DEFAULT NULL COMMENT '图书类别',
  `price` float NOT NULL COMMENT '出版价格',
  `count` int(11) DEFAULT NULL COMMENT '库存量',
  `publish` varchar(200) NOT NULL COMMENT '出版社',
  `publishDate` varchar(100) DEFAULT NULL COMMENT '出版日期',
  `photoBook` varchar(500) DEFAULT NULL COMMENT '图书图片',
  `buyDate` varchar(100) DEFAULT NULL COMMENT '购买日期',
  `buyPrice` float DEFAULT NULL COMMENT '购买价格',
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '入库日期',
  `purChannel` varchar(100) DEFAULT '当当网' COMMENT '购买渠道',
  `discount` float DEFAULT NULL COMMENT '折扣',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`barcode`),
  KEY `FKCB4C8FF42CA4B7B0` (`bookType`),
  CONSTRAINT `FKCB4C8FF42CA4B7B0` FOREIGN KEY (`bookType`) REFERENCES `t_booktype` (`bookTypeId`),
  CONSTRAINT `FKcfht1lg6djffxrt3jtjoc4o9h` FOREIGN KEY (`bookType`) REFERENCES `t_booktype` (`bookTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES ('ISBN9787040223422', '投资学', '2', '29', '1', '高等教育出版社', '2007-11-01', 'upload/2853e2c8-1d90-453f-bc94-e4e42f9c8517.jpg', '2010-11-29', '26.1', '2016-12-21 01:19:17', '当当网', null, '金德环 ', null);
INSERT INTO `t_book` VALUES ('ISBN9787111284055', '彼得.林奇教你理财', '2', '36', '1', '机械工业出版社', '2010-01-01', 'upload/71bc470c-12c7-4561-896f-63f1b244f122.jpg', '2015-02-06', '24.7', '2016-12-20 23:24:32', '当当网', null, '（美）林奇，（美）罗瑟查尔德', null);
INSERT INTO `t_book` VALUES ('ISBN9787111302490', '彼得.林奇的成功投资（珍藏版）', '2', '38', '1', '机械工业出版社', '2010-04-01', 'upload/f36e211c-6890-4cb3-b4f5-58c923d3c9e3.jpg', '2015-02-06', '27', '2016-12-20 23:19:52', '当当网', null, '（美）林奇，（美）罗瑟查尔德', null);
INSERT INTO `t_book` VALUES ('ISBN9787111302506', '江恩华尔街45年（珍藏版）', '2', '36', '1', '机械工业出版社', '2010-04-01', 'upload/62425bc2-fb16-40db-89c9-269bf85f262b.jpg', '2014-11-01', '23', '2016-12-21 00:49:17', '当当网', null, '（美）江恩　', null);
INSERT INTO `t_book` VALUES ('ISBN9787111302520', '战胜华尔街（珍藏版）', '2', '48', '1', '机械工业出版社', '2010-04-01', 'upload/b1a52846-74ca-4b7e-9cb5-ff64e1166b34.jpg', '2016-02-06', '34.1', '2016-12-20 23:22:22', '当当网', null, '（美）林奇，（美）罗瑟查尔德　', null);
INSERT INTO `t_book` VALUES ('ISBN9787111306290', '股市心理博弈（原书第2版）（珍藏版）', '2', '58', '1', '机械工业出版社', '2010-06-01', 'upload/c584ad62-d08f-4380-b504-8d30ee9b5b4b.jpg', '2014-11-09', '39.6', '2016-12-21 00:37:07', '当当网', null, '（美）约翰·迈吉 ', null);
INSERT INTO `t_book` VALUES ('ISBN9787111310167', '艾略特波浪理论：市场行为的关键（二十周年纪念版）', '2', '38', '1', '机械工业出版社', '2010-08-01', 'upload/2d7af329-b0e3-4249-ac65-f0abbdbd10a1.jpg', '2014-11-01', '21.8', '2016-12-21 00:53:02', '当当网', null, '（美）普莱切特，（美）弗罗斯特', null);
INSERT INTO `t_book` VALUES ('ISBN9787111373216', '打开量化投资的黑箱', '2', '45', '1', '机械工业出版社', '2012-03-01', 'upload/0f4b8fb5-5618-487a-bd69-001d8d0a5b32.jpg', '2014-12-12', '33', '2016-12-21 00:08:13', '当当网', null, '（美）纳兰　', null);
INSERT INTO `t_book` VALUES ('ISBN9787111436737', '利用Python进行数据分析', '1', '89', '1', '机械工业出版社', '2014-01-01', 'upload/5903e1e9-6d41-4971-bf0f-6d4c8c3b6a73.jpg', '2016-12-22', '53.4', '2016-12-23 23:36:37', '当当网', null, '（美）麦金尼', null);
INSERT INTO `t_book` VALUES ('ISBN9787111439561', '以交易为生II：卖出的艺术', '2', '55', '1', '机械工业出版社', '2013-10-01', 'upload/deed5acc-5d90-413d-9a2b-822347617f43.jpg', '2015-06-04', '35.3', '2016-12-20 23:02:04', '当当网', null, '（美）亚历山大.埃尔德 （Alexander Elder）', null);
INSERT INTO `t_book` VALUES ('ISBN9787111465676', '证券混沌操作法', '2', '49', '1', '机械工业出版社', '2014-05-01', 'upload/0b1d3e75-020f-46cc-9445-43a9c9749160.jpg', '2014-11-09', '36.5', '2016-12-21 00:26:16', '当当网', null, '（美）威廉斯，（美）格雷戈里–威廉斯', null);
INSERT INTO `t_book` VALUES ('ISBN9787115234957', '聪明的投资者', '2', '88', '1', '人民邮电出版社', '2010-08-01', 'upload/1c5d0cca-deee-4fdb-9d33-fb3e1fc4aee1.jpg', '2014-11-01', '49.6', '2016-12-21 00:47:20', '当当网', null, '（美）格雷厄姆', null);
INSERT INTO `t_book` VALUES ('ISBN9787115289094', '别怕，Excel VBA其实很简单', '1', '49', '1', '人民邮电出版社', '2012-10-01', 'upload/682705ef-8f04-4942-9a8d-357f07981c51.jpg', '2014-11-09', '29.4', '2016-12-21 00:35:18', '当当网', null, 'Excel Home ', null);
INSERT INTO `t_book` VALUES ('ISBN9787115292360', '股票大作手操盘术——融合时间和价格的利弗莫尔准则', '2', '35', '1', '人民邮电出版社', '2012-10-01', 'upload/fdbdd6a6-e7af-425c-9107-3416510d4069.jpg', '2014-11-09', '21', '2016-12-21 00:28:19', '当当网', null, '[美]杰西·利弗莫尔(Jesse Livermore)', null);
INSERT INTO `t_book` VALUES ('ISBN9787115296894', 'Excel VBA实战技巧精粹（修订版）', '1', '69', '1', '人民邮电出版社', '2013-01-01', 'upload/1a2824f8-9942-4310-bd60-4cffd4bb301b.jpg', '2014-11-09', '33.8', '2016-12-21 00:33:24', '当当网', null, 'Excel Home', null);
INSERT INTO `t_book` VALUES ('ISBN9787115335234', 'Excel 2010函数与公式实战技巧精粹', '1', '69', '1', '人民邮电出版社', '2014-01-01', 'upload/85ae6484-1eef-4bb6-b6db-a902c50d989b.jpg', '2014-11-11', '58.7', '2016-12-21 00:21:41', '当当网', null, 'Excel Home', null);
INSERT INTO `t_book` VALUES ('ISBN9787115335418', 'Excel 2010数据处理与分析实战技巧精粹', '1', '69', '1', '人民邮电出版社', '2013-12-24', 'upload/64767d28-ca9e-4aad-8a47-0c461fb35d13.jpg', '2014-11-11', '51.3', '2016-12-21 00:14:02', '当当网', null, 'Excel Home ', null);
INSERT INTO `t_book` VALUES ('ISBN9787115335722', 'Excel 2010图表实战技巧精粹', '1', '69', '1', '人民邮电出版社', '2013-12-23', 'upload/30f7184c-819d-4221-93a1-53751c2caf47.jpg', '2014-11-11', '33.8', '2016-12-21 00:15:43', '当当网', null, 'Excel Home ', null);
INSERT INTO `t_book` VALUES ('ISBN9787115414779', 'Python核心编程 (第3版)', '1', '99', '1', '人民邮电出版社', '2016-05-30', 'upload/cd9ee720-6034-4254-bf19-2a255ecf6ce5.jpg', '2016-11-11', '48.5', '2016-12-19 23:54:09', '当当网', null, '[美]卫斯理 春（Wesley Chun）', null);
INSERT INTO `t_book` VALUES ('ISBN9787115416292', 'Python网络数据采集', '1', '59', '1', '人民邮电出版社', '2016-03-21', 'upload/a88ccb85-4a64-4e22-854e-b8848771566b.jpg', '2016-05-02', '50.2', '2016-12-19 23:56:45', '当当网', null, '[美] 米切尔（Ryan Mitchell）', null);
INSERT INTO `t_book` VALUES ('ISBN9787115417305', 'Spring实战（第4版）', '1', '89', '1', '人民邮电出版社', '2016-04-01', 'upload/3e352eb4-71fc-4cca-8414-16ecedb9feb2.jpg', '2016-12-12', '43.6', '2016-12-19 23:58:32', '当当网', null, '[美] 沃尔斯 (Craig Walls)', null);
INSERT INTO `t_book` VALUES ('ISBN9787115431790', '用Python写网络爬虫', '1', '45', '1', '人民邮电出版社', '2016-08-01', 'upload/c815394f-395d-4039-bc5e-63d4dc821d85.jpg', '2016-11-11', '22.1', '2016-12-20 00:00:08', '当当网', null, '[澳] 理查德 劳森（Richard Lawson）', null);
INSERT INTO `t_book` VALUES ('ISBN9787121127526', '交易心理分析', '2', '58', '1', '电子工业出版社', '2011-03-01', 'upload/22cee7de-88d6-4727-91c5-be245a4dae34.jpg', '2014-11-01', '31.3', '2016-12-21 00:51:23', '当当网', null, '（美）马克?道格拉斯　', null);
INSERT INTO `t_book` VALUES ('ISBN9787121179631', '问道量化投资-用MATLAB来敲门', '2', '59', '1', '电子工业出版社', '2012-09-01', 'upload/8149216d-4c95-45a2-8b9e-73eabf224059.jpg', '2012-09-01', '35.4', '2016-12-20 23:51:28', '当当网', null, '金斯伯格', null);
INSERT INTO `t_book` VALUES ('ISBN9787121240621', '量化投资——策略与技术（典藏版）', '2', '118', '1', '电子工业出版社', '2014-09-01', 'upload/867874ba-673f-4492-a6c5-c56352b32cef.jpg', '2014-12-12', '70.8', '2016-12-21 00:10:08', '当当网', null, '丁鹏', null);
INSERT INTO `t_book` VALUES ('ISBN9787121259265', '量化投资：数据挖掘技术与实践（MATLAB版）', '2', '88', '1', '电子工业出版社', '2015-05-01', 'upload/7611fbbc-b0d3-4daa-9d33-d82567f63976.jpg', '2015-09-28', '78.3', '2016-12-20 22:51:26', '当当网', null, '卓金武 周英 ', null);
INSERT INTO `t_book` VALUES ('ISBN9787160010595', 'Python基础教程(第2版修订版', '1', '79', '1', '人民邮电出版社', '2014-04-01', 'upload/c128bb1a-bd05-4dfb-82de-f8a7e608f63f.jpg', '2016-12-12', '43.7', '2016-12-20 00:04:18', '当当网', null, '[挪] 海特兰德', null);
INSERT INTO `t_book` VALUES ('ISBN9787203074755', '趋势投资50年', '2', '39.8', '1', '山西人民出版社发行部', '2012-06-01', 'upload/e42d2b38-704c-4a2c-882e-923d7be14325.jpg', '2014-12-12', '27.3', '2016-12-21 00:06:34', '当当网', null, '[挪威]拉斯 特维德 ', null);
INSERT INTO `t_book` VALUES ('ISBN9787203075165', '外汇日内交易与波段交易', '2', '49.8', '1', '山西人民出版社发行部', '2012-05-01', 'upload/d5f6ba94-6a78-48ad-a0bf-6a2dd80ff8fa.jpg', '2015-01-30', '32.6', '2016-12-20 23:40:36', '当当网', null, '[美国]（美）莲恩', null);
INSERT INTO `t_book` VALUES ('ISBN9787300079530', '西方经济学（微观部分）第四版', '2', '28', '1', '中国人民大学出版社', '2007-03-01', 'upload/81730d48-0998-4812-b20b-b8d7d9bc213b.jpg', '2010-11-25', '21.8', '2016-12-21 01:24:56', '当当网', null, '高鸿业', null);
INSERT INTO `t_book` VALUES ('ISBN9787300079547', '西方经济学 第四版（宏观部分）', '2', '28', '1', '中国人民大学出版社', '2007-03-01', 'upload/5e801fa3-0a0a-4497-8df1-45e5003f8406.jpg', '2010-11-25', '21.8', '2016-12-21 01:23:05', '当当网', null, '高鸿业 ', null);
INSERT INTO `t_book` VALUES ('ISBN9787300104713', '宏观经济学（第六版）', '2', '69', '1', '中国人民大学出版社', '2009-05-01', 'upload/06068e52-b75d-4429-9425-0151ce85a93a.jpg', '2010-11-29', '48.3', '2016-12-21 01:20:54', '当当网', null, '（美）曼昆', null);
INSERT INTO `t_book` VALUES ('ISBN9787300173429', '证券分析第6版（平装上、下）', '2', '129.9', '1', '中国人民大学出版社', '2014-11-11', 'upload/dc539fe4-315f-451f-aa00-821e681a30ea.jpg', '2014-11-11', '63.7', '2016-12-21 00:19:47', '当当网', null, '[美]本杰明·格雷厄姆（Benjamin Graham），戴维多德（David L. Dodd', null);
INSERT INTO `t_book` VALUES ('ISBN9787301222249', '税法 2013年注册会计师考试应试指导及全真模拟测试', '3', '48', '1', '北京大学出版社', '2013-04-01', 'upload/1fca621c-ebd6-4b33-af8d-4fcb56e12c1a.jpg', '2013-06-06', '28.1', '2016-12-21 01:09:09', '当当网', null, '刘颖 ', null);
INSERT INTO `t_book` VALUES ('ISBN9787301222256', '公司战略与风险管理 2013年注册会计师考试应试指导及全真模拟测试', '3', '36', '1', '北京大学出版社', '2013-04-01', 'upload/149a3572-f298-44b3-bb20-9acb198b804a.jpg', '2013-06-04', '21.6', '2016-12-21 01:10:55', '当当网', null, '田明', null);
INSERT INTO `t_book` VALUES ('ISBN9787301222263', '2013年注册会计师考试应试指导及全真模拟测试财务成本管理', '3', '52', '1', '北京大学出版社', '2013-04-01', 'upload/dbd32f10-4d2e-47fd-b773-172cbb2451f0.jpg', '2013-06-04', '26', '2016-12-21 01:07:20', '当当网', null, '闫华红', null);
INSERT INTO `t_book` VALUES ('ISBN9787301222270', '2013年注册会计师考试应试指导及全真模拟测试', '3', '52', '1', '北京大学出版社', '2013-04-01', 'upload/61136be9-01b6-4cfb-a36e-ddf430565dda.jpg', '2013-06-04', '26', '2016-12-21 01:05:33', '当当网', null, '张志凤', null);
INSERT INTO `t_book` VALUES ('ISBN9787301222287', '轻松过关3-税法 2013年注册会计师考试考点荟萃及记忆锦囊', '3', '15', '1', '北京大学出版社', '2013-04-01', 'upload/72b107b7-95e6-4520-8ffa-9e31d78a2b20.jpg', '2013-06-04', '9', '2016-12-21 01:15:12', '当当网', null, '葛艳军', null);
INSERT INTO `t_book` VALUES ('ISBN9787301222317', '轻松过关3-财务成本管理 2013年注册会计师考试考点荟萃及记忆锦囊', '3', '15', '1', '北京大学出版社', '2013-04-01', 'upload/4eb94f4f-bc9c-4879-b814-958ebbab622e.jpg', '2013-06-04', '9', '2016-12-21 01:13:49', '当当网', null, '孙明菲，窦丽娟', null);
INSERT INTO `t_book` VALUES ('ISBN9787301222324', '轻松过关3-会计 2013年注册会计师考试考点荟萃及记忆锦囊', '3', '15', '1', '北京大学出版社', '2013-04-01', 'upload/d6c74777-8443-44a1-bd8e-125f6b379d55.jpg', '2013-06-04', '7.5', '2016-12-21 01:12:24', '当当网', null, '佟志强 ', null);
INSERT INTO `t_book` VALUES ('ISBN9787301222331', '轻松过关3-公司战略与风险管理 2013年注册会计师考试考点荟萃及记忆锦囊', '3', '15', '1', '北京大学出版社', '2013-04-01', 'upload/225d2f1b-6964-4103-b468-b6a4b5b73ab1.jpg', '2013-06-04', '9', '2016-12-21 01:16:29', '当当网', null, '王婷婷', null);
INSERT INTO `t_book` VALUES ('ISBN9787301255858', '2015年注册会计师考试应试指导及全真模拟测试 财务成本管理', '3', '52', '1', '北京大学出版社', '2015-03-01', 'upload/4493285f-8669-4e6c-8686-413f0d93c74e.jpg', '2015-06-04', '31.2', '2016-12-20 23:08:52', '当当网', null, '闫华红', null);
INSERT INTO `t_book` VALUES ('ISBN9787301255865', '2015年注册会计师考试应试指导及全真模拟测试 公司战略与风险管理 ', '3', '40', '1', '北京大学出版社', '2015-03-01', 'upload/6df3b026-c571-4606-891e-e2c9b3ddf9c5.jpg', '2015-06-04', '24', '2016-12-20 23:10:27', '当当网', null, '田明', null);
INSERT INTO `t_book` VALUES ('ISBN9787301255889', '2015年注册会计师考试应试指导及全真模拟测试 经济法', '3', '48', '1', '北京大学出版社', '2015-03-01', 'upload/81fe5f20-05cb-414b-9aae-13e5712eb6a2.jpg', '2015-06-04', '28.8', '2016-12-20 23:06:45', '当当网', null, '郭守杰', null);
INSERT INTO `t_book` VALUES ('ISBN9787301255902', '2015年注册会计师考试应试指导及全真模拟测试 税法', '3', '49', '1', '北京大学出版社', '2015-03-01', 'upload/4719070f-eb90-455f-9270-08a9394baee7.jpg', '2015-06-04', '29.4', '2016-12-20 23:11:58', '当当网', null, '刘颖', null);
INSERT INTO `t_book` VALUES ('ISBN9787301269732', '2016注册会计师考试轻松过关1应试指导及全真模拟测试 财务成本管理', '3', '54', '1', '北京大学出版社', '2016-03-31', 'upload/634f7c18-fd20-4b5d-84b2-17d3974cc607.jpg', '2016-06-09', '27', '2016-12-19 23:40:24', '当当网', null, '闫华红', null);
INSERT INTO `t_book` VALUES ('ISBN9787301269893', '2016注册会计师考试轻松过关1应试指导及全真模拟测试 税法', '3', '50', '1', '北京大学出版社', '2016-03-31', 'upload/d824de74-c292-475b-9f03-14ae8ecdb768.jpg', '2016-06-08', '25', '2016-12-19 21:39:52', '当当网', null, '刘颖', null);
INSERT INTO `t_book` VALUES ('ISBN9787301269923', '2016注册会计师考试轻松过关1应试指导及全真模拟测试 公司战略与风险管理', '3', '42', '1', '北京大学出版社', '2016-03-31', 'upload/507fb6cd-1931-4f14-a432-fe27d8676070.jpg', '2016-06-09', '21', '2016-12-19 21:57:19', '当当网', null, '田明', null);
INSERT INTO `t_book` VALUES ('ISBN9787501790159', '金融怪杰：对话华尔街的传奇交易员', '2', '36', '1', '中国经济出版社', '2012-07-01', 'upload/ac47ce40-be83-4f13-b1f4-bc5fab76bb4e.jpg', '2014-11-09', '17.4', '2016-12-21 00:31:29', '当当网', null, '（美）杰克施瓦格（Jack D.Schwager）', null);
INSERT INTO `t_book` VALUES ('ISBN9787502840617', '怎样选择成长股（第二版）', '2', '48', '1', '地震出版社', '2013-01-01', 'upload/0216d744-239b-4e04-873a-708194e8f4eb.jpg', '2015-01-29', '30', '2016-12-20 23:27:15', '当当网', null, '[美国]（美）费舍', null);
INSERT INTO `t_book` VALUES ('ISBN9787508633800', '投资最重要的事', '2', '58', '1', '中信出版社', '2012-07-01', 'upload/27c94831-873e-459c-85af-95cce70136cd.jpg', '2014-11-01', '35.5', '2016-12-21 00:44:09', '当当网', null, '[美] 霍华德马克斯', null);
INSERT INTO `t_book` VALUES ('ISBN9787508651453', '高盛帝国', '2', '69', '1', '中信出版社', '2015-06-01', 'upload/16fc820a-efc9-41f6-9562-a37a30718128.jpg', '2015-06-19', '49.2', '2016-12-20 22:58:15', '当当网', null, '【美】查尔斯·埃利斯（Charles D. Ellis）', null);
INSERT INTO `t_book` VALUES ('ISBN9787509551325', '注册会计师全国统一考试历年试题汇编会计', '3', '11', '1', '中国财政经济出版社', '2014-03-31', 'upload/2ee60f08-7abc-457e-b22c-06388a674b9c.jpg', '2014-08-19', '9.7', '2016-12-21 00:55:04', '当当网', null, '中国注册会计师协会', null);
INSERT INTO `t_book` VALUES ('ISBN9787511312174', '国富论（超值白金版）', '2', '24.8', '1', '中国华侨出版社', '2011-03-01', 'upload/581767ab-c74a-4c2e-b478-4100240405ef.jpg', '2014-12-12', '12.4', '2016-12-21 00:01:01', '当当网', null, '（英）亚当·斯密（Adam Smith）', null);
INSERT INTO `t_book` VALUES ('ISBN9787511315861', '中国人必读的古典诗词大全集', '5', '24.8', '1', '中国华侨出版社', '2011-10-01', 'upload/e44925d0-a971-4200-9a2d-f7c003106ae6.jpg', '2013-06-06', '17.1', '2016-12-21 01:00:16', '当当网', null, '文嫣　', null);
INSERT INTO `t_book` VALUES ('ISBN9787511317490', '索罗斯炼金术 大全集', '2', '29.8', '1', '中国华侨出版社', '2012-01-01', 'upload/70701518-4d64-4532-b9fc-ae2b494a5fc9.jpg', '2015-01-30', '17.3', '2016-12-20 23:36:41', '当当网', null, '高榕?', null);
INSERT INTO `t_book` VALUES ('ISBN9787511339515', '股票技术分析大全', '2', '29.8', '1', '中国华侨出版社', '2013-10-01', 'upload/bbcd95b7-aba7-4ce4-ba42-adb6f46d700b.jpg', '2014-11-09', '14.6', '2016-12-21 00:24:22', '当当网', null, '王达菲', null);
INSERT INTO `t_book` VALUES ('ISBN9787512322333', 'Head First Python(中文版)', '1', '68', '1', '中国电力出版社', '2012-03-01', 'upload/bc038cea-ba21-461c-9091-c8d3cdb439fc.jpg', '2016-12-12', '33.3', '2016-12-18 21:32:17', '当当网', null, '[美] 巴里', null);
INSERT INTO `t_book` VALUES ('ISBN9787513625494', '图解缠论：核心理论推导与实战演示', '2', '35', '1', '中国经济出版社', '2013-08-01', 'upload/f10e32dc-c9bf-4b5a-96f0-0de4dcd48765.jpg', '2015-01-30', '24.5', '2016-12-20 23:29:23', '当当网', null, '陈秋明', null);
INSERT INTO `t_book` VALUES ('ISBN9787514155358', '税法--2015年度注册会计师全国统一考试辅导教材', '3', '50', '1', '经济科学出版社', '2015-03-01', 'upload/43b80fa1-6cb0-40bf-aa50-fe07b746354c.jpg', '2015-06-04', '37.5', '2016-12-20 23:04:39', '当当网', null, '中国注册会计师协会', null);
INSERT INTO `t_book` VALUES ('ISBN9787514167160', '2016年注册会计师考试机考题库与真题汇编 财务成本管理', '3', '38', '1', '经济科学出版社', '2016-03-31', 'upload/29166227-b21e-4b22-8f27-d85b51919d34.jpg', '2016-06-09', '27.8', '2016-12-20 22:38:00', '当当网', null, '田明', null);
INSERT INTO `t_book` VALUES ('ISBN9787514167177', '2016年注册会计师考试机考题库与真题汇编 公司战略与风险管理 ', '3', '36', '1', '经济科学出版社', '2016-03-31', 'upload/a57bc9aa-5374-41cb-aee4-e62060c07135.jpg', '2016-06-09', '26.3', '2016-12-20 22:39:57', '当当网', null, '吕鹏', null);
INSERT INTO `t_book` VALUES ('ISBN9787514167214', '2016年注册会计师考试机考题库与真题汇编 税法', '3', '34', '1', '经济科学出版社', '2016-03-31', 'upload/6eb5b883-1b33-46ca-a31d-745d22ea295e.jpg', '2016-06-09', '22.1', '2016-12-20 22:42:56', '当当网', null, '马兆瑞', null);
INSERT INTO `t_book` VALUES ('ISBN9787514603439', '一生要读的古典诗词', '5', '32', '1', '中国画报出版社', '2012-04-01', 'upload/4aaf52b9-1558-4a6c-91d8-ed0f6c857ec6.jpg', '2013-06-06', '20.8', '2016-12-21 01:01:57', '当当网', null, '陈默', null);
INSERT INTO `t_book` VALUES ('ISBN9787515303628', '股票作手回忆录', '2', '33.9', '1', '中国青年出版社', '2012-01-01', 'upload/1f4976c8-8b22-4f2e-81e7-c0b6f4ac2ef4.jpg', '2014-10-31', '16', '2016-12-21 00:39:58', '当当网', null, '（美）杰西·利弗莫尔 ', null);
INSERT INTO `t_book` VALUES ('ISBN9787515902357', '缠论解析：缠中说禅技术理论图解', '2', '23', '1', '中国宇航出版社', '2012-07-01', 'upload/e84ddff0-57bb-4d9b-8bee-3c333e8840c0.jpg', '2015-01-30', '15.8', '2016-12-20 23:34:27', '当当网', null, '江南小隐 ', null);
INSERT INTO `t_book` VALUES ('ISBN9787515907420', '趋势定位 缠中说禅理论精解', '2', '35', '1', '中国宇航出版社', '2014-08-01', 'upload/00846b29-3956-46a0-b3a1-44e2c46b3a71.jpg', '2015-01-30', '26.5', '2016-12-20 23:31:34', '当当网', null, '付上金', null);
INSERT INTO `t_book` VALUES ('ISBN9787532631261', '文徵明书兰亭序', '5', '24', '1', '上海辞书出版社', '2010-07-01', 'upload/45e1b294-35a4-4a36-aa01-5adcff6560c1.jpg', '2014-12-12', '2', '2016-12-21 00:12:00', '当当网', null, '上海辞书出版社', null);
INSERT INTO `t_book` VALUES ('ISBN9787539467870', '中国经典书画丛书--文徵明行书离骚滕王阁序', '5', '22', '1', '湖北美术出版社', '2014-06-01', 'upload/c0a3d2e4-3061-4b54-8b65-fdee484f06f9.jpg', '2014-12-12', '13.2', '2016-12-20 23:53:59', '当当网', null, '（明）文徵明　', null);
INSERT INTO `t_book` VALUES ('ISBN9787539966830', '摩根财团：美国一代银行王朝和现代金融业的崛起（1838～1990） ', '2', '198', '1', '江苏文艺出版社', '2014-04-01', 'upload/1c009ef5-77a8-4d54-b211-6595176d95c4.jpg', '2015-06-19', '116.7', '2016-12-20 22:55:33', '当当网', null, '（美）彻诺', null);
INSERT INTO `t_book` VALUES ('ISBN9787540676209', '刘斯奋诗译宋四家词选：辛弃疾', '5', '16.5', '1', '广东教育出版社', '2009-08-01', 'upload/65b157fe-14b5-4258-aafd-fc8a3966214f.jpg', '2013-06-06', '12.4', '2016-12-21 00:58:26', '当当网', null, '刘斯奋 ', null);
INSERT INTO `t_book` VALUES ('ISBN9787544339759', '金融炼金术（投资经典）索罗斯荣休纪念版', '2', '32', '1', '海南出版社', '2011-11-01', 'upload/aa0cf49c-c6db-4ef9-b6d8-cefedcb58cd0.jpg', '2014-11-01', '16.6', '2016-12-21 00:42:16', '当当网', null, '(美)索罗斯　', null);
INSERT INTO `t_book` VALUES ('ISBN9787547207970', '天下墨宝 文徵明 前后赤壁赋', '5', '16', '1', '吉林文史出版社', '2013-01-01', 'upload/55ed562a-6be4-4cee-ad9e-a0463d1c02cf.jpg', '2014-12-12', '9.6', '2016-12-20 23:48:15', '当当网', null, '吉林文史出版社', null);
INSERT INTO `t_book` VALUES ('ISBN9787547216385', '天下墨宝 文徵明 醉翁亭记', '5', '28', '1', '吉林文史出版社', '2013-07-01', 'upload/533aa64d-a7a9-4166-9458-139565880ff1.jpg', '2014-12-12', '16.8', '2016-12-20 23:46:48', '当当网', null, '吉林文史出版社', null);
INSERT INTO `t_book` VALUES ('ISBN9787547217498', '天下墨宝 归去来辞·琵琶行', '5', '16', '1', '吉林文史出版社　', '2014-01-01', 'upload/71f3a8aa-f24c-41c3-9a43-b1fb1691690f.jpg', '2014-12-12', '9.6', '2016-12-20 23:57:38', '当当网', null, '吉林文史出版社　', null);
INSERT INTO `t_book` VALUES ('ISBN9787550611245', '十年一梦-一个操盘手的自白（修订版）', '2', '48', '1', '凤凰出版社', '2012-04-01', 'upload/bced1095-0103-47f4-a6b5-b5b00c6d439f.jpg', '2015-01-30', '28.5', '2016-12-20 23:38:27', '当当网', null, '青泽', null);
INSERT INTO `t_book` VALUES ('ISBN9787561354513', '振荡指标MACD：波段操作精解', '2', '35', '1', '陕西师范大学出版社', '2011-04-01', 'upload/be89b57d-35d9-4ea5-8ff0-7644dcc780a4.jpg', '2014-12-12', '17.5', '2016-12-20 23:59:14', '当当网', null, '凌波', null);
INSERT INTO `t_book` VALUES ('ISBN9787565413254', '量化交易：如何建立自己的算法交易', '2', '28', '1', '东北财经大学出版社有限责任公司', '2014-01-01', 'upload/683f580b-6332-4c8c-9c32-496319790c3b.jpg', '2014-12-12', '21.8', '2016-12-20 23:56:00', '当当网', null, '(加)欧内斯特·陈　', null);
INSERT INTO `t_book` VALUES ('ISBN9787567102644', '文徵明行书入门', '5', '12', '1', '上海大学出版社', '2012-08-01', 'upload/d297dbd4-767c-41ab-9b8b-6b93768e9abf.jpg', '2014-12-12', '7.2', '2016-12-21 00:04:39', '当当网', null, '柯国富，华骏铭', null);
INSERT INTO `t_book` VALUES ('ISBN9787802114302', '道德情操论', '5', '30', '1', '中央编译出版社', '2008-07-01', 'upload/75e3a338-8941-4462-bd2d-5d5f3ac0e3ab.jpg', '2014-12-12', '14.3', '2016-12-21 00:03:13', '当当网', null, '斯密', null);
INSERT INTO `t_book` VALUES ('ISBN9787806805619', '毛泽东诗词全集赏读', '5', '36.8', '1', '太白文艺', '2011-06-01', 'upload/120f3d5e-2a68-4f8b-a806-cadbeb15ce5a.jpg', '2013-06-06', '25.4', '2016-12-21 01:03:34', '当当网', null, '麓山子', null);
INSERT INTO `t_book` VALUES ('ISBN9787806887189', '股市晴雨表', '2', '36', '1', '天津社会科学院出版社', '2012-01-01', 'upload/7a5fa5c4-b2fe-4897-91ac-1f892b957190.jpg', '2014-11-09', '17.4', '2016-12-21 00:29:50', '当当网', null, '（美）汉密尔顿', null);
INSERT INTO `t_book` VALUES ('ISBN9787806887363', '波浪理论经典', '2', '38', '1', '天津社会科学院出版社', '2012-01-01', 'upload/687baeb7-e26b-4a14-bb4b-51004eae47d4.jpg', '2014-11-01', '20.2', '2016-12-21 00:45:45', '当当网', null, '（美）艾略特　', null);

-- ----------------------------
-- Table structure for t_booktype
-- ----------------------------
DROP TABLE IF EXISTS `t_booktype`;
CREATE TABLE `t_booktype` (
  `bookTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `bookTypeName` varchar(18) NOT NULL,
  `days` int(11) NOT NULL,
  PRIMARY KEY (`bookTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_booktype
-- ----------------------------
INSERT INTO `t_booktype` VALUES ('1', '计算机与网络', '30');
INSERT INTO `t_booktype` VALUES ('2', '金融投资', '30');
INSERT INTO `t_booktype` VALUES ('3', '教育考试', '30');
INSERT INTO `t_booktype` VALUES ('4', '哲学宗教', '30');
INSERT INTO `t_booktype` VALUES ('5', '人文艺术', '30');
