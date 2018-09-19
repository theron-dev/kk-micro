
#阶段
CREATE TABLE IF NOT EXISTS `stage_1_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_2_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_3_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_4_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_5_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_6_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_7_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_8_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_9_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_10_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_11_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_12_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_13_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_14_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_15_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_16_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_17_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_18_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_19_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_20_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_21_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_22_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_23_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_24_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_25_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_26_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_27_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_28_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_29_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_30_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_31_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_32_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_33_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_34_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_35_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_36_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_37_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_38_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_39_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_40_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_41_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_42_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_43_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_44_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_45_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_46_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_47_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_48_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_49_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_50_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_51_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_52_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_53_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_54_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_55_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_56_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_57_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_58_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_59_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_60_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_61_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_62_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_63_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_64_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_65_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_66_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_67_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_68_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_69_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_70_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_71_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_72_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_73_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_74_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_75_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_76_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_77_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_78_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_79_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_80_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_81_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_82_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_83_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_84_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_85_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_86_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_87_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_88_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_89_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_90_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_91_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_92_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_93_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_94_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_95_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_96_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_97_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_98_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_99_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_100_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_101_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_102_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_103_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_104_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_105_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_106_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_107_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_108_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_109_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_110_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_111_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_112_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_113_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_114_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_115_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_116_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_117_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_118_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_119_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_120_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_121_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_122_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_123_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_124_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_125_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_126_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_127_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#阶段
CREATE TABLE IF NOT EXISTS `stage_128_stage` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`endTime` BIGINT DEFAULT 0	#[字段] 结束时间
	,`type` INT DEFAULT 0	#[字段] 类型
	,`status` INT DEFAULT 0	#[字段] 状态
	,`etype` INT DEFAULT 0	#[字段] 实体类型
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `endTime` (`endTime` asc)	#[索引] 结束时间
	,INDEX `type` (`type` asc)	#[索引] 类型
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `etype` (`etype` asc)	#[索引] 实体类型
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
