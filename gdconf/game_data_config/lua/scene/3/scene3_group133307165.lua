-- 基础信息
local base_info = {
	group_id = 133307165
}

-- Trigger变量
local defs = {
	group_id = 133307165,
	gadget_riddle_hint = 165001,
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
	{ config_id = 165001, gadget_id = 70330336, pos = { x = -1196.013, y = 23.632, z = 5740.629 }, rot = { x = 0.000, y = 238.137, z = 0.000 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 165002, gadget_id = 70330404, pos = { x = -1199.706, y = 27.461, z = 5696.297 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 19, persistent = true, area_id = 32 },
	-- 1
	{ config_id = 165003, gadget_id = 70330404, pos = { x = -1234.388, y = 25.596, z = 5745.941 }, rot = { x = 1.776, y = 317.500, z = 0.000 }, level = 19, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 165004, gadget_id = 70330404, pos = { x = -1185.932, y = 42.523, z = 5776.265 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 165005, gadget_id = 70330404, pos = { x = -1151.603, y = 37.295, z = 5748.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 165006, gadget_id = 70211122, pos = { x = -1195.942, y = 24.080, z = 5740.626 }, rot = { x = 0.000, y = 288.527, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1165007, name = "GADGET_STATE_CHANGE_165007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_165007", action = "action_EVENT_GADGET_STATE_CHANGE_165007", trigger_count = 0 },
	{ config_id = 1165008, name = "VARIABLE_CHANGE_165008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_165008", action = "action_EVENT_VARIABLE_CHANGE_165008", trigger_count = 0 },
	{ config_id = 1165009, name = "GROUP_LOAD_165009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_165009", trigger_count = 0 },
	-- 解锁方碑2
	{ config_id = 1165010, name = "VARIABLE_CHANGE_165010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_165010", action = "action_EVENT_VARIABLE_CHANGE_165010" },
	-- 解锁保底
	{ config_id = 1165011, name = "GROUP_LOAD_165011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_165011", action = "action_EVENT_GROUP_LOAD_165011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "unlock_1", value = 0, no_refresh = true }
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
		gadgets = { 165001, 165002, 165003, 165004, 165005, 165006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_165007", "VARIABLE_CHANGE_165008", "GROUP_LOAD_165009", "VARIABLE_CHANGE_165010", "GROUP_LOAD_165011" },
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_165010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock_1"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_165010(context, evt)
	-- 将configid为 165003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_165011(context, evt)
	-- 判断变量"unlock_1"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock_1") ~= 1 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133307165, 165003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_165011(context, evt)
	-- 将configid为 165003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end