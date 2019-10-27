
CREATE TABLE `product` (
  `id` int(11) NOT NULL auto_increment,
  `productNum` varchar(50) NOT NULL COMMENT '编号',
  `productName` varchar(50) default NULL COMMENT '名称',
  `cityName` varchar(50) default NULL COMMENT '出发城市',
  `DepartureTime` TIMESTAMP default NULL COMMENT '出发时间',
	`productPrice` double default NULL COMMENT '产品价格',
  `productDesc` varchar(500) default NULL COMMENT '产品描述',
	 `productStatus` int default NULL COMMENT '状态 0 关闭 1 开启',
  PRIMARY KEY  (`id`,`productNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert into PRODUCT (productnum, productname, cityname, departuretime, productprice,productdesc, productstatus)
values ('itcast-002', '北京三日游', '北京', '2018-10-10 10:10:00.000000', 1200, '不错的旅行', 1),
        ('itcast-003', '上海五日游', '上海','2018-04-25 14:30:00.000000',  1800, '魔都我来了', 0),
        ('itcast-001', '北京三日游', '北京', '2018-10-10 10:10:00.000000', 1200, '不错的旅行', 1);
