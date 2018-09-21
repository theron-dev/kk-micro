
#Element
CREATE TABLE IF NOT EXISTS `element_1_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_1_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_2_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_2_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_3_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_3_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_4_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_4_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_5_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_5_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_6_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_6_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_7_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_7_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_8_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_8_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_9_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_9_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_10_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_10_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_11_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_11_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_12_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_12_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_13_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_13_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_14_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_14_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_15_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_15_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_16_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_16_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_17_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_17_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_18_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_18_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_19_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_19_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_20_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_20_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_21_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_21_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_22_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_22_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_23_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_23_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_24_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_24_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_25_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_25_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_26_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_26_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_27_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_27_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_28_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_28_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_29_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_29_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_30_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_30_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_31_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_31_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_32_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_32_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_33_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_33_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_34_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_34_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_35_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_35_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_36_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_36_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_37_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_37_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_38_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_38_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_39_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_39_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_40_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_40_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_41_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_41_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_42_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_42_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_43_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_43_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_44_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_44_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_45_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_45_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_46_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_46_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_47_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_47_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_48_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_48_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_49_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_49_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_50_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_50_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_51_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_51_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_52_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_52_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_53_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_53_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_54_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_54_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_55_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_55_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_56_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_56_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_57_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_57_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_58_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_58_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_59_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_59_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_60_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_60_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_61_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_61_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_62_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_62_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_63_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_63_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_64_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_64_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_65_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_65_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_66_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_66_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_67_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_67_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_68_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_68_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_69_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_69_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_70_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_70_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_71_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_71_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_72_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_72_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_73_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_73_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_74_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_74_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_75_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_75_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_76_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_76_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_77_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_77_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_78_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_78_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_79_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_79_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_80_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_80_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_81_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_81_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_82_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_82_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_83_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_83_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_84_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_84_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_85_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_85_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_86_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_86_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_87_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_87_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_88_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_88_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_89_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_89_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_90_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_90_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_91_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_91_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_92_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_92_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_93_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_93_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_94_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_94_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_95_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_95_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_96_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_96_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_97_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_97_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_98_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_98_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_99_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_99_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_100_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_100_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_101_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_101_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_102_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_102_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_103_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_103_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_104_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_104_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_105_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_105_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_106_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_106_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_107_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_107_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_108_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_108_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_109_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_109_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_110_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_110_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_111_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_111_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_112_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_112_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_113_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_113_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_114_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_114_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_115_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_115_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_116_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_116_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_117_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_117_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_118_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_118_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_119_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_119_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_120_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_120_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_121_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_121_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_122_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_122_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_123_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_123_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_124_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_124_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_125_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_125_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_126_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_126_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_127_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_127_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#Element
CREATE TABLE IF NOT EXISTS `element_128_element` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`documentId` BIGINT DEFAULT 0	#[字段] 文档ID 用于数据分区
	,`pid` BIGINT DEFAULT 0	#[字段] 父级ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`status` INT DEFAULT 0	#[字段] 状态
	,`userCount` BIGINT DEFAULT 0	#[字段] 用户数量
	,`maxUserCount` BIGINT DEFAULT 0	#[字段] 最大用户数 0为不限制
	,`options` TEXT	#[字段] 其他数据
	,`depth` INT DEFAULT 0	#[字段] 深度
	,`rank` INT DEFAULT 0	#[字段] 排行
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `documentId` (`documentId` asc)	#[索引] 文档ID 用于数据分区
	,INDEX `pid` (`pid` asc)	#[索引] 父级ID
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `status` (`status` asc)	#[索引] 状态
	,INDEX `rank` (`rank` asc)	#[索引] 排行
 ) AUTO_INCREMENT = 1;
#用户
CREATE TABLE IF NOT EXISTS `element_128_user` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`elementId` BIGINT DEFAULT 0	#[字段] 节点ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `elementId` (`elementId` asc)	#[索引] 节点ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_1_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_1_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_2_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_2_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_3_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_3_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_4_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_4_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_5_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_5_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_6_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_6_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_7_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_7_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_8_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_8_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_9_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_9_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_10_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_10_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_11_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_11_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_12_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_12_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_13_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_13_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_14_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_14_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_15_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_15_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_16_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_16_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_17_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_17_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_18_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_18_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_19_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_19_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_20_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_20_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_21_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_21_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_22_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_22_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_23_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_23_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_24_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_24_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_25_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_25_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_26_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_26_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_27_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_27_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_28_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_28_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_29_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_29_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_30_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_30_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_31_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_31_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_32_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_32_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_33_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_33_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_34_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_34_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_35_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_35_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_36_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_36_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_37_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_37_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_38_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_38_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_39_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_39_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_40_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_40_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_41_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_41_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_42_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_42_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_43_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_43_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_44_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_44_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_45_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_45_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_46_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_46_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_47_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_47_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_48_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_48_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_49_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_49_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_50_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_50_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_51_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_51_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_52_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_52_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_53_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_53_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_54_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_54_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_55_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_55_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_56_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_56_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_57_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_57_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_58_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_58_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_59_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_59_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_60_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_60_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_61_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_61_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_62_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_62_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_63_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_63_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_64_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_64_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_65_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_65_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_66_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_66_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_67_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_67_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_68_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_68_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_69_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_69_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_70_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_70_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_71_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_71_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_72_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_72_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_73_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_73_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_74_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_74_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_75_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_75_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_76_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_76_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_77_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_77_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_78_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_78_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_79_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_79_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_80_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_80_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_81_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_81_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_82_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_82_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_83_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_83_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_84_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_84_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_85_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_85_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_86_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_86_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_87_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_87_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_88_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_88_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_89_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_89_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_90_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_90_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_91_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_91_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_92_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_92_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_93_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_93_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_94_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_94_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_95_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_95_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_96_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_96_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_97_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_97_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_98_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_98_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_99_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_99_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_100_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_100_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_101_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_101_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_102_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_102_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_103_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_103_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_104_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_104_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_105_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_105_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_106_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_106_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_107_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_107_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_108_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_108_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_109_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_109_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_110_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_110_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_111_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_111_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_112_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_112_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_113_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_113_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_114_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_114_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_115_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_115_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_116_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_116_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_117_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_117_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_118_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_118_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_119_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_119_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_120_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_120_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_121_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_121_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_122_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_122_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_123_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_123_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_124_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_124_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_125_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_125_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_126_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_126_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_127_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_127_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
#TAG
CREATE TABLE IF NOT EXISTS `element_128_tag` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`eid` BIGINT DEFAULT 0	#[字段] 实体ID
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
	,INDEX `eid` (`eid` asc)	#[索引] 实体ID
 ) AUTO_INCREMENT = 1;
#计数器
CREATE TABLE IF NOT EXISTS `element_128_tag_counter` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`tag` VARCHAR(128) DEFAULT ''	#[字段] 标签
	,`count` INT DEFAULT 0	#[字段] 实体数量
	, PRIMARY KEY(id) 
	,INDEX `tag` (`tag` asc)	#[索引] 标签
 ) AUTO_INCREMENT = 1;
