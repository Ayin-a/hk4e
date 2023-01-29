-- 基础信息
local base_info = {
	group_id = 133314038
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
	{ config_id = 38001, gadget_id = 70330281, pos = { x = -790.183, y = -84.808, z = 4854.055 }, rot = { x = 0.000, y = 70.948, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 38003, gadget_id = 70330416, pos = { x = -758.852, y = -84.645, z = 4851.423 }, rot = { x = 0.062, y = 339.739, z = 359.213 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1038002, name = "GADGET_STATE_CHANGE_38002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38002", action = "action_EVENT_GADGET_STATE_CHANGE_38002", trigger_count = 0 },
	{ config_id = 1038004, name = "GROUP_LOAD_38004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_38004", action = "action_EVENT_GROUP_LOAD_38004", trigger_count = 0 },
	-- 播放CS
	{ config_id = 1038005, name = "VARIABLE_CHANGE_38005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_38005", action = "action_EVENT_VARIABLE_CHANGE_38005" },
	-- 延迟开门
	{ config_id = 1038006, name = "TIME_AXIS_PASS_38006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_38006", action = "action_EVENT_TIME_AXIS_PASS_38006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 38001, 38003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_38002", "GROUP_LOAD_38004", "VARIABLE_CHANGE_38005", "TIME_AXIS_PASS_38006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38002(context, evt)
	if 38001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38002(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_38004(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38004(context, evt)
	-- 将configid为 38003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_38005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_38005(context, evt)
	ScriptLib.InitTimeAxis(context, "cs_play", {1}, false)
	
	ScriptLib.PlayCutScene(context, 331410002, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_38006(context, evt)
	if "cs_play" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_38006(context, evt)
	-- 将configid为 38003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end