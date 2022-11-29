-- 基础信息
local base_info = {
	group_id = 177006041
}

-- Trigger变量
local defs = {
	group_id = 177006041,
	gadget_riddle_hint = 41001,
	gadget_riddle_1 = 41002,
	gadget_riddle_2 = 41003,
	gadget_riddle_3 = 41004,
	gadget_riddle_4 = 41005,
	gadget_chest = 41006
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
	{ config_id = 41001, gadget_id = 70310012, pos = { x = 387.944, y = 186.053, z = -264.692 }, rot = { x = 6.878, y = 0.010, z = 0.329 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 41002, gadget_id = 70310011, pos = { x = 388.145, y = 190.863, z = -282.553 }, rot = { x = 358.809, y = 275.566, z = 348.498 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 41003, gadget_id = 70310011, pos = { x = 401.018, y = 189.299, z = -287.096 }, rot = { x = 4.989, y = 316.158, z = 13.753 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 41004, gadget_id = 70310011, pos = { x = 404.804, y = 196.235, z = -270.687 }, rot = { x = 352.239, y = 257.484, z = 1.717 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 41005, gadget_id = 70310011, pos = { x = 404.725, y = 188.238, z = -276.750 }, rot = { x = 7.567, y = 11.933, z = 328.074 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 41006, gadget_id = 70211156, pos = { x = 387.896, y = 186.461, z = -264.559 }, rot = { x = 5.446, y = 330.453, z = 355.846 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1041007, name = "GADGET_STATE_CHANGE_41007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41007", action = "action_EVENT_GADGET_STATE_CHANGE_41007", trigger_count = 0 },
	{ config_id = 1041008, name = "VARIABLE_CHANGE_41008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_41008", action = "action_EVENT_VARIABLE_CHANGE_41008", trigger_count = 0 },
	{ config_id = 1041009, name = "GROUP_LOAD_41009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_41009", trigger_count = 0 }
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
		gadgets = { 41001, 41002, 41003, 41004, 41005, 41006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_41007", "VARIABLE_CHANGE_41008", "GROUP_LOAD_41009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_41008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41008(context, evt)
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
function action_EVENT_GROUP_LOAD_41009(context, evt)
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