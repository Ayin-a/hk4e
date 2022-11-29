-- 基础信息
local base_info = {
	group_id = 155005204
}

-- Trigger变量
local defs = {
	group_id = 155005204,
	gadget_riddle_hint = 204001,
	gadget_riddle_1 = 204002,
	gadget_riddle_2 = 204003,
	gadget_riddle_3 = 204004,
	gadget_riddle_4 = 204005,
	gadget_chest = 204006
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
	{ config_id = 204001, gadget_id = 70310012, pos = { x = 287.172, y = 337.472, z = 147.615 }, rot = { x = 353.576, y = 227.903, z = 2.194 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 204002, gadget_id = 70900049, pos = { x = 274.034, y = 345.117, z = 145.631 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 204003, gadget_id = 70900049, pos = { x = 283.034, y = 339.142, z = 165.868 }, rot = { x = 347.240, y = 317.459, z = 6.840 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 204004, gadget_id = 70900049, pos = { x = 283.513, y = 343.907, z = 123.715 }, rot = { x = 342.645, y = 259.481, z = 347.720 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 204005, gadget_id = 70900049, pos = { x = 299.151, y = 337.274, z = 147.451 }, rot = { x = 356.506, y = 14.249, z = 6.462 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 204006, gadget_id = 70211102, pos = { x = 287.253, y = 337.914, z = 147.638 }, rot = { x = 353.783, y = 270.548, z = 357.273 }, level = 16, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1204007, name = "GADGET_STATE_CHANGE_204007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_204007", action = "action_EVENT_GADGET_STATE_CHANGE_204007", trigger_count = 0 },
	{ config_id = 1204008, name = "VARIABLE_CHANGE_204008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_204008", action = "action_EVENT_VARIABLE_CHANGE_204008", trigger_count = 0 },
	{ config_id = 1204009, name = "GROUP_LOAD_204009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_204009", trigger_count = 0 }
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
		gadgets = { 204001, 204002, 204003, 204004, 204005, 204006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_204007", "VARIABLE_CHANGE_204008", "GROUP_LOAD_204009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_204007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_204007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_204008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_204008(context, evt)
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
function action_EVENT_GROUP_LOAD_204009(context, evt)
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