-- 基础信息
local base_info = {
	group_id = 144003056
}

-- Trigger变量
local defs = {
	maxPathNode = 5,
	pointarray_route = 400300005,
	gadget_bubble = 56002,
	group_id = 144003056,
	gadget_reward = 56001
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
	{ config_id = 56001, gadget_id = 70210105, pos = { x = -717.320, y = 120.000, z = 150.672 }, rot = { x = 0.000, y = 235.625, z = 0.000 }, level = 16, chest_drop_id = 1002000, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 56002, gadget_id = 70950081, pos = { x = -618.434, y = 120.000, z = 115.304 }, rot = { x = 0.000, y = 235.625, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true, area_id = 103 }
}

-- 区域
regions = {
	-- 首次接近气泡
	{ config_id = 56004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -618.434, y = 120.000, z = 115.304 }, area_id = 103 }
}

-- 触发器
triggers = {
	-- 后续每次接近气泡
	{ config_id = 1056003, name = "AVATAR_NEAR_PLATFORM_56003", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_56003", action = "action_EVENT_AVATAR_NEAR_PLATFORM_56003", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1056004, name = "ENTER_REGION_56004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56004", action = "action_EVENT_ENTER_REGION_56004", trigger_count = 0 },
	-- 判定气泡到达终点
	{ config_id = 1056005, name = "PLATFORM_REACH_POINT_56005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_56005", action = "action_EVENT_PLATFORM_REACH_POINT_56005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "currentPathNode", value = 0, no_refresh = false },
	{ config_id = 2, name = "isReachGoal", value = 0, no_refresh = false }
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
		gadgets = { 56002 },
		regions = { 56004 },
		triggers = { "AVATAR_NEAR_PLATFORM_56003", "ENTER_REGION_56004", "PLATFORM_REACH_POINT_56005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 56001 },
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_56003(context, evt)
		if defs.gadget_bubble ~= evt.param1 then
		return false
		end
		return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_56003(context, evt)
		if ScriptLib.GetGroupVariableValue(context,"isReachGoal") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_bubble, GadgetState.GearStart)
			ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_bubble})
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_reward })
			ScriptLib.GoToGroupSuite(context,defs.group_id,2)
		else
			ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_bubble, GadgetState.GearStart)
			MovePlatform(context)
		end
		return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_56004(context, evt)
	if evt.param1 ~= 56004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_56004(context, evt)
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_56005(context, evt)
		if defs.gadget_bubble ~= evt.param1 then
		return false
		end
		return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_56005(context, evt)
			ScriptLib.SetGroupVariableValue(context, "currentPathNode", evt.param3)	
				ScriptLib.StopPlatform(context, defs.gadget_bubble) 
			
				if evt.param3 == defs.maxPathNode then 
					--ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_bubble})
					--ScriptLib.CreateGadget(context, { config_id = defs.gadget_reward })
					--ScriptLib.GoToGroupSuite(context,defs.group_id,2)
					ScriptLib.SetGroupVariableValue(context, "isReachGoal", 1)				
				end
				ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_bubble, GadgetState.Default)
				return 0
end