#用户表
CREATE TABLE IF NOT EXISTS `user_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`name` VARCHAR(255) DEFAULT ''	#[字段] 用户名
	,`password` VARCHAR(64) DEFAULT ''	#[字段] 密码
	,`atime` BIGINT DEFAULT 0	#[字段] 最后登录时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `name` (`name` asc)	#[索引] 用户名
 ) AUTO_INCREMENT = 1;
#选项
CREATE TABLE IF NOT EXISTS `user_user_options` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`name` VARCHAR(64) DEFAULT ''	#[字段] 选项名
	,`options` TEXT	#[字段] 选项
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `name` (`name` asc)	#[索引] 选项名
 ) AUTO_INCREMENT = 1;
