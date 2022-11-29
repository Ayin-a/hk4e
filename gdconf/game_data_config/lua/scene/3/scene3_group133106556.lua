-- 基础信息
local base_info = {
	group_id = 133106556
}

-- Trigger变量
local defs = {
	gadget_node01 = 556002,
	gadget_node02 = 556003,
	gadget_node03 = 556004,
	gadget_node04 = 556005,
	gadget_node05 = 556010,
	gadget_node06 = 556011,
	gadget_node07 = 0,
	gadget_node08 = 0,
	gadget_hint01 = 556006,
	gadget_hint02 = 556007,
	gadget_hint03 = 556008,
	gadget_hint04 = 556009,
	gadget_hint05 = 556012,
	gadget_hint06 = 556013,
	gadget_hint07 = 0,
	gadget_hint08 = 0,
	gadget_startpoint = 556001
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 556001, gadget_id = 70290318, pos = { x = -607.240, y = 184.752, z = 1999.807 }, rot = { x = 347.566, y = 359.472, z = 6.712 }, level = 36, area_id = 19 },
		{ config_id = 556002, gadget_id = 70290319, pos = { x = -614.115, y = 185.297, z = 2001.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
		{ config_id = 556003, gadget_id = 70290319, pos = { x = -625.263, y = 186.780, z = 1998.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
		{ config_id = 556004, gadget_id = 70290319, pos = { x = -634.149, y = 186.186, z = 2002.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
		{ config_id = 556005, gadget_id = 70290319, pos = { x = -636.381, y = 176.503, z = 1987.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
		{ config_id = 556006, gadget_id = 70290320, pos = { x = -610.113, y = 185.250, z = 2000.033 }, rot = { x = 349.786, y = 285.158, z = 8.308 }, level = 36, area_id = 19 },
		{ config_id = 556007, gadget_id = 70290320, pos = { x = -617.989, y = 185.631, z = 2000.562 }, rot = { x = 346.357, y = 255.033, z = 7.435 }, level = 36, area_id = 19 },
		{ config_id = 556008, gadget_id = 70290320, pos = { x = -628.397, y = 186.308, z = 1999.498 }, rot = { x = 0.878, y = 294.010, z = 10.037 }, level = 36, area_id = 19 },
		{ config_id = 556009, gadget_id = 70290320, pos = { x = -634.997, y = 184.997, z = 1998.113 }, rot = { x = 29.804, y = 189.160, z = 357.636 }, level = 36, area_id = 19 },
		{ config_id = 556010, gadget_id = 70290319, pos = { x = -626.096, y = 177.462, z = 1983.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
		{ config_id = 556011, gadget_id = 70290319, pos = { x = -611.912, y = 179.536, z = 1987.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
		{ config_id = 556012, gadget_id = 70290320, pos = { x = -634.296, y = 177.463, z = 1986.178 }, rot = { x = 0.840, y = 112.352, z = 0.303 }, level = 36, area_id = 19 },
		{ config_id = 556013, gadget_id = 70290320, pos = { x = -623.875, y = 178.506, z = 1983.585 }, rot = { x = 353.318, y = 75.083, z = 359.498 }, level = 36, area_id = 19 },
		{ config_id = 556015, gadget_id = 70211001, pos = { x = -608.192, y = 183.525, z = 1994.667 }, rot = { x = 13.493, y = 197.406, z = 4.015 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
	}
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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