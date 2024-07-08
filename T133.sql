/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t133`;
CREATE DATABASE IF NOT EXISTS `t133` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t133`;

DROP TABLE IF EXISTS `bumenxinxi`;
CREATE TABLE IF NOT EXISTS `bumenxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenmingcheng` varchar(200) NOT NULL COMMENT '部门名称',
  `bumenzhuguan` varchar(200) NOT NULL COMMENT '部门主管',
  `bumenrenshu` int NOT NULL COMMENT '部门人数',
  `bumenzhize` longtext COMMENT '部门职责',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='部门信息';

DELETE FROM `bumenxinxi`;
INSERT INTO `bumenxinxi` (`id`, `addtime`, `bumenmingcheng`, `bumenzhuguan`, `bumenrenshu`, `bumenzhize`) VALUES
	(21, '2021-05-16 16:00:47', '部门名称1', '部门主管1', 1, '部门职责1'),
	(22, '2021-05-16 16:00:47', '部门名称2', '部门主管2', 2, '部门职责2'),
	(23, '2021-05-16 16:00:47', '部门名称3', '部门主管3', 3, '部门职责3'),
	(24, '2021-05-16 16:00:47', '部门名称4', '部门主管4', 4, '部门职责4'),
	(25, '2021-05-16 16:00:47', '部门名称5', '部门主管5', 5, '部门职责5'),
	(26, '2021-05-16 16:00:47', '部门名称6', '部门主管6', 6, '部门职责6');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootq731f/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootq731f/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootq731f/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `fulixinxi`;
CREATE TABLE IF NOT EXISTS `fulixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `fulineirong` longtext COMMENT '福利内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='福利信息';

DELETE FROM `fulixinxi`;
INSERT INTO `fulixinxi` (`id`, `addtime`, `mingcheng`, `fulineirong`, `faburiqi`) VALUES
	(41, '2021-05-16 16:00:47', '名称1', '福利内容1', '2021-05-17'),
	(42, '2021-05-16 16:00:47', '名称2', '福利内容2', '2021-05-17'),
	(43, '2021-05-16 16:00:47', '名称3', '福利内容3', '2021-05-17'),
	(44, '2021-05-16 16:00:47', '名称4', '福利内容4', '2021-05-17'),
	(45, '2021-05-16 16:00:47', '名称5', '福利内容5', '2021-05-17'),
	(46, '2021-05-16 16:00:47', '名称6', '福利内容6', '2021-05-17');

DROP TABLE IF EXISTS `gongzixinxi`;
CREATE TABLE IF NOT EXISTS `gongzixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `jibengongzi` int NOT NULL COMMENT '基本工资',
  `jiabangongzi` int NOT NULL COMMENT '加班工资',
  `fuli` int NOT NULL COMMENT '福利',
  `shebao` int NOT NULL COMMENT '社保',
  `koufei` int NOT NULL COMMENT '扣费',
  `shifagongzi` int NOT NULL COMMENT '实发工资',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='工资信息';

DELETE FROM `gongzixinxi`;
INSERT INTO `gongzixinxi` (`id`, `addtime`, `mingcheng`, `gonghao`, `xingming`, `bumen`, `zhiwei`, `jibengongzi`, `jiabangongzi`, `fuli`, `shebao`, `koufei`, `shifagongzi`, `riqi`) VALUES
	(71, '2021-05-16 16:00:47', '名称1', '工号1', '姓名1', '部门1', '职位1', 1, 1, 1, 1, 1, 1, '2021-05-17'),
	(72, '2021-05-16 16:00:47', '名称2', '工号2', '姓名2', '部门2', '职位2', 2, 2, 2, 2, 2, 2, '2021-05-17'),
	(73, '2021-05-16 16:00:47', '名称3', '工号3', '姓名3', '部门3', '职位3', 3, 3, 3, 3, 3, 3, '2021-05-17'),
	(74, '2021-05-16 16:00:47', '名称4', '工号4', '姓名4', '部门4', '职位4', 4, 4, 4, 4, 4, 4, '2021-05-17'),
	(75, '2021-05-16 16:00:47', '名称5', '工号5', '姓名5', '部门5', '职位5', 5, 5, 5, 5, 5, 5, '2021-05-17'),
	(76, '2021-05-16 16:00:47', '名称6', '工号6', '姓名6', '部门6', '职位6', 6, 6, 6, 6, 6, 6, '2021-05-17');

