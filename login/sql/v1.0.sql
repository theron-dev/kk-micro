#登录验证
CREATE TABLE IF NOT EXISTS `login_auth` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`type` VARCHAR(64) DEFAULT ''	#[字段] 类型
	,`pattern` VARCHAR(255) DEFAULT ''	#[字段] 匹配正则
	,`enabled` DOUBLE DEFAULT 1	#[字段] 是否可用
	,`options` TEXT	#[字段] 配置选项
	, PRIMARY KEY(id) 
	,INDEX `type` (`type` asc)	#[索引] 类型
 ) AUTO_INCREMENT = 1;
