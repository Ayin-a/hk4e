-- 基础信息
local base_info = {
	group_id = 133001105
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 515, monster_id = 21010301, pos = { x = 1262.398, y = 257.069, z = -1422.742 }, rot = { x = 0.000, y = 267.495, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 2 },
	{ config_id = 629, monster_id = 21010201, pos = { x = 1258.920, y = 256.824, z = -1423.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1771, gadget_id = 70211103, pos = { x = 1258.616, y = 258.455, z = -1412.894 }, rot = { x = 0.000, y = 187.373, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 1877, gadget_id = 70220005, pos = { x = 1261.683, y = 258.479, z = -1419.257 }, rot = { x = 0.000, y = 220.309, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 1878, gadget_id = 70220005, pos = { x = 1262.869, y = 257.108, z = -1420.258 }, rot = { x = 0.000, y = 116.344, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 1879, gadget_id = 70310001, pos = { x = 1257.972, y = 256.500, z = -1425.282 }, rot = { x = 0.000, y = 239.368, z = 0.000 }, level = 15, area_id = 2 }
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
	suite = 2,
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
		monsters = { 515, 629 },
		gadgets = { 1771, 1877, 1878, 1879 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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