-- 基础信息
local base_info = {
	group_id = 133008583
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 300800163,
	gadget_seelie = 583002
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
	{ config_id = 583001, gadget_id = 70720215, pos = { x = 1173.539, y = 265.693, z = -568.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 583002, gadget_id = 70720214, pos = { x = 1186.980, y = 267.693, z = -542.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800163, persistent = true, area_id = 10, is_enable_interact = false },
	{ config_id = 583003, gadget_id = 70720216, pos = { x = 1173.917, y = 265.738, z = -567.776 }, rot = { x = 0.000, y = 8.127, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 583004, gadget_id = 70211111, pos = { x = 1177.451, y = 255.618, z = -584.592 }, rot = { x = 328.584, y = 24.679, z = 325.271 }, level = 26, drop_tag = "雪山解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 583011, gadget_id = 70720214, pos = { x = 1167.494, y = 269.217, z = -528.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800165, persistent = true, area_id = 10, is_enable_interact = false },
	{ config_id = 583012, gadget_id = 70720214, pos = { x = 1143.942, y = 270.645, z = -529.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800166, persistent = true, area_id = 10, is_enable_interact = false },
	{ config_id = 583013, gadget_id = 70720214, pos = { x = 1168.907, y = 265.416, z = -558.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800167, persistent = true, area_id = 10, is_enable_interact = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1583005, name = "PLATFORM_REACH_POINT_583005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_583005", action = "action_EVENT_PLATFORM_REACH_POINT_583005", trigger_count = 0 },
	{ config_id = 1583006, name = "AVATAR_NEAR_PLATFORM_583006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_583006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_583006", trigger_count = 0 },
	{ config_id = 1583007, name = "AVATAR_NEAR_PLATFORM_583007", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_583007", action = "action_EVENT_AVATAR_NEAR_PLATFORM_583007", trigger_count = 0 },
	{ config_id = 1583008, name = "GADGET_STATE_CHANGE_583008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_583008", action = "action_EVENT_GADGET_STATE_CHANGE_583008" },
	{ config_id = 1583009, name = "GADGET_CREATE_583009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_583009", action = "action_EVENT_GADGET_CREATE_583009", trigger_count = 0 },
	{ config_id = 1583010, name = "VARIABLE_CHANGE_583010", event = EventType.EVENT_VARIABLE_CHANGE, source = "index", condition = "condition_EVENT_VARIABLE_CHANGE_583010", action = "action_EVENT_VARIABLE_CHANGE_583010", trigger_count = 0 },
	{ config_id = 1583014, name = "VARIABLE_CHANGE_583014", event = EventType.EVENT_VARIABLE_CHANGE, source = "index", condition = "condition_EVENT_VARIABLE_CHANGE_583014", action = "action_EVENT_VARIABLE_CHANGE_583014", trigger_count = 0 },
	{ config_id = 1583015, name = "VARIABLE_CHANGE_583015", event = EventType.EVENT_VARIABLE_CHANGE, source = "index", condition = "condition_EVENT_VARIABLE_CHANGE_583015", action = "action_EVENT_VARIABLE_CHANGE_583015", trigger_count = 0 },
	{ config_id = 1583016, name = "VARIABLE_CHANGE_583016", event = EventType.EVENT_VARIABLE_CHANGE, source = "index", condition = "condition_EVENT_VARIABLE_CHANGE_583016", action = "action_EVENT_VARIABLE_CHANGE_583016", trigger_count = 0 },
	{ config_id = 1583017, name = "PLATFORM_REACH_POINT_583017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_583017", action = "action_EVENT_PLATFORM_REACH_POINT_583017", trigger_count = 0 },
	{ config_id = 1583018, name = "PLATFORM_REACH_POINT_583018", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_583018", action = "action_EVENT_PLATFORM_REACH_POINT_583018", trigger_count = 0 },
	{ config_id = 1583019, name = "PLATFORM_REACH_POINT_583019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_583019", action = "action_EVENT_PLATFORM_REACH_POINT_583019", trigger_count = 0 },
	{ config_id = 1583020, name = "AVATAR_NEAR_PLATFORM_583020", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_583020", action = "action_EVENT_AVATAR_NEAR_PLATFORM_583020", trigger_count = 0 },
	{ config_id = 1583021, name = "AVATAR_NEAR_PLATFORM_583021", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_583021", action = "action_EVENT_AVATAR_NEAR_PLATFORM_583021", trigger_count = 0 },
	{ config_id = 1583022, name = "GROUP_LOAD_583022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_583022", action = "action_EVENT_GROUP_LOAD_583022", trigger_count = 0 },
	{ config_id = 1583023, name = "GROUP_LOAD_583023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_583023", action = "action_EVENT_GROUP_LOAD_583023", trigger_count = 0 },
	{ config_id = 1583024, name = "GROUP_LOAD_583024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_583024", action = "action_EVENT_GROUP_LOAD_583024", trigger_count = 0 },
	{ config_id = 1583025, name = "GROUP_LOAD_583025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_583025", action = "action_EVENT_GROUP_LOAD_583025", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "index", value = 0, no_refresh = true }
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
		gadgets = { 583001, 583003 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_583005", "AVATAR_NEAR_PLATFORM_583006", "AVATAR_NEAR_PLATFORM_583007", "GADGET_STATE_CHANGE_583008", "VARIABLE_CHANGE_583010", "VARIABLE_CHANGE_583014", "VARIABLE_CHANGE_583015", "VARIABLE_CHANGE_583016", "PLATFORM_REACH_POINT_583017", "PLATFORM_REACH_POINT_583018", "PLATFORM_REACH_POINT_583019", "AVATAR_NEAR_PLATFORM_583020", "AVATAR_NEAR_PLATFORM_583021", "GROUP_LOAD_583022", "GROUP_LOAD_583023", "GROUP_LOAD_583024", "GROUP_LOAD_583025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 583001, 583004 },
		regions = { },
		triggers = { "GADGET_CREATE_583009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_583005(context, evt)
	-- 判断是gadgetid 为 583002的移动平台，是否到达了300800163 的路线中的 10 点
	
	if 583002 ~= evt.param1 then
	  return false
	end
	
	if 300800163 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_583005(context, evt)
	-- 将configid为 583001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 583001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 583002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 583002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2013, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_583006(context, evt)
	if 583002 ~= evt.param1 then
	return false
	end
	
	if 300800163 ~= evt.param2 then
	return false
	end
	
	if 10 == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_583006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 583002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2013, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_583007(context, evt)
	if 583011 ~= evt.param1 then
	return false
	end
	
	if 300800165 ~= evt.param2 then
	return false
	end
	
	if 10 == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_583007(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 583011) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2013, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_583008(context, evt)
	if 583001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_583008(context, evt)
	-- 针对当前group内变量名为 "is_open" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "is_open", 1, 133008576) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008583, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_583009(context, evt)
	if 583001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_583009(context, evt)
	-- 将configid为 583001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 583001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_583010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008583) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_583010(context, evt)
	-- 创建id为583002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 583002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 583003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_583014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008583) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_583014(context, evt)
	-- 创建id为583011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 583011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 583003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_583015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008583) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_583015(context, evt)
	-- 创建id为583012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 583012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 583003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_583016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008583) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_583016(context, evt)
	-- 创建id为583013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 583013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 583003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_583017(context, evt)
	-- 判断是gadgetid 为 583011的移动平台，是否到达了300800165 的路线中的 10 点
	
	if 583011 ~= evt.param1 then
	  return false
	end
	
	if 300800165 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_583017(context, evt)
	-- 将configid为 583001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 583001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 583011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 583011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2013, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_583018(context, evt)
	-- 判断是gadgetid 为 583012的移动平台，是否到达了300800166 的路线中的 10 点
	
	if 583012 ~= evt.param1 then
	  return false
	end
	
	if 300800166 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_583018(context, evt)
	-- 将configid为 583001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 583001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 583012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 583012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2013, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_583019(context, evt)
	-- 判断是gadgetid 为 583013的移动平台，是否到达了300800167 的路线中的 10 点
	
	if 583013 ~= evt.param1 then
	  return false
	end
	
	if 300800167 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_583019(context, evt)
	-- 将configid为 583001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 583001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 583013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 583013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2013, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_583020(context, evt)
	if 583012 ~= evt.param1 then
	return false
	end
	
	if 300800166 ~= evt.param2 then
	return false
	end
	
	if 10 == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_583020(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 583012) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2013, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_583021(context, evt)
	if 583013 ~= evt.param1 then
	return false
	end
	
	if 300800167 ~= evt.param2 then
	return false
	end
	
	if 10 == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_583021(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 583013) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2013, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_583022(context, evt)
	-- 判断变量"index"为1
	if ScriptLib.GetGroupVariableValue(context, "index") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_583022(context, evt)
		-- 卸载指定gadget
	ScriptLib.RemoveEntityByConfigId(context, 133008583, EntityType.GADGET, 583002 ) 
	
	-- 创建id为583002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 583002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_583023(context, evt)
	-- 判断变量"index"为2
	if ScriptLib.GetGroupVariableValue(context, "index") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_583023(context, evt)
		-- 卸载指定gadget
	ScriptLib.RemoveEntityByConfigId(context, 133008583, EntityType.GADGET, 583011 )
	
	-- 创建id为583011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 583011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_583024(context, evt)
	-- 判断变量"index"为3
	if ScriptLib.GetGroupVariableValue(context, "index") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_583024(context, evt)
		-- 卸载指定gadget
	ScriptLib.RemoveEntityByConfigId(context, 133008583, EntityType.GADGET, 583012 )
	
	-- 创建id为583012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 583012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_583025(context, evt)
	-- 判断变量"index"为4
	if ScriptLib.GetGroupVariableValue(context, "index") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_583025(context, evt)
		-- 卸载指定gadget
	ScriptLib.RemoveEntityByConfigId(context, 133008583, EntityType.GADGET, 583013 )
	
	-- 创建id为583013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 583013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end