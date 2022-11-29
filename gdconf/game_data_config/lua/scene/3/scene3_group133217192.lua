-- 基础信息
local base_info = {
	group_id = 133217192
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
		{ config_id = 192001, monster_id = 23050101, pos = { x = -5033.182, y = 202.155, z = -3789.871 }, rot = { x = 0.000, y = 258.180, z = 0.000 }, level = 28, drop_tag = "藏镜侍女", disableWander = true, area_id = 14 },
		{ config_id = 192004, monster_id = 23010401, pos = { x = -5041.347, y = 198.988, z = -3786.635 }, rot = { x = 0.000, y = 97.656, z = 0.000 }, level = 28, drop_tag = "先遣队", disableWander = true, pose_id = 9002, area_id = 14 },
		{ config_id = 192005, monster_id = 23010201, pos = { x = -5042.218, y = 199.156, z = -3792.115 }, rot = { x = 0.000, y = 79.269, z = 0.000 }, level = 28, drop_tag = "先遣队", disableWander = true, area_id = 14 },
		{ config_id = 192006, monster_id = 23010501, pos = { x = -5039.701, y = 199.915, z = -3796.608 }, rot = { x = 0.000, y = 40.596, z = 0.000 }, level = 28, drop_tag = "先遣队", disableWander = true, area_id = 14 }
	},
	gadgets = {
		{ config_id = 192002, gadget_id = 70211002, pos = { x = -5035.041, y = 202.084, z = -3804.516 }, rot = { x = 12.556, y = 316.153, z = 355.317 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 192007, gadget_id = 70500000, pos = { x = -5040.272, y = 199.050, z = -3786.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2040, isOneoff = true, persistent = true, area_id = 14 },
		{ config_id = 192008, gadget_id = 70500000, pos = { x = -5040.521, y = 199.155, z = -3791.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2001, isOneoff = true, persistent = true, area_id = 14 },
		{ config_id = 192009, gadget_id = 70500000, pos = { x = -5038.806, y = 199.803, z = -3795.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2004, isOneoff = true, persistent = true, area_id = 14 },
		{ config_id = 192011, gadget_id = 70500000, pos = { x = -5032.224, y = 201.819, z = -3788.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2028, isOneoff = true, persistent = true, area_id = 14 },
		{ config_id = 192012, gadget_id = 70500000, pos = { x = -5031.493, y = 202.176, z = -3789.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2008, isOneoff = true, persistent = true, area_id = 14 },
		{ config_id = 192013, gadget_id = 70500000, pos = { x = -5031.981, y = 202.480, z = -3790.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2012, isOneoff = true, persistent = true, area_id = 14 }
	},
	triggers = {
		{ config_id = 1192003, name = "ANY_MONSTER_DIE_192003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_192003", action = "action_EVENT_ANY_MONSTER_DIE_192003" },
		{ config_id = 1192010, name = "GADGET_STATE_CHANGE_192010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_192010", action = "action_EVENT_GADGET_STATE_CHANGE_192010" }
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