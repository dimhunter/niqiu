/*
SQLyog v10.2 
MySQL - 5.7.9-log : Database - aaa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`aaa` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `aaa`;

/*Table structure for table `_blog` */

DROP TABLE IF EXISTS `_blog`;

CREATE TABLE `_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) NOT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `_blog` */

insert  into `_blog`(`id`,`name`,`content`,`create_time`,`category_id`) values (1,'川大最牛女生寝室','川大最牛女生寝室，6个女生都保研名校。川大生命科学学院大四一女生宿舍最近备受关注，寝室6名同学全部获得了保送名校研究生的资格。谢南南放弃了北京大学，选择了到中科院生化所读书;罗忠悦被东京大学录取，而此前，清华大学也向她抛来了橄榄枝;肖亚、李欣雅和郭珍被北大录取;向令则被保送为川大文新学院的研究生。\r\n','2015-11-07 22:11:19',8),(2,'小学生发分手宣言','小学生发分手宣言，网友纷纷吐槽：“三观尽碎”。昨天（6日），一小学生分手宣言的自拍视频在网上流传，视频中，一小女生怒斥自己男朋友太娘，上厕所要人陪，还偷用妈妈化妆品，而其中一些话，还被网友称为“经典”。\r\n\r\n　　“分手宣言”中部分对白：\r\n\r\n　　张帅，你给我听着!别以为请我吃顿肯德基，你就是我男朋友!自从你学了那个“掏粪男孩”之后，我就已经忍了你很久了。你看看你现在什么样子?可真够娘的。\r\n\r\n　　你说你个大男人，整天上个厕所还要人陪，还偷用你妈的化妆品，左手右手慢动作~左手右手一个慢动作~\r\n\r\n　　这样下去，我明天就找我爸，让他告诉校长，像你这种娘炮，通通不许毕业!\r\n\r\n　　从现在开始，我只能说：爱过!\r\n\r\n　　教你一句话，少年强则中国强，少年娘则中国娘。','2015-11-07 22:12:18',8),(3,'谁说动物无情无义','谁说动物无情无义，其实在知恩图报方面有时候动物的行为只能让人为之汗颜。\r\n\r\n　　近日，一则7年后被救小狐狸见恩人视频感动网友。一位大叔7年前救助了一只“狗”，并将它送到了救助站。后来，“狗”长大了才发现是只狐狸，如今大叔看望这只狐狸，狐狸显示十分开心，还不时摇尾巴。被救小狐狸见恩人，场面温馨动人。       ','2015-11-07 22:13:24',6),(4,'和习近平握手“都很用力”','【环球网报道 记者 周骥滢】据台湾东森新闻11月7日报道，中共中央总书记习近平和台湾方面领导人马英九的闭门会谈已经结束。马英九主持记者会，称“会场气氛很融洽，非常正面”。\r\n　　马英九：此次会面是两岸领导人会面变成常态踏出的第一步\r\n　　【环球网报道 记者 周骥滢】中共中央总书记习近平和台湾方面领导人马英九的闭门会谈已经结束。据台湾东森新闻11月7日报道，马英九主持记者会时表示，他希望此类会面能够成为常态，此次会面是“两岸领导人会面变成常态踏出的第一步”。\r\n　　马英九：握手时感觉很好 我们握得都很用力\r\n　　【环球网报道 记者 周骥滢】中共中央总书记习近平和台湾方面领导人马英九的闭门会谈已经结束。据台湾东森新闻11月7日报道，马英九主持记者会时表示，握手的时候感觉很好，称他和习近平握手“都很用力”。','2015-11-07 22:14:48',6),(5,'企业只要本科生，研究生投简历被直接退回','企业只要本科生，研究生投简历被直接退回\r\n　　小解是镇江一所大学机械制造专业的研三学生，他指着旁边的招聘展台告诉现代快报记者，刚才他投了简历，但工作人员看到是研究生后，直接给退回来了。“他明确说只要本科生，我其实很想说，你就把我当本科生吧，可话到嘴边又咽了下去，因为觉得不甘心。”\r\n　　记 者注意到，这是苏州的一家机电设备有限公司，现场要招聘开发、技术，以及IT等工程师岗位，专业包括机械制造及自动化、电子信息等，学历要求为本科。为什 么不要研究生呢？这家企业人力资源副经理张孝梁说，招了研究生怕留不住。“我们是制造型企业，觉得本科生就已经够用了。”\r\n　　这家企业人力资源经理吴晓亮则认为，问题的根本出在高校专业设置不合理。“很多研究生的研究方向都太前沿，而我们暂时还用不到。我们需要一些能适应产业快速更新的，但研究生们往往在学校里又没学到。”\r\n　　以往国企对学历要求卡得较紧，一般都要研究生。而现场，中交二航局的招聘要求也同样只要本科学历。\r\n　　人事部经理尹先生告诉现代快报记者，他们主要是从事地铁、高铁的施工单位，他同样觉得研究生不如本科生实用。“研究生进来心态和本科生不一样，我们标出阶梯式的年薪是希望能把从事技术的本科生往管理人才方面培养，希望能留住他们。”\r\n            ','2015-11-07 22:15:43',6),(6,'24元买了3杯白开水','游客：24元买了3杯白开水\r\n　　“本来打算在长沙玩两三天。因为这事，我们第二天早上8点就走了。”11月5日，提起几天前24元买3杯白开水的遭遇，53岁的天津人段先生还很是气愤。\r\n　　11月2日，段先生带着妻子驾车来长沙游玩。当日下午，段先生夫妇和在长沙高校上学的亲戚家孩子一起，一行三人来到位于长沙岳麓区爱民路的泊麓汇餐厅吃饭。\r\n　　“想着难得来一次，就在网上找了这家高档餐厅。”三人都对餐厅环境很满意。后来，段先生感觉口渴，但餐厅一直未为其提供白开水。一问服务员，才知道这家餐厅的白开水不是免费提供的，一杯要8元。\r\n　　“没得选，其他茶一壶200多元，吃饭总不能不喝水吧?”段先生只得硬着头皮点了三杯白开水。结账后返回下榻的酒店，妻子才知道3杯白开水花了24元，夫妇俩心里都很不是滋味。','2015-11-07 22:16:52',7),(7,'“车震”,就趁机持刀威胁','男子杜某和陶某吃喝玩乐,挥霍光钱财后,模仿电视里的手法,购买作案工具实施抢劫。他们蹲守在高区海边寻找目标,恰遇一对情侣正在“车震”,就趁机持刀威胁并捆绑住对方,最终抢劫了11500元。日前,因涉嫌抢劫罪,杜某和陶某被批准逮捕。\r\n　　男子小林和女子小申是一对年轻情侣。8月20日凌晨1时许,两人驾驶一辆轿车来到了高区国际海水浴场,将车辆停放在小石岛一处偏僻路边,随后两人在后排座上卿卿我我。正当这一对小情侣忘情时,殊不知一场“劫难”正悄然而至。\r\n　　此时,两名头戴鸭舌帽和口罩的男子慢慢逼近轿车,分左右两侧包围后车门,他们发现车窗半敞开,车内的两名情侣正在“车震”。在静观了二三十分钟后,两名“口罩男”决定行动,通过车窗伸进去了两把匕首,分别抵在了小林和小申的脖子处,将两人控制住,并使用提前预备好的细铁链和布条,将这一对情侣捆绑在了后车座。\r\n　　随后,两名“口罩男”在车内翻找之前的物品,一阵翻找后,他们在这对情侣身上找到了一张银行卡。之后,两名“口罩男”驾车带着这对情侣到附近的银行,逼迫对方说出银行卡密码,将银行卡内的余额钱取走,共计11500元。作案得手后,两名“口罩男”携带赃物弃车而逃。之后,小情侣自救解开了铁链和布条,打电话请朋友营救,并报了警。','2015-11-07 22:17:32',9);

/*Table structure for table `_category` */

DROP TABLE IF EXISTS `_category`;

CREATE TABLE `_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(10) DEFAULT NULL COMMENT '类别名',
  `description` varchar(50) DEFAULT NULL COMMENT '描述',
  `part_id` int(11) DEFAULT NULL COMMENT '板块id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `_category` */

insert  into `_category`(`id`,`name`,`description`,`part_id`) values (3,'儿子',NULL,2),(4,'老婆',NULL,2),(5,'随拍',NULL,2),(6,'随笔',NULL,3),(7,'日记',NULL,3),(8,'闲言碎语',NULL,3),(9,'会心一笑',NULL,3);

/*Table structure for table `_part` */

DROP TABLE IF EXISTS `_part`;

CREATE TABLE `_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `_part` */

insert  into `_part`(`id`,`name`,`description`) values (1,'首页',NULL),(2,'瞬间永恒',NULL),(3,'慢生活',NULL),(4,'学无止境',NULL);

/*Table structure for table `_user` */

DROP TABLE IF EXISTS `_user`;

CREATE TABLE `_user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `_user` */

insert  into `_user`(`id`,`username`,`password`) values (1,'管理员','1234'),(2,'申哥','1234');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