DROP TABLE IF EXISTS `kaoqinxinxi`;
CREATE TABLE IF NOT EXISTS `kaoqinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `kaoqinriqi` date DEFAULT NULL COMMENT '考勤日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `kaoqinzhuangkuang` varchar(200) NOT NULL COMMENT '考勤状况',
  `kaoqinneirong` longtext COMMENT '考勤内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='考勤信息';

DELETE FROM `kaoqinxinxi`;
INSERT INTO `kaoqinxinxi` (`id`, `addtime`, `mingcheng`, `kaoqinriqi`, `gonghao`, `xingming`, `bumen`, `zhiwei`, `kaoqinzhuangkuang`, `kaoqinneirong`) VALUES
	(81, '2021-05-16 16:00:47', '名称1', '2021-05-17', '工号1', '姓名1', '部门1', '职位1', '正常', '考勤内容1'),
	(82, '2021-05-16 16:00:47', '名称2', '2021-05-17', '工号2', '姓名2', '部门2', '职位2', '正常', '考勤内容2'),
	(83, '2021-05-16 16:00:47', '名称3', '2021-05-17', '工号3', '姓名3', '部门3', '职位3', '正常', '考勤内容3'),
	(84, '2021-05-16 16:00:47', '名称4', '2021-05-17', '工号4', '姓名4', '部门4', '职位4', '正常', '考勤内容4'),
	(85, '2021-05-16 16:00:47', '名称5', '2021-05-17', '工号5', '姓名5', '部门5', '职位5', '正常', '考勤内容5'),
	(86, '2021-05-16 16:00:47', '名称6', '2021-05-17', '工号6', '姓名6', '部门6', '职位6', '正常', '考勤内容6');

DROP TABLE IF EXISTS `peixunxinxi`;
CREATE TABLE IF NOT EXISTS `peixunxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peixunxiangmu` varchar(200) DEFAULT NULL COMMENT '培训项目',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `peixunshijian` varchar(200) DEFAULT NULL COMMENT '培训时间',
  `peixundidian` varchar(200) DEFAULT NULL COMMENT '培训地点',
  `peixunneirong` longtext COMMENT '培训内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='培训信息';

DELETE FROM `peixunxinxi`;
INSERT INTO `peixunxinxi` (`id`, `addtime`, `peixunxiangmu`, `gonghao`, `xingming`, `bumen`, `peixunshijian`, `peixundidian`, `peixunneirong`, `faburiqi`) VALUES
	(51, '2021-05-16 16:00:47', '培训项目1', '工号1', '姓名1', '部门1', '培训时间1', '培训地点1', '培训内容1', '2021-05-17'),
	(52, '2021-05-16 16:00:47', '培训项目2', '工号2', '姓名2', '部门2', '培训时间2', '培训地点2', '培训内容2', '2021-05-17'),
	(53, '2021-05-16 16:00:47', '培训项目3', '工号3', '姓名3', '部门3', '培训时间3', '培训地点3', '培训内容3', '2021-05-17'),
	(54, '2021-05-16 16:00:47', '培训项目4', '工号4', '姓名4', '部门4', '培训时间4', '培训地点4', '培训内容4', '2021-05-17'),
	(55, '2021-05-16 16:00:47', '培训项目5', '工号5', '姓名5', '部门5', '培训时间5', '培训地点5', '培训内容5', '2021-05-17'),
	(56, '2021-05-16 16:00:47', '培训项目6', '工号6', '姓名6', '部门6', '培训时间6', '培训地点6', '培训内容6', '2021-05-17');

DROP TABLE IF EXISTS `renwuxinxi`;
CREATE TABLE IF NOT EXISTS `renwuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `renwuyaoqiu` longtext COMMENT '任务要求',
  `renwuneirong` longtext COMMENT '任务内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='任务信息';

