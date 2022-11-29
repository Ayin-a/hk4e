-- 基础信息
local base_info = {
	group_id = 177005075
}

-- DEFS_MISCS
local LowBossID = {75001,75002}
local MidBossID = {75019,75020}
local HighBossID = {75021,75022}

local wall_1 = 75003
local wall_2 = 75004
local wall_3 = 75005

local LowChallengeID = 2005006
local MidChallengeID = 2005007
local HighChallengeID = 2005008

local SwitchGadgetID = 75031
local MovePlatID = 75018

local vision_region = 75035

local vision_type_id = 70050001

local BlackBall = {75023,75024,75025,75026,75027,75028,75029,75030}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 75001, monster_id = 26050802, pos = { x = 290.348, y = 225.000, z = 248.985 }, rot = { x = 0.000, y = 201.443, z = 0.000 }, level = 50, drop_id = 1000100, affix = { 5148, 5146 }, area_id = 210, sight_group_index = 1 },
	{ config_id = 75002, monster_id = 26050702, pos = { x = 247.584, y = 225.000, z = 247.298 }, rot = { x = 0.000, y = 121.776, z = 0.000 }, level = 50, drop_id = 1000100, affix = { 5148, 5146 }, area_id = 210, sight_group_index = 1 },
	{ config_id = 75019, monster_id = 26050802, pos = { x = 290.348, y = 225.000, z = 248.985 }, rot = { x = 0.000, y = 201.443, z = 0.000 }, level = 70, drop_id = 1000100, affix = { 5146, 5143 }, area_id = 210, sight_group_index = 1 },
	{ config_id = 75020, monster_id = 26050702, pos = { x = 247.584, y = 225.000, z = 247.298 }, rot = { x = 0.000, y = 121.776, z = 0.000 }, level = 70, drop_id = 1000100, affix = { 5146, 5143 }, area_id = 210, sight_group_index = 1 },
	{ config_id = 75021, monster_id = 26050802, pos = { x = 290.348, y = 225.000, z = 248.985 }, rot = { x = 0.000, y = 201.443, z = 0.000 }, level = 90, drop_id = 1000100, affix = { 5144, 5146 }, area_id = 210, sight_group_index = 1 },
	{ config_id = 75022, monster_id = 26050702, pos = { x = 247.584, y = 225.000, z = 247.298 }, rot = { x = 0.000, y = 121.776, z = 0.000 }, level = 90, drop_id = 1000100, affix = { 5144, 5146 }, area_id = 210, sight_group_index = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 75003, gadget_id = 70290245, pos = { x = 242.391, y = 223.596, z = 232.743 }, rot = { x = 0.000, y = 306.496, z = 0.000 }, level = 1, mark_flag = 13, area_id = 210 },
	{ config_id = 75004, gadget_id = 70290246, pos = { x = 297.849, y = 223.204, z = 230.655 }, rot = { x = 0.000, y = 54.284, z = 0.000 }, level = 1, mark_flag = 14, area_id = 210 },
	{ config_id = 75005, gadget_id = 70290247, pos = { x = 270.388, y = 223.077, z = 178.727 }, rot = { x = 0.000, y = 177.754, z = 0.000 }, level = 1, mark_flag = 15, area_id = 210 },
	{ config_id = 75006, gadget_id = 70350356, pos = { x = 252.064, y = 225.394, z = 242.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 1, area_id = 210 },
	{ config_id = 75007, gadget_id = 70350356, pos = { x = 287.064, y = 225.394, z = 242.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 2, area_id = 210 },
	{ config_id = 75008, gadget_id = 70350356, pos = { x = 262.864, y = 225.394, z = 232.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 3, area_id = 210 },
	{ config_id = 75009, gadget_id = 70350356, pos = { x = 276.264, y = 225.394, z = 232.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 4, area_id = 210 },
	{ config_id = 75010, gadget_id = 70350356, pos = { x = 262.864, y = 225.394, z = 192.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 5, area_id = 210 },
	{ config_id = 75011, gadget_id = 70350356, pos = { x = 276.264, y = 225.394, z = 192.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 6, area_id = 210 },
	{ config_id = 75012, gadget_id = 70350356, pos = { x = 254.064, y = 225.394, z = 212.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 7, area_id = 210 },
	{ config_id = 75013, gadget_id = 70350356, pos = { x = 285.064, y = 225.394, z = 212.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 8, area_id = 210 },
	{ config_id = 75014, gadget_id = 70350356, pos = { x = 257.684, y = 225.394, z = 224.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 9, area_id = 210 },
	{ config_id = 75015, gadget_id = 70350356, pos = { x = 281.443, y = 225.394, z = 224.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 10, area_id = 210 },
	{ config_id = 75016, gadget_id = 70350356, pos = { x = 269.564, y = 225.394, z = 195.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 11, area_id = 210 },
	{ config_id = 75017, gadget_id = 70350356, pos = { x = 269.564, y = 225.394, z = 212.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 12, area_id = 210 },
	{ config_id = 75018, gadget_id = 70330147, pos = { x = 268.985, y = 225.500, z = 212.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 700500011, area_id = 210 },
	{ config_id = 75023, gadget_id = 42605048, pos = { x = 258.589, y = 226.562, z = 195.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 75024, gadget_id = 42605048, pos = { x = 277.340, y = 226.530, z = 194.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 75025, gadget_id = 42605048, pos = { x = 286.314, y = 226.562, z = 209.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 75026, gadget_id = 42605048, pos = { x = 274.676, y = 226.562, z = 229.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 75027, gadget_id = 42605048, pos = { x = 258.292, y = 226.562, z = 226.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 75028, gadget_id = 42605048, pos = { x = 249.030, y = 226.562, z = 210.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 75029, gadget_id = 42605048, pos = { x = 261.655, y = 226.562, z = 210.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 75030, gadget_id = 42605048, pos = { x = 274.070, y = 226.562, z = 215.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 75031, gadget_id = 70330150, pos = { x = 269.492, y = 225.373, z = 212.294 }, rot = { x = 0.000, y = 183.011, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 75032, gadget_id = 70350356, pos = { x = 243.583, y = 225.394, z = 227.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 13, area_id = 210 },
	{ config_id = 75033, gadget_id = 70350356, pos = { x = 295.544, y = 225.394, z = 227.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 14, area_id = 210 },
	{ config_id = 75034, gadget_id = 70350356, pos = { x = 269.564, y = 225.394, z = 182.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 15, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 75035, shape = RegionShape.SPHERE, radius = 90, pos = { x = 269.700, y = 225.403, z = 212.434 }, area_id = 210, vision_type_list = { 70050001 } }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 75003, 75004, 75005, 75031, 75001, 75002, 75019, 75020, 75021, 75022, 75023, 75024, 75025, 75026, 75027, 75028, 75029, 75030, 75018 }
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
		gadgets = { 75003, 75004, 75005, 75006, 75007, 75008, 75009, 75010, 75011, 75012, 75013, 75014, 75015, 75016, 75017, 75031, 75032, 75033, 75034 },
		regions = { 75035 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 75001, 75002 },
		gadgets = { 75003, 75004, 75005, 75006, 75007, 75008, 75009, 75010, 75011, 75012, 75013, 75014, 75015, 75016, 75017, 75032, 75033, 75034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 75019, 75020 },
		gadgets = { 75003, 75004, 75005, 75006, 75007, 75008, 75009, 75010, 75011, 75012, 75013, 75014, 75015, 75016, 75017, 75032, 75033, 75034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 75021, 75022 },
		gadgets = { 75003, 75004, 75005, 75006, 75007, 75008, 75009, 75010, 75011, 75012, 75013, 75014, 75015, 75016, 75017, 75032, 75033, 75034 },
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

require "V2_5/GiliGiliI_Boss"