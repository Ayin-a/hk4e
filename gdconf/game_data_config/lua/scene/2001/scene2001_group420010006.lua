-- 基础信息
local base_info = {
	group_id = 420010006
}

-- DEFS_MISCS
local galleryID = 0
local boardID = 6001
local areaID = 6002
local suitID = 2
local areaID_2 = 6012
local suitID_2 = 3
local groupID = 202001006
local intervalTime = {15}
local lowScore = 20
local highScore = 40
local randomSize = {
        {weight = 10, size = {x= 3, y= 3, z= 3}},
        {weight = 20, size = {x= 5, y= 3, z= 5}},
        {weight = 10, size = {x= 10, y= 5, z= 10}},
        {weight = 20, size = {x= 5, y= 5, z= 5}},
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
	-- 看板
	{ config_id = 6001, gadget_id = 77307012, pos = { x = 813.823, y = 318.155, z = 155.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 区域
	{ config_id = 6002, gadget_id = 77307013, pos = { x = 813.823, y = 318.155, z = 131.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6003, gadget_id = 77307014, pos = { x = 804.357, y = 324.556, z = 129.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6004, gadget_id = 77307014, pos = { x = 809.511, y = 324.973, z = 130.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6005, gadget_id = 77307014, pos = { x = 815.687, y = 326.120, z = 123.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6008, gadget_id = 77307015, pos = { x = 823.871, y = 318.155, z = 130.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6009, gadget_id = 77307015, pos = { x = 808.026, y = 318.155, z = 128.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 区域2
	{ config_id = 6012, gadget_id = 77307013, pos = { x = 813.823, y = 330.155, z = 131.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6013, gadget_id = 77307014, pos = { x = 804.511, y = 332.960, z = 130.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6014, gadget_id = 77307014, pos = { x = 810.544, y = 332.960, z = 135.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6015, gadget_id = 77307014, pos = { x = 818.874, y = 332.960, z = 138.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6017, gadget_id = 77307015, pos = { x = 804.463, y = 332.960, z = 140.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6018, gadget_id = 77307015, pos = { x = 812.020, y = 332.960, z = 131.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 6001, 6002, 6012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6003, 6004, 6005, 6008, 6009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 6013, 6014, 6015, 6017, 6018 },
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

require "V2_5/HM_BalloonGallery"