-- 基础信息
local base_info = {
	group_id = 166001399
}

-- Trigger变量
local defs = {
	gadget_node01 = 399002,
	gadget_node02 = 399003,
	gadget_node03 = 399004,
	gadget_node04 = 399005,
	gadget_node05 = 399010,
	gadget_node06 = 399011,
	gadget_node07 = 0,
	gadget_node08 = 0,
	gadget_hint01 = 399006,
	gadget_hint02 = 399007,
	gadget_hint03 = 399008,
	gadget_hint04 = 399009,
	gadget_hint05 = 399012,
	gadget_hint06 = 0,
	gadget_hint07 = 0,
	gadget_hint08 = 0,
	gadget_startpoint = 399001
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
	{ config_id = 399001, gadget_id = 70290318, pos = { x = 756.910, y = 759.459, z = 263.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 399002, gadget_id = 70290319, pos = { x = 764.769, y = 760.715, z = 259.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 399003, gadget_id = 70290319, pos = { x = 773.805, y = 755.659, z = 260.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 399004, gadget_id = 70290319, pos = { x = 783.336, y = 762.106, z = 264.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 399005, gadget_id = 70290319, pos = { x = 774.971, y = 766.059, z = 259.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 399006, gadget_id = 70290320, pos = { x = 764.749, y = 760.719, z = 259.385 }, rot = { x = 14.263, y = 83.414, z = 352.013 }, level = 1, area_id = 300 },
	{ config_id = 399007, gadget_id = 70290320, pos = { x = 773.854, y = 755.677, z = 260.003 }, rot = { x = 321.352, y = 63.680, z = 0.001 }, level = 1, area_id = 300 },
	{ config_id = 399008, gadget_id = 70290320, pos = { x = 783.315, y = 762.101, z = 264.705 }, rot = { x = 331.681, y = 231.584, z = -0.001 }, level = 1, area_id = 300 },
	{ config_id = 399009, gadget_id = 70290320, pos = { x = 774.825, y = 765.995, z = 259.138 }, rot = { x = 0.000, y = 213.314, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 399010, gadget_id = 70290319, pos = { x = 769.622, y = 760.716, z = 250.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 399011, gadget_id = 70290319, pos = { x = 766.677, y = 759.204, z = 253.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 399012, gadget_id = 70290320, pos = { x = 769.561, y = 760.714, z = 250.958 }, rot = { x = 0.000, y = 312.508, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 399013, gadget_id = 70211111, pos = { x = 763.332, y = 759.236, z = 254.794 }, rot = { x = 0.000, y = 337.683, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
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
		gadgets = { 399001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 399001, 399002, 399003, 399004, 399005, 399010, 399011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 399013 },
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