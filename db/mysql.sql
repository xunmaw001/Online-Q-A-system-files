DROP DATABASE IF EXISTS springboot65f25;

CREATE DATABASE springboot65f25 default character set utf8mb4 collate utf8mb4_general_ci;

USE springboot65f25;

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xuehao` varchar(200) NOT NULL UNIQUE   COMMENT '学号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`yuanxi` varchar(200)    COMMENT '院系',
	`banji` varchar(200)    COMMENT '班级',
	`shouji` varchar(200)    COMMENT '手机',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生';

INSERT INTO xuesheng(xuehao,mima,xingming,xingbie,touxiang,yuanxi,banji,shouji) VALUES('学生1','123456','姓名1','男','http://localhost:8080/springboot65f25/upload/xuesheng_touxiang1.jpg','院系1','班级1','13823888881');
INSERT INTO xuesheng(xuehao,mima,xingming,xingbie,touxiang,yuanxi,banji,shouji) VALUES('学生2','123456','姓名2','男','http://localhost:8080/springboot65f25/upload/xuesheng_touxiang2.jpg','院系2','班级2','13823888882');
INSERT INTO xuesheng(xuehao,mima,xingming,xingbie,touxiang,yuanxi,banji,shouji) VALUES('学生3','123456','姓名3','男','http://localhost:8080/springboot65f25/upload/xuesheng_touxiang3.jpg','院系3','班级3','13823888883');

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`gonghao` varchar(200) NOT NULL UNIQUE   COMMENT '工号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`xueyuan` varchar(200)    COMMENT '学院',
	`banji` varchar(200)    COMMENT '班级',
	`dianhua` varchar(200)    COMMENT '电话',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师';

INSERT INTO jiaoshi(gonghao,mima,xingming,xingbie,touxiang,xueyuan,banji,dianhua) VALUES('教师1','123456','姓名1','男','http://localhost:8080/springboot65f25/upload/jiaoshi_touxiang1.jpg','学院1','班级1','13823888881');
INSERT INTO jiaoshi(gonghao,mima,xingming,xingbie,touxiang,xueyuan,banji,dianhua) VALUES('教师2','123456','姓名2','男','http://localhost:8080/springboot65f25/upload/jiaoshi_touxiang2.jpg','学院2','班级2','13823888882');
INSERT INTO jiaoshi(gonghao,mima,xingming,xingbie,touxiang,xueyuan,banji,dianhua) VALUES('教师3','123456','姓名3','男','http://localhost:8080/springboot65f25/upload/jiaoshi_touxiang3.jpg','学院3','班级3','13823888883');

DROP TABLE IF EXISTS `wentifabu`;

CREATE TABLE `wentifabu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200) NOT NULL   COMMENT '标题',
	`timu` varchar(200)    COMMENT '题目',
	`daan` longtext    COMMENT '答案',
	`faburiqi` date    COMMENT '发布日期',
	`xuehao` varchar(200)    COMMENT '学号',
	`xingming` varchar(200)    COMMENT '姓名',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问题发布';

INSERT INTO wentifabu(biaoti,timu,daan,faburiqi,xuehao,xingming,sfsh,shhf) VALUES('标题1','题目1','答案1',CURRENT_TIMESTAMP,'学号1','姓名1','否','');
INSERT INTO wentifabu(biaoti,timu,daan,faburiqi,xuehao,xingming,sfsh,shhf) VALUES('标题2','题目2','答案2',CURRENT_TIMESTAMP,'学号2','姓名2','否','');
INSERT INTO wentifabu(biaoti,timu,daan,faburiqi,xuehao,xingming,sfsh,shhf) VALUES('标题3','题目3','答案3',CURRENT_TIMESTAMP,'学号3','姓名3','否','');

DROP TABLE IF EXISTS `yinanjieda`;

CREATE TABLE `yinanjieda` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`mingcheng` varchar(200) NOT NULL   COMMENT '名称',
	`timu` varchar(200) NOT NULL   COMMENT '题目',
	`daan` longtext    COMMENT '答案',
	`faburiqi` varchar(200)    COMMENT '发布日期',
	`gonghao` varchar(200)    COMMENT '工号',
	`xingming` varchar(200)    COMMENT '姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疑难解答';

INSERT INTO yinanjieda(mingcheng,timu,daan,faburiqi,gonghao,xingming) VALUES('名称1','题目1','答案1','发布日期1','工号1','姓名1');
INSERT INTO yinanjieda(mingcheng,timu,daan,faburiqi,gonghao,xingming) VALUES('名称2','题目2','答案2','发布日期2','工号2','姓名2');
INSERT INTO yinanjieda(mingcheng,timu,daan,faburiqi,gonghao,xingming) VALUES('名称3','题目3','答案3','发布日期3','工号3','姓名3');

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`name` varchar(200) NOT NULL   COMMENT '试卷名称',
	`time` int NOT NULL   COMMENT '考试时长(分钟)',
	`status` int NOT NULL  default '0' COMMENT '试卷状态',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';


DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`paperid` bigint NOT NULL   COMMENT '所属试卷id（外键）',
	`papername` varchar(200) NOT NULL   COMMENT '试卷名称',
	`questionname` varchar(200) NOT NULL   COMMENT '试题名称',
	`options` longtext    COMMENT '选项，json字符串',
	`score` bigint   default '0' COMMENT '分值',
	`answer` varchar(200)    COMMENT '正确答案',
	`analysis` longtext    COMMENT '答案解析',
	`type` bigint   default '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
	`sequence` bigint   default '100' COMMENT '试题排序，值越大排越前面',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';


DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`username` varchar(200)    COMMENT '用户名',
	`paperid` bigint NOT NULL   COMMENT '试卷id（外键）',
	`papername` varchar(200) NOT NULL   COMMENT '试卷名称',
	`questionid` bigint NOT NULL   COMMENT '试题id（外键）',
	`questionname` varchar(200) NOT NULL   COMMENT '试题名称',
	`options` longtext    COMMENT '选项，json字符串',
	`score` bigint   default '0' COMMENT '分值',
	`answer` varchar(200)    COMMENT '正确答案',
	`analysis` longtext    COMMENT '答案解析',
	`myscore` bigint NOT NULL  default '0' COMMENT '试题得分',
	`myanswer` varchar(200)    COMMENT '考生答案',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';



DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/springboot65f25/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/springboot65f25/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/springboot65f25/upload/picture3.jpg');
insert into config(id,name,value) values(4,'picture4','http://localhost:8080/springboot65f25/upload/picture4.jpg');
insert into config(id,name,value) values(5,'picture5','http://localhost:8080/springboot65f25/upload/picture5.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

