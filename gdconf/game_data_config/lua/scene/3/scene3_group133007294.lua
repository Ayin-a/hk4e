-- 基础信息
local base_info = {
	group_id = 133007294
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {294001,294002,294003},
	reset_gear_list = {}
}

-- DEFS_MISCS
local v = 0
local v_error = 0
local max_bit = #defs.gadget_array

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
	{ config_id = 294001, gadget_id = 70900039, pos = { x = 2591.230, y = 206.970, z = 1.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 4 },
	{ config_id = 294002, gadget_id = 70900039, pos = { x = 2595.642, y = 206.940, z = 8.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 4 },
	{ config_id = 294003, gadget_id = 70900039, pos = { x = 2598.665, y = 207.098, z = -3.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1294004, name = "GADGET_CREATE_294004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_294004", action = "action_EVENT_GADGET_CREATE_294004", trigger_count = 0 },
	{ config_id = 1294005, name = "GADGET_STATE_CHANGE_294005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_294005", action = "action_EVENT_GADGET_STATE_CHANGE_294005", trigger_count = 0 },
	{ config_id = 1294006, name = "VARIABLE_CHANGE_294006", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_294006", trigger_count = 0 },
	{ config_id = 1294007, name = "VARIABLE_CHANGE_294007", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_294007", action = "action_EVENT_VARIABLE_CHANGE_294007", trigger_count = 0 },
	{ config_id = 1294008, name = "VARIABLE_CHANGE_294008", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_294008", action = "action_EVENT_VARIABLE_CHANGE_294008", trigger_count = 0 },
	{ config_id = 1294009, name = "VARIABLE_CHANGE_294009", event = EventType.EVENT_VARIABLE_CHANGE, source = "fail_count", condition = "condition_EVENT_VARIABLE_CHANGE_294009", action = "action_EVENT_VARIABLE_CHANGE_294009" },
	{ config_id = 1294010, name = "VARIABLE_CHANGE_294010", event = EventType.EVENT_VARIABLE_CHANGE, source = "fail_count", condition = "condition_EVENT_VARIABLE_CHANGE_294010", action = "action_EVENT_VARIABLE_CHANGE_294010" },
	{ config_id = 1294011, name = "VARIABLE_CHANGE_294011", event = EventType.EVENT_VARIABLE_CHANGE, source = "fail_count", condition = "condition_EVENT_VARIABLE_CHANGE_294011", action = "action_EVENT_VARIABLE_CHANGE_294011", trigger_count = 0 },
	{ config_id = 1294012, name = "VARIABLE_CHANGE_294012", event = EventType.EVENT_VARIABLE_CHANGE, source = "fail_count", condition = "condition_EVENT_VARIABLE_CHANGE_294012", action = "action_EVENT_VARIABLE_CHANGE_294012" },
	{ config_id = 1294013, name = "GADGET_CREATE_294013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_294013", action = "action_EVENT_GADGET_CREATE_294013", trigger_count = 0 },
	{ config_id = 1294014, name = "GADGET_CREATE_294014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_294014", action = "action_EVENT_GADGET_CREATE_294014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = false },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false },
	{ config_id = 5, name = "fail_count", value = 0, no_refresh = true },
	{ config_id = 6, name = "gear_load", value = 0, no_refresh = true }
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
		gadgets = { 294001, 294002, 294003 },
		regions = { },
		triggers = { "GADGET_CREATE_294004", "GADGET_STATE_CHANGE_294005", "VARIABLE_CHANGE_294006", "VARIABLE_CHANGE_294007", "VARIABLE_CHANGE_294008", "VARIABLE_CHANGE_294009", "VARIABLE_CHANGE_294010", "VARIABLE_CHANGE_294011", "VARIABLE_CHANGE_294012", "GADGET_CREATE_294013", "GADGET_CREATE_294014" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_294004(context, evt)
	if 294001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"gear_load"为0
	if ScriptLib.GetGroupVariableValue(context, "gear_load") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_294004(context, evt)
	-- 将configid为 294001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 294001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_294005(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_294005(context, evt)
	if max_bit > 9 or max_bit <= 1 then
	    return -1
	end
	if evt.param1 == defs.active_step then
	        --操作顺序入栈
	        for i = 1,max_bit do
	                if defs.gadget_array[i] == evt.param2 then
	                        v = ScriptLib.GetGroupVariableValue(context, "sort")
	                        v = 10*v + i
	                        ScriptLib.SetGroupVariableValue(context, "sort", v)
	                        break 
	                end
	                if i == max_bit and defs.gadget_array[i] ~= evt.param2 then
	                        ScriptLib.SetGroupVariableValue(context, "v_error", 1)
	                        v = 10*v
	                end
	        end
	end
	--v的位数足够时进行出栈检测
	if v > 10^(max_bit-1) then
	        v_error = ScriptLib.GetGroupVariableValue(context, "v_error")
	        --v_error有问题时直接清空栈并重置
	        if 0 == v_error then
	                for i=max_bit,1,-1 do
	                        if v%10 ~= i then
	                                v_error = 1
	                                break
	                        end
	                        v = math.floor(v/10)
	                end
	        end
	        v = 0
	        if v_error ~= 1 then
	                v_error = -1
	        end
	        ScriptLib.SetGroupVariableValue(context, "sort", v) 
	        ScriptLib.SetGroupVariableValue(context, "gear_reset", v_error)
	        ScriptLib.SetGroupVariableValue(context, "v_error", 0)
	end
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_294006(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == 1 then
		if #defs.reset_gear_list == 0 then
	                        defs.reset_gear_list = suites[1].gadgets
		end
		for i=1,#defs.reset_gear_list do
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.reset_gear_list[i], defs.inactive_step)
		end
		ScriptLib.SetGroupVariableValue(context, "trigger_output", -1)
	       	elseif -1 == evt.param1 then
		--外接标记
	 		ScriptLib.SetGroupVariableValue(context, "trigger_output", 1)
	        	end
	        --还原标记
	        ScriptLib.SetGroupVariableValue(context, "gear_reset", 0)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_294007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_294007(context, evt)
	-- 针对当前group内变量名为 "fail_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fail_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "trigger_output" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "trigger_output", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_294008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_294008(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133007293, 3)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007293, 5)
	
	-- 调用提示id为 30070105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30070105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4141306") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "gear_load" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "gear_load", 2, 133007293) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "gear_load" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gear_load", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_294009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == 1 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_294009(context, evt)
	-- 调用提示id为 30070106 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30070106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_294010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == 3 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_294010(context, evt)
	-- 调用提示id为 30070107 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30070107) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_294011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 > 5 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_294011(context, evt)
	-- 将本组内变量名为 "fail_count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fail_count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_294012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == 5 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_294012(context, evt)
	-- 调用提示id为 30070108 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30070108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_294013(context, evt)
	if 294002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"gear_load"为0
	if ScriptLib.GetGroupVariableValue(context, "gear_load") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_294013(context, evt)
	-- 将configid为 294002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 294002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_294014(context, evt)
	if 294003 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"gear_load"为0
	if ScriptLib.GetGroupVariableValue(context, "gear_load") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_294014(context, evt)
	-- 将configid为 294003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 294003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end