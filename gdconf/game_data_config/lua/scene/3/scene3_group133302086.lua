-- 基础信息
local base_info = {
	group_id = 133302086
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 330200007,
	gadget_seelie = 86002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 86001, gadget_id = 70710006, pos = { x = -568.482, y = 130.592, z = 2269.425 }, rot = { x = 0.000, y = 269.110, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 86002, gadget_id = 70710010, pos = { x = -651.059, y = 133.881, z = 2258.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 330200008, area_id = 24 },
	{ config_id = 86003, gadget_id = 70710007, pos = { x = -568.482, y = 130.592, z = 2269.425 }, rot = { x = 5.147, y = 259.378, z = 1.044 }, level = 27, area_id = 24 },
	{ config_id = 86004, gadget_id = 70211101, pos = { x = -566.229, y = 131.149, z = 2266.889 }, rot = { x = 27.542, y = 220.543, z = 0.002 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 86007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -651.270, y = 133.881, z = 2258.995 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1086005, name = "PLATFORM_REACH_POINT_86005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_86005", action = "action_EVENT_PLATFORM_REACH_POINT_86005", trigger_count = 0 },
	{ config_id = 1086006, name = "AVATAR_NEAR_PLATFORM_86006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_86006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_86006", trigger_count = 0 },
	{ config_id = 1086007, name = "ENTER_REGION_86007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_86007", action = "action_EVENT_ENTER_REGION_86007", trigger_count = 0 },
	{ config_id = 1086008, name = "GADGET_STATE_CHANGE_86008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_86008", action = "action_EVENT_GADGET_STATE_CHANGE_86008" },
	{ config_id = 1086009, name = "GADGET_CREATE_86009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_86009", action = "action_EVENT_GADGET_CREATE_86009", trigger_count = 0 },
	{ config_id = 1086010, name = "VARIABLE_CHANGE_86010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_86010", action = "action_EVENT_VARIABLE_CHANGE_86010", trigger_count = 0 },
	{ config_id = 1086011, name = "VARIABLE_CHANGE_86011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_86011", action = "action_EVENT_VARIABLE_CHANGE_86011", trigger_count = 0 },
	{ config_id = 1086012, name = "GROUP_LOAD_86012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_86012", action = "action_EVENT_GROUP_LOAD_86012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "go", value = 0, no_refresh = true }
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
		gadgets = { 86001, 86002, 86003 },
		regions = { 86007 },
		triggers = { "PLATFORM_REACH_POINT_86005", "AVATAR_NEAR_PLATFORM_86006", "ENTER_REGION_86007", "GADGET_STATE_CHANGE_86008", "VARIABLE_CHANGE_86010", "VARIABLE_CHANGE_86011", "GROUP_LOAD_86012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 86001, 86004 },
		regions = { },
		triggers = { "GADGET_CREATE_86009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_86005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_86005(context, evt)
	-- 将configid为 86001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 86002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 86002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_86006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	if 3 == evt.param3 and 
	ScriptLib.GetGroupVariableValue(context, "go") ~= 1 then
	return false
	end
	
	if 7 == evt.param3 and 
	ScriptLib.GetGroupVariableValue(context, "go") ~= 2 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_86006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 86002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_86007(context, evt)
	if evt.param1 ~= 86007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_86007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 86002, 330200007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 86003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_86008(context, evt)
	if 86001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_86008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302086, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_86009(context, evt)
	if 86001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_86009(context, evt)
	-- 将configid为 86001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_86010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"go"为1
	if ScriptLib.GetGroupVariableValue(context, "go") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_86010(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 86002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_86011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"go"为2
	if ScriptLib.GetGroupVariableValue(context, "go") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_86011(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 86002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_86012(context, evt)
	-- 判断变量"go"为2
	if ScriptLib.GetGroupVariableValue(context, "go") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_86012(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302086, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end