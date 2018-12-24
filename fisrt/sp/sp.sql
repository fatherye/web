/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.7.19 : Database - sp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sp`;

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_statement` int(11) NOT NULL DEFAULT '0',
  `comment_context` text COLLATE utf8_bin NOT NULL,
  `text_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_date` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `comment` */

insert  into `comment`(`comment_id`,`comment_statement`,`comment_context`,`text_id`,`user_id`,`comment_date`) values (4,0,'884111',1,1,'2018-10-04 23:23:57'),(6,0,'1234444',1,5,'2018-10-04 23:24:02'),(7,0,'老子在开车',1,1,'2018-10-26 21:45:29'),(8,0,'来人啊啊啊',1,1,'2018-10-26 21:45:46'),(9,0,'我在看啊可能',1,1,'2018-10-26 21:45:55'),(10,0,'8条左右',1,1,'2018-10-26 21:46:26'),(11,0,'555555555555555555555555555555555555555555',1,1,'2018-10-26 21:54:03'),(12,0,'666666666666666666666666666666666666666666666666666666',1,1,'2018-10-26 21:54:22'),(13,0,'我的天',1,1,'2018-10-26 22:04:53'),(14,0,'我试试看啊',1,7,'2018-11-17 00:48:51');

/*Table structure for table `dummp` */

DROP TABLE IF EXISTS `dummp`;

