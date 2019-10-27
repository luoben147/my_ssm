CREATE TABLE `orders`(
	id int(11) PRIMARY KEY not null auto_increment,
	orderNum varchar(50) not null COMMENT '订单编号',
	orderTime TIMESTAMP  default NULL COMMENT '下单时间',
	peopleCount int(3) default NULL COMMENT '出行人数',
	orderDesc varchar(500)  default NULL COMMENT'订单描述',
	payType int(1) default NULL COMMENT '支付方式(0 支付宝 1 微信 2其它)',
	orderStatus int(1) default NULL COMMENT '订单状态(0 未支付 1 已支付)',
	productId int(11) not null COMMENT '产品id 外键',
	memberId int(11) not null COMMENT '会员(联系人）id 外键',
	CONSTRAINT product_fk FOREIGN KEY (productId) REFERENCES product(id),
	CONSTRAINT member_fk FOREIGN KEY (memberId) REFERENCES `member`(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into ORDERS (ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus,productid, memberid)
values ('12345','2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 1,1),
			('54321', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 1,1),
			('67890', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 2,1),
			('98765', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 2,1),
			('11111', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 2,1),
			('22222', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1,2,1),
			('33333', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 3,1),
			('44444', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 3,1),
			('55555', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 3,1)