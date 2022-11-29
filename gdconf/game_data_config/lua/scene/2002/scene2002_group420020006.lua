-- 基础信息
local base_info = {
	group_id = 420020006
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
	{ config_id = 6001, gadget_id = 77307012, pos = { x = 334.493, y = 396.806, z = 790.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 区域
	{ config_id = 6002, gadget_id = 77307013, pos = { x = 334.493, y = 396.806, z = 766.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6003, gadget_id = 77307014, pos = { x = 325.027, y = 403.207, z = 764.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6004, gadget_id = 77307014, pos = { x = 330.181, y = 403.624, z = 765.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6005, gadget_id = 77307014, pos = { x = 336.357, y = 404.771, z = 758.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6008, gadget_id = 77307015, pos = { x = 344.541, y = 396.806, z = 765.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6009, gadget_id = 77307015, pos = { x = 328.696, y = 396.806, z = 763.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 区域2
	{ config_id = 6012, gadget_id = 77307013, pos = { x = 334.493, y = 408.806, z = 766.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6013, gadget_id = 77307014, pos = { x = 325.181, y = 411.611, z = 765.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6014, gadget_id = 77307014, pos = { x = 331.214, y = 411.611, z = 770.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6015, gadget_id = 77307014, pos = { x = 339.544, y = 411.611, z = 773.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6017, gadget_id = 77307015, pos = { x = 325.133, y = 411.611, z = 775.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6018, gadget_id = 77307015, pos = { x = 332.690, y = 411.611, z = 766.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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