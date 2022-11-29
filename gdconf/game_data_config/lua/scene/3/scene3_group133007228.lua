-- 基础信息
local base_info = {
	group_id = 133007228
}

-- Trigger变量
local defs = {
	seal_id = 980,
	light_1 = 966,
	light_2 = 967,
	light_3 = 968,
	group_id = 133007228,
	seal_model = 965
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
	{ config_id = 965, gadget_id = 70950008, pos = { x = 2741.946, y = 212.451, z = -94.798 }, rot = { x = 0.000, y = 43.788, z = 0.000 }, level = 23, persistent = true, area_id = 4 },
	{ config_id = 966, gadget_id = 70950006, pos = { x = 2738.495, y = 212.851, z = -107.185 }, rot = { x = 0.000, y = 211.607, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 967, gadget_id = 70950006, pos = { x = 2794.028, y = 249.473, z = -71.903 }, rot = { x = 0.000, y = 98.520, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 968, gadget_id = 70950006, pos = { x = 2819.938, y = 258.631, z = -22.103 }, rot = { x = 0.000, y = 276.301, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 980, gadget_id = 70950007, pos = { x = 2741.900, y = 212.500, z = -94.800 }, rot = { x = 0.000, y = 92.471, z = 0.000 }, level = 23, state = GadgetState.GearStop, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000304, name = "GADGET_STATE_CHANGE_304", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_304", trigger_count = 0 },
	{ config_id = 1000307, name = "GADGET_CREATE_307", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_307", action = "action_EVENT_GADGET_CREATE_307", trigger_count = 0 },
	{ config_id = 1000310, name = "QUEST_FINISH_310", event = EventType.EVENT_QUEST_FINISH, source = "39004", condition = "", action = "action_EVENT_QUEST_FINISH_310", trigger_count = 0 },
	{ config_id = 1000319, name = "GROUP_LOAD_319", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_319", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Point_Value", value = 0, no_refresh = true },
	{ config_id = 2, name = "Temp_Point_Value", value = 0, no_refresh = true },
	{ config_id = 3, name = "Quest_Flag", value = 0, no_refresh = true }
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
		gadgets = { 965 },
		regions = { },
		triggers = { "QUEST_FINISH_310", "GROUP_LOAD_319" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 980 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_304", "GADGET_CREATE_307" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304(context, evt)
	local t_p_value = 0
	if evt.param2 == defs.light_1 or evt.param2 == defs.light_2 or evt.param2 == defs.light_3 then
		-- 光柱触发信息令封印激活玩家身上的子弹
		if evt.param1 == GadgetState.GearStart then
			local cur_state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.seal_id)
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_id, GadgetState.ChestTrap)
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_id, cur_state)
			-- 记录光柱触碰状况
			if evt.param2 == defs.light_1 then
				t_p_value = 1
			elseif evt.param2 == defs.light_2 then
				t_p_value = 2
			elseif evt.param2 == defs.light_3 then
				t_p_value = 4
			end	
			ScriptLib.ChangeGroupVariableValue(context, "Temp_Point_Value", t_p_value)
			return 0
		end
	elseif evt.param2 == defs.seal_id then
		-- 封印103时处理光柱逻辑
		if evt.param1 == GadgetState.Action01 or evt.param1 == GadgetState.Action02 then
			if evt.param1 ~= GadgetState.ChestTrap and evt.param3 ~= GadgetState.ChestTrap then
				t_p_value = ScriptLib.GetGroupVariableValue(context, "Temp_Point_Value")
				ScriptLib.SetGroupVariableValue(context, "Point_Value", t_p_value)
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_model, evt.param1)
			end	
		elseif evt.param1 == GadgetState.ChestLocked then
			-- 玩家出界，group数据清理
			local p_value = ScriptLib.GetGroupVariableValue(context, "Point_Value")
			-- 重置临时数据
			ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", p_value)
			if p_value%2 == 0 then
				ScriptLib.CreateGadget(context, {config_id = defs.light_1})
			end
			if p_value%4 < 2 then
				ScriptLib.CreateGadget(context, {config_id = defs.light_2})
			end
			if p_value < 4 then
				ScriptLib.CreateGadget(context, {config_id = defs.light_3})
			end
		elseif evt.param1 == GadgetState.Action03 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_model, evt.param1)
			-- 封印解除
			t_p_value = ScriptLib.GetGroupVariableValue(context, "Temp_Point_Value")
			ScriptLib.SetGroupVariableValue(context, "Point_Value", t_p_value)
			ScriptLib.AddQuestProgress(context, "39005_success")
			ScriptLib.SetGroupVariableValue(context, "Quest_Flag", 1)
			ScriptLib.KillEntityByConfigId(context, { group_id = defs.group_id, config_id = defs.seal_id })
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
		end
		return 0
	else
		return -1
	end
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_307(context, evt)
	if evt.param1 ~= defs.seal_id then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_307(context, evt)
	local state_info = ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.seal_model)
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_id, state_info)
	if state_info == GadgetState.Default then
		ScriptLib.SetGroupVariableValue(context, "Point_Value", 0)
		ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", 0)
	elseif state_info == GadgetState.GearStart then
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.seal_id, {24})
		return 0
	end
	local p_value = ScriptLib.GetGroupVariableValue(context, "Point_Value")
	if p_value ~= 7 then
		-- 重置临时数据
		ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", p_value)
		if p_value%2 == 0 then
			ScriptLib.CreateGadget(context, {config_id = defs.light_1})
		end
		if p_value%4 < 2 then
			ScriptLib.CreateGadget(context, {config_id = defs.light_2})
		end
		if p_value < 4 then
			ScriptLib.CreateGadget(context, {config_id = defs.light_3})
		end
	end
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_310(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	ScriptLib.SetGroupVariableValue(context, "Quest_Flag", 1)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_319(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "Point_Value") == 7 and ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.seal_model) ~= GadgetState.Action03 then
		ScriptLib.SetGroupVariableValue(context, "Point_Value", 3)
		ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", 3)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_model, GadgetState.Action02)
	end
	local qf = ScriptLib.GetGroupVariableValue(context, "Quest_Flag")
	if qf == 1 then
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	end
	return 0
end