/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3308
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3308
 Source Schema         : sims

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 17/05/2023 23:27:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `a_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`a_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for college_department_class
-- ----------------------------
DROP TABLE IF EXISTS `college_department_class`;
CREATE TABLE `college_department_class`  (
  `college` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cclass` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`college`, `department`, `cclass`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of college_department_class
-- ----------------------------
INSERT INTO `college_department_class` VALUES ('人工智能学院', '人工智能', '20级人工智能3班');
INSERT INTO `college_department_class` VALUES ('医学院', '康复学', '20级康复学2班');
INSERT INTO `college_department_class` VALUES ('医学院', '护理', '20级护理1班');
INSERT INTO `college_department_class` VALUES ('电气化与自动化一体学院', '自动化', '20级自动化2班');
INSERT INTO `college_department_class` VALUES ('计算机与软件工程学院', '数据科学与大数据技术', '21级数据科学与大数据技术3班');
INSERT INTO `college_department_class` VALUES ('计算机与软件工程学院', '计算机科学与技术', '19级计算机与科学技术班');
INSERT INTO `college_department_class` VALUES ('计算机与软件工程学院', '软件工程', '20级软件工程2班');

-- ----------------------------
-- Table structure for complaint
-- ----------------------------
DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cdate` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of complaint
-- ----------------------------
INSERT INTO `complaint` VALUES (1, '2023-06-10 17:40:17', '致青春-原来我还是20岁的心态');
INSERT INTO `complaint` VALUES (2, '2023-05-10 18:07:51', '永保20岁心态！');
INSERT INTO `complaint` VALUES (3, '2023-06-02 18:09:30', '希望未来可以一直星辰天空！');
INSERT INTO `complaint` VALUES (4, '2023-05-20 18:16:24', '测试');
INSERT INTO `complaint` VALUES (31, '2023-05-10 21:05:20', '你好啊');
INSERT INTO `complaint` VALUES (36, '2023-05-27 17:59:14', '大三了，马上结束了，时光好快！马上大四了。');
INSERT INTO `complaint` VALUES (45, '2023-05-27 20:36:37', '20岁了，时光永驻20岁吧。');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `c_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `c_info` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE,
  INDEX `t_id`(`t_id`) USING BTREE,
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `teacher` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('c1111', '软件工程综合实践', '9912123206', '一门集开发语言、框架、前端于一体的课程');
INSERT INTO `course` VALUES ('c1113', '软件测试', '9912123206', '软件测试--白盒黑盒测试');
INSERT INTO `course` VALUES ('cccc', '框架技术开发', '9912123206', '一门与Java进阶有关的框架开发课程');
INSERT INTO `course` VALUES ('ye_course_124', '软件项目管理', '9912123205', 'IT项目管理');

-- ----------------------------
-- Table structure for notify
-- ----------------------------
DROP TABLE IF EXISTS `notify`;
CREATE TABLE `notify`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notifyDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notifyInfo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of notify
-- ----------------------------
INSERT INTO `notify` VALUES (16, '2023-05-16 18:51:15', '最新公告，仅供测试');
INSERT INTO `notify` VALUES (23, '2023-05-17 20:42:31', '2023年5月17日项目运行测试');
INSERT INTO `notify` VALUES (24, '2023-05-24 20:44:30', '希望往后余生一切顺利！');
INSERT INTO `notify` VALUES (26, '2023-06-10 21:00:14', '致青春-大三');
INSERT INTO `notify` VALUES (31, '2023-06-01 18:29:16', '大三快快结束了啊啊啊，测试');
INSERT INTO `notify` VALUES (32, '2023-05-17 21:49:57', '希望往后余生一切顺利!');

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0.jpg',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `photo_id`(`photo_id`) USING BTREE,
  CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`photo_id`) REFERENCES `student` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES (11, '1812123205', '1812123205.jpg');

-- ----------------------------
-- Table structure for select_course
-- ----------------------------
DROP TABLE IF EXISTS `select_course`;
CREATE TABLE `select_course`  (
  `s_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`s_id`, `c_id`) USING BTREE,
  INDEX `s_id`(`s_id`) USING BTREE,
  INDEX `c_id`(`c_id`) USING BTREE,
  CONSTRAINT `select_course_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `select_course_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `course` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of select_course
-- ----------------------------
INSERT INTO `select_course` VALUES ('1812123205', 'c1111', '70');
INSERT INTO `select_course` VALUES ('1812123205', 'c1113', NULL);
INSERT INTO `select_course` VALUES ('1812123205', 'cccc', NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `s_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_college` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待分配',
  `s_department` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待分配',
  `s_class` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待分配',
  `s_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_age` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_address` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_phone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '123',
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1111111112', '人工智能学院', '人工智能', '20级人工智能3班', '陈晨儿', '女', '19', '安阳', '23136456', '123@qq.com', '123');
INSERT INTO `student` VALUES ('1111111113', '医学院', '康复学', '20级康复学2班', '王力利', '男', '22', '信阳', '231335353', '123@qq.com', '123');
INSERT INTO `student` VALUES ('1111111114', '计算机与软件工程学院', '软件工程', '20级软件工程2班', '李龙', '男', '19', '新乡长垣', '2313124325', '123@qq.com', '123');
INSERT INTO `student` VALUES ('1231231231', '医学院', '护理', '20级护理1班', '李鹏', '男', '22', '洛阳', '233245', '1@icloud.com', '123');
INSERT INTO `student` VALUES ('1234567890', '计算机与软件工程学院', '软件工程', '20级软件工程2班', 'csq', '男', '20', '福建', '2313213', '123@qq.com', '123');
INSERT INTO `student` VALUES ('1812123205', '计算机与软件工程学院', '软件工程', '20级软件工程2班', '陈善涛', '男', '20', '福建', '110', 'cst@qq.com', '123');
INSERT INTO `student` VALUES ('1812123238', '计算机与软件工程学院', '软件工程', '20级软件工程2班', '张怀洲', '男', '23', '福建', '120', 'zhz@qq.com', '123');
INSERT INTO `student` VALUES ('2020105150226', '计算机与软件工程学院', '软件工程', '20级软件工程2班', '南城余', '男', '21', '郑州', '13230412151', 'nanchengyu02@gmail.com', 'nanchengyu');
INSERT INTO `student` VALUES ('2222222222', '计算机与软件工程学院', '软件工程', '20级软件工程2班', '碧华', '男', '21', '福建', '4231323', '213@qq.com', '123');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `t_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_education` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '123',
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('9912123205', '张老师', '女', '硕士', '教授', '123');
INSERT INTO `teacher` VALUES ('9912123206', '陈老师', '男', '硕士', '副教授', '123');

SET FOREIGN_KEY_CHECKS = 1;
