
--用户表
create table users(
	id int(11) not null PRIMARY key auto_increment,
	email varchar(50) not null,
	username varchar(50) DEFAULT null ,
	password varchar(50) DEFAULT null,
	phoneNum varchar(20) DEFAULT null,
	status int(1)	DEFAULT 1 COMMENT '状态0 未开启 1 开启'

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--角色表
create TABLE role(
id int(11) not null PRIMARY KEY auto_increment,
roleName VARCHAR(50) DEFAULT null COMMENT '角色名',
roleDesc VARCHAR(50) DEFAULT null COMMENT '角色描述'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--用户与角色之间是多对多关系
create table users_role(
	userId int(11),
	roleId int(11),
	PRIMARY KEY(userId,roleId),
	CONSTRAINT user_fk FOREIGN key(userId) REFERENCES users(id),
	CONSTRAINT role_fk FOREIGN key(roleId) REFERENCES role(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--权限资源表
create TABLE permission(
id int(11) not null PRIMARY KEY auto_increment,
permissionName VARCHAR(50) DEFAULT null COMMENT '权限名',
url VARCHAR(50) DEFAULT null COMMENT '资源路径'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--权限资源与角色是多对多关系
create table role_permission(
	permissionId int(11),
	roleId int(11),
	PRIMARY KEY(permissionId,roleId),
	CONSTRAINT permission_fk FOREIGN key(permissionId) REFERENCES permission(id),
	CONSTRAINT permission_role_fk FOREIGN key(roleId) REFERENCES role(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
