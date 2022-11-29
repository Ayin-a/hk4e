-- 基础信息
local base_info = {
	group_id = 133222173
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
	monsters = {
		{ config_id = 173001, monster_id = 25030201, pos = { x = -5183.091, y = 204.151, z = -4317.070 }, rot = { x = 0.000, y = 208.331, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 14 },
		{ config_id = 173004, monster_id = 25030301, pos = { x = -5166.381, y = 199.325, z = -4309.046 }, rot = { x = 0.000, y = 54.278, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 14 },
		{ config_id = 173005, monster_id = 25080301, pos = { x = -5174.609, y = 199.847, z = -4305.181 }, rot = { x = 0.000, y = 54.278, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 14 }
	},
	gadgets = {
		{ config_id = 173006, gadget_id = 70900393, pos = { x = -5175.740, y = 199.937, z = -4303.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 173007, gadget_id = 70310009, pos = { x = -5173.763, y = 199.956, z = -4308.358 }, rot = { x = 0.000, y = 50.229, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 173008, gadget_id = 70220051, pos = { x = -5175.195, y = 199.892, z = -4306.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 173009, gadget_id = 70220051, pos = { x = -5167.089, y = 199.349, z = -4307.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 173010, gadget_id = 70220048, pos = { x = -5177.523, y = 199.855, z = -4301.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================