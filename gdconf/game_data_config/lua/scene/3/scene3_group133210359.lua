-- 基础信息
local base_info = {
	group_id = 133210359
}

-- Trigger变量
local defs = {
	maxPathNode = 6,
	pointarray_route = 321000065,
	gadget_bubble = 359002,
	group_id = 133210359,
	gadget_reward = 359001
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
		{ config_id = 359001, gadget_id = 70210105, pos = { x = -3657.020, y = 200.000, z = -1331.293 }, rot = { x = 0.000, y = 235.625, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
		{ config_id = 359002, gadget_id = 70950081, pos = { x = -3506.485, y = 200.000, z = -1310.468 }, rot = { x = 0.000, y = 235.625, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true, area_id = 17 }
	},
	regions = {
		{ config_id = 359004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3506.485, y = 200.000, z = -1310.468 }, area_id = 17 }
	},
	triggers = {
		{ config_id = 1359003, name = "AVATAR_NEAR_PLATFORM_359003", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_359003", action = "action_EVENT_AVATAR_NEAR_PLATFORM_359003", trigger_count = 0 },
		{ config_id = 1359004, name = "ENTER_REGION_359004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_359004", action = "action_EVENT_ENTER_REGION_359004", trigger_count = 0 },
		{ config_id = 1359005, name = "PLATFORM_REACH_POINT_359005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_359005", action = "action_EVENT_PLATFORM_REACH_POINT_359005", trigger_count = 0 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================