-- 基础信息
local base_info = {
	group_id = 250066002
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
	{ config_id = 2001, gadget_id = 70330019, pos = { x = -52.412, y = 247.203, z = -48.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2002, gadget_id = 70330019, pos = { x = -74.119, y = 247.179, z = -13.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2003, gadget_id = 70330019, pos = { x = -29.337, y = 247.391, z = -12.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2004, gadget_id = 70330021, pos = { x = -49.202, y = 247.293, z = -48.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2005, gadget_id = 70330021, pos = { x = -73.498, y = 247.248, z = -10.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2006, gadget_id = 70330021, pos = { x = -26.904, y = 247.342, z = -14.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2011, gadget_id = 70900039, pos = { x = -51.712, y = 248.085, z = -23.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 2013, gadget_id = 70900201, pos = { x = -51.441, y = 248.735, z = -23.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002007, name = "GADGET_STATE_CHANGE_2007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2007", action = "action_EVENT_GADGET_STATE_CHANGE_2007", trigger_count = 0 },
	{ config_id = 1002008, name = "GADGET_STATE_CHANGE_2008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2008", action = "action_EVENT_GADGET_STATE_CHANGE_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "GADGET_STATE_CHANGE_2009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2009", action = "action_EVENT_GADGET_STATE_CHANGE_2009", trigger_count = 0 },
	{ config_id = 1002010, name = "VARIABLE_CHANGE_2010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2010", action = "action_EVENT_VARIABLE_CHANGE_2010" },
	{ config_id = 1002012, name = "GADGET_STATE_CHANGE_2012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2012", action = "action_EVENT_GADGET_STATE_CHANGE_2012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "box1", value = 0, no_refresh = false },
	{ config_id = 2, name = "box2", value = 0, no_refresh = false },
	{ config_id = 3, name = "box3", value = 0, no_refresh = false }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2011, 2013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2007", "GADGET_STATE_CHANGE_2008", "GADGET_STATE_CHANGE_2009", "VARIABLE_CHANGE_2010", "GADGET_STATE_CHANGE_2012" },
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
function condition_EVENT_GADGET_STATE_CHANGE_2007(context, evt)
	if 2001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2007(context, evt)
	-- 将本组内变量名为 "box1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "box1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2008(context, evt)
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2008(context, evt)
	-- 将本组内变量名为 "box2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "box2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2009(context, evt)
	if 2003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2009(context, evt)
	-- 将本组内变量名为 "box3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "box3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"box1"为1
	if ScriptLib.GetGroupVariableValue(context, "box1") ~= 1 then
			return false
	end
	
	-- 判断变量"box2"为1
	if ScriptLib.GetGroupVariableValue(context, "box2") ~= 1 then
			return false
	end
	
	-- 判断变量"box3"为1
	if ScriptLib.GetGroupVariableValue(context, "box3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2010(context, evt)
	-- 将configid为 2011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2500660021") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2012(context, evt)
	if 2011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2500660022") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250066002, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250066003, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end