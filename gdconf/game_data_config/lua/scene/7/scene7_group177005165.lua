-- 基础信息
local base_info = {
	group_id = 177005165
}

-- Trigger变量
local defs = {
	group_id = 177005165,
	gadget_riddle_1 = 165002,
	gadget_riddle_2 = 165003,
	gadget_riddle_3 = 165004,
	gadget_riddle_4 = 165005,
	gadget_chest = 165006
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
	{ config_id = 165002, gadget_id = 70310011, pos = { x = 578.238, y = 239.194, z = 845.520 }, rot = { x = 346.357, y = 292.559, z = 3.029 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 165003, gadget_id = 70310011, pos = { x = 559.006, y = 234.530, z = 845.572 }, rot = { x = 22.887, y = 276.486, z = 353.933 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 165004, gadget_id = 70310011, pos = { x = 578.322, y = 230.081, z = 865.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 165005, gadget_id = 70310011, pos = { x = 558.895, y = 234.132, z = 865.826 }, rot = { x = 333.803, y = 12.344, z = 336.462 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 165006, gadget_id = 70211161, pos = { x = 559.570, y = 230.072, z = 855.556 }, rot = { x = 0.000, y = 270.400, z = 0.000 }, level = 16, drop_tag = "渊下宫活动中级稻妻", isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1165007, name = "GADGET_STATE_CHANGE_165007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_165007", action = "action_EVENT_GADGET_STATE_CHANGE_165007", trigger_count = 0 },
	{ config_id = 1165008, name = "VARIABLE_CHANGE_165008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_165008", action = "action_EVENT_VARIABLE_CHANGE_165008", trigger_count = 0 },
	{ config_id = 1165009, name = "GROUP_LOAD_165009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_165009", trigger_count = 0 }
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
		gadgets = { 165002, 165003, 165004, 165005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_165007", "VARIABLE_CHANGE_165008", "GROUP_LOAD_165009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_165007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_165007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_165008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_165008(context, evt)
	if evt.param1 == 4 then
	ScriptLib.CreateGadget(context, { config_id = 165006 }) 
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_165009(context, evt)
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