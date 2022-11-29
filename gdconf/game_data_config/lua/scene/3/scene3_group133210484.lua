-- 基础信息
local base_info = {
	group_id = 133210484
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 484002, monster_id = 28050212, pos = { x = -3703.459, y = 128.499, z = -1002.119 }, rot = { x = 0.000, y = 294.125, z = 0.000 }, level = 30, drop_tag = "魔法生物", disableWander = true, isOneoff = true, pose_id = 9, area_id = 17, guest_ban_drop = 63 },
	{ config_id = 484003, monster_id = 28050211, pos = { x = -3853.641, y = 258.575, z = -502.728 }, rot = { x = 0.000, y = 196.085, z = 0.000 }, level = 30, drop_tag = "魔法生物", disableWander = true, isOneoff = true, pose_id = 9, area_id = 17, guest_ban_drop = 63 }
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
		{ config_id = 484001, monster_id = 28050212, pos = { x = -4039.806, y = 201.017, z = -683.044 }, rot = { x = 0.000, y = 105.707, z = 0.000 }, level = 30, drop_tag = "魔法生物", disableWander = true, isOneoff = true, pose_id = 9, area_id = 17, guest_ban_drop = 63 }
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
		monsters = { 484002, 484003 },
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