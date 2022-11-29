-- 基础信息
local base_info = {
	group_id = 133301760
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
	{ config_id = 760005, gadget_id = 70500000, pos = { x = -361.600, y = 217.908, z = 3687.509 }, rot = { x = 24.140, y = 1.959, z = 10.652 }, level = 27, point_type = 1001, area_id = 22 },
	{ config_id = 760006, gadget_id = 70500000, pos = { x = -364.316, y = 216.718, z = 3686.671 }, rot = { x = 332.902, y = 60.742, z = 7.381 }, level = 27, point_type = 1002, area_id = 22 },
	{ config_id = 760007, gadget_id = 70500000, pos = { x = -360.453, y = 217.984, z = 3684.833 }, rot = { x = 0.000, y = 156.677, z = 0.000 }, level = 27, point_type = 1002, area_id = 22 }
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
		{ config_id = 760001, monster_id = 28050106, pos = { x = -370.221, y = 211.245, z = 3734.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 760002, monster_id = 28050106, pos = { x = -370.531, y = 215.430, z = 3726.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 760003, monster_id = 28050106, pos = { x = -367.218, y = 212.723, z = 3727.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 760004, monster_id = 28050106, pos = { x = -365.215, y = 213.118, z = 3720.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 }
	},
	gadgets = {
		{ config_id = 760008, gadget_id = 70217020, pos = { x = -392.315, y = 204.311, z = 3781.304 }, rot = { x = 1.702, y = 62.241, z = 353.502 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
		{ config_id = 760009, gadget_id = 70217020, pos = { x = -367.438, y = 213.180, z = 3737.962 }, rot = { x = 1.702, y = 62.241, z = 353.502 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 }
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
		monsters = { },
		gadgets = { 760005, 760006, 760007 },
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