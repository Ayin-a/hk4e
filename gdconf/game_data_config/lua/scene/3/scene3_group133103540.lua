-- 基础信息
local base_info = {
	group_id = 133103540
}

-- Trigger变量
local defs = {
	gadget_seal_id = 540005,
	gadget_light_1 = 540002,
	gadget_light_2 = 540003,
	gadget_light_3 = 540004,
	group_id = 133103540,
	gadget_seal_model = 540001
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
	{ config_id = 540001, gadget_id = 70950008, pos = { x = 157.356, y = 194.026, z = 1399.595 }, rot = { x = 0.000, y = 0.860, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 540002, gadget_id = 70950006, pos = { x = 102.786, y = 208.392, z = 1392.618 }, rot = { x = 0.000, y = 211.607, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 540003, gadget_id = 70950006, pos = { x = 157.054, y = 229.671, z = 1442.578 }, rot = { x = 0.000, y = 98.520, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 540004, gadget_id = 70950006, pos = { x = 198.817, y = 215.242, z = 1379.926 }, rot = { x = 0.000, y = 276.301, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 540005, gadget_id = 70950007, pos = { x = 157.310, y = 194.075, z = 1399.593 }, rot = { x = 0.000, y = 0.860, z = 0.000 }, level = 24, state = GadgetState.GearStop, area_id = 6 },
	{ config_id = 540010, gadget_id = 70350004, pos = { x = 156.910, y = 217.552, z = 1420.416 }, rot = { x = 0.000, y = 180.160, z = 180.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 540011, gadget_id = 70350004, pos = { x = 115.362, y = 196.133, z = 1401.277 }, rot = { x = 0.000, y = 89.160, z = 180.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 540012, gadget_id = 70350004, pos = { x = 190.626, y = 202.936, z = 1393.319 }, rot = { x = 0.000, y = 111.200, z = 180.000 }, level = 24, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1540006, name = "GADGET_STATE_CHANGE_540006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_540006", trigger_count = 0 },
	{ config_id = 1540007, name = "GADGET_CREATE_540007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_540007", action = "action_EVENT_GADGET_CREATE_540007", trigger_count = 0 },
	{ config_id = 1540008, name = "QUEST_FINISH_540008", event = EventType.EVENT_QUEST_FINISH, source = "7101102", condition = "condition_EVENT_QUEST_FINISH_540008", action = "action_EVENT_QUEST_FINISH_540008", trigger_count = 0 },
	{ config_id = 1540009, name = "GROUP_LOAD_540009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_540009", trigger_count = 0 },
	{ config_id = 1540013, name = "QUEST_START_540013", event = EventType.EVENT_QUEST_START, source = "7101103", condition = "condition_EVENT_QUEST_START_540013", action = "action_EVENT_QUEST_START_540013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Point_Value", value = 0, no_refresh = true },
	{ config_id = 2, name = "Temp_Point_Value", value = 0, no_refresh = true },
	{ config_id = 3, name = "Quest_Flag", value = 0, no_refresh = true },
	{ config_id = 4, name = "Puzzle_Flag_1", value = 0, no_refresh = true },
	{ config_id = 5, name = "Puzzle_Flag_2", value = 0, no_refresh = true },
	{ config_id = 6, name = "Puzzle_Flag_3", value = 0, no_refresh = true }
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
		gadgets = { 540001, 540010, 540011, 540012 },
		regions = { },
		triggers = { "QUEST_FINISH_540008", "GROUP_LOAD_540009", "QUEST_START_540013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 540005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_540006", "GADGET_CREATE_540007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_540006(context, evt)
	local t_p_value = 0
	if evt.param2 == defs.gadget_light_1 or evt.param2 == defs.gadget_light_2 or evt.param2 == defs.gadget_light_3 then
		-- 光柱触发信息令封印激活玩家身上的子弹
		if evt.param1 == GadgetState.GearStart then
			local cur_state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_seal_id)
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_seal_id, GadgetState.ChestTrap)
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_seal_id, cur_state)
			-- 记录光柱触碰状况
			if evt.param2 == defs.gadget_light_1 then
				t_p_value = 1
			elseif evt.param2 == defs.gadget_light_2 then
				t_p_value = 2
			elseif evt.param2 == defs.gadget_light_3 then
				t_p_value = 4
			end	
			ScriptLib.ChangeGroupVariableValue(context, "Temp_Point_Value", t_p_value)
			return 0
		end
	elseif evt.param2 == defs.gadget_seal_id then
		-- 封印103时处理光柱逻辑
		if evt.param1 == GadgetState.Action01 or evt.param1 == GadgetState.Action02 then
			if evt.param1 ~= GadgetState.ChestTrap and evt.param3 ~= GadgetState.ChestTrap then
				t_p_value = ScriptLib.GetGroupVariableValue(context, "Temp_Point_Value")
				ScriptLib.SetGroupVariableValue(context, "Point_Value", t_p_value)
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_seal_model, evt.param1)
			end	
		elseif evt.param1 == GadgetState.ChestLocked then
			-- 玩家出界，group数据清理
			local p_value = ScriptLib.GetGroupVariableValue(context, "Point_Value")
			-- 重置临时数据
			ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", p_value)
			if p_value%2 == 0 then
	            ScriptLib.CreateGadget(context, {config_id = defs.gadget_light_1})
	            -- 判断变量"Puzzle_Flag_1"为0
	            if ScriptLib.GetGroupVariableValue(context, "Puzzle_Flag_1") == 0 then
	                ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_light_1, GadgetState.GearStop)
	            end
			end
			if p_value%4 < 2 then
	            ScriptLib.CreateGadget(context, {config_id = defs.gadget_light_2})
	            -- 判断变量"Puzzle_Flag_2"为0
	            if ScriptLib.GetGroupVariableValue(context, "Puzzle_Flag_2") == 0 then
	                ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_light_2, GadgetState.GearStop)
	            end
			end
			if p_value < 4 then
	            ScriptLib.CreateGadget(context, {config_id = defs.gadget_light_3})
	            -- 判断变量"Puzzle_Flag_3"为0
	            if ScriptLib.GetGroupVariableValue(context, "Puzzle_Flag_3") == 0 then
	                ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_light_3, GadgetState.GearStop)
	            end
			end
		elseif evt.param1 == GadgetState.Action03 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_seal_model, evt.param1)
			-- 封印解除
			t_p_value = ScriptLib.GetGroupVariableValue(context, "Temp_Point_Value")
			ScriptLib.SetGroupVariableValue(context, "Point_Value", t_p_value)
			ScriptLib.AddQuestProgress(context, "7101102_progress")
			ScriptLib.SetGroupVariableValue(context, "Quest_Flag", 1)
			ScriptLib.KillEntityByConfigId(context, { group_id = defs.group_id, config_id = defs.gadget_seal_id })
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
	-- 判断变量"Unlocked"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "Unlocked", 133103496) == 0 then
	        -- 将本组内变量名为 "Unlocked" 的变量设置为 1
	        ScriptLib.SetGroupVariableValueByGroup(context, "Unlocked", 1, 133103496)
	end
		end
		return 0
	else
		return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_540007(context, evt)
	if evt.param1 ~= defs.gadget_seal_id then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_540007(context, evt)
	local state_info = ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_seal_model)
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_seal_id, state_info)
	if state_info == GadgetState.Default then
		ScriptLib.SetGroupVariableValue(context, "Point_Value", 0)
		ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", 0)
	elseif state_info == GadgetState.GearStart then
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_seal_id, {24})
		return 0
	end
	local p_value = ScriptLib.GetGroupVariableValue(context, "Point_Value")
	if p_value ~= 7 then
		-- 重置临时数据
		ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", p_value)
		if p_value%2 == 0 then
	        ScriptLib.CreateGadget(context, {config_id = defs.gadget_light_1})
	        -- 判断变量"Puzzle_Flag_1"为0
	        if ScriptLib.GetGroupVariableValue(context, "Puzzle_Flag_1") == 0 then
	            ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_light_1, GadgetState.GearStop)
	        end
		end
		if p_value%4 < 2 then
	        ScriptLib.CreateGadget(context, {config_id = defs.gadget_light_2})
	        -- 判断变量"Puzzle_Flag_2"为0
	        if ScriptLib.GetGroupVariableValue(context, "Puzzle_Flag_2") == 0 then
	            ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_light_2, GadgetState.GearStop)
	        end
		end
		if p_value < 4 then
	        ScriptLib.CreateGadget(context, {config_id = defs.gadget_light_3})
	        -- 判断变量"Puzzle_Flag_3"为0
	        if ScriptLib.GetGroupVariableValue(context, "Puzzle_Flag_3") == 0 then
	            ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_light_3, GadgetState.GearStop)
	        end
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_540008(context, evt)
	-- 判断变量"Quest_Flag"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "Quest_Flag", 133103540) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_540008(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	ScriptLib.SetGroupVariableValue(context, "Quest_Flag", 1)
	-- 将configid为 540010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 540010, GadgetState.GearStart) then
			return -1
		end 
	-- 将configid为 540010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 540011, GadgetState.GearStart) then
			return -1
		end 
	-- 将configid为 540010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 540012, GadgetState.GearStart) then
			return -1
		end 
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_540009(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "Point_Value") == 7 and ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_seal_model) ~= GadgetState.Action03 then
		ScriptLib.SetGroupVariableValue(context, "Point_Value", 3)
		ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", 3)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_seal_model, GadgetState.Action02)
	end
	local qf = ScriptLib.GetGroupVariableValue(context, "Quest_Flag")
	if qf == 1 then
	    ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	if ScriptLib.GetGroupVariableValueByGroup(context, "Unlocked", 133103496) == 1 and ScriptLib.GetGroupVariableValueByGroup(context, "TreasureBox", 133103496) == 0 then
	        -- 将本组内变量名为 "Unlocked" 的变量设置为 0
	        ScriptLib.SetGroupVariableValueByGroup(context, "Unlocked", 0, 133103496)
	        -- 将本组内变量名为 "Unlocked" 的变量设置为 1
	        ScriptLib.SetGroupVariableValueByGroup(context, "Unlocked", 1, 133103496)
	elseif ScriptLib.GetGroupVariableValueByGroup(context, "Unlocked", 133103496) == 2 then
	return 0
	end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_540013(context, evt)
	-- 判断变量"Quest_Flag"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "Quest_Flag", 133103540) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_540013(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	ScriptLib.SetGroupVariableValue(context, "Quest_Flag", 1)
	-- 将configid为 540010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 540010, GadgetState.GearStart) then
			return -1
		end 
	-- 将configid为 540010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 540011, GadgetState.GearStart) then
			return -1
		end 
	-- 将configid为 540010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 540012, GadgetState.GearStart) then
			return -1
		end 
	return 0
end