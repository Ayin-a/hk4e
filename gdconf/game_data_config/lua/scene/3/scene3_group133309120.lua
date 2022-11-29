-- 基础信息
local base_info = {
	group_id = 133309120
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
	{ config_id = 120001, gadget_id = 70500000, pos = { x = -2637.748, y = 26.835, z = 5383.564 }, rot = { x = 58.249, y = 161.491, z = 318.562 }, level = 1, point_type = 1003, persistent = true, area_id = 27 },
	{ config_id = 120002, gadget_id = 70500000, pos = { x = -2635.828, y = 25.724, z = 5381.394 }, rot = { x = 18.295, y = 128.364, z = 3.338 }, level = 1, point_type = 1003, persistent = true, area_id = 27 },
	{ config_id = 120003, gadget_id = 70360001, pos = { x = -2630.276, y = 26.051, z = 5378.313 }, rot = { x = 337.459, y = 357.987, z = 10.579 }, level = 1, persistent = true, area_id = 27 }
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
		-- description = ,
		monsters = { },
		gadgets = { 120001, 120002, 120003 },
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