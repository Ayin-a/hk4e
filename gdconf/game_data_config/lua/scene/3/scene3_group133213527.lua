-- 基础信息
local base_info = {
	group_id = 133213527
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
	{ config_id = 527001, gadget_id = 70500000, pos = { x = -3490.395, y = 204.027, z = -3373.968 }, rot = { x = 0.000, y = 150.780, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 12 },
	{ config_id = 527002, gadget_id = 70500000, pos = { x = -3496.452, y = 204.667, z = -3372.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 527003, gadget_id = 70500000, pos = { x = -3496.196, y = 204.716, z = -3366.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 12 },
	{ config_id = 527004, gadget_id = 70500000, pos = { x = -3502.845, y = 202.366, z = -3373.863 }, rot = { x = 0.000, y = 160.580, z = 9.251 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 527005, gadget_id = 70500000, pos = { x = -3496.911, y = 203.345, z = -3373.894 }, rot = { x = 356.466, y = 316.255, z = 16.514 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 527006, gadget_id = 70360001, pos = { x = -3496.518, y = 205.486, z = -3366.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
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
		-- description = 在suite3内添加魔晶矿,
		monsters = { },
		gadgets = { 527001, 527002, 527003, 527004, 527005, 527006 },
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

require "V2_0/OreBlossomGroup"