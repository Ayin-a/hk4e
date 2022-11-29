-- 基础信息
local base_info = {
	group_id = 199003093
}

-- Trigger变量
local defs = {
	group_id = 199003093,
	gadget_riddle_hint = 93001,
	gadget_riddle_1 = 93002,
	gadget_riddle_2 = 93003,
	gadget_riddle_3 = 93004,
	gadget_riddle_4 = 93005,
	gadget_chest = 93006
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
	{ config_id = 93001, gadget_id = 70310475, pos = { x = -641.592, y = 121.203, z = -125.941 }, rot = { x = 352.703, y = 189.233, z = 6.274 }, level = 20, area_id = 403 },
	{ config_id = 93002, gadget_id = 70310147, pos = { x = -644.315, y = 122.176, z = -128.884 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 93003, gadget_id = 70310147, pos = { x = -644.952, y = 121.590, z = -123.255 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 93004, gadget_id = 70310147, pos = { x = -639.818, y = 120.658, z = -122.581 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 93005, gadget_id = 70310147, pos = { x = -638.328, y = 121.112, z = -128.173 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 93006, gadget_id = 70211112, pos = { x = -641.286, y = 121.592, z = -125.692 }, rot = { x = 353.362, y = 269.407, z = 357.929 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1093007, name = "GADGET_STATE_CHANGE_93007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93007", action = "action_EVENT_GADGET_STATE_CHANGE_93007", trigger_count = 0 },
	{ config_id = 1093008, name = "VARIABLE_CHANGE_93008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_93008", action = "action_EVENT_VARIABLE_CHANGE_93008", trigger_count = 0 },
	{ config_id = 1093011, name = "GADGET_STATE_CHANGE_93011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93011", action = "action_EVENT_GADGET_STATE_CHANGE_93011", trigger_count = 0 },
	{ config_id = 1093012, name = "GROUP_LOAD_93012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_93012", trigger_count = 0 },
	{ config_id = 1093013, name = "GROUP_REFRESH_93013", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_93013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = false },
	{ config_id = 2, name = "create", value = 0, no_refresh = true },
	{ config_id = 3, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1093009, name = "GROUP_LOAD_93009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_93009", trigger_count = 0 },
		{ config_id = 1093010, name = "GROUP_LOAD_93010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_93010", trigger_count = 0 }
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
		gadgets = { 93001, 93006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_93007", "VARIABLE_CHANGE_93008", "GADGET_STATE_CHANGE_93011", "GROUP_LOAD_93012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 93001, 93002, 93003, 93004, 93005, 93006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_93007", "VARIABLE_CHANGE_93008", "GADGET_STATE_CHANGE_93011", "GROUP_LOAD_93012", "GROUP_REFRESH_93013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93007(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	if 0 == ScriptLib.GetCurTriggerCount(context) then
	ScriptLib.MarkPlayerAction(context, 1003, 1, 1)
	end 
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_93008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_93008(context, evt)
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
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93011(context, evt)
	if 93006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93011(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93012(context, evt)
	if ScriptLib.GetGroupVariableValueByGroup(context, "weather", 199003100) == 1 then
	if ScriptLib.GetGroupVariableValueByGroup(context, "create", 199003093) == 1 then
	ScriptLib.RefreshGroup(context, { group_id = 199003093, suite = 2 })
	end
	else
	ScriptLib.RefreshGroup(context, { group_id = 199003093, suite = 1 })
	end
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003093) == 1 then
	ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.GearStart) 
	 ScriptLib.SetGadgetStateByConfigId(context, 93003, GadgetState.GearStart)
	ScriptLib.SetGadgetStateByConfigId(context, 93004, GadgetState.GearStart)
	ScriptLib.SetGadgetStateByConfigId(context, 93005, GadgetState.GearStart) 
	ScriptLib.SetGadgetStateByConfigId(context, 93001, GadgetState.GearStart) 
	else
	ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.Default) 
	 ScriptLib.SetGadgetStateByConfigId(context, 93003, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 93004, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 93005, GadgetState.Default) 
	ScriptLib.SetGadgetStateByConfigId(context, 93001, GadgetState.Default) 
		end
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_93013(context, evt)
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003093) == 1 then
	ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.GearStart) 
	 ScriptLib.SetGadgetStateByConfigId(context, 93003, GadgetState.GearStart)
	ScriptLib.SetGadgetStateByConfigId(context, 93004, GadgetState.GearStart)
	ScriptLib.SetGadgetStateByConfigId(context, 93005, GadgetState.GearStart) 
	ScriptLib.SetGadgetStateByConfigId(context, 93001, GadgetState.GearStart) 
	else
	ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.Default) 
	 ScriptLib.SetGadgetStateByConfigId(context, 93003, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 93004, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 93005, GadgetState.Default) 
	ScriptLib.SetGadgetStateByConfigId(context, 93001, GadgetState.Default) 
		end
	
	
	
	
	
	return 0
end