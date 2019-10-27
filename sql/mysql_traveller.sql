create table traveller(
	id int(11) not null PRIMARY KEY auto_increment,
	`name` varchar(20) default null COMMENT '姓名',
	sex varchar(20) default NULL COMMENT '性别',
	phoneNum varchar(20) default NULL COMMENT '电话号码',
	credentialsType int(1) default 0 COMMENT '证件类型 0身份证 1护照 2军官证',
	credentialsNum varchar(50) default NULL COMMENT '证件号码',
	travellerType	int(1) default 0 COMMENT '旅客类型(人群) 0 成人 1 儿童'

)ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert into TRAVELLER (name, sex, phonenum, credentialstype, credentialsnum, travellertype)
values ('张龙', '男', '13333333333', 0,'123456789009876543', 0),
('张小龙', '男', '15555555555', 0,'987654321123456789', 1);

--订单与旅客的中间表

create table order_traveller(
	orderId int(11),
	travellerId int(11),
	PRIMARY key(orderId,travellerId),
	CONSTRAINT order_fk FOREIGN KEY (orderId) REFERENCES orders(id),
	CONSTRAINT traveller_fk FOREIGN KEY (travellerId) REFERENCES traveller(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert into ORDER_TRAVELLER (orderid, travellerid)
values (1, 1),
 (3, 1),
 (9, 2),
 (7, 2),
 (2, 1),
 (6, 2),
 (4, 1),
 (8, 2),
 (5, 2);
