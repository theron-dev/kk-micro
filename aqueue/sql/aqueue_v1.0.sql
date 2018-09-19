#异步队列
CREATE TABLE IF NOT EXISTS `aqueue_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`name` VARCHAR(64) DEFAULT ''	#[字段] 队列名
	,`status` INT DEFAULT 0	#[字段] 状态
	,`atime` BIGINT DEFAULT 0	#[字段] 最后处理时间
	,`time` BIGINT DEFAULT 0	#[字段] 执行时间
	,`delay` BIGINT DEFAULT 0	#[字段] 重试延时时间
	,`maxCount` INT DEFAULT 0	#[字段] 最大重试次数 0为不断重试, 直到成功
	,`count` INT DEFAULT 0	#[字段] 已执行次数
	,`contentType` VARCHAR(32) DEFAULT ''	#[字段] 执行内容类型 sh 或 kk-logic
	,`content` TEXT	#[字段] 执行内容
	,`options` TEXT	#[字段] 其他数据 sh 会生成 ENV数据 , kk-logic 会生成 params 数据
	,`errmsg` VARCHAR(4096) DEFAULT ''	#[字段] 错误信息
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `atime` (`atime` asc)	#[索引] 最后处理时间
 ) AUTO_INCREMENT = 1;
