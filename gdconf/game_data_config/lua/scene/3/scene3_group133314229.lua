-- 基础信息
local base_info = {
	group_id = 133314229
}

-- Trigger变量
local defs = {
	group_id = 133314229,
	gadget_riddle_hint = 229001,
	gadget_riddle_1 = 229002,
	gadget_riddle_2 = 229003,
	gadget_riddle_3 = 229004,
	gadget_riddle_4 = 229005,
	gadget_chest = 229006
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
	{ config_id = 229001, gadget_id = 70330336, pos = { x = -498.314, y = 117.508, z = 4349.742 }, rot = { x = 349.435, y = 223.946, z = 332.612 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 229002, gadget_id = 70330335, pos = { x = -498.577, y = 128.416, z = 4332.130 }, rot = { x = 16.482, y = 270.996, z = 325.792 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 229003, gadget_id = 70330335, pos = { x = -513.360, y = 118.477, z = 4341.001 }, rot = { x = 19.845, y = 315.259, z = 347.239 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 229004, gadget_id = 70330335, pos = { x = -490.360, y = 105.513, z = 4387.714 }, rot = { x = 5.018, y = 257.350, z = 354.301 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 229005, gadget_id = 70330335, pos = { x = -488.240, y = 122.251, z = 4346.333 }, rot = { x = 19.377, y = 331.457, z = 0.003 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 229006, gadget_id = 70211102, pos = { x = -498.415, y = 117.902, z = 4349.934 }, rot = { x = 28.822, y = 323.259, z = 355.054 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1229007, name = "GADGET_STATE_CHANGE_229007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229007", action = "action_EVENT_GADGET_STATE_CHANGE_229007", trigger_count = 0 },
	{ config_id = 1229008, name = "VARIABLE_CHANGE_229008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_229008", action = "action_EVENT_VARIABLE_CHANGE_229008", trigger_count = 0 },
	{ config_id = 1229009, name = "GROUP_LOAD_229009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_229009", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 229001, 229002, 229003, 229004, 229005, 229006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_229007", "VARIABLE_CHANGE_229008", "GROUP_LOAD_229009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_229008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_229008(context, evt)
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

-- 触发操作
function action_EVENT_GROUP_LOAD_229009(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end