DELETE FROM `renwuxinxi`;
INSERT INTO `renwuxinxi` (`id`, `addtime`, `biaoti`, `gonghao`, `xingming`, `bumen`, `renwuyaoqiu`, `renwuneirong`, `faburiqi`) VALUES
	(61, '2021-05-16 16:00:47', '标题1', '工号1', '姓名1', '部门1', '任务要求1', '任务内容1', '2021-05-17'),
	(62, '2021-05-16 16:00:47', '标题2', '工号2', '姓名2', '部门2', '任务要求2', '任务内容2', '2021-05-17'),
	(63, '2021-05-16 16:00:47', '标题3', '工号3', '姓名3', '部门3', '任务要求3', '任务内容3', '2021-05-17'),
	(64, '2021-05-16 16:00:47', '标题4', '工号4', '姓名4', '部门4', '任务要求4', '任务内容4', '2021-05-17'),
	(65, '2021-05-16 16:00:47', '标题5', '工号5', '姓名5', '部门5', '任务要求5', '任务内容5', '2021-05-17'),
	(66, '2021-05-16 16:00:47', '标题6', '工号6', '姓名6', '部门6', '任务要求6', '任务内容6', '2021-05-17');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'pkgm9w8uyo6vheoelm57vhpf9g0qjrn1', '2021-05-16 16:01:53', '2024-04-17 14:28:55'),
	(2, 11, '员工1', 'yuangong', '员工', 'qyrhahxssuhlzerhxtzrbdka0qfrm9ry', '2024-04-17 13:26:56', '2024-04-17 14:26:57');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-16 16:00:47');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `addtime`, `gonghao`, `mima`, `xingming`, `xingbie`, `touxiang`, `bumen`, `zhiwei`, `dianhua`) VALUES
	(11, '2021-05-16 16:00:47', '员工1', '123456', '姓名1', '男', 'http://localhost:8080/springbootq731f/upload/yuangong_touxiang1.jpg', '部门1', '职位1', '13823888881'),
	(12, '2021-05-16 16:00:47', '员工2', '123456', '姓名2', '男', 'http://localhost:8080/springbootq731f/upload/yuangong_touxiang2.jpg', '部门2', '职位2', '13823888882'),
	(13, '2021-05-16 16:00:47', '员工3', '123456', '姓名3', '男', 'http://localhost:8080/springbootq731f/upload/yuangong_touxiang3.jpg', '部门3', '职位3', '13823888883'),
	(14, '2021-05-16 16:00:47', '员工4', '123456', '姓名4', '男', 'http://localhost:8080/springbootq731f/upload/yuangong_touxiang4.jpg', '部门4', '职位4', '13823888884'),
	(15, '2021-05-16 16:00:47', '员工5', '123456', '姓名5', '男', 'http://localhost:8080/springbootq731f/upload/yuangong_touxiang5.jpg', '部门5', '职位5', '13823888885'),
	(16, '2021-05-16 16:00:47', '员工6', '123456', '姓名6', '男', 'http://localhost:8080/springbootq731f/upload/yuangong_touxiang6.jpg', '部门6', '职位6', '13823888886');

DROP TABLE IF EXISTS `zhaopinxinxi`;
CREATE TABLE IF NOT EXISTS `zhaopinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopingangwei` varchar(200) NOT NULL COMMENT '招聘岗位',
  `zhaopinrenshu` int NOT NULL COMMENT '招聘人数',
  `luyongrenshu` int NOT NULL COMMENT '录用人数',
  `beizhu` longtext COMMENT '备注',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='招聘信息';

DELETE FROM `zhaopinxinxi`;
INSERT INTO `zhaopinxinxi` (`id`, `addtime`, `zhaopingangwei`, `zhaopinrenshu`, `luyongrenshu`, `beizhu`, `fabushijian`) VALUES
	(91, '2021-05-16 16:00:47', '招聘岗位1', 1, 1, '备注1', '2021-05-17'),
	(92, '2021-05-16 16:00:47', '招聘岗位2', 2, 2, '备注2', '2021-05-17'),
	(93, '2021-05-16 16:00:47', '招聘岗位3', 3, 3, '备注3', '2021-05-17'),
	(94, '2021-05-16 16:00:47', '招聘岗位4', 4, 4, '备注4', '2021-05-17'),
	(95, '2021-05-16 16:00:47', '招聘岗位5', 5, 5, '备注5', '2021-05-17'),
	(96, '2021-05-16 16:00:47', '招聘岗位6', 6, 6, '备注6', '2021-05-17');

DROP TABLE IF EXISTS `zhiweixinxi`;
CREATE TABLE IF NOT EXISTS `zhiweixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiwei` varchar(200) NOT NULL COMMENT '职位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='职位信息';

DELETE FROM `zhiweixinxi`;
INSERT INTO `zhiweixinxi` (`id`, `addtime`, `zhiwei`) VALUES
	(31, '2021-05-16 16:00:47', '职位1'),
	(32, '2021-05-16 16:00:47', '职位2'),
	(33, '2021-05-16 16:00:47', '职位3'),
	(34, '2021-05-16 16:00:47', '职位4'),
	(35, '2021-05-16 16:00:47', '职位5'),
	(36, '2021-05-16 16:00:47', '职位6');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
