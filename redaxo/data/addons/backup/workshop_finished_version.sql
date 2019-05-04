## Redaxo Database Dump Version 5
## Prefix rex_
## charset utf-8

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `rex_action`;
CREATE TABLE `rex_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `preview` text,
  `presave` text,
  `postsave` text,
  `previewmode` tinyint(4) DEFAULT NULL,
  `presavemode` tinyint(4) DEFAULT NULL,
  `postsavemode` tinyint(4) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_article`;
CREATE TABLE `rex_article` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catpriority` int(10) unsigned NOT NULL,
  `startarticle` tinyint(1) NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  `clang_id` int(10) unsigned NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  `yrewrite_url` varchar(255) NOT NULL,
  `yrewrite_canonical_url` varchar(255) NOT NULL,
  `yrewrite_priority` varchar(5) NOT NULL,
  `yrewrite_changefreq` varchar(10) NOT NULL,
  `yrewrite_title` varchar(255) NOT NULL,
  `yrewrite_description` text NOT NULL,
  `yrewrite_index` tinyint(1) NOT NULL,
  `cat_navigation` varchar(255) DEFAULT '1',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `find_articles` (`id`,`clang_id`),
  KEY `id` (`id`),
  KEY `clang_id` (`clang_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_article` WRITE;
/*!40000 ALTER TABLE `rex_article` DISABLE KEYS */;
INSERT INTO `rex_article` VALUES 
  (1,1,0,'Services','Services',1,1,1,'|',1,'2019-05-02 20:41:24','2019-05-03 13:48:57',1,1,'admin','admin',0,'','','','','','',0,''),
  (2,2,0,'Portfolio','Portfolio',2,1,1,'|',1,'2019-05-02 20:41:25','2019-05-04 09:45:41',1,1,'admin','admin',0,'','','','','','',0,''),
  (3,3,0,'About','About',3,1,1,'|',1,'2019-05-02 20:41:25','2019-05-04 10:06:09',1,1,'admin','admin',0,'','','','','','',0,''),
  (4,4,0,'Team','Team',4,1,1,'|',1,'2019-05-02 20:41:26','2019-05-04 14:31:53',1,1,'admin','admin',0,'','','','','','',0,''),
  (5,5,0,'Contact','Contact',6,1,1,'|',1,'2019-05-02 20:41:27','2019-05-03 11:40:07',1,1,'admin','admin',0,'','','','','','',0,''),
  (6,6,0,'404 Not found','',0,0,1,'|',1,'2019-05-02 20:40:51','2019-05-04 10:38:44',2,1,'admin','admin',0,'','','','','','',0,''),
  (7,7,0,'Home','',0,0,2,'|',1,'2019-05-02 20:41:06','2019-05-03 12:49:50',1,1,'admin','admin',0,'','','','','','',0,''),
  (8,8,0,'Companies','Companies',5,1,1,'|',1,'2019-05-04 10:46:07','2019-05-04 14:38:27',1,1,'admin','admin',0,'','','','','','',0,'2');
/*!40000 ALTER TABLE `rex_article` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_article_slice`;
CREATE TABLE `rex_article_slice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clang_id` int(10) unsigned NOT NULL,
  `ctype_id` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `value1` mediumtext,
  `value2` mediumtext,
  `value3` mediumtext,
  `value4` mediumtext,
  `value5` mediumtext,
  `value6` mediumtext,
  `value7` mediumtext,
  `value8` mediumtext,
  `value9` mediumtext,
  `value10` mediumtext,
  `value11` mediumtext,
  `value12` mediumtext,
  `value13` mediumtext,
  `value14` mediumtext,
  `value15` mediumtext,
  `value16` mediumtext,
  `value17` mediumtext,
  `value18` mediumtext,
  `value19` mediumtext,
  `value20` mediumtext,
  `media1` varchar(255) DEFAULT NULL,
  `media2` varchar(255) DEFAULT NULL,
  `media3` varchar(255) DEFAULT NULL,
  `media4` varchar(255) DEFAULT NULL,
  `media5` varchar(255) DEFAULT NULL,
  `media6` varchar(255) DEFAULT NULL,
  `media7` varchar(255) DEFAULT NULL,
  `media8` varchar(255) DEFAULT NULL,
  `media9` varchar(255) DEFAULT NULL,
  `media10` varchar(255) DEFAULT NULL,
  `medialist1` text,
  `medialist2` text,
  `medialist3` text,
  `medialist4` text,
  `medialist5` text,
  `medialist6` text,
  `medialist7` text,
  `medialist8` text,
  `medialist9` text,
  `medialist10` text,
  `link1` varchar(10) DEFAULT NULL,
  `link2` varchar(10) DEFAULT NULL,
  `link3` varchar(10) DEFAULT NULL,
  `link4` varchar(10) DEFAULT NULL,
  `link5` varchar(10) DEFAULT NULL,
  `link6` varchar(10) DEFAULT NULL,
  `link7` varchar(10) DEFAULT NULL,
  `link8` varchar(10) DEFAULT NULL,
  `link9` varchar(10) DEFAULT NULL,
  `link10` varchar(10) DEFAULT NULL,
  `linklist1` text,
  `linklist2` text,
  `linklist3` text,
  `linklist4` text,
  `linklist5` text,
  `linklist6` text,
  `linklist7` text,
  `linklist8` text,
  `linklist9` text,
  `linklist10` text,
  `article_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slice_priority` (`article_id`,`priority`,`module_id`),
  KEY `clang_id` (`clang_id`),
  KEY `article_id` (`article_id`),
  KEY `find_slices` (`clang_id`,`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_article_slice` WRITE;
/*!40000 ALTER TABLE `rex_article_slice` DISABLE KEYS */;
INSERT INTO `rex_article_slice` VALUES 
  (2,1,1,1,'Welcome To Our Studio!','It\'s Nice To Meet You','Tell me more','','','','','','','','','','','','','','','','','','header-bg.jpg','','','','','','','','','','','','','','','','','','','','1','','','','','','','','','','','','','','','','','','','',7,1,'2019-05-03 10:34:36','2019-05-03 12:49:50','admin','admin',0),
  (3,1,1,1,'Services','Lorem ipsum dolor sit amet consectetur.','[{\"icon\":\"fa-shopping-cart\",\"headline\":\"E-Commerce\",\"text\":\"Shopping Card Text. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.\"},{\"icon\":\"fa-laptop\",\"headline\":\"Responsive Design\",\"text\":\"Laptop Text. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.\"},{\"icon\":\"fa-lock\",\"headline\":\"Web Security\",\"text\":\"Lock Text. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.\"}]','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,2,'2019-05-03 11:07:52','2019-05-03 13:48:57','admin','admin',0),
  (4,1,1,1,'Portfolio','Lorem ipsum dolor sit amet consectetur.','[{\"title\":\"Threads\",\"lead\":\"Thread Lead. Lorem ipsum dolor sit amet consectetur.\",\"text\":\"Threads Text. Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!\",\"categories\":\"0\",\"REX_MEDIA_1\":\"01-full.jpg\"},{\"title\":\"Explore\",\"lead\":\"Explorer Lead. Lorem ipsum dolor sit amet consectetur.\",\"text\":\"Explorer Text. Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!\",\"categories\":\"1\",\"REX_MEDIA_1\":\"02-full.jpg\"},{\"title\":\"Finish\",\"lead\":\"Finish Lead. Lorem ipsum dolor sit amet consectetur.\",\"text\":\"Finish Text. Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!\",\"categories\":\"2\",\"REX_MEDIA_1\":\"03-full.jpg\"},{\"title\":\"Lines\",\"lead\":\"Lines Lead. Lorem ipsum dolor sit amet consectetur.\",\"text\":\"Lines Text. Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!\",\"categories\":\"3\",\"REX_MEDIA_1\":\"04-full.jpg\"},{\"title\":\"Southwest\",\"lead\":\"Southwest Lead. Lorem ipsum dolor sit amet consectetur.\",\"text\":\"Southwest Text. Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!\",\"categories\":\"4\",\"REX_MEDIA_1\":\"05-full.jpg\"},{\"title\":\"Window\",\"lead\":\"Window Lead. Lorem ipsum dolor sit amet consectetur.\",\"text\":\"Window Text. Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!\",\"categories\":\"5\",\"REX_MEDIA_1\":\"06-full.jpg\"}]','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,3,'2019-05-03 11:08:01','2019-05-04 09:45:41','admin','admin',0),
  (6,1,1,1,'Our Amazing Team','Lorem ipsum dolor sit amet consectetur.','','','','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.','','','[{\"name\":\"Kay Garland\",\"position\":\"Lead Designer\",\"REX_MEDIA_1\":\"1_1.jpg\",\"1\":\"http:\\/\\/facebook.com\"},{\"name\":\"Larry Parker\",\"position\":\"Lead Marketer\",\"REX_MEDIA_1\":\"2_1.jpg\",\"1\":\"http:\\/\\/facebook.com\"},{\"name\":\"Diana Pertersen\",\"position\":\"Lead Developer\",\"REX_MEDIA_1\":\"3_1.jpg\",\"1\":\"http:\\/\\/facebook.com\"}]','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',4,5,'2019-05-03 11:08:20','2019-05-04 14:31:53','admin','admin',0),
  (9,1,1,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',5,7,'2019-05-03 11:14:15','2019-05-03 11:14:15','admin','admin',0),
  (10,1,1,1,'About','Lorem ipsum dolor sit amet consectetur.','[{\"title\":\"2009-2011\",\"lead\":\"Our Humble Beginnings\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!\",\"REX_MEDIA_1\":\"1.jpg\"},{\"title\":\"March 2011\",\"lead\":\"An Agency is Born\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!\",\"REX_MEDIA_1\":\"2.jpg\"},{\"title\":\"December 2012\",\"lead\":\"Transition to Full Service\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!\",\"REX_MEDIA_1\":\"3.jpg\"},{\"title\":\"July 2014\",\"lead\":\"Phase Two Expansion\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!\",\"REX_MEDIA_1\":\"4.jpg\"}]','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',3,4,'2019-05-04 08:33:43','2019-05-04 10:06:09','admin','admin',0),
  (11,1,1,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',6,8,'2019-05-04 10:38:13','2019-05-04 10:38:13','admin','admin',0),
  (13,1,1,1,'[{\"1\":\"http:\\/\\/envato.com\",\"REX_MEDIA_1\":\"envato.jpg\"},{\"1\":\"http:\\/\\/designmodo.com\",\"REX_MEDIA_1\":\"designmodo.jpg\"},{\"1\":\"http:\\/\\/themeforest.com\",\"REX_MEDIA_1\":\"themeforest.jpg\"},{\"1\":\"http:\\/\\/creative-market.com\",\"REX_MEDIA_1\":\"creative-market.jpg\"}]','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',8,6,'2019-05-04 10:45:48','2019-05-04 14:38:27','admin','admin',0);
/*!40000 ALTER TABLE `rex_article_slice` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_clang`;
CREATE TABLE `rex_clang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_clang` WRITE;
/*!40000 ALTER TABLE `rex_clang` DISABLE KEYS */;
INSERT INTO `rex_clang` VALUES 
  (1,'de','deutsch',1,1,0);
/*!40000 ALTER TABLE `rex_clang` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_config`;
CREATE TABLE `rex_config` (
  `namespace` varchar(75) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`namespace`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rex_config` WRITE;
/*!40000 ALTER TABLE `rex_config` DISABLE KEYS */;
INSERT INTO `rex_config` VALUES 
  ('core','package-config','{\"backup\":{\"install\":true,\"status\":true},\"be_style\":{\"install\":true,\"status\":true,\"plugins\":{\"customizer\":{\"install\":false,\"status\":false},\"redaxo\":{\"install\":true,\"status\":true}}},\"cronjob\":{\"install\":false,\"status\":false,\"plugins\":{\"article_status\":{\"install\":false,\"status\":false},\"optimize_tables\":{\"install\":false,\"status\":false}}},\"developer\":{\"install\":true,\"status\":true},\"install\":{\"install\":true,\"status\":true},\"mblock\":{\"install\":true,\"status\":true},\"media_manager\":{\"install\":true,\"status\":true},\"mediapool\":{\"install\":true,\"status\":true},\"metainfo\":{\"install\":true,\"status\":true},\"mform\":{\"install\":true,\"status\":true,\"plugins\":{\"docs\":{\"install\":true,\"status\":true}}},\"phpmailer\":{\"install\":true,\"status\":true},\"project\":{\"install\":true,\"status\":true},\"structure\":{\"install\":true,\"status\":true,\"plugins\":{\"content\":{\"install\":true,\"status\":true},\"history\":{\"install\":false,\"status\":false},\"version\":{\"install\":false,\"status\":false}}},\"users\":{\"install\":true,\"status\":true},\"yform\":{\"install\":true,\"status\":true,\"plugins\":{\"docs\":{\"install\":true,\"status\":true},\"email\":{\"install\":true,\"status\":true},\"manager\":{\"install\":true,\"status\":true},\"rest\":{\"install\":false,\"status\":false},\"tools\":{\"install\":false,\"status\":false}}},\"yrewrite\":{\"install\":true,\"status\":true}}'),
  ('core','package-order','[\"be_style\",\"be_style\\/redaxo\",\"users\",\"backup\",\"developer\",\"install\",\"mblock\",\"media_manager\",\"mediapool\",\"mform\",\"phpmailer\",\"structure\",\"metainfo\",\"mform\\/docs\",\"structure\\/content\",\"yform\",\"yform\\/docs\",\"yform\\/email\",\"yform\\/manager\",\"yrewrite\",\"project\"]'),
  ('core','version','\"5.7.1\"'),
  ('developer','actions','true'),
  ('developer','delete','true'),
  ('developer','dir_suffix','true'),
  ('developer','items','{\"templates\":{\"1\":1556959983,\"2\":1556959217},\"modules\":{\"1\":1556884307,\"2\":1556973356,\"3\":1556973363,\"4\":1556973664,\"5\":1556973682,\"6\":1556973632,\"7\":1556959983,\"8\":1}}'),
  ('developer','modules','true'),
  ('developer','prefix','false'),
  ('developer','rename','true'),
  ('developer','sync_backend','true'),
  ('developer','sync_frontend','true'),
  ('developer','templates','true'),
  ('developer','umlauts','false'),
  ('mblock','mblock_delete','1'),
  ('mblock','mblock_scroll','1'),
  ('mblock','mblock_theme','\"default_theme\"'),
  ('media_manager','interlace','[\"jpg\"]'),
  ('media_manager','jpg_quality','85'),
  ('media_manager','png_compression','5'),
  ('media_manager','webp_quality','85'),
  ('mform','mform_theme','\"default_theme\"'),
  ('phpmailer','bcc','\"\"'),
  ('phpmailer','charset','\"utf-8\"'),
  ('phpmailer','confirmto','\"\"'),
  ('phpmailer','encoding','\"8bit\"'),
  ('phpmailer','errormail','0'),
  ('phpmailer','from','\"\"'),
  ('phpmailer','fromname','\"Mailer\"'),
  ('phpmailer','host','\"localhost\"'),
  ('phpmailer','log','0'),
  ('phpmailer','mailer','\"mail\"'),
  ('phpmailer','password','\"\"'),
  ('phpmailer','port','25'),
  ('phpmailer','priority','0'),
  ('phpmailer','security_mode','true'),
  ('phpmailer','smtpauth','false'),
  ('phpmailer','smtpsecure','\"\"'),
  ('phpmailer','smtp_debug','\"0\"'),
  ('phpmailer','test_address','\"\"'),
  ('phpmailer','username','\"\"'),
  ('phpmailer','wordwrap','120'),
  ('structure','notfound_article_id','6'),
  ('structure','start_article_id','7'),
  ('structure/content','default_template_id','1');
/*!40000 ALTER TABLE `rex_config` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_mblock_rexform_demo`;
CREATE TABLE `rex_mblock_rexform_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(1) DEFAULT '1',
  `name` text NOT NULL,
  `mblock_field` text NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_media`;
CREATE TABLE `rex_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `attributes` text,
  `filetype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media` WRITE;
/*!40000 ALTER TABLE `rex_media` DISABLE KEYS */;
INSERT INTO `rex_media` VALUES 
  (1,1,'','image/jpeg','header-bg.jpg','header-bg.jpg','238317',1900,1250,'','2019-05-03 12:26:04','2019-05-03 12:26:04','admin','admin',0),
  (2,2,'','image/jpeg','01-full.jpg','01-full.jpg','52848',700,933,'','2019-05-03 14:17:20','2019-05-03 14:17:20','admin','admin',0),
  (3,2,'','image/jpeg','02-full.jpg','02-full.jpg','31946',700,467,'','2019-05-03 14:18:11','2019-05-03 14:18:11','admin','admin',0),
  (4,2,'','image/jpeg','03-full.jpg','03-full.jpg','52929',700,933,'','2019-05-03 14:21:27','2019-05-03 14:21:27','admin','admin',0),
  (5,2,'','image/jpeg','04-full.jpg','04-full.jpg','41247',700,563,'','2019-05-04 00:44:01','2019-05-04 00:44:01','admin','admin',0),
  (6,2,'','image/jpeg','05-full.jpg','05-full.jpg','104313',700,875,'','2019-05-04 00:44:59','2019-05-04 00:44:59','admin','admin',0),
  (7,2,'','image/jpeg','06-full.jpg','06-full.jpg','37296',700,904,'','2019-05-04 00:46:32','2019-05-04 00:46:32','admin','admin',0),
  (8,3,'','image/jpeg','1.jpg','1.jpg','6987',200,200,'','2019-05-04 10:03:30','2019-05-04 10:04:08','admin','admin',0),
  (9,3,'','image/jpeg','2.jpg','2.jpg','15337',200,200,'','2019-05-04 10:04:18','2019-05-04 10:05:51','admin','admin',0),
  (10,3,'','image/jpeg','3.jpg','3.jpg','7338',200,200,'','2019-05-04 10:04:42','2019-05-04 10:05:51','admin','admin',0),
  (11,3,'','image/jpeg','4.jpg','4.jpg','4902',200,200,'','2019-05-04 10:06:06','2019-05-04 10:06:06','admin','admin',0),
  (12,4,'','image/jpeg','1_1.jpg','1.jpg','214468',500,500,'','2019-05-04 14:14:17','2019-05-04 14:14:17','admin','admin',0),
  (13,4,'','image/jpeg','2_1.jpg','2.jpg','216456',500,500,'','2019-05-04 14:14:41','2019-05-04 14:14:41','admin','admin',0),
  (14,4,'','image/jpeg','3_1.jpg','3.jpg','226037',500,500,'','2019-05-04 14:14:51','2019-05-04 14:14:51','admin','admin',0),
  (15,5,'','image/jpeg','envato.jpg','envato.jpg','2040',200,50,'','2019-05-04 14:37:12','2019-05-04 14:37:12','admin','admin',0),
  (16,5,'','image/jpeg','designmodo.jpg','designmodo.jpg','1696',200,50,'','2019-05-04 14:37:39','2019-05-04 14:37:39','admin','admin',0),
  (17,5,'','image/jpeg','themeforest.jpg','themeforest.jpg','1689',200,50,'','2019-05-04 14:38:02','2019-05-04 14:38:02','admin','admin',0),
  (18,5,'','image/jpeg','creative-market.jpg','creative-market.jpg','1766',200,50,'','2019-05-04 14:38:25','2019-05-04 14:38:25','admin','admin',0);
/*!40000 ALTER TABLE `rex_media` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_category`;
CREATE TABLE `rex_media_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `attributes` text,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media_category` WRITE;
/*!40000 ALTER TABLE `rex_media_category` DISABLE KEYS */;
INSERT INTO `rex_media_category` VALUES 
  (1,'Home',0,'|','2019-05-03 12:19:08','2019-05-03 12:19:08','admin','admin','',0),
  (2,'Portfolio',0,'|','2019-05-03 14:17:07','2019-05-03 14:17:07','admin','admin','',0),
  (3,'About',0,'|','2019-05-04 10:02:39','2019-05-04 10:02:39','admin','admin','',0),
  (4,'Team',0,'|','2019-05-04 14:14:01','2019-05-04 14:14:01','admin','admin','',0),
  (5,'Companies',0,'|','2019-05-04 14:36:49','2019-05-04 14:36:49','admin','admin','',0);
/*!40000 ALTER TABLE `rex_media_category` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_manager_type`;
CREATE TABLE `rex_media_manager_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media_manager_type` WRITE;
/*!40000 ALTER TABLE `rex_media_manager_type` DISABLE KEYS */;
INSERT INTO `rex_media_manager_type` VALUES 
  (1,1,'rex_mediapool_detail','Zur Darstellung von Bildern in der Detailansicht im Medienpool','2019-05-02 20:38:43','backend','2019-05-02 20:38:43','backend'),
  (2,1,'rex_mediapool_maximized','Zur Darstellung von Bildern im Medienpool wenn maximiert','2019-05-02 20:38:43','backend','2019-05-02 20:38:43','backend'),
  (3,1,'rex_mediapool_preview','Zur Darstellung der Vorschaubilder im Medienpool','2019-05-02 20:38:43','backend','2019-05-02 20:38:43','backend'),
  (4,1,'rex_mediabutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIA_BUTTON[]s','2019-05-02 20:38:43','backend','2019-05-02 20:38:43','backend'),
  (5,1,'rex_medialistbutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIALIST_BUTTON[]s','2019-05-02 20:38:43','backend','2019-05-02 20:38:43','backend'),
  (6,0,'thumb','Projects thumb','2019-05-04 09:48:29','admin','2019-05-04 09:49:28','admin'),
  (7,0,'round_about','Round Images for About','2019-05-04 10:08:04','admin','2019-05-04 10:08:56','admin');
/*!40000 ALTER TABLE `rex_media_manager_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_manager_type_effect`;
CREATE TABLE `rex_media_manager_type_effect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `effect` varchar(255) NOT NULL,
  `parameters` text NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media_manager_type_effect` WRITE;
/*!40000 ALTER TABLE `rex_media_manager_type_effect` DISABLE KEYS */;
INSERT INTO `rex_media_manager_type_effect` VALUES 
  (1,1,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"200\",\"rex_effect_resize_height\":\"200\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2019-05-02 20:38:43','backend','2019-05-02 20:38:43','backend'),
  (2,2,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"600\",\"rex_effect_resize_height\":\"600\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2019-05-02 20:38:43','backend','2019-05-02 20:38:43','backend'),
  (3,3,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"80\",\"rex_effect_resize_height\":\"80\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2019-05-02 20:38:43','backend','2019-05-02 20:38:43','backend'),
  (4,4,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"246\",\"rex_effect_resize_height\":\"246\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2019-05-02 20:38:43','backend','2019-05-02 20:38:43','backend'),
  (5,5,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"246\",\"rex_effect_resize_height\":\"246\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2019-05-02 20:38:43','backend','2019-05-02 20:38:43','backend'),
  (6,6,'resize','{\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"},\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_rotate\":{\"rex_effect_rotate_rotate\":\"0\"},\"rex_effect_filter_colorize\":{\"rex_effect_filter_colorize_filter_r\":\"\",\"rex_effect_filter_colorize_filter_g\":\"\",\"rex_effect_filter_colorize_filter_b\":\"\"},\"rex_effect_image_properties\":{\"rex_effect_image_properties_jpg_quality\":\"\",\"rex_effect_image_properties_png_compression\":\"\",\"rex_effect_image_properties_webp_quality\":\"\",\"rex_effect_image_properties_interlace\":null},\"rex_effect_filter_brightness\":{\"rex_effect_filter_brightness_brightness\":\"\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_filter_contrast\":{\"rex_effect_filter_contrast_contrast\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"400\",\"rex_effect_resize_height\":\"300\",\"rex_effect_resize_style\":\"minimum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"10\",\"rex_effect_filter_blur_type\":\"gaussian\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_convert2img\":{\"rex_effect_convert2img_convert_to\":\"jpg\",\"rex_effect_convert2img_density\":\"150\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"}}',1,'2019-05-04 09:49:09','admin','2019-05-04 09:49:09','admin'),
  (7,6,'crop','{\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"},\"rex_effect_crop\":{\"rex_effect_crop_width\":\"400\",\"rex_effect_crop_height\":\"300\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_rotate\":{\"rex_effect_rotate_rotate\":\"0\"},\"rex_effect_filter_colorize\":{\"rex_effect_filter_colorize_filter_r\":\"\",\"rex_effect_filter_colorize_filter_g\":\"\",\"rex_effect_filter_colorize_filter_b\":\"\"},\"rex_effect_image_properties\":{\"rex_effect_image_properties_jpg_quality\":\"\",\"rex_effect_image_properties_png_compression\":\"\",\"rex_effect_image_properties_webp_quality\":\"\",\"rex_effect_image_properties_interlace\":null},\"rex_effect_filter_brightness\":{\"rex_effect_filter_brightness_brightness\":\"\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_filter_contrast\":{\"rex_effect_filter_contrast_contrast\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"\",\"rex_effect_resize_height\":\"\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"10\",\"rex_effect_filter_blur_type\":\"gaussian\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_convert2img\":{\"rex_effect_convert2img_convert_to\":\"jpg\",\"rex_effect_convert2img_density\":\"150\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"}}',2,'2019-05-04 09:49:28','admin','2019-05-04 09:49:28','admin'),
  (8,7,'crop','{\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"},\"rex_effect_crop\":{\"rex_effect_crop_width\":\"200\",\"rex_effect_crop_height\":\"200\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_rotate\":{\"rex_effect_rotate_rotate\":\"0\"},\"rex_effect_filter_colorize\":{\"rex_effect_filter_colorize_filter_r\":\"\",\"rex_effect_filter_colorize_filter_g\":\"\",\"rex_effect_filter_colorize_filter_b\":\"\"},\"rex_effect_image_properties\":{\"rex_effect_image_properties_jpg_quality\":\"\",\"rex_effect_image_properties_png_compression\":\"\",\"rex_effect_image_properties_webp_quality\":\"\",\"rex_effect_image_properties_interlace\":null},\"rex_effect_filter_brightness\":{\"rex_effect_filter_brightness_brightness\":\"\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_filter_contrast\":{\"rex_effect_filter_contrast_contrast\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"\",\"rex_effect_resize_height\":\"\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"10\",\"rex_effect_filter_blur_type\":\"gaussian\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_convert2img\":{\"rex_effect_convert2img_convert_to\":\"jpg\",\"rex_effect_convert2img_density\":\"150\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"}}',2,'2019-05-04 10:08:41','admin','2019-05-04 10:08:41','admin'),
  (9,7,'resize','{\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"},\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_rotate\":{\"rex_effect_rotate_rotate\":\"0\"},\"rex_effect_filter_colorize\":{\"rex_effect_filter_colorize_filter_r\":\"\",\"rex_effect_filter_colorize_filter_g\":\"\",\"rex_effect_filter_colorize_filter_b\":\"\"},\"rex_effect_image_properties\":{\"rex_effect_image_properties_jpg_quality\":\"\",\"rex_effect_image_properties_png_compression\":\"\",\"rex_effect_image_properties_webp_quality\":\"\",\"rex_effect_image_properties_interlace\":null},\"rex_effect_filter_brightness\":{\"rex_effect_filter_brightness_brightness\":\"\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_filter_contrast\":{\"rex_effect_filter_contrast_contrast\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"200\",\"rex_effect_resize_height\":\"200\",\"rex_effect_resize_style\":\"minimum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"10\",\"rex_effect_filter_blur_type\":\"gaussian\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_convert2img\":{\"rex_effect_convert2img_convert_to\":\"jpg\",\"rex_effect_convert2img_density\":\"150\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"}}',1,'2019-05-04 10:08:56','admin','2019-05-04 10:08:56','admin');
/*!40000 ALTER TABLE `rex_media_manager_type_effect` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_metainfo_field`;
CREATE TABLE `rex_metainfo_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(10) unsigned NOT NULL,
  `attributes` text NOT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `default` varchar(255) NOT NULL,
  `params` text,
  `validate` text,
  `callback` text,
  `restrictions` text,
  `createuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_metainfo_field` WRITE;
/*!40000 ALTER TABLE `rex_metainfo_field` DISABLE KEYS */;
INSERT INTO `rex_metainfo_field` VALUES 
  (1,'','cat_navigation',1,'',3,'1','1:Anzeigen|2:Ausblenden','','','','admin','2019-05-04 10:47:28','admin','2019-05-04 10:47:41');
/*!40000 ALTER TABLE `rex_metainfo_field` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_metainfo_type`;
CREATE TABLE `rex_metainfo_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `dbtype` varchar(255) NOT NULL,
  `dblength` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_metainfo_type` WRITE;
/*!40000 ALTER TABLE `rex_metainfo_type` DISABLE KEYS */;
INSERT INTO `rex_metainfo_type` VALUES 
  (1,'text','text',0),
  (2,'textarea','text',0),
  (3,'select','varchar',255),
  (4,'radio','varchar',255),
  (5,'checkbox','varchar',255),
  (6,'REX_MEDIA_WIDGET','varchar',255),
  (7,'REX_MEDIALIST_WIDGET','text',0),
  (8,'REX_LINK_WIDGET','varchar',255),
  (9,'REX_LINKLIST_WIDGET','text',0),
  (10,'date','text',0),
  (11,'datetime','text',0),
  (12,'legend','text',0),
  (13,'time','text',0);
/*!40000 ALTER TABLE `rex_metainfo_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_module`;
CREATE TABLE `rex_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `output` mediumtext NOT NULL,
  `input` mediumtext NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `attributes` text,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_module` WRITE;
/*!40000 ALTER TABLE `rex_module` DISABLE KEYS */;
INSERT INTO `rex_module` VALUES 
  (1,'0001 - Home Image Header','<?php if (rex::isFrontend()) : $image = (!empty(\"REX_MEDIA[id=1]\")) ? \"style=\\\"background-image: url(\'\" . rex_url::media(\'REX_MEDIA[id=1]\') . \"\')\\\"\" : \'\'; ?>\r\n  <header class=\"masthead\" <?= $image ?>>\r\n    <div class=\"container\">\r\n      <div class=\"intro-text\">\r\n        <?php if (!empty(\"REX_VALUE[id=1]\")) : ?><div class=\"intro-lead-in\">REX_VALUE[id=1]</div><?php endif; ?>\r\n        <?php if (!empty(\"REX_VALUE[id=2]\")) : ?><div class=\"intro-heading text-uppercase\">REX_VALUE[id=2]</div><?php endif; ?>\r\n        <?php if (!empty(\"REX_LINK[id=1]\")) : $article = rex_article::get(\"REX_LINK[id=1]\");\r\n            ?><a class=\"btn btn-primary btn-xl text-uppercase js-scroll-trigger\" href=\"#<?= ArticleHelper::createhash($article->getName()) ?>\"><?php\r\n                echo (!empty(\"REX_VALUE[id=3]\")) ? \"REX_VALUE[id=3]\" : $article->getName();\r\n            ?></a><?php endif; ?>\r\n      </div>\r\n    </div>\r\n  </header>\r\n<?php else :\r\n\r\n    // MEDIA\r\n    echo BackendHelper::getImageForBackend(\'REX_MEDIA[id=1]\');\r\n\r\n    echo \'<div class=\"text-center\">\';\r\n    // TEXT\r\n    if (!empty(\"REX_VALUE[id=1]\")) echo \'<h3>REX_VALUE[id=1]</h3>\';\r\n    if (!empty(\"REX_VALUE[id=2]\")) echo \'<h2>REX_VALUE[id=2]</h2>\';\r\n\r\n    // BUTTON\r\n    if (!empty(\"REX_LINK[id=1]\")) {\r\n        $article = rex_article::get(\"REX_LINK[id=1]\");\r\n        $buttonText = (!empty(\"REX_VALUE[id=3]\")) ? \"REX_VALUE[id=3]\" : $article->getName();\r\n        echo \'<a class=\"btn btn-primary btn-xl text-uppercase js-scroll-trigger\" href=\"#\' . ArticleHelper::createhash($article->getName()) . \'\">\' . $buttonText . \'</a>\';\r\n        echo \'<hr><p><i>Button Ziel: \' . $article->getName() . \' [\' . $article->getId() . \']</i></p>\';\r\n    }\r\n    echo \'</div>\';\r\nendif;','<?php\n\n// TODO SLIDER as MBLOCK + BUTTON as MBLOCK nested\n\n$mform = new MForm();\n$mform->addFieldset(\'Hintergrund-Bild\')\n    // IMAGE\n    ->addMediaField(1, [\'label\' => \'Bild\', \'category\' => 1])\n    // TEXT\n    ->addFieldset(\'Headline-Lead\')\n    ->addTextField(1, [\'label\' => \'First Line\'])\n    ->addTextField(2, [\'label\' => \'Second Link\'])\n    // BUTTON\n    ->addFieldset(\'Link-Button\')\n    ->addLinkField(1, [\'label\' => \'Button-Link\'])\n    ->addTextField(3, [\'label\' => \'Button-Text\']);\n\necho $mform->show();','admin','admin','2019-05-03 10:34:05','2019-05-03 13:51:47','',0),
  (2,'0002 - Service Columns','<?php\n    $var3 = rex_var::toArray(\'REX_VALUE[id=3]\');\n    $iconClass = (rex::isBackend()) ? \'fa\' : \'fas\';\n?>\n<div class=\"container\">\n    <?php if (!empty(\'REX_VALUE[id=1]\') || !empty(\'REX_VALUE[id=2]\')) : ?>\n    <div class=\"row\">\n        <div class=\"col-lg-12 text-center\">\n            <?php if (!empty(\'REX_VALUE[id=1]\')) : ?><h2 class=\"section-heading text-uppercase\">REX_VALUE[id=1]</h2><?php endif; ?>\n            <?php if (!empty(\'REX_VALUE[id=2]\')) : ?><h3 class=\"section-subheading text-muted\">REX_VALUE[id=2]</h3><?php endif; ?>\n        </div>\n    </div>\n    <?php endif; ?>\n    <div class=\"row text-center\">\n        <?php if (is_array($var3) && sizeof($var3) > 0) : foreach ($var3 as $item) : ?>\n        <div class=\"col-md-4\">\n          <span class=\"fa-stack fa-4x\">\n            <i class=\"<?= $iconClass ?> fa-circle fa-stack-2x text-primary\"></i>\n            <i class=\"<?= $iconClass . \' \' . $item[\'icon\'] ?> fa-stack-1x fa-inverse\"></i>\n          </span>\n            <?php if (isset($item[\'headline\']) && !empty($item[\'headline\'])) : ?><h4 class=\"service-heading\"><?= $item[\'headline\'] ?></h4><?php endif; ?>\n            <?php if (isset($item[\'text\']) && !empty($item[\'text\'])) : ?><p class=\"text-muted\"><?= $item[\'text\'] ?></p><?php endif; ?>\n        </div>\n        <?php endforeach; endif; ?>\n    </div>\n</div>\n','<?php\n\n// MBLOCK ID\n$mblockId = 3;\n\n// MBLOCK FORM\n$mformBlock = new MForm();\n$mformBlock->addFieldset(\'Service\')\n    // ICON\n    ->addSelectField(\"$mblockId.0.icon\", [\'fa-shopping-cart\' => \'Shopping Card\', \'fa-laptop\' => \'Laptop\', \'fa-lock\' => \'Lock\'], [\'label\' => \'Icon\', \'class\' => \'selectpicker\'])\n    // HEADLINE LEAD\n    ->addTextField( \"$mblockId.0.headline\", [\'label\' => \'Headline\'])\n    ->addTextAreaField(\"$mblockId.0.text\", [\'label\' => \'Lead-Text\']);\n\n// BASE FORM\n$mform = new MForm();\n$mform->addFieldset(\'Headline-Lead\')\n    // HEADLINE LEAD\n    ->addTextField(1, [\'label\' => \'First Line\'])\n    ->addTextField(2, [\'label\' => \'Second Line\'])\n    // ADD MBLOCK\n    ->addHtml(MBlock::show($mblockId, $mformBlock, [\'max\' => 3])); // USE MBLOCK FORM\n\necho $mform->show();','admin','admin','2019-05-03 11:03:22','2019-05-04 14:35:56','',0),
  (3,'0003 - Portfolio Area','<?php\n    $var3 = rex_var::toArray(\'REX_VALUE[id=3]\');\n    $iconClass = (rex::isBackend()) ? \'fa\' : \'fas\';\n    $categories = [\n        \'Illustration\',\n        \'Graphic Design\',\n        \'Identity\',\n        \'Branding\',\n        \'Website Design\',\n        \'Photography\',\n    ];\n?>\n<div data-section-class=\"bg-light\" id=\"portfolio_elements\">\n    <div class=\"container\">\n        <?php if (!empty(\'REX_VALUE[id=1]\') || !empty(\'REX_VALUE[id=2]\')) : ?>\n            <div class=\"row\">\n                <div class=\"col-lg-12 text-center\">\n                    <?php if (!empty(\'REX_VALUE[id=1]\')) : ?><h2 class=\"section-heading text-uppercase\">REX_VALUE[id=1]</h2><?php endif; ?>\n                    <?php if (!empty(\'REX_VALUE[id=2]\')) : ?><h3 class=\"section-subheading text-muted\">REX_VALUE[id=2]</h3><?php endif; ?>\n                </div>\n            </div>\n        <?php endif; ?>\n        <div class=\"row\">\n            <?php if (is_array($var3) && sizeof($var3) > 0) : foreach ($var3 as $count => $item) : ?>\n            <div class=\"col-md-4 col-sm-6 portfolio-item\">\n                <a class=\"portfolio-link\" data-toggle=\"modal\" href=\"#modal<?= $count ?>\">\n                    <div class=\"portfolio-hover\">\n                        <div class=\"portfolio-hover-content\">\n                            <i class=\"<?= $iconClass ?> fa-plus fa-3x\"></i>\n                        </div>\n                    </div>\n                    <?php if (isset($item[\'REX_MEDIA_1\']) && !empty($item[\'REX_MEDIA_1\'])) : ?><img class=\"img-fluid\" src=\"<?= rex_url::frontend(\'images/thumb/\' . $item[\'REX_MEDIA_1\']) ?>\" alt=\"\"><?php endif; ?>\n                </a>\n                <div class=\"portfolio-caption\">\n                    <?php if (isset($item[\'title\']) && !empty($item[\'title\'])) : ?><h4><?= $item[\'title\'] ?></h4><?php endif; ?>\n                    <p class=\"text-muted\"><?= $categories[$item[\'categories\']] ?></p>\n                </div>\n            </div>\n            <?php endforeach; endif; ?>\n        </div>\n    </div>\n</div>\n<?php if (is_array($var3) && sizeof($var3) > 0) : foreach ($var3 as $count => $item) : ?>\n<div class=\"portfolio-modal modal fade\" id=\"modal<?= $count ?>\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\n    <div class=\"modal-dialog\">\n        <div class=\"modal-content\">\n            <div class=\"close-modal\" data-dismiss=\"modal\">\n                <div class=\"lr\">\n                    <div class=\"rl\"></div>\n                </div>\n            </div>\n            <div class=\"container\">\n                <div class=\"row\">\n                    <div class=\"col-lg-8 mx-auto\">\n                        <div class=\"modal-body\">\n                            <?php if (isset($item[\'title\']) && !empty($item[\'title\'])) : ?><h2 class=\"text-uppercase\"><?= $item[\'title\'] ?></h2><?php endif; ?>\n                            <?php if (isset($item[\'lead\']) && !empty($item[\'lead\'])) : ?><p class=\"item-intro text-muted\"><?= $item[\'lead\'] ?></p><?php endif; ?>\n                            <img class=\"img-fluid d-block mx-auto\" src=\"<?= rex_url::media($item[\'REX_MEDIA_1\']) ?>\" alt=\"\">\n                            <?php if (isset($item[\'text\']) && !empty($item[\'text\'])) : ?><p class=\"item-intro text-muted\"><?= $item[\'text\'] ?></p><?php endif; ?>\n                            <ul class=\"list-inline\">\n                                <li>Category: <?= $categories[$item[\'categories\']] ?></li>\n                            </ul>\n                            <button class=\"btn btn-primary\" data-dismiss=\"modal\" type=\"button\">\n                                <i class=\"<?= $iconClass ?> fa-times\"></i>\n                                Close Project</button>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<?php endforeach; endif; ?>','<?php\n\n// MBLOCK ID\n$mblockId = 3;\n\n// MBLOCK FORM\n$mformBlock = new MForm();\n$mformBlock->addFieldset(\'Reference\')\n    ->addTextField(\"$mblockId.0.title\", [\'label\' => \'Title\'])\n    ->addTextField(\"$mblockId.0.lead\", [\'label\' => \'Lead Text\'])\n    ->addTextAreaField(\"$mblockId.0.text\", [\'label\' => \'Text\'])\n    ->addSelectField(\"$mblockId.0.categories\", [\n        \'Illustration\',\n        \'Graphic Design\',\n        \'Identity\',\n        \'Branding\',\n        \'Website Design\',\n        \'Photography\',\n    ], [\'label\' => \'Category\', \'class\' => \'selectpicker\'])\n    ->addMediaField(1, [\'label\' => \'Bild\', \'category\' => 2, \'types\' => \'jpg,png\']);\n\n// BASE FORM\n$mform = new MForm();\n$mform->addFieldset(\'Headline-Lead\')\n    // HEADLINE LEAD\n    ->addTextField(1, [\'label\' => \'First Line\'])\n    ->addTextField(2, [\'label\' => \'Second Line\'])\n    ->addHtml(MBlock::show($mblockId, $mformBlock, [\'min\' => 3, \'max\' => 9]));\n\necho $mform->show();','admin','admin','2019-05-03 11:04:21','2019-05-04 14:36:03','',0),
  (4,'0004 - About Timeline','<?php\n$var3 = rex_var::toArray(\'REX_VALUE[id=3]\');\n?>\n    <div class=\"container\">\n        <?php if (!empty(\'REX_VALUE[id=1]\') || !empty(\'REX_VALUE[id=2]\')) : ?>\n            <div class=\"row\">\n                <div class=\"col-lg-12 text-center\">\n                    <?php if (!empty(\'REX_VALUE[id=1]\')) : ?><h2 class=\"section-heading text-uppercase\">REX_VALUE[id=1]</h2><?php endif; ?>\n                    <?php if (!empty(\'REX_VALUE[id=2]\')) : ?><h3 class=\"section-subheading text-muted\">REX_VALUE[id=2]</h3><?php endif; ?>\n                </div>\n            </div>\n        <?php endif; ?>\n        <div class=\"row\">\n            <div class=\"col-lg-12\">\n                <ul class=\"timeline\">\n                    <?php if (is_array($var3) && sizeof($var3) > 0) : foreach ($var3 as $count => $item) : ?>\n                    <li class=\"<?php if ($count % 2) echo \'timeline-inverted\'; ?>\">\n                        <div class=\"timeline-image\">\n                            <?php if (isset($item[\'REX_MEDIA_1\']) && !empty($item[\'REX_MEDIA_1\'])) : ?><img class=\"rounded-circle img-fluid\" src=\"<?= rex_url::frontend(\'images/round_about/\' . $item[\'REX_MEDIA_1\']) ?>\" alt=\"\"><?php endif; ?>\n                        </div>\n                        <div class=\"timeline-panel\">\n                            <div class=\"timeline-heading\">\n                                <?php if (isset($item[\'title\']) && !empty($item[\'title\'])) : ?><h4><?= $item[\'title\'] ?></h4><?php endif; ?>\n                                <?php if (isset($item[\'lead\']) && !empty($item[\'lead\'])) : ?><h4 class=\"subheading\"><?= $item[\'lead\'] ?></h4><?php endif; ?>\n                            </div>\n                            <?php if (isset($item[\'text\']) && !empty($item[\'text\'])) : ?><div class=\"timeline-body\"><p class=\"text-muted\"><?= $item[\'text\'] ?></p></div><?php endif; ?>\n                        </div>\n                    </li>\n                    <?php endforeach; endif; ?>\n                    <li class=\"timeline-inverted\">\n                        <div class=\"timeline-image\">\n                            <h4>Be Part\n                                <br>Of Our\n                                <br>Story!</h4>\n                        </div>\n                    </li>\n                </ul>\n            </div>\n        </div>\n    </div>','<?php\n\n// MBLOCK ID\n$mblockId = 3;\n\n// MBLOCK FORM\n$mformBlock = new MForm();\n$mformBlock->addFieldset(\'Timeline-Item\')\n    ->addTextField(\"$mblockId.0.title\", [\'label\' => \'Title\'])\n    ->addTextField(\"$mblockId.0.lead\", [\'label\' => \'Lead Text\'])\n    ->addTextAreaField(\"$mblockId.0.text\", [\'label\' => \'Text\'])\n    ->addMediaField(1, [\'label\' => \'Bild\', \'category\' => 3, \'types\' => \'jpg,png\']);\n\n// BASE FORM\n$mform = new MForm();\n$mform->addFieldset(\'Headline-Lead\')\n    // HEADLINE LEAD\n    ->addTextField(1, [\'label\' => \'First Line\'])\n    ->addTextField(2, [\'label\' => \'Second Line\'])\n    ->addHtml(MBlock::show($mblockId, $mformBlock));\n\necho $mform->show();','admin','admin','2019-05-03 11:04:37','2019-05-04 14:41:04','',0),
  (5,'0005 - Team Members','<?php\n$var9 = rex_var::toArray(\'REX_VALUE[id=9]\');\n$iconClass = (rex::isBackend()) ? \'fa\' : \'fab\';\n?>\n    <div class=\"container\" data-section-class=\"bg-light\">\n        <?php if (!empty(\'REX_VALUE[id=1]\') || !empty(\'REX_VALUE[id=2]\')) : ?>\n            <div class=\"row\">\n                <div class=\"col-lg-12 text-center\">\n                    <?php if (!empty(\'REX_VALUE[id=1]\')) : ?><h2 class=\"section-heading text-uppercase\">REX_VALUE[id=1]</h2><?php endif; ?>\n                    <?php if (!empty(\'REX_VALUE[id=2]\')) : ?><h3 class=\"section-subheading text-muted\">REX_VALUE[id=2]</h3><?php endif; ?>\n                </div>\n            </div>\n        <?php endif; ?>\n        <div class=\"row\">\n            <?php if (is_array($var9) && sizeof($var9) > 0) : foreach ($var9 as $count => $item) : ?>\n            <div class=\"col-sm-4\">\n                <div class=\"team-member\">\n                    <?php if (isset($item[\'REX_MEDIA_1\']) && !empty($item[\'REX_MEDIA_1\'])) : ?><img class=\"mx-auto rounded-circle\" src=\"<?= rex_url::frontend(\'images/round_about/\' . $item[\'REX_MEDIA_1\']) ?>\" alt=\"\"><?php endif; ?>\n                    <?php if(isset($item[\'name\']) && !empty($item[\'name\'])) : ?><h4><?= $item[\'name\'] ?></h4><?php endif; ?>\n                    <?php if(isset($item[\'position\']) && !empty($item[\'position\'])) : ?><p class=\"text-muted\"><?= $item[\'position\'] ?></p><?php endif; ?>\n                    <?php if (isset($item[\'1\']) && !empty($item[\'1\'])) : ?>\n                    <ul class=\"list-inline social-buttons\">\n                        <li class=\"list-inline-item\">\n                            <a href=\"<?= $item[\'1\']; ?>\">\n                                <i class=\"<?= $iconClass ?> fa-facebook-f\"></i>\n                            </a>\n                        </li>\n                    </ul>\n                    <?php endif; ?>\n                </div>\n            </div>\n            <?php endforeach; endif; ?>\n        </div>\n        <?php if (!empty(\'REX_VALUE[id=6]\')) : ?>\n        <div class=\"row\">\n            <div class=\"col-lg-8 mx-auto text-center\">\n                <p class=\"large text-muted\">REX_VALUE[id=6]</p>\n            </div>\n        </div>\n        <?php endif; ?>\n    </div>\n','<?php\n\n// MBLOCK ID\n$teamBlockId = 9;\n\n// HEADLINE FORM\n$headlineForm = new MForm();\n$headlineForm->addFieldset(\'Base Text Areas\')\n    // HEADLINE LEAD\n    ->addTextField(1, [\'label\' => \'First Line\'])\n    ->addTextField(2, [\'label\' => \'Second Line\']);\n\n// FOOTER TEXT AREA\n$footerForm = new MForm();\n$footerForm->addFieldset(\'Footer Text Area\')\n    // TEXT AREA\n    ->addTextAreaField(6, [\'label\' => \'Footer Text\']);\n\n// ACCORDION\n$accordionForm = new MForm();\n$accordionForm->addAccordionField(\'Haupteingabe\', $headlineForm) // ADD HEADLINE FORM\n    ->addAccordionField(\'Footer Area\', $footerForm); // ADD FOOTER FORM\n\n// TEAM FORM\n$teamForm = new MForm();\n$teamForm->addFieldset(\'Headline-Lead\')\n    // HEADLINE LEAD\n    ->addTextField(\"$teamBlockId.0.name\", [\'label\' => \'Name\'])\n    ->addTextField(\"$teamBlockId.0.position\", [\'label\' => \'Position\'])\n    ->addMediaField(1, [\'label\' => \'Portrait\', \'category\' => 4, \'types\' => \'jpg,png\'])\n    ->addCustomLinkField(\"$teamBlockId.0.1\", [\'label\' => \'Facebook-Link\', \'data-intern\' => \'disable\', \'data-media\' => \'disable\', \'data-mailto\' => \'disable\', \'data-tel\' => \'disable\']);\n\n// TEAM MBLOCK\n$teamBlock = MBlock::show($teamBlockId, $teamForm, [\'max\' => 3]);\n\n// TAB FORM\n$tabForm = new MForm();\n$tabForm->addTabField(\'Headline-Lead\', $accordionForm)\n    ->addTabField(\'Team Members\', $teamBlock);\n\n// PRINT FINAL TAB FORM\necho $tabForm->show();\n','admin','admin','2019-05-03 11:06:05','2019-05-04 14:41:22','',0),
  (6,'0006 - Company-Logos','<?php\n$var1 = rex_var::toArray(\'REX_VALUE[id=1]\');\n?>\n<div data-section-class=\"py-5\">\n    <div class=\"container\">\n        <div class=\"row\">\n            <?php if (is_array($var1) && sizeof($var1) > 0) : foreach ($var1 as $count => $item) : ?>\n            <div class=\"col-md-3 col-sm-6\">\n                <a href=\"<?= $item[\'1\'] ?>\">\n                    <?php if (isset($item[\'REX_MEDIA_1\']) && !empty($item[\'REX_MEDIA_1\'])) : ?><img class=\"img-fluid d-block mx-auto\" src=\"<?= rex_url::media($item[\'REX_MEDIA_1\']) ?>\" alt=\"\"><?php endif; ?>\n                </a>\n            </div>\n            <?php endforeach; endif; ?>\n        </div>\n    </div>\n</div>\n','<?php\n\n// MBLOCK ID\n$blockId = 1;\n\n// MFORM\n$mform = new MForm();\n$mform->addFieldset(\'Company\')\n    // COMPANY LINK\n    ->addCustomLinkField(\"$blockId.0.1\", [\'label\' => \'Company-Link\', \'data-intern\' => \'disable\', \'data-media\' => \'disable\', \'data-mailto\' => \'disable\', \'data-tel\' => \'disable\'])\n    // COMPANY LOGO\n    ->addMediaField(1, [\'label\' => \'Company-Logo\', \'category\' => 5, \'types\' => \'jpg,png\']);\n\necho MBlock::show($blockId, $mform, [\'max\' => 4]);\n','admin','admin','2019-05-03 11:11:46','2019-05-04 14:40:32','',0),
  (7,'0007 - Contact Form','<!-- Contact -->\n    <div class=\"container\" id=\"contact_area\" data-section-class=\"bg-dark\" data-section-image=\"<?= rex_url::frontend(\'img/map-image.png\') ?>\">\n        <?php if (!empty(\'REX_VALUE[id=1]\') || !empty(\'REX_VALUE[id=2]\')) : ?>\n            <div class=\"row\">\n                <div class=\"col-lg-12 text-center\">\n                    <?php if (!empty(\'REX_VALUE[id=1]\')) : ?><h2 class=\"section-heading text-uppercase\">REX_VALUE[id=1]</h2><?php endif; ?>\n                    <?php if (!empty(\'REX_VALUE[id=2]\')) : ?><h3 class=\"section-subheading text-muted\">REX_VALUE[id=2]</h3><?php endif; ?>\n                </div>\n            </div>\n        <?php endif; ?>\n        <div class=\"row\">\n            <div class=\"col-lg-12\">\n                <?php // use yform ?>\n                <form id=\"contactForm\" name=\"sentMessage\" novalidate=\"novalidate\">\n                    <div class=\"row\">\n                        <div class=\"col-md-6\">\n                            <div class=\"form-group\">\n                                <input class=\"form-control\" id=\"name\" type=\"text\" placeholder=\"Your Name *\" required=\"required\" data-validation-required-message=\"Please enter your name.\">\n                                <p class=\"help-block text-danger\"></p>\n                            </div>\n                            <div class=\"form-group\">\n                                <input class=\"form-control\" id=\"email\" type=\"email\" placeholder=\"Your Email *\" required=\"required\" data-validation-required-message=\"Please enter your email address.\">\n                                <p class=\"help-block text-danger\"></p>\n                            </div>\n                            <div class=\"form-group\">\n                                <input class=\"form-control\" id=\"phone\" type=\"tel\" placeholder=\"Your Phone *\" required=\"required\" data-validation-required-message=\"Please enter your phone number.\">\n                                <p class=\"help-block text-danger\"></p>\n                            </div>\n                        </div>\n                        <div class=\"col-md-6\">\n                            <div class=\"form-group\">\n                                <textarea class=\"form-control\" id=\"message\" placeholder=\"Your Message *\" required=\"required\" data-validation-required-message=\"Please enter a message.\"></textarea>\n                                <p class=\"help-block text-danger\"></p>\n                            </div>\n                        </div>\n                        <div class=\"clearfix\"></div>\n                        <div class=\"col-lg-12 text-center\">\n                            <div id=\"success\"></div>\n                            <button id=\"sendMessageButton\" class=\"btn btn-primary btn-xl text-uppercase\" type=\"submit\">Send Message</button>\n                        </div>\n                    </div>\n                </form>\n            </div>\n        </div>\n    </div>','<?php\n\n// BASE FORM\n$mform = new MForm();\n$mform->addFieldset(\'Headline-Lead\')\n    // HEADLINE LEAD\n    ->addTextField(1, [\'label\' => \'First Line\'])\n    ->addTextField(2, [\'label\' => \'Second Line\']);\n\necho $mform->show();','admin','admin','2019-05-03 11:13:30','2019-05-04 10:53:03','',0),
  (8,'0008 - 404','Not Found :(','Hopla.','admin','','2019-05-04 10:38:07','0000-00-00 00:00:00','',0);
/*!40000 ALTER TABLE `rex_module` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_module_action`;
CREATE TABLE `rex_module_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `action_id` int(10) unsigned NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_template`;
CREATE TABLE `rex_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `active` tinyint(1) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_template` WRITE;
/*!40000 ALTER TABLE `rex_template` DISABLE KEYS */;
INSERT INTO `rex_template` VALUES 
  (1,'Default','<?php\n\n// init article helper\n$page = new ArticleHelper();\n\n// set error reporting\nerror_reporting(E_ALL ^ E_NOTICE);\n\n// NAVIGATION\n$navigation = array();\nforeach ($page->getCategories() as $category) {\n    $navigation[$category->getId()] = array(\n        \'id\' => $category->getId(),\n        \'name\' => ($category->getValue(\'cat_alternative_name\')) ? str_replace(chr(13), \'<br/>\', $category->getValue(\'cat_alternative_name\')) : $category->getName(),\n        \'url\' => ($category->getValue(\'cat_extern_url\')) ? \'http://\' . str_replace(\'http://\', \'\', $category->getValue(\'cat_extern_url\')) : $category->getUrl(),\n        \'external_link\' => ($category->getValue(\'cat_external_url\')) ? true : false,\n        \'active\'=>($category->getId() == $page->getPath(0))? true : false,\n        \'hash\' => ArticleHelper::createhash($category->getName()),\n        \'view\' => $category->getValue(\'cat_navigation\'),\n        \'style\' => $category->getValue(\'cat_highlight\'),\n    );\n    $navigationChildren = $category->getChildren(true);\n    if (count($navigationChildren) > 0) {\n        foreach ($navigationChildren as $children) {\n            $navigation[$category->getId()][\'sub\'][$children->getId()] = array(\n                \'id\' => $children->getId(),\n                \'name\' => ($children->getValue(\'cat_alternative_name\')) ? $children->getValue(\'cat_alternative_name\') : $children->getName(),\n                \'url\' => ($children->getValue(\'cat_extern_url\')) ? \'http://\' . str_replace(\'http://\', \'\', $children->getValue(\'cat_extern_url\')) : $children->getUrl(),\n                \'external_link\' => ($children->getValue(\'cat_external_url\')) ? true : false,\n                \'active\'=>($category->getId() == $page->getPath(2))? true : false,\n                \'hash\' => ArticleHelper::createhash($category->getName()),\n                \'view\' => $category->getValue(\'cat_navigation\'),\n                \'style\' => $category->getValue(\'cat_highlight\'),\n            );\n        }\n    }\n    if ($category->getValue(\'cat_footer\') == 2) {\n        $arrFooterNav[$category->getId()] = $navigation[$category->getId()];\n        unset($navigation[$category->getId()]);\n    }\n}\n\n?><!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"utf-8\">\n    <?= $page->getSeo()->getTitleTag() ?>\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <?= $page->getSeo()->getHreflangTags() ?>\n    <?= (!empty($page->getSeo()->getDescription())) ? $page->getSeo()->getDescriptionTag() : \'\' ?>\n    <?= $page->getSeo()->getCanonicalUrlTag() ?>\n    <?= $page->getSeo()->getRobotsTag() ?>\n    <base href=\"<?= $page->getBaseUrl() ?>\">\n    <link href=\"<?= rex_url::assets(\'vendor/bootstrap/css/bootstrap.min.css\') ?>\" rel=\"stylesheet\">\n    <link href=\"<?= rex_url::assets(\'vendor/fontawesome-free/css/all.min.css\') ?>\" rel=\"stylesheet\" type=\"text/css\">\n    <link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,700\" rel=\"stylesheet\" type=\"text/css\">\n    <link href=\'https://fonts.googleapis.com/css?family=Kaushan+Script\' rel=\'stylesheet\' type=\'text/css\'>\n    <link href=\'https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic\' rel=\'stylesheet\' type=\'text/css\'>\n    <link href=\'https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700\' rel=\'stylesheet\' type=\'text/css\'>\n    <link href=\"<?= rex_url::assets(\'css/agency.min.css\') ?>\" rel=\"stylesheet\">\n</head>\n<body id=\"page-top\">\n<?php\n// NAVIGATION\n?>\n<nav class=\"navbar navbar-expand-lg navbar-dark fixed-top\" id=\"mainNav\">\n    <div class=\"container\">\n        <a class=\"navbar-brand js-scroll-trigger\" href=\"#page-top\"><?= $page->getSiteName(); ?></a>\n        <button class=\"navbar-toggler navbar-toggler-right\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n            Menu\n            <i class=\"fas fa-bars\"></i>\n        </button>\n        <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n            <?php if (is_array($navigation) && sizeof($navigation) > 0) : ?>\n            <ul class=\"navbar-nav text-uppercase ml-auto\">\n                <?php foreach ($navigation as $navigationItem) : if ($navigationItem[\'view\'] < 2) : ?>\n                <li class=\"nav-item\">\n                    <a class=\"nav-link js-scroll-trigger\" href=\"#<?= $navigationItem[\'hash\'] ?>\"><?= $navigationItem[\'name\'] ?></a>\n                </li>\n                <?php endif; endforeach; ?>\n            </ul>\n            <?php endif; ?>\n        </div>\n    </div>\n</nav>\n\n<?php\n// HOME\n?>\nREX_ARTICLE[]\n<?php\n// SECTIONS\nif (is_array($navigation) && sizeof($navigation) > 0) {\n    foreach ($navigation as $navigationItem) {\n        $articleContent = new rex_article_content($navigationItem[\'id\'], rex_clang::getCurrentId());\n        $content = $articleContent->getArticle();\n        $class = \'\';\n        $style = \'\';\n        preg_match(\'/data-section-class=\"(.*)\"/sUi\', $content, $matches, PREG_OFFSET_CAPTURE, 0);\n        if (is_array($matches) && isset($matches[1]) && is_array($matches[1])) {\n            $class = \' class=\"\' . $matches[1][0] . \'\"\';\n        }\n        preg_match(\'/data-section-image=\"(.*)\"/sUi\', $content, $matches, PREG_OFFSET_CAPTURE, 0);\n        if (is_array($matches) && isset($matches[1]) && is_array($matches[1])) {\n            $style = \' style=\"background-image: url(\\\'\' . $matches[1][0] . \'\\\')\"\';\n        }\n        echo \'\n        <section id=\"\' . $navigationItem[\'hash\'] . \'\" \' . $class . $style .  \'>\' . $content . \'</section>\n\';\n    }\n}\n?>\n<?php\n// FOOTER\n?>\n<footer>\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-md-4\">\n                <span class=\"copyright\">Copyright &copy; <?= $page->getSiteName() . \' \' . date(\'Y\') ?></span>\n            </div>\n            <div class=\"col-md-4\">\n                <ul class=\"list-inline social-buttons\">\n                    <li class=\"list-inline-item\">\n                        <a href=\"#\">\n                            <i class=\"fab fa-twitter\"></i>\n                        </a>\n                    </li>\n                    <li class=\"list-inline-item\">\n                        <a href=\"#\">\n                            <i class=\"fab fa-facebook-f\"></i>\n                        </a>\n                    </li>\n                    <li class=\"list-inline-item\">\n                        <a href=\"#\">\n                            <i class=\"fab fa-linkedin-in\"></i>\n                        </a>\n                    </li>\n                </ul>\n            </div>\n            <div class=\"col-md-4\">\n                <ul class=\"list-inline quicklinks\">\n                    <li class=\"list-inline-item\">\n                        <a href=\"#\">Privacy Policy</a>\n                    </li>\n                    <li class=\"list-inline-item\">\n                        <a href=\"#\">Terms of Use</a>\n                    </li>\n                </ul>\n            </div>\n        </div>\n    </div>\n</footer>\n\n<script src=\"<?= rex_url::assets(\'vendor/jquery/jquery.min.js\') ?>\"></script>\n<script src=\"<?= rex_url::assets(\'vendor/bootstrap/js/bootstrap.bundle.min.js\') ?>\"></script>\n<script src=\"<?= rex_url::assets(\'vendor/jquery-easing/jquery.easing.min.js\') ?>\"></script>\n<script src=\"<?= rex_url::assets(\'js/jqBootstrapValidation.js\') ?>\"></script>\n<script src=\"<?= rex_url::assets(\'js/contact_me.js\') ?>\"></script>\n<script src=\"<?= rex_url::assets(\'js/agency.min.js\') ?>\"></script>\n</body>\n</html>',1,'','admin','2019-05-02 20:38:43','2019-05-04 10:53:03','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (2,'404','REX_ARTICLE[]\r\n',1,'admin','admin','2019-05-04 10:40:17','2019-05-04 10:40:17','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":0}}',0);
/*!40000 ALTER TABLE `rex_template` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_user_role`;
CREATE TABLE `rex_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `perms` text NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_yform_email_template`;
CREATE TABLE `rex_yform_email_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_from_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_reply_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_reply_to_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_html` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_field`;
CREATE TABLE `rex_yform_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prio` int(11) NOT NULL,
  `type_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_hidden` tinyint(1) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_required` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_history`;
CREATE TABLE `rex_yform_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataset_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dataset` (`table_name`,`dataset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_history_field`;
CREATE TABLE `rex_yform_history_field` (
  `history_id` int(11) NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`history_id`,`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_table`;
CREATE TABLE `rex_yform_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_amount` int(11) NOT NULL DEFAULT '50',
  `list_sortfield` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'id',
  `list_sortorder` enum('ASC','DESC') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ASC',
  `prio` int(11) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `export` tinyint(1) NOT NULL,
  `import` tinyint(1) NOT NULL,
  `mass_deletion` tinyint(1) NOT NULL,
  `mass_edit` tinyint(1) NOT NULL,
  `schema_overwrite` tinyint(1) NOT NULL DEFAULT '1',
  `history` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yrewrite_alias`;
CREATE TABLE `rex_yrewrite_alias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias_domain` varchar(191) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `clang_start` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_yrewrite_domain`;
CREATE TABLE `rex_yrewrite_domain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(191) NOT NULL,
  `mount_id` int(11) NOT NULL,
  `start_id` int(11) NOT NULL,
  `notfound_id` int(11) NOT NULL,
  `clangs` varchar(191) NOT NULL,
  `clang_start` int(11) NOT NULL,
  `clang_start_hidden` tinyint(1) NOT NULL,
  `robots` text NOT NULL,
  `title_scheme` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `auto_redirect` tinyint(1) NOT NULL,
  `auto_redirect_days` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_yrewrite_domain` WRITE;
/*!40000 ALTER TABLE `rex_yrewrite_domain` DISABLE KEYS */;
INSERT INTO `rex_yrewrite_domain` VALUES 
  (1,'http://rexcampworkshop',0,7,6,'',1,0,'User-agent: *\r\nDisallow:','%T / %SN','',0,0);
/*!40000 ALTER TABLE `rex_yrewrite_domain` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_yrewrite_forward`;
CREATE TABLE `rex_yrewrite_forward` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `url` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `article_id` int(11) NOT NULL,
  `clang` int(11) NOT NULL,
  `extern` varchar(191) NOT NULL,
  `media` varchar(191) NOT NULL,
  `movetype` varchar(191) NOT NULL,
  `expiry_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS = 1;
