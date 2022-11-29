-- 基础信息
local base_info = {
	group_id = 133225194
}

-- Trigger变量
local defs = {
	group_id = 133225194,
	gadget_riddle_hint = 194001
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
	{ config_id = 194001, gadget_id = 70310012, pos = { x = -6377.142, y = 253.702, z = -2573.926 }, rot = { x = 350.710, y = 186.464, z = 0.572 }, level = 19, persistent = true, area_id = 18 },
	{ config_id = 194002, gadget_id = 70310147, pos = { x = -6396.454, y = 253.123, z = -2591.541 }, rot = { x = 349.896, y = 276.197, z = 358.909 }, level = 19, persistent = true, area_id = 18 },
	{ config_id = 194003, gadget_id = 70310147, pos = { x = -6396.580, y = 249.095, z = -2569.874 }, rot = { x = 350.943, y = 327.755, z = 355.182 }, level = 19, persistent = true, area_id = 18 },
	{ config_id = 194004, gadget_id = 70310147, pos = { x = -6374.801, y = 249.702, z = -2560.262 }, rot = { x = 357.647, y = 257.822, z = 349.227 }, level = 19, persistent = true, area_id = 18 },
	{ config_id = 194005, gadget_id = 70310147, pos = { x = -6368.443, y = 255.786, z = -2580.668 }, rot = { x = 17.014, y = 14.100, z = 0.000 }, level = 19, persistent = true, area_id = 18 },
	{ config_id = 194006, gadget_id = 70211111, pos = { x = -6381.204, y = 253.567, z = -2573.378 }, rot = { x = 0.000, y = 98.521, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1194007, name = "GADGET_STATE_CHANGE_194007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_194007", action = "action_EVENT_GADGET_STATE_CHANGE_194007" },
	{ config_id = 1194008, name = "VARIABLE_CHANGE_194008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_194008", action = "action_EVENT_VARIABLE_CHANGE_194008", trigger_count = 0 },
	{ config_id = 1194009, name = "VARIABLE_CHANGE_194009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_194009", action = "action_EVENT_VARIABLE_CHANGE_194009" },
	{ config_id = 1194010, name = "GADGET_STATE_CHANGE_194010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_194010", action = "action_EVENT_GADGET_STATE_CHANGE_194010" },
	{ config_id = 1194011, name = "GADGET_STATE_CHANGE_194011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_194011", action = "action_EVENT_GADGET_STATE_CHANGE_194011" },
	{ config_id = 1194012, name = "GADGET_STATE_CHANGE_194012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_194012", action = "action_EVENT_GADGET_STATE_CHANGE_194012" },
	{ config_id = 1194013, name = "GADGET_STATE_CHANGE_194013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_194013", action = "action_EVENT_GADGET_STATE_CHANGE_194013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 194001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_194008", "VARIABLE_CHANGE_194009", "GADGET_STATE_CHANGE_194013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 194002, 194003, 194004, 194005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_194007", "GADGET_STATE_CHANGE_194010", "GADGET_STATE_CHANGE_194011", "GADGET_STATE_CHANGE_194012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_194007(context, evt)
	if 194002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_194007(context, evt)
	-- 针对当前group内变量名为 "State_Flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_194008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_194008(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_194009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"State_Flag"为4
	if ScriptLib.GetGroupVariableValue(context, "State_Flag") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_194009(context, evt)
	-- 创建id为194006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 194006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133225273) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_194010(context, evt)
	if 194003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_194010(context, evt)
	-- 针对当前group内变量名为 "State_Flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_194011(context, evt)
	if 194004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_194011(context, evt)
	-- 针对当前group内变量名为 "State_Flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_194012(context, evt)
	if 194005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_194012(context, evt)
	-- 针对当前group内变量名为 "State_Flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_194013(context, evt)
	if 194006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_194013(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133225195) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end