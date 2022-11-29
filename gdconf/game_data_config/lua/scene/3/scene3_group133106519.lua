-- 基础信息
local base_info = {
	group_id = 133106519
}

-- Trigger变量
local defs = {
	gadget_node01 = 519002,
	gadget_node02 = 519003,
	gadget_node03 = 519004,
	gadget_node04 = 519005,
	gadget_node05 = 519010,
	gadget_node06 = 519011,
	gadget_node07 = 0,
	gadget_node08 = 0,
	gadget_hint01 = 519006,
	gadget_hint02 = 519007,
	gadget_hint03 = 519008,
	gadget_hint04 = 519009,
	gadget_hint05 = 519012,
	gadget_hint06 = 519013,
	gadget_hint07 = 0,
	gadget_hint08 = 0,
	gadget_startpoint = 519001
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
	{ config_id = 519001, gadget_id = 70290318, pos = { x = -505.184, y = 185.358, z = 1657.238 }, rot = { x = 359.895, y = 359.992, z = 9.072 }, level = 15, area_id = 19 },
	{ config_id = 519002, gadget_id = 70290319, pos = { x = -502.914, y = 185.705, z = 1664.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 519003, gadget_id = 70290319, pos = { x = -510.491, y = 181.983, z = 1669.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 519004, gadget_id = 70290319, pos = { x = -517.864, y = 180.251, z = 1674.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 519005, gadget_id = 70290319, pos = { x = -531.162, y = 180.924, z = 1683.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 519006, gadget_id = 70290320, pos = { x = -504.892, y = 185.833, z = 1659.508 }, rot = { x = 357.033, y = 22.490, z = 7.468 }, level = 15, area_id = 19 },
	{ config_id = 519007, gadget_id = 70290320, pos = { x = -506.291, y = 185.300, z = 1665.632 }, rot = { x = 7.077, y = 290.699, z = 1.628 }, level = 15, area_id = 19 },
	{ config_id = 519008, gadget_id = 70290320, pos = { x = -513.183, y = 182.240, z = 1670.619 }, rot = { x = 6.316, y = 306.784, z = 3.754 }, level = 15, area_id = 19 },
	{ config_id = 519009, gadget_id = 70290320, pos = { x = -522.415, y = 180.065, z = 1678.072 }, rot = { x = 350.464, y = 308.624, z = 358.491 }, level = 15, area_id = 19 },
	{ config_id = 519010, gadget_id = 70290319, pos = { x = -540.543, y = 183.030, z = 1693.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 519011, gadget_id = 70290319, pos = { x = -537.541, y = 184.189, z = 1701.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 519012, gadget_id = 70290320, pos = { x = -534.263, y = 182.436, z = 1686.475 }, rot = { x = 358.411, y = 321.110, z = 359.230 }, level = 15, area_id = 19 },
	{ config_id = 519013, gadget_id = 70290320, pos = { x = -539.036, y = 184.813, z = 1695.642 }, rot = { x = 355.261, y = 10.615, z = 359.696 }, level = 15, area_id = 19 },
	{ config_id = 519014, gadget_id = 70290200, pos = { x = -524.277, y = 171.736, z = 1677.643 }, rot = { x = 350.248, y = 359.924, z = 0.895 }, level = 36, area_id = 19 },
	{ config_id = 519015, gadget_id = 70211001, pos = { x = -534.572, y = 184.366, z = 1709.038 }, rot = { x = 0.000, y = 193.040, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
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
		gadgets = { 519001, 519014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 519001, 519002, 519003, 519004, 519005, 519010, 519011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 519015 },
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