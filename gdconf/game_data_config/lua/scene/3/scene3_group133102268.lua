-- 基础信息
local base_info = {
	group_id = 133102268
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 475, monster_id = 21010601, pos = { x = 1645.559, y = 204.787, z = 144.525 }, rot = { x = 0.000, y = 87.406, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 268001, monster_id = 21010401, pos = { x = 1652.072, y = 200.187, z = 141.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1031, gadget_id = 70211001, pos = { x = 1652.354, y = 200.187, z = 139.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 1032, gadget_id = 70220013, pos = { x = 1652.410, y = 200.187, z = 137.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 }
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
		monsters = { 475, 268001 },
		gadgets = { 1031, 1032 },
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