/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qiuduixunlianxinxi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qiuduixunlianxinxi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qiuduixunlianxinxi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'qiudui_types','球队类型',1,'球队类型1',NULL,NULL,'2022-03-31 16:52:33'),(2,'qiudui_types','球队类型',2,'球队类型2',NULL,NULL,'2022-03-31 16:52:33'),(3,'qiudui_types','球队类型',3,'球队类型3',NULL,NULL,'2022-03-31 16:52:33'),(4,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-31 16:52:33'),(5,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-31 16:52:33'),(6,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-31 16:52:33'),(7,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-31 16:52:33'),(8,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-31 16:52:33');

/*Table structure for table `jiaolian` */

DROP TABLE IF EXISTS `jiaolian`;

CREATE TABLE `jiaolian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaolian_name` varchar(200) DEFAULT NULL COMMENT '教练姓名 Search111 ',
  `jiaolian_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaolian_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaolian_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教练';

/*Data for the table `jiaolian` */

insert  into `jiaolian`(`id`,`username`,`password`,`jiaolian_name`,`jiaolian_phone`,`jiaolian_email`,`sex_types`,`jiaolian_delete`,`create_time`) values (1,'a1','123456','教练姓名1','17703786901','1@qq.com',1,1,'2022-03-31 16:52:40'),(2,'a2','123456','教练姓名2','17703786902','2@qq.com',2,1,'2022-03-31 16:52:40'),(3,'a3','123456','教练姓名3','17703786903','3@qq.com',1,1,'2022-03-31 16:52:40');

/*Table structure for table `jiarudeqiudui` */

DROP TABLE IF EXISTS `jiarudeqiudui`;

CREATE TABLE `jiarudeqiudui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiudui_id` int(11) DEFAULT NULL COMMENT '球队',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '球员',
  `jiarudeqiudui_number` decimal(10,2) DEFAULT NULL COMMENT '工资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '加入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='加入的球队';

/*Data for the table `jiarudeqiudui` */

insert  into `jiarudeqiudui`(`id`,`qiudui_id`,`yonghu_id`,`jiarudeqiudui_number`,`insert_time`,`create_time`) values (1,1,2,'878.15','2022-03-31 16:52:40','2022-03-31 16:52:40'),(2,2,1,'189.22','2022-03-31 16:52:40','2022-03-31 16:52:40'),(3,3,3,'36.84','2022-03-31 16:52:40','2022-03-31 16:52:40');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'http://localhost:8080/qiuduixunlianxinxi/upload/news1.jpg','2022-03-31 16:52:40','公告详情1','2022-03-31 16:52:40'),(2,'公告标题2',3,'http://localhost:8080/qiuduixunlianxinxi/upload/news2.jpg','2022-03-31 16:52:40','公告详情2','2022-03-31 16:52:40'),(3,'公告标题3',1,'http://localhost:8080/qiuduixunlianxinxi/upload/news3.jpg','2022-03-31 16:52:40','公告详情3','2022-03-31 16:52:40'),(4,'公告标题4',1,'http://localhost:8080/qiuduixunlianxinxi/upload/news4.jpg','2022-03-31 16:52:40','公告详情4','2022-03-31 16:52:40'),(5,'公告标题5',2,'http://localhost:8080/qiuduixunlianxinxi/upload/news5.jpg','2022-03-31 16:52:40','公告详情5','2022-03-31 16:52:40');

/*Table structure for table `qiudui` */

DROP TABLE IF EXISTS `qiudui`;

CREATE TABLE `qiudui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiudui_name` varchar(200) DEFAULT NULL COMMENT '球队名称  Search111 ',
  `qiudui_types` int(11) DEFAULT NULL COMMENT '球队类型 Search111',
  `qiudui_address` varchar(200) DEFAULT NULL COMMENT '所属地点',
  `jiaolian_id` int(11) DEFAULT NULL COMMENT '教练',
  `qiudui_content` text COMMENT '球队简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='球队信息';

/*Data for the table `qiudui` */

insert  into `qiudui`(`id`,`qiudui_name`,`qiudui_types`,`qiudui_address`,`jiaolian_id`,`qiudui_content`,`create_time`) values (1,'球队名称1',3,'所属地点1',3,'球队简介1','2022-03-31 16:52:40'),(2,'球队名称2',1,'所属地点2',3,'球队简介2','2022-03-31 16:52:40'),(3,'球队名称3',2,'所属地点3',3,'球队简介3','2022-03-31 16:52:40'),(4,'球队名称4',1,'所属地点4',3,'球队简介4','2022-03-31 16:52:40'),(5,'球队名称5',2,'所属地点5',1,'球队简介5','2022-03-31 16:52:40');

/*Table structure for table `shoufamingdan` */

DROP TABLE IF EXISTS `shoufamingdan`;

CREATE TABLE `shoufamingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiudui_id` int(11) DEFAULT NULL COMMENT '球队',
  `shoufamingdan_file` varchar(200) DEFAULT NULL COMMENT '名单下载',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='比赛首发名单';

/*Data for the table `shoufamingdan` */

insert  into `shoufamingdan`(`id`,`qiudui_id`,`shoufamingdan_file`,`create_time`) values (1,1,'http://localhost:8080/qiuduixunlianxinxi/upload/file.rar','2022-03-31 16:52:40'),(2,2,'http://localhost:8080/qiuduixunlianxinxi/upload/file.rar','2022-03-31 16:52:40'),(3,3,'http://localhost:8080/qiuduixunlianxinxi/upload/file.rar','2022-03-31 16:52:40'),(4,4,'http://localhost:8080/qiuduixunlianxinxi/upload/file.rar','2022-03-31 16:52:40'),(5,5,'http://localhost:8080/qiuduixunlianxinxi/upload/file.rar','2022-03-31 16:52:40');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','654qa7bdiwitfbkslhjcldrinbcgmko2','2022-03-31 16:18:00','2022-03-31 18:02:28'),(2,1,'a1','yonghu','球员','s3eqyg72o1cfefcuhrwp724h0uarsbzn','2022-03-31 16:21:55','2022-03-31 18:02:59'),(3,1,'a1','jiaolian','教练','lkgvov8yh0gy0hz19lihw1082o5u988l','2022-03-31 16:24:47','2022-03-31 18:15:11');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `xunlianjihua` */

DROP TABLE IF EXISTS `xunlianjihua`;

CREATE TABLE `xunlianjihua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiudui_id` int(11) DEFAULT NULL COMMENT '球队',
  `xunlianjihua_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `xunlianjihua_tianshu` varchar(200) DEFAULT NULL COMMENT '训练天数',
  `xunlianjihua_text` text COMMENT '训练内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='训练计划';

/*Data for the table `xunlianjihua` */

insert  into `xunlianjihua`(`id`,`qiudui_id`,`xunlianjihua_name`,`xunlianjihua_tianshu`,`xunlianjihua_text`,`create_time`) values (1,1,'标题1','训练天数1','训练内容1','2022-03-31 16:52:40'),(2,2,'标题2','训练天数2','训练内容2','2022-03-31 16:52:40'),(3,3,'标题3','训练天数3','训练内容3','2022-03-31 16:52:40'),(4,4,'标题4','训练天数4','训练内容4','2022-03-31 16:52:40'),(5,5,'标题5','训练天数5','训练内容5','2022-03-31 16:52:40');

/*Table structure for table `xunlianjindu` */

DROP TABLE IF EXISTS `xunlianjindu`;

CREATE TABLE `xunlianjindu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xunlianjihua_id` int(11) DEFAULT NULL COMMENT '训练计划',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '球员',
  `xunlianjindu_text` text COMMENT '训练进度',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='训练进度';

/*Data for the table `xunlianjindu` */

insert  into `xunlianjindu`(`id`,`xunlianjihua_id`,`yonghu_id`,`xunlianjindu_text`,`create_time`) values (13,2,1,'进度详情123333333','2022-03-31 17:14:58');

/*Table structure for table `xunliankaoqin` */

DROP TABLE IF EXISTS `xunliankaoqin`;

CREATE TABLE `xunliankaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xunlianjihua_id` int(11) DEFAULT NULL COMMENT '训练计划',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '球员',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '打卡时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='考勤信息';

/*Data for the table `xunliankaoqin` */

insert  into `xunliankaoqin`(`id`,`xunlianjihua_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2022-03-31 16:52:40','2022-03-31 16:52:40'),(2,2,3,'2022-03-31 16:52:40','2022-03-31 16:52:40'),(3,3,1,'2022-03-31 16:52:40','2022-03-31 16:52:40'),(4,4,2,'2022-03-31 16:52:40','2022-03-31 16:52:40'),(5,5,3,'2022-03-31 16:52:40','2022-03-31 16:52:40');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '球员姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='球员';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','球员姓名1','17703786901','410224199610232001','1@qq.com',1,1,'2022-03-31 16:52:40'),(2,'a2','123456','球员姓名2','17703786902','410224199610232002','2@qq.com',1,1,'2022-03-31 16:52:40'),(3,'a3','123456','球员姓名3','17703786903','410224199610232003','3@qq.com',2,1,'2022-03-31 16:52:40');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
