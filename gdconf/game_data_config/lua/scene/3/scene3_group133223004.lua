-- 基础信息
local base_info = {
	group_id = 133223004
}

-- DEFS_MISCS
defs = {
	group_id = 133223004,
	seelie_id = 4001,
	region_id = 4005,
	selfLoopPointArray = 322300063,
	selfLoopRoute = {1,2,3,4,5,6,7,8,9,10,11},
	chaseLoopPointArray = 322300014,
	chaseLoopRoute = {2,3},
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
	{ config_id = 4001, gadget_id = 70350292, pos = { x = -5873.064, y = 160.488, z = -2678.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, start_route = false, persistent = true, is_use_point_array = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 4005, shape = RegionShape.SPHERE, radius = 4, pos = { x = -5871.440, y = 160.545, z = -2677.226 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1004004, name = "VARIABLE_CHANGE_4004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4004", action = "action_EVENT_VARIABLE_CHANGE_4004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isMoving", value = 0, no_refresh = false },
	{ config_id = 2, name = "nextRouteIndex", value = 1, no_refresh = false },
	{ config_id = 3, name = "currentPathNodeID", value = 0, no_refresh = false },
	{ config_id = 4, name = "selfLooping", value = 1, no_refresh = false },
	{ config_id = 5, name = "markFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1004002, name = "PLATFORM_REACH_POINT_4002", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_4002", action = "action_EVENT_PLATFORM_REACH_POINT_4002", trigger_count = 0 },
		{ config_id = 1004003, name = "AVATAR_NEAR_PLATFORM_4003", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_4003", action = "action_EVENT_AVATAR_NEAR_PLATFORM_4003", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 4001 },
		regions = { 4005 },
		triggers = { "VARIABLE_CHANGE_4004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"markFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "markFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223004, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_2/SelfLoopSeelie"