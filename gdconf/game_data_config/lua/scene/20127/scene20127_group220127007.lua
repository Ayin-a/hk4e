-- 基础信息
local base_info = {
	group_id = 220127007
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
	{ config_id = 1, name = "state", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 7001, monster_id = 24010101, pos = { x = 22.179, y = 48.976, z = 137.692 }, rot = { x = 0.000, y = 207.406, z = 0.000 }, level = 1, disableWander = true, affix = { 5009 }, pose_id = 101 },
		{ config_id = 7002, monster_id = 24010101, pos = { x = 22.470, y = 49.477, z = 116.994 }, rot = { x = 0.000, y = 290.319, z = 0.000 }, level = 1, disableWander = true, affix = { 5009 }, pose_id = 101 }
	},
	gadgets = {
		{ config_id = 7009, gadget_id = 70900049, pos = { x = 18.033, y = 49.130, z = 121.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 7010, gadget_id = 70900049, pos = { x = 0.529, y = 49.133, z = 118.811 }, rot = { x = 348.281, y = 10.935, z = 347.411 }, level = 1, persistent = true },
		{ config_id = 7011, gadget_id = 70900049, pos = { x = 22.283, y = 49.270, z = 139.037 }, rot = { x = 4.438, y = 5.589, z = 343.742 }, level = 1, persistent = true },
		{ config_id = 7012, gadget_id = 70900049, pos = { x = 22.477, y = 49.494, z = 118.023 }, rot = { x = 5.113, y = 359.101, z = 5.701 }, level = 1, persistent = true }
	},
	regions = {
		{ config_id = 7008, shape = RegionShape.SPHERE, radius = 10, pos = { x = 12.790, y = 49.139, z = 119.072 } }
	},
	triggers = {
		{ config_id = 1007006, name = "ANY_MONSTER_DIE_7006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7006", action = "action_EVENT_ANY_MONSTER_DIE_7006" },
		{ config_id = 1007007, name = "ANY_MONSTER_DIE_7007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7007", action = "action_EVENT_ANY_MONSTER_DIE_7007" },
		{ config_id = 1007008, name = "ENTER_REGION_7008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_7008" },
		{ config_id = 1007013, name = "GADGET_STATE_CHANGE_7013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7013", action = "action_EVENT_GADGET_STATE_CHANGE_7013" },
		{ config_id = 1007014, name = "GADGET_STATE_CHANGE_7014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7014", action = "action_EVENT_GADGET_STATE_CHANGE_7014" },
		{ config_id = 1007015, name = "GADGET_STATE_CHANGE_7015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7015", action = "action_EVENT_GADGET_STATE_CHANGE_7015" },
		{ config_id = 1007016, name = "GADGET_STATE_CHANGE_7016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7016", action = "action_EVENT_GADGET_STATE_CHANGE_7016" },
		{ config_id = 1007017, name = "VARIABLE_CHANGE_7017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7017", action = "action_EVENT_VARIABLE_CHANGE_7017" }
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