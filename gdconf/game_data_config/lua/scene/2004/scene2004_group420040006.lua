-- 基础信息
local base_info = {
	group_id = 420040006
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
	{ config_id = 6001, gadget_id = 77307012, pos = { x = 329.223, y = 186.550, z = 544.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 区域
	{ config_id = 6002, gadget_id = 77307013, pos = { x = 329.223, y = 186.550, z = 520.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6003, gadget_id = 77307014, pos = { x = 319.757, y = 192.952, z = 518.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6004, gadget_id = 77307014, pos = { x = 324.911, y = 193.369, z = 519.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6005, gadget_id = 77307014, pos = { x = 331.087, y = 194.515, z = 511.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6008, gadget_id = 77307015, pos = { x = 339.271, y = 186.550, z = 519.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6009, gadget_id = 77307015, pos = { x = 323.426, y = 186.550, z = 516.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 区域2
	{ config_id = 6012, gadget_id = 77307013, pos = { x = 329.223, y = 198.550, z = 520.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6013, gadget_id = 77307014, pos = { x = 319.911, y = 201.355, z = 519.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6014, gadget_id = 77307014, pos = { x = 325.944, y = 201.355, z = 524.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6015, gadget_id = 77307014, pos = { x = 334.274, y = 201.355, z = 527.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6017, gadget_id = 77307015, pos = { x = 319.863, y = 201.355, z = 529.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6018, gadget_id = 77307015, pos = { x = 327.420, y = 201.355, z = 520.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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