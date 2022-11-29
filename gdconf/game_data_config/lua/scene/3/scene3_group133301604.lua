-- 基础信息
local base_info = {
	group_id = 133301604
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 604005, monster_id = 28050106, pos = { x = -370.221, y = 211.245, z = 3734.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 },
	{ config_id = 604009, monster_id = 28050106, pos = { x = -365.215, y = 213.118, z = 3720.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 604004, gadget_id = 70217020, pos = { x = -392.323, y = 204.213, z = 3781.313 }, rot = { x = 1.702, y = 62.241, z = 359.746 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 604007, gadget_id = 70217020, pos = { x = -367.509, y = 212.814, z = 3737.909 }, rot = { x = 344.123, y = 61.362, z = 1.089 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 }
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
		{ config_id = 604006, monster_id = 28050106, pos = { x = -370.531, y = 215.430, z = 3726.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 604008, monster_id = 28050106, pos = { x = -367.218, y = 212.723, z = 3727.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 }
	},
	gadgets = {
		{ config_id = 604001, gadget_id = 70500000, pos = { x = -361.600, y = 217.908, z = 3687.509 }, rot = { x = 24.140, y = 1.959, z = 10.652 }, level = 27, point_type = 1001, area_id = 22 },
		{ config_id = 604002, gadget_id = 70500000, pos = { x = -364.316, y = 216.718, z = 3686.671 }, rot = { x = 332.902, y = 60.742, z = 7.381 }, level = 27, point_type = 1002, area_id = 22 },
		{ config_id = 604003, gadget_id = 70500000, pos = { x = -360.453, y = 217.984, z = 3684.833 }, rot = { x = 0.000, y = 156.677, z = 0.000 }, level = 27, point_type = 1002, area_id = 22 }
	}
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
		monsters = { 604005, 604009 },
		gadgets = { 604004, 604007 },
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