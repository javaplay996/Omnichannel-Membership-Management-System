/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmc93ow
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmc93ow` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmc93ow`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmc93ow/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmc93ow/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmc93ow/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dianying` */

DROP TABLE IF EXISTS `dianying`;

CREATE TABLE `dianying` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangyingriqi` date DEFAULT NULL COMMENT '上映日期',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `yanyuan` varchar(200) DEFAULT NULL COMMENT '演员',
  `fangyingting` varchar(200) DEFAULT NULL COMMENT '放映厅',
  `bofangchangci` datetime DEFAULT NULL COMMENT '播放场次',
  `dianyingyugao` varchar(200) DEFAULT NULL COMMENT '电影预告',
  `dianyingjianjie` longtext COMMENT '电影简介',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='电影';

/*Data for the table `dianying` */

insert  into `dianying`(`id`,`addtime`,`dianyingmingcheng`,`fenlei`,`tupian`,`shangyingriqi`,`daoyan`,`yanyuan`,`fangyingting`,`bofangchangci`,`dianyingyugao`,`dianyingjianjie`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (21,'2021-04-16 11:26:15','电影名称1','分类1','http://localhost:8080/ssmc93ow/upload/dianying_tupian1.jpg','2021-04-16','导演1','演员1','1号厅','2021-04-16 11:26:15','','电影简介1',1,1,'2021-04-16 11:26:15',1),(22,'2021-04-16 11:26:15','电影名称2','分类2','http://localhost:8080/ssmc93ow/upload/dianying_tupian2.jpg','2021-04-16','导演2','演员2','1号厅','2021-04-16 11:26:15','','电影简介2',2,2,'2021-04-16 11:26:15',2),(23,'2021-04-16 11:26:15','电影名称3','分类3','http://localhost:8080/ssmc93ow/upload/dianying_tupian3.jpg','2021-04-16','导演3','演员3','1号厅','2021-04-16 11:26:15','','电影简介3',3,3,'2021-04-16 11:26:15',3),(24,'2021-04-16 11:26:15','电影名称4','分类4','http://localhost:8080/ssmc93ow/upload/dianying_tupian4.jpg','2021-04-16','导演4','演员4','1号厅','2021-04-16 11:26:15','','电影简介4',4,4,'2021-04-16 11:26:15',4),(25,'2021-04-16 11:26:15','电影名称5','分类5','http://localhost:8080/ssmc93ow/upload/dianying_tupian5.jpg','2021-04-16','导演5','演员5','1号厅','2021-04-16 11:26:15','','电影简介5',5,5,'2021-04-16 11:26:15',5),(26,'2021-04-16 11:26:15','电影名称6','分类6','http://localhost:8080/ssmc93ow/upload/dianying_tupian6.jpg','2021-04-16','导演6','演员6','1号厅','2021-04-16 11:26:15','','电影简介6',6,6,'2021-04-16 11:26:15',6);

/*Table structure for table `dianyingfenlei` */

DROP TABLE IF EXISTS `dianyingfenlei`;

CREATE TABLE `dianyingfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingfenlei` varchar(200) DEFAULT NULL COMMENT '电影分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='电影分类';

/*Data for the table `dianyingfenlei` */

insert  into `dianyingfenlei`(`id`,`addtime`,`dianyingfenlei`) values (31,'2021-04-16 11:26:15','电影分类1'),(32,'2021-04-16 11:26:15','电影分类2'),(33,'2021-04-16 11:26:15','电影分类3'),(34,'2021-04-16 11:26:15','电影分类4'),(35,'2021-04-16 11:26:15','电影分类5'),(36,'2021-04-16 11:26:15','电影分类6');

/*Table structure for table `discussdianying` */

DROP TABLE IF EXISTS `discussdianying`;

CREATE TABLE `discussdianying` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='电影评论表';

/*Data for the table `discussdianying` */

insert  into `discussdianying`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-04-16 11:26:16',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-04-16 11:26:16',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-04-16 11:26:16',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-04-16 11:26:16',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-04-16 11:26:16',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-04-16 11:26:16',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='电影观后感';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (101,'2021-04-16 11:26:15','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(102,'2021-04-16 11:26:15','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(103,'2021-04-16 11:26:15','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(104,'2021-04-16 11:26:15','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(105,'2021-04-16 11:26:15','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(106,'2021-04-16 11:26:15','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `gengxinhuodejifen` */

DROP TABLE IF EXISTS `gengxinhuodejifen`;

CREATE TABLE `gengxinhuodejifen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `huodejifen` varchar(200) DEFAULT NULL COMMENT '获得积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='更新获得积分';

/*Data for the table `gengxinhuodejifen` */

insert  into `gengxinhuodejifen`(`id`,`addtime`,`zhanghao`,`xingming`,`dingdanbianhao`,`huodejifen`) values (81,'2021-04-16 11:26:15','账号1','姓名1','订单编号1','获得积分1'),(82,'2021-04-16 11:26:15','账号2','姓名2','订单编号2','获得积分2'),(83,'2021-04-16 11:26:15','账号3','姓名3','订单编号3','获得积分3'),(84,'2021-04-16 11:26:15','账号4','姓名4','订单编号4','获得积分4'),(85,'2021-04-16 11:26:15','账号5','姓名5','订单编号5','获得积分5'),(86,'2021-04-16 11:26:15','账号6','姓名6','订单编号6','获得积分6');

/*Table structure for table `gengxinshiyongjifen` */

DROP TABLE IF EXISTS `gengxinshiyongjifen`;

CREATE TABLE `gengxinshiyongjifen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shiyongjifen` varchar(200) DEFAULT NULL COMMENT '使用积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='更新使用积分';

/*Data for the table `gengxinshiyongjifen` */

insert  into `gengxinshiyongjifen`(`id`,`addtime`,`zhanghao`,`xingming`,`shangpinbianhao`,`shiyongjifen`) values (71,'2021-04-16 11:26:15','账号1','姓名1','商品编号1','使用积分1'),(72,'2021-04-16 11:26:15','账号2','姓名2','商品编号2','使用积分2'),(73,'2021-04-16 11:26:15','账号3','姓名3','商品编号3','使用积分3'),(74,'2021-04-16 11:26:15','账号4','姓名4','商品编号4','使用积分4'),(75,'2021-04-16 11:26:15','账号5','姓名5','商品编号5','使用积分5'),(76,'2021-04-16 11:26:15','账号6','姓名6','商品编号6','使用积分6');

/*Table structure for table `huiyuanxinxiguanli` */

DROP TABLE IF EXISTS `huiyuanxinxiguanli`;

CREATE TABLE `huiyuanxinxiguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `huiyuandengji` varchar(200) DEFAULT NULL COMMENT '会员等级',
  `zhekou` varchar(200) DEFAULT NULL COMMENT '折扣',
  `chongzhijine` varchar(200) DEFAULT NULL COMMENT '充值金额',
  `huodejifen` int(11) DEFAULT NULL COMMENT '获得积分',
  `shiyongjifen` int(11) DEFAULT NULL COMMENT '使用积分',
  `zongjifen` int(11) DEFAULT NULL COMMENT '总积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618543700617 DEFAULT CHARSET=utf8 COMMENT='会员信息管理';

/*Data for the table `huiyuanxinxiguanli` */

insert  into `huiyuanxinxiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`zhaopian`,`huiyuandengji`,`zhekou`,`chongzhijine`,`huodejifen`,`shiyongjifen`,`zongjifen`) values (41,'2021-04-16 11:26:15','账号1','姓名1','手机1','http://localhost:8080/ssmc93ow/upload/huiyuanxinxiguanli_zhaopian1.jpg','普通会员','0.5','充值金额1',1,1,1),(42,'2021-04-16 11:26:15','账号2','姓名2','手机2','http://localhost:8080/ssmc93ow/upload/huiyuanxinxiguanli_zhaopian2.jpg','普通会员','0.5','充值金额2',2,2,2),(43,'2021-04-16 11:26:15','账号3','姓名3','手机3','http://localhost:8080/ssmc93ow/upload/huiyuanxinxiguanli_zhaopian3.jpg','普通会员','0.5','充值金额3',3,3,3),(44,'2021-04-16 11:26:15','账号4','姓名4','手机4','http://localhost:8080/ssmc93ow/upload/huiyuanxinxiguanli_zhaopian4.jpg','普通会员','0.5','充值金额4',4,4,4),(45,'2021-04-16 11:26:15','账号5','姓名5','手机5','http://localhost:8080/ssmc93ow/upload/huiyuanxinxiguanli_zhaopian5.jpg','普通会员','0.5','充值金额5',5,5,5),(46,'2021-04-16 11:26:15','账号6','姓名6','手机6','http://localhost:8080/ssmc93ow/upload/huiyuanxinxiguanli_zhaopian6.jpg','普通会员','0.5','充值金额6',6,6,6),(1618543700616,'2021-04-16 11:28:20','用户1','姓名1','13823888881','','高级会员','0.6','11',500,11,489);

/*Table structure for table `jifenduihuan` */

DROP TABLE IF EXISTS `jifenduihuan`;

CREATE TABLE `jifenduihuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shiyongjifen` int(11) NOT NULL COMMENT '使用积分',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinjianjie` varchar(200) DEFAULT NULL COMMENT '商品简介',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='积分兑换';

/*Data for the table `jifenduihuan` */

insert  into `jifenduihuan`(`id`,`addtime`,`shangpinbianhao`,`shiyongjifen`,`shangpinmingcheng`,`shangpinjianjie`,`shangpintupian`) values (61,'2021-04-16 11:26:15','商品编号1',1,'商品名称1','商品简介1','http://localhost:8080/ssmc93ow/upload/jifenduihuan_shangpintupian1.jpg'),(62,'2021-04-16 11:26:15','商品编号2',2,'商品名称2','商品简介2','http://localhost:8080/ssmc93ow/upload/jifenduihuan_shangpintupian2.jpg'),(63,'2021-04-16 11:26:15','商品编号3',3,'商品名称3','商品简介3','http://localhost:8080/ssmc93ow/upload/jifenduihuan_shangpintupian3.jpg'),(64,'2021-04-16 11:26:15','商品编号4',4,'商品名称4','商品简介4','http://localhost:8080/ssmc93ow/upload/jifenduihuan_shangpintupian4.jpg'),(65,'2021-04-16 11:26:15','商品编号5',5,'商品名称5','商品简介5','http://localhost:8080/ssmc93ow/upload/jifenduihuan_shangpintupian5.jpg'),(66,'2021-04-16 11:26:15','商品编号6',6,'商品名称6','商品简介6','http://localhost:8080/ssmc93ow/upload/jifenduihuan_shangpintupian6.jpg');

/*Table structure for table `jifenduihuanshenhe` */

DROP TABLE IF EXISTS `jifenduihuanshenhe`;

CREATE TABLE `jifenduihuanshenhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shiyongjifen` int(11) DEFAULT NULL COMMENT '使用积分',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='积分兑换审核';

/*Data for the table `jifenduihuanshenhe` */

insert  into `jifenduihuanshenhe`(`id`,`addtime`,`shangpinbianhao`,`shiyongjifen`,`shangpinmingcheng`,`shangpintupian`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`userid`) values (91,'2021-04-16 11:26:15','商品编号1',1,'商品名称1','http://localhost:8080/ssmc93ow/upload/jifenduihuanshenhe_shangpintupian1.jpg','账号1','姓名1','是','',1),(92,'2021-04-16 11:26:15','商品编号2',2,'商品名称2','http://localhost:8080/ssmc93ow/upload/jifenduihuanshenhe_shangpintupian2.jpg','账号2','姓名2','是','',2),(93,'2021-04-16 11:26:15','商品编号3',3,'商品名称3','http://localhost:8080/ssmc93ow/upload/jifenduihuanshenhe_shangpintupian3.jpg','账号3','姓名3','是','',3),(94,'2021-04-16 11:26:15','商品编号4',4,'商品名称4','http://localhost:8080/ssmc93ow/upload/jifenduihuanshenhe_shangpintupian4.jpg','账号4','姓名4','是','',4),(95,'2021-04-16 11:26:15','商品编号5',5,'商品名称5','http://localhost:8080/ssmc93ow/upload/jifenduihuanshenhe_shangpintupian5.jpg','账号5','姓名5','是','',5),(96,'2021-04-16 11:26:15','商品编号6',6,'商品名称6','http://localhost:8080/ssmc93ow/upload/jifenduihuanshenhe_shangpintupian6.jpg','账号6','姓名6','是','',6);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (131,'2021-04-16 11:26:15',1,'用户名1','留言内容1','回复内容1'),(132,'2021-04-16 11:26:15',2,'用户名2','留言内容2','回复内容2'),(133,'2021-04-16 11:26:15',3,'用户名3','留言内容3','回复内容3'),(134,'2021-04-16 11:26:15',4,'用户名4','留言内容4','回复内容4'),(135,'2021-04-16 11:26:15',5,'用户名5','留言内容5','回复内容5'),(136,'2021-04-16 11:26:15',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='电影资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (121,'2021-04-16 11:26:15','标题1','简介1','http://localhost:8080/ssmc93ow/upload/news_picture1.jpg','内容1'),(122,'2021-04-16 11:26:15','标题2','简介2','http://localhost:8080/ssmc93ow/upload/news_picture2.jpg','内容2'),(123,'2021-04-16 11:26:15','标题3','简介3','http://localhost:8080/ssmc93ow/upload/news_picture3.jpg','内容3'),(124,'2021-04-16 11:26:15','标题4','简介4','http://localhost:8080/ssmc93ow/upload/news_picture4.jpg','内容4'),(125,'2021-04-16 11:26:15','标题5','简介5','http://localhost:8080/ssmc93ow/upload/news_picture5.jpg','内容5'),(126,'2021-04-16 11:26:15','标题6','简介6','http://localhost:8080/ssmc93ow/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','w5qr91ea2akd25xxpev38ey9fpixi4uo','2021-04-16 11:27:43','2021-04-16 12:28:34'),(2,1,'abo','users','管理员','73gt90xtx1kx0i5v5cy11rc9vcw8foju','2021-04-16 11:28:03','2021-04-16 12:28:04');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-16 11:26:16');

/*Table structure for table `xiaofeijilu` */

DROP TABLE IF EXISTS `xiaofeijilu`;

CREATE TABLE `xiaofeijilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `xiaofeixiangqing` longtext COMMENT '消费详情',
  `xiaofeiduixiang` varchar(200) DEFAULT NULL COMMENT '消费对象',
  `huodejifen` int(11) DEFAULT NULL COMMENT '获得积分',
  `xiaofeiriqi` date DEFAULT NULL COMMENT '消费日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `huiyuandengji` varchar(200) DEFAULT NULL COMMENT '会员等级',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='消费记录';

/*Data for the table `xiaofeijilu` */

insert  into `xiaofeijilu`(`id`,`addtime`,`dingdanbianhao`,`xiaofeixiangqing`,`xiaofeiduixiang`,`huodejifen`,`xiaofeiriqi`,`beizhu`,`zhanghao`,`huiyuandengji`,`xingming`,`shouji`) values (51,'2021-04-16 11:26:15','订单编号1','消费详情1','消费对象1',1,'2021-04-16','备注1','账号1','会员等级1','姓名1','手机1'),(52,'2021-04-16 11:26:15','订单编号2','消费详情2','消费对象2',1,'2021-04-16','备注2','账号2','会员等级2','姓名2','手机2'),(53,'2021-04-16 11:26:15','订单编号3','消费详情3','消费对象3',1,'2021-04-16','备注3','账号3','会员等级3','姓名3','手机3'),(54,'2021-04-16 11:26:15','订单编号4','消费详情4','消费对象4',1,'2021-04-16','备注4','账号4','会员等级4','姓名4','手机4'),(55,'2021-04-16 11:26:15','订单编号5','消费详情5','消费对象5',1,'2021-04-16','备注5','账号5','会员等级5','姓名5','手机5'),(56,'2021-04-16 11:26:15','订单编号6','消费详情6','消费对象6',1,'2021-04-16','备注6','账号6','会员等级6','姓名6','手机6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (11,'2021-04-16 11:26:15','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmc93ow/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-16 11:26:15','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmc93ow/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-16 11:26:15','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmc93ow/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-16 11:26:15','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmc93ow/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-16 11:26:15','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmc93ow/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-16 11:26:15','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmc93ow/upload/yonghu_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
