-- 基础信息
local base_info = {
	group_id = 166001485
}

-- Trigger变量
local defs = {
	gadget_node01 = 485002,
	gadget_node02 = 485003,
	gadget_node03 = 485004,
	gadget_node04 = 485005,
	gadget_node05 = 485010,
	gadget_node06 = 485011,
	gadget_node07 = 0,
	gadget_node08 = 0,
	gadget_hint01 = 485006,
	gadget_hint02 = 485007,
	gadget_hint03 = 485008,
	gadget_hint04 = 485009,
	gadget_hint05 = 485012,
	gadget_hint06 = 485013,
	gadget_hint07 = 0,
	gadget_hint08 = 0,
	gadget_startpoint = 485001
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
	{ config_id = 485001, gadget_id = 70290318, pos = { x = 233.513, y = 229.922, z = 352.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 485002, gadget_id = 70290319, pos = { x = 228.330, y = 231.873, z = 357.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 485003, gadget_id = 70290319, pos = { x = 224.217, y = 233.136, z = 355.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 485004, gadget_id = 70290319, pos = { x = 222.294, y = 231.711, z = 346.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 485005, gadget_id = 70290319, pos = { x = 224.495, y = 232.509, z = 343.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 485006, gadget_id = 70290320, pos = { x = 233.104, y = 230.900, z = 353.702 }, rot = { x = 0.000, y = 306.176, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 485007, gadget_id = 70290320, pos = { x = 228.326, y = 231.873, z = 357.665 }, rot = { x = 341.876, y = 240.268, z = -0.001 }, level = 1, area_id = 300 },
	{ config_id = 485008, gadget_id = 70290320, pos = { x = 224.064, y = 233.170, z = 355.261 }, rot = { x = 0.000, y = 193.054, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 485009, gadget_id = 70290320, pos = { x = 222.197, y = 231.736, z = 346.922 }, rot = { x = 0.000, y = 161.436, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 485010, gadget_id = 70290319, pos = { x = 217.631, y = 239.344, z = 341.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 485011, gadget_id = 70290319, pos = { x = 211.320, y = 237.601, z = 343.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 485012, gadget_id = 70290320, pos = { x = 224.392, y = 232.457, z = 343.543 }, rot = { x = 306.378, y = 254.411, z = 10.205 }, level = 1, area_id = 300 },
	{ config_id = 485013, gadget_id = 70290320, pos = { x = 216.795, y = 239.457, z = 341.657 }, rot = { x = 9.235, y = 290.779, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 485014, gadget_id = 70211111, pos = { x = 222.466, y = 230.170, z = 350.678 }, rot = { x = 0.000, y = 93.280, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
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
		gadgets = { 485001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 485001, 485002, 485003, 485004, 485005, 485010, 485011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 485014 },
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