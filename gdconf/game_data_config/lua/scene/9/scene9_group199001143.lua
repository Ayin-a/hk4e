-- 基础信息
local base_info = {
	group_id = 199001143
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
		{ config_id = 143001, monster_id = 22010301, pos = { x = 410.008, y = 171.881, z = -474.790 }, rot = { x = 0.000, y = 142.321, z = 0.000 }, level = 20, drop_tag = "深渊法师", disableWander = true, area_id = 401 },
		{ config_id = 143004, monster_id = 21020101, pos = { x = 409.369, y = 170.065, z = -482.925 }, rot = { x = 0.000, y = 73.373, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 401 },
		{ config_id = 143005, monster_id = 21010201, pos = { x = 410.243, y = 170.114, z = -484.842 }, rot = { x = 0.000, y = 72.636, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 401 },
		{ config_id = 143006, monster_id = 21010201, pos = { x = 417.157, y = 170.464, z = -481.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 401 },
		{ config_id = 143007, monster_id = 21010201, pos = { x = 414.567, y = 170.450, z = -479.771 }, rot = { x = 0.000, y = 76.482, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 401 }
	},
	gadgets = {
		{ config_id = 143002, gadget_id = 70211012, pos = { x = 406.923, y = 170.023, z = -480.657 }, rot = { x = 0.000, y = 83.990, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
	},
	triggers = {
		{ config_id = 1143003, name = "ANY_MONSTER_DIE_143003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_143003", action = "action_EVENT_ANY_MONSTER_DIE_143003" }
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