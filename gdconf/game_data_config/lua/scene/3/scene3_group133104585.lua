-- 基础信息
local base_info = {
	group_id = 133104585
}

-- Trigger变量
local defs = {
	gadget_seal_id = 585005,
	gadget_light_1 = 585002,
	gadget_light_2 = 585003,
	gadget_light_3 = 585004,
	group_id = 133104585,
	gadget_seal_model = 585001
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
	{ config_id = 585001, gadget_id = 70950008, pos = { x = 911.974, y = 227.192, z = 939.551 }, rot = { x = 0.000, y = 0.046, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 585002, gadget_id = 70950006, pos = { x = 885.401, y = 240.753, z = 858.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 585003, gadget_id = 70950006, pos = { x = 993.865, y = 240.486, z = 932.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 585004, gadget_id = 70950006, pos = { x = 754.224, y = 270.571, z = 938.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 585005, gadget_id = 70950007, pos = { x = 906.135, y = 227.573, z = 939.486 }, rot = { x = 0.000, y = 48.729, z = 0.000 }, level = 24, state = GadgetState.GearStop, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1585006, name = "GADGET_STATE_CHANGE_585006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_585006", trigger_count = 0 },
	{ config_id = 1585007, name = "GADGET_CREATE_585007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_585007", action = "action_EVENT_GADGET_CREATE_585007", trigger_count = 0 },
	{ config_id = 1585008, name = "QUEST_FINISH_585008", event = EventType.EVENT_QUEST_FINISH, source = "2102501", condition = "", action = "action_EVENT_QUEST_FINISH_585008", trigger_count = 0 },
	{ config_id = 1585009, name = "GROUP_LOAD_585009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_585009", trigger_count = 0 },
	{ config_id = 1585010, name = "VARIABLE_CHANGE_585010", event = EventType.EVENT_VARIABLE_CHANGE, source = "Point_Value", condition = "", action = "action_EVENT_VARIABLE_CHANGE_585010", trigger_count = 0 },
	{ config_id = 1585011, name = "QUEST_FINISH_585011", event = EventType.EVENT_QUEST_FINISH, source = "2102501", condition = "", action = "action_EVENT_QUEST_FINISH_585011", trigger_count = 0 },
	{ config_id = 1585012, name = "TIMER_EVENT_585012", event = EventType.EVENT_TIMER_EVENT, source = "ActiveReminder", condition = "", action = "action_EVENT_TIMER_EVENT_585012" },
	{ config_id = 1585013, name = "TIMER_EVENT_585013", event = EventType.EVENT_TIMER_EVENT, source = "QuestFinish", condition = "", action = "action_EVENT_TIMER_EVENT_585013" },
	{ config_id = 1585014, name = "VARIABLE_CHANGE_585014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_585014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Point_Value", value = 0, no_refresh = true },
	{ config_id = 2, name = "Temp_Point_Value", value = 0, no_refresh = true },
	{ config_id = 3, name = "Quest_Flag", value = 0, no_refresh = true },
	{ config_id = 4, name = "check", value = 0, no_refresh = true }
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
		gadgets = { 585001 },
		regions = { },
		triggers = { "QUEST_FINISH_585008", "GROUP_LOAD_585009", "VARIABLE_CHANGE_585010", "QUEST_FINISH_585011", "TIMER_EVENT_585012", "TIMER_EVENT_585013", "VARIABLE_CHANGE_585014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 585005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_585006", "GADGET_CREATE_585007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_585006(context, evt)
	ScriptLib.PrintContextLog(context, "## SEAL_STATE | "..evt.param2.." : "..evt.param3.."->"..evt.param1)
	
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
			end
			if p_value%4 < 2 then
				ScriptLib.CreateGadget(context, {config_id = defs.gadget_light_2})
			end
			if p_value < 4 then
				ScriptLib.CreateGadget(context, {config_id = defs.gadget_light_3})
			end
		elseif evt.param1 == GadgetState.Action03 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_seal_model, evt.param1)
			-- 封印解除
			t_p_value = ScriptLib.GetGroupVariableValue(context, "Temp_Point_Value")
			ScriptLib.SetGroupVariableValue(context, "Point_Value", t_p_value)
			ScriptLib.SetGroupVariableValue(context, "Quest_Flag", 1)
			ScriptLib.KillEntityByConfigId(context, { group_id = defs.group_id, config_id = defs.gadget_seal_id })
			ScriptLib.CreateGroupTimerEvent(context, 133104585, "QuestFinish", 4)
			ScriptLib.SetGroupGadgetStateByConfigId(context, 133104440, 440008, GadgetState.GearStart)
			ScriptLib.AddQuestProgress(context, "QuestFinish21025")
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
		
		end
		return 0
	else
		return -1
	end
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_585007(context, evt)
	if evt.param1 ~= defs.gadget_seal_id then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_585007(context, evt)
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
		end
		if p_value%4 < 2 then
			ScriptLib.CreateGadget(context, {config_id = defs.gadget_light_2})
		end
		if p_value < 4 then
			ScriptLib.CreateGadget(context, {config_id = defs.gadget_light_3})
		end
	end
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_585008(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	ScriptLib.SetGroupVariableValue(context, "Quest_Flag", 1)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_585009(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "Point_Value") == 7 and ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_seal_model) ~= GadgetState.Action03 then
		ScriptLib.SetGroupVariableValue(context, "Point_Value", 3)
		ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", 3)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_seal_model, GadgetState.Action02)
	end
	local qf = ScriptLib.GetGroupVariableValue(context, "Quest_Flag")
	if qf == 1 then
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	end
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_585010(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- Point_Value变化时判断值的变化
	
	 if evt.param1 > evt.param2 then
	                local step = evt.param1 - evt.param2
	                if step%2 >= 1 then
	                        ScriptLib.AddQuestProgress(context, "21025_progress1")
	                ScriptLib.ChangeGroupVariableValue(context, "check", 1)
	                end
	                if step%4 >= 2 then
	                        ScriptLib.AddQuestProgress(context, "21025_progress2")
	                ScriptLib.ChangeGroupVariableValue(context, "check", 10)
	                end
	                if step%8 >= 4 then
	                        ScriptLib.AddQuestProgress(context, "21025_progress3")
	                ScriptLib.ChangeGroupVariableValue(context, "check", 100)
	                end
	        end
	        return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_585011(context, evt)
	-- 延迟1秒后,向groupId为：133104585的对象,请求一次调用,并将string参数："ActiveReminder" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133104585, "ActiveReminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_585012(context, evt)
	-- 调用提示id为 31044401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31044401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_585013(context, evt)
	-- 通知场景上的所有玩家播放名字为133104585 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 133104585, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_585014(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	ScriptLib.PrintContextLog(context, "## SEAL_VALUE | "..evt.source_name.." : "..evt.param2.."->"..evt.param1)
	
	return 0
end