CREATE TABLE `dummp` (
  `dummp_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `dummp_time` int(11) NOT NULL,
  `dummp_text` varchar(50) COLLATE utf8_bin NOT NULL,
  `dummp_statement` int(11) DEFAULT '0',
  `dummp_color` varchar(20) COLLATE utf8_bin NOT NULL,
  `dummp_position` int(11) NOT NULL,
  `dummp_size` int(11) NOT NULL,
  PRIMARY KEY (`dummp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `dummp` */

insert  into `dummp`(`dummp_id`,`user_id`,`video_id`,`dummp_time`,`dummp_text`,`dummp_statement`,`dummp_color`,`dummp_position`,`dummp_size`) values (49,7,19,2,'888888888888888',0,'#ffffff',0,1),(50,7,24,51,'66666666666666',0,'#ffffff',0,1),(51,7,17,8,'123456123',0,'#ffffff',0,1),(52,7,17,45,'1111111111111',0,'#ffffff',0,1),(53,7,17,22,'88888888888',0,'#ffffff',0,1),(54,7,17,86,'666666666',0,'#ffffff',0,1),(55,1,17,2,'12315641',0,'#ffffff',0,1),(56,1,17,71,'22222333333',0,'#ffffff',0,1),(57,1,17,7,'2222222',0,'#ffffff',0,1),(58,1,17,46,'666666666666',0,'#ffffff',0,1),(59,1,17,16,'55555',0,'#991799',0,1),(60,1,17,84,'555555',0,'#e612e6',0,0),(61,1,17,175,'44444',0,'#e612e6',2,1),(62,1,17,8,'66666666',0,'#85eb09',0,1),(63,1,17,55,'66666666666',0,'#3a610a',0,1),(64,1,17,53,'8888888',0,'#f00e78',1,1),(65,1,17,58,'666666666',0,'#51c0f0',1,1),(66,1,17,67,'666666666',0,'#0f29f2',1,0),(67,5,17,692,'66666666666',0,'#ffffff',0,1),(68,5,17,806,'66666666666',0,'#ffffff',0,1),(69,5,17,503,'666666666666',0,'#ffffff',0,1),(70,5,17,13,'666666666666',0,'#ffffff',0,1),(71,5,17,26,'66666666666666',0,'#ffffff',0,1),(72,5,17,79,'66666666',0,'#ffffff',0,1),(73,5,17,15,'888888888',0,'#ffffff',0,1),(74,1,17,66,'77777',0,'#ffffff',0,1),(75,1,17,99,'1111111111',0,'#ffffff',0,1),(76,1,17,6,'456456',0,'#ffffff',0,1),(77,1,17,38,'6666666',0,'#eb8b1e',1,1),(78,1,17,19,'6666666666',0,'#eb1e47',1,0),(79,1,17,37,'6666666666',0,'#eb8b1e',2,0),(80,1,13,0,'6666666666666',0,'#ffffff',0,1),(81,1,13,49,'55555555555',0,'#ffffff',0,1),(82,1,20,4,'11111111111111111',0,'#ffffff',0,1),(83,1,20,93,'111111111111',0,'#ffffff',0,1),(84,1,20,22,'1111111',0,'#e81ae8',0,1),(85,1,22,62,'666666666',0,'#f51453',1,1),(86,1,22,88,'66666666666',0,'#f514ed',2,0),(87,1,22,15,'666666666666',0,'#e6f514',0,0),(88,7,40,6,'123132',0,'#ffffff',0,1);

/*Table structure for table `gift` */

DROP TABLE IF EXISTS `gift`;

CREATE TABLE `gift` (
  `gift_id` int(11) NOT NULL AUTO_INCREMENT,
  `gift_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `gift_grade` int(11) NOT NULL,
  `gift_image` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`gift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `gift` */

insert  into `gift`(`gift_id`,`gift_name`,`gift_grade`,`gift_image`) values (1,'花瓶',10,'image/1.png'),(2,'鞭炮',20,'image/t010cc742bb2345a7d8.jpg');

/*Table structure for table `giftkeeper` */

DROP TABLE IF EXISTS `giftkeeper`;

CREATE TABLE `giftkeeper` (
  `gift_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gift_number` int(11) DEFAULT '0',
  PRIMARY KEY (`gift_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `giftkeeper` */

insert  into `giftkeeper`(`gift_id`,`user_id`,`gift_number`) values (1,1,15),(1,5,30),(1,7,3),(2,7,3);

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_account` varchar(50) COLLATE utf8_bin NOT NULL,
  `manager_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `manager_root` int(11) NOT NULL DEFAULT '1',
  `manager_password` varchar(50) COLLATE utf8_bin NOT NULL,
  `manager_email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `manager_phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `manager` */

insert  into `manager`(`manager_id`,`manager_account`,`manager_name`,`manager_root`,`manager_password`,`manager_email`,`manager_phone`) values (1,'603man','sss',3,'123456','404580012@qq.com','18707443797'),(4,'306111','hsj22',1,'123456','404580012@qq.com','18707443797'),(5,'super555','sushushuai23',2,'123456','404580012@qq.com','18707443797'),(6,'k12345','sww',3,'123456','404580012@qq.com','18707443797');

/*Table structure for table `smsg` */

DROP TABLE IF EXISTS `smsg`;

CREATE TABLE `smsg` (
  `Smsg_id` int(11) NOT NULL AUTO_INCREMENT,
  `Smsg_text` text COLLATE utf8_bin,
  `Smsg_statement` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `Smsg_date` datetime DEFAULT NULL,
  PRIMARY KEY (`Smsg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `smsg` */

insert  into `smsg`(`Smsg_id`,`Smsg_text`,`Smsg_statement`,`user_id`,`Smsg_date`) values (1,'反对法士大夫',1,1,NULL),(2,'你在话题为快来救郑！的言论被举报了，请检查并删除不适当的言论',1,5,'2018-10-25 15:24:29'),(3,'你的视频名为听说未来是这样的被举报了，请检查其内容，必要时请自行删除',1,1,'2018-10-09 15:24:31'),(4,'你的视频名为听说未来是这样的被举报了，请检查其内容，必要时请自行删除',1,1,'2018-10-21 15:24:26'),(5,'你在话题为快来救郑！的言论被举报了，请检查并删除不适当的言论',1,5,'2018-10-05 15:24:20'),(6,'你的标题为快来救郑！被举报了，请检查其内容，必要时请自行删除！',1,1,'2018-10-26 15:09:36'),(7,'你的视频名为电影还是游戏被举报了，请检查其内容，必要时请自行删除',1,7,NULL);

/*Table structure for table `text` */

DROP TABLE IF EXISTS `text`;

CREATE TABLE `text` (
  `text_id` int(11) NOT NULL AUTO_INCREMENT,
  `text_head` varchar(50) COLLATE utf8_bin NOT NULL,
  `text_context` text COLLATE utf8_bin,
  `text_statement` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `text_count` int(11) DEFAULT '0',
  `text_date` datetime DEFAULT NULL,
  PRIMARY KEY (`text_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `text` */

insert  into `text`(`text_id`,`text_head`,`text_context`,`text_statement`,`user_id`,`text_count`,`text_date`) values (1,'快来救郑！','阿达萨达萨达',1,1,39,'2018-10-01 23:23:46'),(2,'我的天，又停水了','what happen here adfff dsadsa what happen what happen what happen what happen what happen what happen what happen what happen',0,1,0,'2018-10-01 23:23:37'),(3,'简历你投了多少','我投了8家，真的好恐怖啊',0,5,0,'2018-11-16 22:03:30'),(4,'唔睇睇睇睇啊啊啊啊啊啊啊啊啊啊啊啊','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊',0,7,1,'2018-11-16 22:09:06'),(5,'廉价外卖速食包的秘密：生产过程令人作呕 日销40万份','员工接受采访时表示，自己都不敢吃，有的排骨粒都快放一年了，牛肉中则注射20%大豆蛋白。但有顾客在外卖单上备注“微辣，孕妇吃干净一点，多放点素菜，谢谢！” 外卖料理包也称速食包，通过饿了么、美团大量售出，拍客卧底合肥一家大型料理包厂一周，拍下一幕幕触目惊心的镜头…负责人声称：日产40万份料理包一半用于外卖，仅华东地区外卖月销量就达300万份，业务覆盖全国。',0,1,1,'2018-11-16 22:22:37'),(6,'西班牙拟用A-400M换T-50高教机 韩政府:考虑中','据韩联社报道，当地时间11月12-13日在马德里举行的韩国-西班牙联合国防军需共同委员会会议上，西班牙方面提议可以用本国的大型运输机交换韩国空军的高级教练机。韩国军工产业相关人士称，西班牙政府提议物物交换，用A-400M运输机交换韩国的T-50高教机，政府方面已着手进行相关研究。\r\n\r\n    此前，西班牙国防部相关人士7月在英国国际飞行表演活动现场同韩国国防部相关人士接洽，转达了用A-400M运输机换韩国高教机的意向。报道说，西班牙防务部门曾向空客订购27架A-400M运输机，但决定不使用其中的13架，经过与空客的协商，西班牙可以向其他国家转售剩余的飞机。西班牙方面希望向韩国转让4-6架，并购买30余架KT-1教练机和20余架T-50高教机。\r\n\r\n    韩联社称，如果交易成功，这将会成为韩国飞机首次出口欧洲的事例。\r\n\r\n    韩国空军方面表示，当初关注波音公司C-17大型运输机，但该机种已停产，现在在关注A-400M。空军在执行救灾、国际维和任务和保护侨民等任务时，需要能远程飞行的大型运输机。(实习编译：马君梦 审稿：李小飞)',0,5,3,'2018-11-17 00:57:14');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_password` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_address` text COLLATE utf8_bin,
  `user_email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `user_grade` int(11) DEFAULT '0',
  `user_statement` int(11) DEFAULT '0',
  `user_image` text COLLATE utf8_bin,
  `user_phone` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `user_sex` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_account`,`user_password`,`user_name`,`user_address`,`user_email`,`user_grade`,`user_statement`,`user_image`,`user_phone`,`user_sex`) values (1,'123456','123456','请问','饿我去','404580012@163.com',4005,0,'image/U2963P115T9D303791F167DT20090325113955_c.jpg','123456789011',1),(2,'789456','123456','das','魂飞胆丧','404580012@163.com',0,0,'image/defalutuser.png','123456789011',0),(3,'87411','123465','18707443797','火麒麟三大','404580012@163.com',0,10000,'image/defalutuser.png','12345',1),(4,'134777','123465789','双色人','火麒麟三大','404580012@163.com',0,10000,'image/defalutuser.png','123456789011',1),(5,'sss','123456','sushusi','603','405480012@qq.com',9770,0,'image/20140806130455_JvkuG.thumb.700_0.jpeg','123411111',1),(6,'文湘川','123456','文湘川','603','404580012@163.com',0,0,NULL,'123456789011',1),(7,'持碗少年','123456','1231','guiB306','404580012@163.com',530,0,'image/20150104100806186.jpg','123456789011',1),(8,'ak47','123456','苏手速','603','404580012@163.com',0,0,'image/defalutuser.png','123456789011',1),(9,'fatherye','123456','苏树帅','火麒麟三大','404580012@163.com',500,0,'image/defalutuser.png','123456789011',1);

/*Table structure for table `userpay` */

DROP TABLE IF EXISTS `userpay`;

CREATE TABLE `userpay` (
  `userpayid` varchar(50) COLLATE utf8_bin NOT NULL,
  `userid` int(11) NOT NULL,
  `userpaymoney` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userpayid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `userpay` */

insert  into `userpay`(`userpayid`,`userid`,`userpaymoney`) values ('0BCB586EF8B7430694421486E0378A02',1,1000),('29403ECB3B6C490E9975F5837218D7A4',9,1000),('60260E5303994E52ADE5406A9241C7DF',7,1000),('731A04EC1F734EE79423C45ADEC01433',7,1000),('C90F906314EA45938B9D9F08DAA200B7',1,0),('D2F22CC123194447BCAE6433FE0A1570',1,1000),('D455B5C95E29483BBCA20CD0E7474B04',1,1000),('FE3A2906C81D4818AD9ED2DF6FA7F4C9',7,0);

/*Table structure for table `video` */

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `video_name` varchar(50) NOT NULL,
  `video_count` int(11) NOT NULL DEFAULT '0',
  `video_url` text NOT NULL,
  `video_image` text NOT NULL,
  `video_statement` int(11) DEFAULT '0',
  `video_date` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `videokind_id` int(11) NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `video` */

insert  into `video`(`video_id`,`video_name`,`video_count`,`video_url`,`video_image`,`video_statement`,`video_date`,`user_id`,`videokind_id`) values (12,'外校来张家界',2,'video/#湖南理工学院经管院八七财（1）班 游玩张家界 电子相册#_高清.mp4','image/捕获.PNG',0,'2018-11-11 20:39:22',7,1),(13,'学通社招生了',6,'video/2016年吉首大学张家界学院学通社招新视频_高清.mp4','image/学通社团2016.PNG',0,'2018-11-11 21:08:05',7,3),(15,'这每秒多少钱？',4,'video/[1080P源]《星际争霸2：虫群之心》游戏开场CG动画（英文配音）_高清.mp4','image/星际2cg2.PNG',0,'2018-11-11 21:14:42',7,4),(17,'ue4建模1太阳光',32,'video/29.UE4太阳光_高清.mp4','image/ue太艳冠.PNG',0,'2018-11-11 21:47:26',7,2),(19,'电影还是游戏',7,'video/[1080P源]《星际争霸2：虫群之心》游戏结局CG动画（英文配音）_高清.mp4','image/星际2cg1.PNG',500,'2018-11-11 21:54:51',7,4),(20,'ue4巫师3的场景建设',9,'video/【游民星空】UE4《巫师3》_高清.mp4','image/巫师.PNG',0,'2018-11-11 23:36:29',7,2),(22,'ue4基础建筑',10,'video/30.UE4基础篇完结_高清.mp4','image/ue4基础篇.PNG',0,'2018-11-11 23:48:06',7,2),(23,'ue4高仿lol地图',9,'video/ue4 仿 lol宇宙地区地图_高清.mp4','image/lol.PNG',0,'2018-11-11 23:50:45',7,2),(24,'大神自己做游戏',10,'video/UE4个人作品《尖峰行动2》武器改装等功能演示，和新的主菜单。_高清.mp4','image/机锋行动.PNG',0,'2018-11-11 23:55:11',7,2),(25,'ue4岩石纹理',12,'video/第二十四节 ue4大理石材质和反射球_高清.mp4','image/ue4.PNG',0,'2018-11-13 20:20:32',1,2),(26,'ue4基础建筑木材',2,'video/第二十五节 UE4木纹材质_高清.mp4','image/25纹理.PNG',0,'2018-11-13 20:23:01',1,2),(27,'俯视学校',1,'video/俯瞰吉首大学张家界学院(1)_高清.mp4','image/俯瞰图.PNG',0,'2018-11-13 20:24:41',1,1),(28,'做游戏和广告的区别',0,'video/湖北轻工职业技术学院广告专业游戏方向学生作品——张家界VR场景漫游_高清.mp4','image/别人做广告做游戏去了.PNG',0,'2018-11-13 20:29:17',1,4),(30,'我的眼睛',20,'video/吉首大学张家界学院 Cosplay_高清.mp4','image/cos.PNG',0,'2018-11-13 20:40:40',1,3),(31,'学校宣传片',2,'video/吉首大学张家界学院_高清.mp4','image/吉首大学张家界学院.PNG',0,'2018-11-13 20:51:36',1,1),(32,'12级舞蹈班',11,'video/吉首大学张家界学院12级舞蹈班照片视频_标清.mp4','image/12级舞蹈.PNG',0,'2018-11-13 20:53:31',1,1),(33,'13级舞蹈班',66,'video/吉首大学张家界学院13级舞蹈班宣传片_高清.mp4','image/13级舞蹈.PNG',0,'2018-11-13 20:55:53',1,1),(34,'2018军训',50,'video/吉首大学张家界学院2018军训花絮_高清.mp4','image/2018军训.PNG',0,'2018-11-13 20:57:50',1,1),(35,'ue4特效',2,'video/游戏程式化炮弹波束色带网格发射粒子特效UE4游戏素材资源_高清.mp4','image/ue4特效.PNG',0,'2018-11-14 13:58:05',1,2),(36,'ue4游戏素材',0,'video/游戏地牢环境生成器UE4游戏素材资源_高清.mp4','image/ue4游戏素材.PNG',0,'2018-11-14 14:27:49',5,2),(37,'有人表白咯',0,'video/吉首大学张家界学院的表白_高清.mp4','image/表白PNG.PNG',0,'2018-11-16 08:44:27',5,4),(39,'礼仪队',0,'video/吉首大学张家界学院礼仪队_高清.mp4','image/院礼仪队.PNG',0,'2018-11-16 08:48:17',5,1),(40,'张佳节阿德',1,'video/吉首大学张家界学院宣传片_高清.mp4','image/276462_005.jpg',0,'2018-11-17 09:46:29',7,1);

/*Table structure for table `videokind` */

DROP TABLE IF EXISTS `videokind`;

CREATE TABLE `videokind` (
  `videokind_id` int(11) NOT NULL AUTO_INCREMENT,
  `videokind_name` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`videokind_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `videokind` */

insert  into `videokind`(`videokind_id`,`videokind_name`) values (1,'校园大事件'),(2,'学习专区'),(3,'社团专区'),(4,'自由分享区');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
