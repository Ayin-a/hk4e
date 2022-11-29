-- 基础信息
local base_info = {
	group_id = 133309778
}

-- Trigger变量
local defs = {
	group_id = 133309778,
	gadget_riddle_hint = 778001,
	gadget_riddle_1 = 778002,
	gadget_riddle_2 = 778003,
	gadget_riddle_3 = 778004,
	gadget_riddle_4 = 778005,
	gadget_chest = 778006
}

-- DEFS_MISCS
local markList = {778002,778003,778004,778005}

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
	{ config_id = 778001, gadget_id = 70330336, pos = { x = -2722.409, y = 199.491, z = 5628.786 }, rot = { x = 10.436, y = 189.181, z = 351.048 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 778002, gadget_id = 70330411, pos = { x = -2713.683, y = 200.165, z = 5622.476 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 778003, gadget_id = 70330411, pos = { x = -2729.188, y = 198.139, z = 5628.433 }, rot = { x = 359.327, y = 318.047, z = 12.443 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 778004, gadget_id = 70330411, pos = { x = -2723.929, y = 203.422, z = 5638.455 }, rot = { x = 359.538, y = 253.793, z = 344.546 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 778005, gadget_id = 70330411, pos = { x = -2713.614, y = 201.393, z = 5629.559 }, rot = { x = 348.500, y = 13.642, z = 9.771 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 778006, gadget_id = 70211102, pos = { x = -2722.415, y = 199.947, z = 5628.751 }, rot = { x = 13.608, y = 237.569, z = 1.744 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 778010, gadget_id = 70220103, pos = { x = -2713.412, y = 210.078, z = 5625.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1778007, name = "GADGET_STATE_CHANGE_778007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_778007", action = "action_EVENT_GADGET_STATE_CHANGE_778007", trigger_count = 0 },
	{ config_id = 1778008, name = "VARIABLE_CHANGE_778008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_778008", action = "action_EVENT_VARIABLE_CHANGE_778008", trigger_count = 0 },
	{ config_id = 1778009, name = "GROUP_LOAD_778009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_778009", trigger_count = 0 }
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
		gadgets = { 778001, 778002, 778003, 778004, 778005, 778006, 778010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_778007", "VARIABLE_CHANGE_778008", "GROUP_LOAD_778009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_778007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_778007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_778008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_778008(context, evt)
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
function action_EVENT_GROUP_LOAD_778009(context, evt)
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

require "V3_1/Transparent_Mark"