--授权表
CREATE TABLE IF NOT EXISTS `auth_auth` (
	id BIGINT NOT NULL AUTO_INCREMENT	--ID
	,`name` VARCHAR(64) DEFAULT ''	--[字段] 名称
	,`code` VARCHAR(32) DEFAULT ''	--[字段] 授权码
	,`uid` BIGINT DEFAULT 0	--[字段] 用户ID
	,`openid` VARCHAR(128) DEFAULT ''	--[字段] 第三方用户ID
	,`phone` VARCHAR(64) DEFAULT ''	--[字段] 手机号
	,`deviceId` VARCHAR(64) DEFAULT ''	--[字段] 设备ID
	,`expires` BIGINT DEFAULT 0	--[字段] 超时秒数
	,`options` TEXT	--[字段] 其他属性
	,`atime` BIGINT DEFAULT 0	--[字段] 访问时间
	,`ctime` BIGINT DEFAULT 0	--[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `name` (`name` asc)	--[索引] 名称
	,INDEX `code` (`code` asc)	--[索引] 授权码
 ) AUTO_INCREMENT = 1;
