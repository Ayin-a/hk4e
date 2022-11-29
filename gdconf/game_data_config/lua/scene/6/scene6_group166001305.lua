-- 基础信息
local base_info = {
	group_id = 166001305
}

-- Trigger变量
local defs = {
	gadget_node01 = 305002,
	gadget_node02 = 305003,
	gadget_node03 = 305004,
	gadget_node04 = 305005,
	gadget_node05 = 305010,
	gadget_node06 = 305011,
	gadget_node07 = 0,
	gadget_node08 = 0,
	gadget_hint01 = 305006,
	gadget_hint02 = 305007,
	gadget_hint03 = 305008,
	gadget_hint04 = 305009,
	gadget_hint05 = 305012,
	gadget_hint06 = 305013,
	gadget_hint07 = 0,
	gadget_hint08 = 0,
	gadget_startpoint = 305001
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
	{ config_id = 305001, gadget_id = 70290318, pos = { x = 916.600, y = 904.103, z = 549.790 }, rot = { x = 1.142, y = 335.951, z = 356.949 }, level = 1, area_id = 300 },
	{ config_id = 305002, gadget_id = 70290319, pos = { x = 906.992, y = 904.423, z = 554.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 305003, gadget_id = 70290319, pos = { x = 907.477, y = 905.284, z = 558.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 305004, gadget_id = 70290319, pos = { x = 910.992, y = 903.991, z = 568.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 305005, gadget_id = 70290319, pos = { x = 915.423, y = 903.186, z = 567.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 305006, gadget_id = 70290320, pos = { x = 914.114, y = 904.938, z = 551.911 }, rot = { x = 0.000, y = 292.589, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 305007, gadget_id = 70290320, pos = { x = 907.065, y = 904.434, z = 554.919 }, rot = { x = 0.000, y = 359.921, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 305008, gadget_id = 70290320, pos = { x = 907.577, y = 904.197, z = 559.952 }, rot = { x = 0.000, y = 25.476, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 305009, gadget_id = 70290320, pos = { x = 911.126, y = 903.960, z = 568.042 }, rot = { x = 0.000, y = 90.376, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 305010, gadget_id = 70290319, pos = { x = 921.825, y = 902.814, z = 566.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 305011, gadget_id = 70290319, pos = { x = 924.938, y = 903.961, z = 563.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 305012, gadget_id = 70290320, pos = { x = 917.657, y = 902.806, z = 567.961 }, rot = { x = 0.000, y = 111.619, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 305013, gadget_id = 70290320, pos = { x = 922.392, y = 902.542, z = 565.694 }, rot = { x = 333.964, y = 139.105, z = 2.530 }, level = 1, area_id = 300 },
	{ config_id = 305015, gadget_id = 70211111, pos = { x = 918.152, y = 903.540, z = 557.567 }, rot = { x = 2.118, y = 53.320, z = 357.739 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
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
		gadgets = { 305001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 305001, 305002, 305003, 305004, 305005, 305010, 305011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 305015 },
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