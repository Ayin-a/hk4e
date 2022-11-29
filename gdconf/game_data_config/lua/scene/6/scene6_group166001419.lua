-- 基础信息
local base_info = {
	group_id = 166001419
}

-- Trigger变量
local defs = {
	gadget_node01 = 419002,
	gadget_node02 = 419003,
	gadget_node03 = 419004,
	gadget_node04 = 419005,
	gadget_node05 = 419010,
	gadget_node06 = 419011,
	gadget_node07 = 0,
	gadget_node08 = 0,
	gadget_hint01 = 419006,
	gadget_hint02 = 419007,
	gadget_hint03 = 419008,
	gadget_hint04 = 419009,
	gadget_hint05 = 419012,
	gadget_hint06 = 419013,
	gadget_hint07 = 0,
	gadget_hint08 = 0,
	gadget_startpoint = 419001
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
	{ config_id = 419001, gadget_id = 70290318, pos = { x = 868.369, y = 743.402, z = 458.200 }, rot = { x = 25.488, y = 236.195, z = 338.814 }, level = 1, area_id = 300 },
	{ config_id = 419002, gadget_id = 70290319, pos = { x = 863.409, y = 741.789, z = 454.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 419003, gadget_id = 70290319, pos = { x = 859.331, y = 740.417, z = 444.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 419004, gadget_id = 70290319, pos = { x = 845.679, y = 733.181, z = 450.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 419005, gadget_id = 70290319, pos = { x = 855.266, y = 739.417, z = 462.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 419006, gadget_id = 70290320, pos = { x = 867.574, y = 743.226, z = 457.017 }, rot = { x = 14.019, y = 239.465, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 419007, gadget_id = 70290320, pos = { x = 862.665, y = 741.550, z = 452.675 }, rot = { x = 0.000, y = 202.003, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 419008, gadget_id = 70290320, pos = { x = 855.628, y = 738.905, z = 446.010 }, rot = { x = 25.110, y = 293.555, z = 355.591 }, level = 1, area_id = 300 },
	{ config_id = 419009, gadget_id = 70290320, pos = { x = 848.153, y = 735.102, z = 453.864 }, rot = { x = 343.733, y = 38.383, z = 0.001 }, level = 1, area_id = 300 },
	{ config_id = 419010, gadget_id = 70290319, pos = { x = 860.060, y = 741.728, z = 467.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 419011, gadget_id = 70290319, pos = { x = 863.737, y = 742.787, z = 468.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 419012, gadget_id = 70290320, pos = { x = 856.505, y = 739.882, z = 464.330 }, rot = { x = 344.886, y = 45.659, z = 354.146 }, level = 1, area_id = 300 },
	{ config_id = 419013, gadget_id = 70290320, pos = { x = 860.735, y = 741.563, z = 467.980 }, rot = { x = 340.717, y = 87.103, z = 355.059 }, level = 1, area_id = 300 },
	{ config_id = 419014, gadget_id = 70211111, pos = { x = 864.837, y = 741.666, z = 459.544 }, rot = { x = 1.738, y = 346.248, z = 22.290 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
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
		gadgets = { 419001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 419001, 419002, 419003, 419004, 419005, 419010, 419011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 419014 },
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