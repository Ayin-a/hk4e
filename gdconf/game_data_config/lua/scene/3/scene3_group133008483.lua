-- 基础信息
local base_info = {
	group_id = 133008483
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 300800129,
	gadget_seelie = 483002
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
	{ config_id = 483001, gadget_id = 70720215, pos = { x = 1181.624, y = 265.133, z = -567.182 }, rot = { x = 0.000, y = 346.942, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 483002, gadget_id = 70720214, pos = { x = 1185.866, y = 287.054, z = -551.164 }, rot = { x = 0.000, y = 225.718, z = 0.000 }, level = 30, route_id = 300800129, persistent = true, area_id = 10 },
	{ config_id = 483003, gadget_id = 70720216, pos = { x = 1181.766, y = 266.714, z = -566.153 }, rot = { x = 300.568, y = 2.345, z = 340.212 }, level = 30, area_id = 10 },
	{ config_id = 483004, gadget_id = 70211111, pos = { x = 1184.695, y = 257.148, z = -577.915 }, rot = { x = 327.080, y = 326.857, z = 2.727 }, level = 26, drop_tag = "雪山解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1483005, name = "PLATFORM_REACH_POINT_483005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_483005", action = "action_EVENT_PLATFORM_REACH_POINT_483005", trigger_count = 0 },
	{ config_id = 1483006, name = "AVATAR_NEAR_PLATFORM_483006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_483006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_483006", trigger_count = 0 },
	{ config_id = 1483007, name = "VARIABLE_CHANGE_483007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_483007", action = "action_EVENT_VARIABLE_CHANGE_483007", trigger_count = 0 },
	{ config_id = 1483008, name = "GADGET_STATE_CHANGE_483008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_483008", action = "action_EVENT_GADGET_STATE_CHANGE_483008" },
	{ config_id = 1483009, name = "GADGET_CREATE_483009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_483009", action = "action_EVENT_GADGET_CREATE_483009", trigger_count = 0 },
	{ config_id = 1483010, name = "GADGET_CREATE_483010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_483010", action = "action_EVENT_GADGET_CREATE_483010", trigger_count = 0 },
	{ config_id = 1483011, name = "GROUP_LOAD_483011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_483011", action = "action_EVENT_GROUP_LOAD_483011", trigger_count = 0 },
	{ config_id = 1483012, name = "GROUP_LOAD_483012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_483012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_start", value = 0, no_refresh = true }
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
		gadgets = { 483001, 483003 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_483005", "AVATAR_NEAR_PLATFORM_483006", "VARIABLE_CHANGE_483007", "GADGET_STATE_CHANGE_483008", "GADGET_CREATE_483010", "GROUP_LOAD_483011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 483001, 483004 },
		regions = { },
		triggers = { "GADGET_CREATE_483009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 483001, 483002, 483003 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_483005", "AVATAR_NEAR_PLATFORM_483006", "GADGET_STATE_CHANGE_483008", "GADGET_CREATE_483010", "GROUP_LOAD_483012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_483005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_483005(context, evt)
	-- 将configid为 483001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 483001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 483002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 483002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_483006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_483006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 483002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2013, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_483007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_start"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "is_start", 133008483) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_483007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008483, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_483008(context, evt)
	if 483001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_483008(context, evt)
	-- 针对当前group内变量名为 "is_open" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "is_open", 1, 133008576) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008483, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_483009(context, evt)
	if 483001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_483009(context, evt)
	-- 将configid为 483001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 483001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_483010(context, evt)
	if 483002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_483010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 483003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_483011(context, evt)
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "success", 133008381) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_483011(context, evt)
	-- 将本组内变量名为 "is_start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "is_start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_483012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008483, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end