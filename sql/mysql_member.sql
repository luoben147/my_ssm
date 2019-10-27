CREATE TABLE `member` (
	id int(11) not null AUTO_INCREMENT,
	name varchar(20)  default NULL COMMENT '姓名',
	nickname varchar(20) default NULL COMMENT '昵称',
	phoneNum varchar(20) default NULL COMMENT '电话号码',
	email varchar(50)	default NULL COMMENT '邮箱',
	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `member` (name, nickname, phoneNum, email)
values('张三', '小三', '18888888888', 'zs@163.com');