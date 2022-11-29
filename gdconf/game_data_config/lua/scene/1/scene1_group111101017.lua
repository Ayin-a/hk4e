-- 基础信息
local base_info = {
	group_id = 111101017
}

-- Trigger变量
local defs = {
	maxRouteCount = 3
}

-- DEFS_MISCS
routeInfo = {route_1 = {1},route_2 = {2},route_3 = {3}}

function MovePlatform(context)
	ScriptLib.PrintLog("Hit platform to move")


	local index = ScriptLib.GetGroupVariableValue(context,"route")
	ScriptLib.PrintLog("Hit platform to move : get index = ".. index)
	local route = "route_" ..index
	ScriptLib.PrintLog("Hit platform to move : get key = ".. route)

	ScriptLib.SetPlatformPointArray(context, 17002, 110100010, routeInfo[route], { route_type = 0 })

	ScriptLib.PrintLog("Hit platform to move : start platform")
	index = index + 1
	if index > defs.maxRouteCount then 
		index = 1
	end
	ScriptLib.SetGroupVariableValue(context,"route",index)

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
	{ config_id = 17002, gadget_id = 70950081, pos = { x = 2478.369, y = 218.804, z = -1340.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 水泡逻辑
	{ config_id = 1017003, name = "AVATAR_NEAR_PLATFORM_17003", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_17003", action = "action_EVENT_AVATAR_NEAR_PLATFORM_17003", trigger_count = 0 },
	-- 初始化
	{ config_id = 1017008, name = "GROUP_LOAD_17008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_17008", trigger_count = 0 },
	{ config_id = 1017009, name = "PLATFORM_REACH_POINT_17009", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "17002", condition = "", action = "action_EVENT_PLATFORM_REACH_POINT_17009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "route", value = 1, no_refresh = false }
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
		gadgets = { 17002 },
		regions = { },
		triggers = { "AVATAR_NEAR_PLATFORM_17003", "GROUP_LOAD_17008", "PLATFORM_REACH_POINT_17009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_17003(context, evt)
	if 17002 ~= evt.param1 then
							return false
						end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_17003(context, evt)
			ScriptLib.SetGadgetStateByConfigId(context, 17002, GadgetState.GearStart)
	
			MovePlatform(context)
		return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_17008(context, evt)
	MovePlatform(context)
	return 0
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_17009(context, evt)
				ScriptLib.StopPlatform(context, 17002)
				ScriptLib.SetGadgetStateByConfigId(context, 17002, GadgetState.Default)
				local route = ScriptLib.GetGroupVariableValue(context,"route")
				if route == defs.maxRouteCount then
					
				end
	return 0
end