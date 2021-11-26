/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.18-log : Database - shiyanshi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shiyanshi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shiyanshi`;

/*Table structure for table `forder` */

DROP TABLE IF EXISTS `forder`;

CREATE TABLE `forder` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `pj` varchar(255) DEFAULT NULL,
  `stime` varchar(50) DEFAULT NULL,
  `etime` varchar(50) DEFAULT NULL,
  `fwid` int(11) DEFAULT NULL,
  `isdel` varchar(50) DEFAULT NULL,
  `pubtime` varchar(50) DEFAULT NULL,
  `snum` int(11) DEFAULT NULL,
  PRIMARY KEY (`kid`),
  KEY `FK_keep` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `forder` */

insert  into `forder`(`kid`,`uid`,`fid`,`status`,`pj`,`stime`,`etime`,`fwid`,`isdel`,`pubtime`,`snum`) values (1,2,1,'审核通过',NULL,NULL,'实验室',NULL,'0','2018-03-06 15:43:31',NULL),(2,2,7,'审核成功',NULL,NULL,'设备',NULL,'1','2018-03-06 15:45:12',2),(3,2,11,'审核成功',NULL,NULL,'耗材',NULL,'1','2018-03-06 15:53:10',1),(4,2,2,'审核通过',NULL,NULL,'实验室',NULL,'1','2018-03-06 16:14:49',NULL),(5,2,7,'审核成功',NULL,NULL,'设备',NULL,'1','2018-03-06 16:15:04',2),(6,2,11,'待审核',NULL,NULL,'耗材',NULL,'1','2018-03-06 16:15:21',1),(7,2,7,'待审核',NULL,NULL,'设备',NULL,'1','2018-03-06 19:48:41',1),(8,2,11,'待审核',NULL,NULL,'耗材',NULL,'1','2018-03-06 19:50:56',2),(9,5,1,'待审核',NULL,NULL,'实验室',NULL,'1','2018-03-06 19:52:16',NULL),(10,5,7,'审核失败',NULL,NULL,'设备',NULL,'1','2018-03-06 19:52:40',1),(11,5,14,'审核失败',NULL,NULL,'耗材',NULL,'1','2018-03-06 19:52:50',2),(12,5,1,'审核失败',NULL,NULL,'实验室',NULL,'1','2018-03-06 19:52:16',NULL),(13,5,1,'审核失败',NULL,NULL,'实验室',NULL,'1','2018-03-06 19:52:16',NULL),(14,2,3,'审核通过',NULL,NULL,'实验室',NULL,'0','2018-11-20 00:08:28',NULL),(15,2,7,'审核成功',NULL,NULL,'设备',NULL,'1','2018-11-20 00:09:42',2),(16,2,7,'审核失败',NULL,NULL,'设备',NULL,'1','2018-11-20 00:10:19',2),(17,2,7,'待审核',NULL,NULL,'设备',NULL,'1','2018-11-20 00:19:03',2),(18,2,7,'审核成功',NULL,NULL,'设备',NULL,'1','2018-11-20 00:20:45',2),(19,2,11,'审核成功',NULL,NULL,'耗材',NULL,'1','2018-11-20 00:23:04',2),(20,2,11,'审核成功',NULL,NULL,'耗材',NULL,'1','2018-11-20 00:25:48',2),(21,2,11,'审核成功',NULL,NULL,'耗材',NULL,'1','2018-11-20 00:28:22',2),(22,2,11,'审核成功',NULL,NULL,'耗材',NULL,'1','2018-11-20 00:31:22',2);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `ggid` int(11) NOT NULL AUTO_INCREMENT,
  `ggpic` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` text,
  `isdel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ggid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `news` */

/*Table structure for table `shiyan` */

DROP TABLE IF EXISTS `shiyan`;

CREATE TABLE `shiyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` varchar(50) DEFAULT NULL,
  `img` varchar(30) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `miaoshu` text,
  `address` varchar(50) DEFAULT NULL,
  `pubtime` varchar(100) DEFAULT NULL,
  `isdel` varchar(20) DEFAULT NULL,
  `uid` varchar(20) DEFAULT NULL,
  `stime` varchar(30) DEFAULT NULL,
  `etime` varchar(30) DEFAULT NULL,
  `ftype` varchar(20) DEFAULT NULL,
  `mstatus` varchar(30) DEFAULT NULL,
  `snum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_flower` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `shiyan` */

insert  into `shiyan`(`id`,`fid`,`img`,`name`,`miaoshu`,`address`,`pubtime`,`isdel`,`uid`,`stime`,`etime`,`ftype`,`mstatus`,`snum`) values (1,NULL,NULL,'实验室1',NULL,'位置1','2018-03-05 16:51:12','1',NULL,NULL,NULL,'实验室','已预订',NULL),(2,NULL,NULL,'实验室02',NULL,'位置02','2018-03-05 16:54:11','1',NULL,NULL,NULL,'实验室','已预订',NULL),(3,NULL,NULL,'实验室3',NULL,'位置3','2018-03-05 16:54:25','1',NULL,NULL,NULL,'实验室','空闲中',NULL),(4,NULL,NULL,'实验室4',NULL,'位置4','2018-03-05 16:54:53','1',NULL,NULL,NULL,'实验室','空闲中',NULL),(5,NULL,NULL,'实验室5',NULL,'位置5','2018-03-05 16:55:03','1',NULL,NULL,NULL,'实验室','空闲中',NULL),(6,NULL,NULL,'实验室6',NULL,'位置6','2018-03-05 16:55:15','1',NULL,NULL,NULL,'实验室','空闲中',NULL),(7,NULL,NULL,'设备1',NULL,NULL,'2018-03-05 17:14:43','1',NULL,NULL,NULL,'设备','充足',10),(8,NULL,NULL,'设备2',NULL,NULL,'2018-03-05 17:16:55','1',NULL,NULL,NULL,'设备','充足',20),(9,NULL,NULL,'设备3',NULL,NULL,'2018-03-05 17:18:14','1',NULL,NULL,NULL,'设备','充足',33),(10,NULL,NULL,'设备66',NULL,NULL,'2018-03-05 17:19:00','1',NULL,NULL,NULL,'设备','充足',6),(11,NULL,NULL,'耗材2',NULL,NULL,'2018-03-05 17:20:05','1',NULL,NULL,NULL,'耗材','充足',3),(12,NULL,NULL,'耗材3',NULL,NULL,'2018-03-05 17:21:15','1',NULL,NULL,NULL,'耗材','充足',20),(13,NULL,NULL,'实验55',NULL,'位置55','2018-03-06 19:43:07','1',NULL,NULL,NULL,'实验室','空闲中',NULL),(14,NULL,NULL,'耗材021',NULL,NULL,'2018-03-06 19:47:24','1',NULL,NULL,NULL,'耗材','缺乏',18),(15,NULL,NULL,'xx是2',NULL,'2','2018-11-19 22:16:56','1',NULL,NULL,NULL,'实验室','空闲中',NULL),(20,NULL,NULL,'s 是',NULL,'32','2018-11-19 23:53:23','1',NULL,NULL,NULL,'实验室','空闲中',NULL);

/*Table structure for table `sysuser` */

DROP TABLE IF EXISTS `sysuser`;

CREATE TABLE `sysuser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `utype` varchar(30) DEFAULT '会员' COMMENT '1 为正常使用， 0为删除',
  `tel` varchar(20) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `mbanswer` varchar(30) DEFAULT NULL,
  `question` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pubtime` varchar(30) DEFAULT NULL,
  `tname` varchar(50) DEFAULT NULL,
  `isdel` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `sysuser` */

insert  into `sysuser`(`uid`,`uname`,`sex`,`address`,`pwd`,`utype`,`tel`,`age`,`mbanswer`,`question`,`email`,`pubtime`,`tname`,`isdel`) values (1,'admin',NULL,NULL,'123','管理员','15671234789',NULL,'','',NULL,'2018-03-04 21:39:52.66',NULL,'1'),(2,'zhangsan','男','武汉','123','老师','15671234789',NULL,NULL,NULL,NULL,'2018-03-04 21:39:52.66',NULL,'1'),(3,'lisi','男','北京123号','123456','老师','15671234111',NULL,NULL,NULL,NULL,'2018-03-04 21:39:52.66','','1'),(4,'wangw','男','武汉','123456','老师','15678945213','23','我是谁','wangw',NULL,'2018-03-04 21:39:52.66','王五','1'),(5,'lili','女','武汉','123456','学生','15678945356','23','我是谁','lili',NULL,'2018-03-04 21:39:52.66','李丽丽','1'),(6,'zhangsanf','女','武汉','123456','学生','13652345524','23','我\n是谁','张三丰',NULL,'2018-03-04 21:39:52.66','张三丰','1'),(7,'xsg1','女','武汉','123456','老师','15678923765',NULL,NULL,NULL,NULL,'2018-03-04 21:39:52.66',NULL,'1'),(8,'user1','男','武汉123号','123456','会员','15671234789','23','我是谁','user1',NULL,'2018-03-04 21:39:52.66','王城','1'),(9,'wangc','男','武汉128号','123456','会员','13545678954','22','我是谁？','wangc',NULL,'2018-03-04 21:39:52.66','王超','1'),(10,'wangwu','男','武汉','123456','学生','15678923765',NULL,NULL,NULL,NULL,'2018-03-05 16:29:46.944','王五','1'),(11,'lisi2','男','武汉','123456','老师','15678945213',NULL,NULL,NULL,NULL,'2018-03-06 19:41:49.582','李四','1'),(12,'cccc','女','23sd','123456','学生','3232',NULL,NULL,NULL,NULL,'2018-11-19 22:16:09.408','牛哥','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
