create database bbq;

drop table user;
select * from user;
create table user(
	uid int not null  auto_increment key  primary key comment'用户ID',
    username varchar(100) not null comment'用户名' unique,
    password varchar(100) not null comment'密码' ,
    phone varchar(100) comment'手机号',
    register_time datetime default current_timestamp comment'注册时间',
    is_admin int not null default 1 comment'是否是管理用户 1-用户  2-管理员'
);

drop table note;
select * from note;
create table note(
	id int not null auto_increment key comment'帖子id' primary key,
	uid int default null comment'用户id' ,
    username varchar(100) default null comment'用户名' ,
    title varchar(100) default null comment'标题',
    message varchar(5000) default null comment'内容' ,
	insert_time datetime default current_timestamp comment'发布时间' ,
    likes int comment'点赞数' not null default'0'
);

drop table affiche;
select * from affiche;
create table affiche(
	id int not null auto_increment key comment'公告id' primary key,
    title varchar(100) default null comment'标题',
    message varchar(5000) default null comment'内容',
    insert_time datetime default current_timestamp not null comment'发布时间'
);

drop table comment;
select * from comment;
create table comment(
uid int comment'用户id',foreign key (uid) references user(uid),
username varchar(100) comment'用户名',foreign key(username) references user(username),
id int not null auto_increment key  primary key comment'评论id',
nid int not null comment'帖子id',
message varchar(200) comment'评论内容',
insert_time datetime comment'评论时间'
);

insert into user(username,password,is_admin) values("admin","login999",2);
insert into user(username,phone,password) values("Lc","13691842420","lc0000");
insert into user(username,phone,password) values("Xy","13012342234","xy0000");
insert into user(username,phone,password) values("Ly","13032344234","ly0000");
insert into affiche(title,message) values("发帖须知","与世界分享你的知识、经验和见解,不含政治、广告、诽谤、歧视等内容");
insert into affiche(title,message) values("表白墙实现技术","JavaEE、Spring、SpringMvc、Mybatis(SSM框架)、Mysql数据库等");
insert into affiche(title,message) values("表白墙功能实现","登录、注册、查询所有信息并显示、按点赞数显示热门贴、发帖、用户重命名、修改密码、管理员删除用户等");
insert into affiche(title,message) values("商业合作","工作邮箱:lee_chung2020@hotmail.com");
insert into affiche(title,message) values("联系我们","举报邮箱:1207077095@qq.com");
insert into note(uid,username,title,message) values(2,"Lc","失物招领","教六605实验室周五捡到一个带空洞骑士钥匙扣和U盘的钥匙串");
insert into comment(uid,username,nid,message) values (2,"Lc",1,"联系方式qq：1207077095");
insert into comment(uid,username,nid,message) values (2,"Lc",2,"帖子2的评论");
insert into comment(uid,username,nid,message) values (2,"Lc",3,"帖子3的评论");
insert into comment(uid,username,nid,message) values (2,"Lc",4,"帖子4的评论");


select c.username,c.message,c.insert_time from note n,comment c where c.nid=n.id