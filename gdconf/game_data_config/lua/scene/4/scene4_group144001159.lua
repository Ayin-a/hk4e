-- 基础信息
local base_info = {
	group_id = 144001159
}

-- Trigger变量
local defs = {
	maxPathNode = 4,
	pointarray_route = 400100008,
	gadget_bubble = 159002,
	group_id = 144001159,
	gadget_reward = 159001
}

-- DEFS_MISCS
function MovePlatform(context)
	ScriptLib.PrintLog("platform to move")
	local pathnodeindex = ScriptLib.GetGroupVariableValue(context, "currentPathNode") + 1

	if pathnodeindex > defs.maxPathNode then 
		pathnodeindex = defs.maxPathNode
	end

	ScriptLib.SetPlatformPointArray(context, defs.gadget_bubble, defs.pointarray_route, {pathnodeindex}, { route_type = 0 })
	ScriptLib.PrintLog("platform to move : start platform")
	return 0
end

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
	{ config_id = 1, name = "currentPathNode", value = 0, no_refresh = false },
	{ config_id = 2, name = "isReachGoal", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 159001, gadget_id = 70360001, pos = { x = -721.340, y = 120.000, z = 302.368 }, rot = { x = 0.000, y = 235.625, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 103 },
		{ config_id = 159002, gadget_id = 70950081, pos = { x = -822.367, y = 120.000, z = 377.394 }, rot = { x = 0.000, y = 235.625, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true, area_id = 103 },
		{ config_id = 159006, gadget_id = 70950081, pos = { x = -894.018, y = 120.000, z = 361.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
		{ config_id = 159007, gadget_id = 70950081, pos = { x = -894.805, y = 120.000, z = 372.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
		{ config_id = 159008, gadget_id = 70950081, pos = { x = -880.642, y = 120.000, z = 356.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 400100121, area_id = 103 },
		{ config_id = 159009, gadget_id = 70950081, pos = { x = -882.377, y = 120.000, z = 365.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 }
	},
	regions = {
		{ config_id = 159004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -822.367, y = 120.000, z = 377.394 }, area_id = 103 }
	},
	triggers = {
		{ config_id = 1159003, name = "AVATAR_NEAR_PLATFORM_159003", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_159003", action = "action_EVENT_AVATAR_NEAR_PLATFORM_159003", trigger_count = 0 },
		{ config_id = 1159004, name = "ENTER_REGION_159004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_159004", action = "action_EVENT_ENTER_REGION_159004", trigger_count = 0 },
		{ config_id = 1159005, name = "PLATFORM_REACH_POINT_159005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_159005", action = "action_EVENT_PLATFORM_REACH_POINT_159005", trigger_count = 0 },
		{ config_id = 1159010, name = "GROUP_LOAD_159010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_159010" }
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
	end_suite = 2,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
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
	},
	{
		-- suite_id = 3,
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