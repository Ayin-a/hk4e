-- 基础信息
local base_info = {
	group_id = 111102019
}

-- Trigger变量
local defs = {
	gadget_node01 = 19002,
	gadget_node02 = 19003,
	gadget_node03 = 19004,
	gadget_node04 = 19005,
	gadget_node05 = 19010,
	gadget_node06 = 19011,
	gadget_node07 = 0,
	gadget_node08 = 0,
	gadget_hint01 = 19006,
	gadget_hint02 = 19007,
	gadget_hint03 = 19008,
	gadget_hint04 = 19009,
	gadget_hint05 = 19012,
	gadget_hint06 = 19013,
	gadget_hint07 = 0,
	gadget_hint08 = 0,
	gadget_startpoint = 19001
}

-- DEFS_MISCS
local nodeTable={
	[1]=defs.gadget_node01,
	[2]=defs.gadget_node02,
	[3]=defs.gadget_node03,
	[4]=defs.gadget_node04,
  [5]=defs.gadget_node05,
  [6]=defs.gadget_node06,
  [7]=defs.gadget_node07,
  [8]=defs.gadget_node08,
}

local guideEffTable={
	[1]=defs.gadget_hint01,
	[2]=defs.gadget_hint02,
	[3]=defs.gadget_hint03,
	[4]=defs.gadget_hint04,
  [5]=defs.gadget_hint05,
  [6]=defs.gadget_hint06,
  [7]=defs.gadget_hint07,
  [8]=defs.gadget_hint08,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19001, gadget_id = 70290318, pos = { x = 1498.889, y = 270.924, z = -1492.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19002, gadget_id = 70290319, pos = { x = 1498.876, y = 270.958, z = -1498.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19003, gadget_id = 70290319, pos = { x = 1507.320, y = 270.912, z = -1503.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19004, gadget_id = 70290319, pos = { x = 1516.538, y = 270.955, z = -1499.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19005, gadget_id = 70290319, pos = { x = 1513.637, y = 270.921, z = -1490.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19006, gadget_id = 70290320, pos = { x = 1497.327, y = 270.954, z = -1496.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19007, gadget_id = 70290320, pos = { x = 1505.813, y = 270.899, z = -1498.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19008, gadget_id = 70290320, pos = { x = 1512.361, y = 270.943, z = -1492.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19009, gadget_id = 70290320, pos = { x = 1508.521, y = 270.992, z = -1486.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19010, gadget_id = 70290319, pos = { x = 1508.809, y = 270.948, z = -1483.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19011, gadget_id = 70290319, pos = { x = 1509.888, y = 271.230, z = -1480.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19012, gadget_id = 70290320, pos = { x = 1501.491, y = 270.971, z = -1486.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19013, gadget_id = 70290320, pos = { x = 1497.826, y = 270.897, z = -1486.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19014, gadget_id = 70220013, pos = { x = 1498.665, y = 270.944, z = -1495.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 19001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 19001, 19002, 19003, 19004, 19005, 19010, 19011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 19014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_6/BW_LightRoadTrack"