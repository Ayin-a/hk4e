-- 基础信息
local base_info = {
	group_id = 199001145
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
		{ config_id = 145004, monster_id = 21010201, pos = { x = 582.206, y = 120.277, z = -603.148 }, rot = { x = 0.000, y = 327.371, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 401 },
		{ config_id = 145005, monster_id = 21010201, pos = { x = 587.492, y = 120.346, z = -599.969 }, rot = { x = 0.000, y = 316.049, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 401 },
		{ config_id = 145006, monster_id = 21010401, pos = { x = 585.352, y = 120.000, z = -610.739 }, rot = { x = 0.000, y = 349.201, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 401 },
		{ config_id = 145007, monster_id = 21020201, pos = { x = 585.788, y = 120.138, z = -604.602 }, rot = { x = 0.000, y = 343.391, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, area_id = 401 }
	},
	gadgets = {
		{ config_id = 145001, gadget_id = 70310332, pos = { x = 581.207, y = 120.444, z = -601.705 }, rot = { x = 0.000, y = 136.908, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 145002, gadget_id = 70310332, pos = { x = 584.234, y = 120.375, z = -601.497 }, rot = { x = 0.000, y = 145.427, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 145003, gadget_id = 70310332, pos = { x = 586.343, y = 120.495, z = -598.521 }, rot = { x = 0.000, y = 165.355, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 145008, gadget_id = 70211001, pos = { x = 582.896, y = 120.519, z = -599.237 }, rot = { x = 0.000, y = 321.384, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
	},
	triggers = {
		{ config_id = 1145009, name = "ANY_MONSTER_DIE_145009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_145009", action = "action_EVENT_ANY_MONSTER_DIE_145009" }
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