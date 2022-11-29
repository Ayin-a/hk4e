-- 基础信息
local base_info = {
	group_id = 133220122
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
	{ config_id = 122001, gadget_id = 70330092, pos = { x = -2653.922, y = 234.783, z = -4305.702 }, rot = { x = 6.229, y = 300.573, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 122002, gadget_id = 70330092, pos = { x = -2638.445, y = 249.054, z = -4359.347 }, rot = { x = 0.000, y = 25.556, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 122003, gadget_id = 70330092, pos = { x = -2693.072, y = 239.245, z = -4345.588 }, rot = { x = 0.000, y = 108.242, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 122004, gadget_id = 70330092, pos = { x = -2697.240, y = 245.348, z = -4372.403 }, rot = { x = 0.000, y = 126.685, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 122005, gadget_id = 70330092, pos = { x = -2649.423, y = 249.395, z = -4376.017 }, rot = { x = 0.000, y = 298.054, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 122010, gadget_id = 70330092, pos = { x = -2659.560, y = 241.647, z = -4330.811 }, rot = { x = 0.449, y = 70.681, z = 358.991 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 122011, gadget_id = 70330092, pos = { x = -2707.425, y = 246.035, z = -4391.326 }, rot = { x = 0.000, y = 143.028, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 122024, gadget_id = 70330092, pos = { x = -2679.885, y = 244.337, z = -4367.801 }, rot = { x = 8.189, y = 335.554, z = 1.782 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 122027, gadget_id = 70330092, pos = { x = -2726.326, y = 230.643, z = -4318.016 }, rot = { x = 358.158, y = 357.823, z = 1.469 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 完成后remidner
	{ config_id = 1122006, name = "QUEST_START_122006", event = EventType.EVENT_QUEST_START, source = "7210714", condition = "", action = "action_EVENT_QUEST_START_122006", trigger_count = 0 },
	-- 1
	{ config_id = 1122007, name = "QUEST_FINISH_122007", event = EventType.EVENT_QUEST_FINISH, source = "7210716", condition = "", action = "action_EVENT_QUEST_FINISH_122007", trigger_count = 0 },
	-- 2
	{ config_id = 1122008, name = "QUEST_FINISH_122008", event = EventType.EVENT_QUEST_FINISH, source = "7210717", condition = "", action = "action_EVENT_QUEST_FINISH_122008", trigger_count = 0 },
	-- 3
	{ config_id = 1122009, name = "QUEST_FINISH_122009", event = EventType.EVENT_QUEST_FINISH, source = "7210718", condition = "", action = "action_EVENT_QUEST_FINISH_122009", trigger_count = 0 },
	{ config_id = 1122012, name = "USE_WIDGET_TOY_FOX_CAMERA_122012", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122012", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122012", trigger_count = 0 },
	{ config_id = 1122013, name = "USE_WIDGET_TOY_FOX_CAMERA_122013", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122013", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122013", trigger_count = 0 },
	{ config_id = 1122014, name = "USE_WIDGET_TOY_FOX_CAMERA_122014", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122014", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122014", trigger_count = 0 },
	-- 4
	{ config_id = 1122015, name = "QUEST_FINISH_122015", event = EventType.EVENT_QUEST_FINISH, source = "7210719", condition = "", action = "action_EVENT_QUEST_FINISH_122015", trigger_count = 0 },
	{ config_id = 1122025, name = "USE_WIDGET_TOY_FOX_CAMERA_122025", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122025", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122025", trigger_count = 0 },
	{ config_id = 1122026, name = "USE_WIDGET_TOY_FOX_CAMERA_122026", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122026", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122026", trigger_count = 0 },
	{ config_id = 1122028, name = "USE_WIDGET_TOY_FOX_CAMERA_122028", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122028", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122028", trigger_count = 0 },
	{ config_id = 1122029, name = "USE_WIDGET_TOY_FOX_CAMERA_122029", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122029", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122029", trigger_count = 0 },
	{ config_id = 1122030, name = "USE_WIDGET_TOY_FOX_CAMERA_122030", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122030", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122030", trigger_count = 0 },
	{ config_id = 1122032, name = "QUEST_START_122032", event = EventType.EVENT_QUEST_START, source = "7210722", condition = "", action = "action_EVENT_QUEST_START_122032", trigger_count = 0 },
	{ config_id = 1122034, name = "USE_WIDGET_TOY_FOX_CAMERA_122034", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122034", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122034", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 122016, gadget_id = 70330092, pos = { x = -2653.922, y = 234.783, z = -4305.702 }, rot = { x = 6.229, y = 300.573, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 122017, gadget_id = 70330092, pos = { x = -2638.445, y = 249.054, z = -4359.347 }, rot = { x = 0.000, y = 25.556, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 122018, gadget_id = 70330092, pos = { x = -2693.072, y = 239.245, z = -4345.588 }, rot = { x = 0.000, y = 108.242, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 122019, gadget_id = 70330092, pos = { x = -2697.240, y = 245.348, z = -4372.403 }, rot = { x = 0.000, y = 126.685, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 122020, gadget_id = 70330092, pos = { x = -2649.423, y = 249.395, z = -4376.017 }, rot = { x = 0.000, y = 298.054, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 122021, gadget_id = 70330092, pos = { x = -2659.560, y = 241.647, z = -4330.811 }, rot = { x = 0.449, y = 70.681, z = 358.991 }, level = 27, area_id = 11 },
		{ config_id = 122022, gadget_id = 70330092, pos = { x = -2707.425, y = 246.035, z = -4391.326 }, rot = { x = 0.000, y = 143.028, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 122023, gadget_id = 70330092, pos = { x = -2679.885, y = 244.337, z = -4367.801 }, rot = { x = 8.189, y = 335.554, z = 1.782 }, level = 27, area_id = 11 },
		{ config_id = 122031, gadget_id = 70330092, pos = { x = -2726.326, y = 230.643, z = -4318.016 }, rot = { x = 358.158, y = 357.823, z = 1.469 }, level = 27, area_id = 11 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 122001, 122002, 122003, 122004, 122005, 122010, 122011, 122024, 122027 },
		regions = { },
		triggers = { "QUEST_START_122006", "QUEST_FINISH_122007", "QUEST_FINISH_122008", "QUEST_FINISH_122009", "USE_WIDGET_TOY_FOX_CAMERA_122012", "USE_WIDGET_TOY_FOX_CAMERA_122013", "USE_WIDGET_TOY_FOX_CAMERA_122014", "QUEST_FINISH_122015", "USE_WIDGET_TOY_FOX_CAMERA_122025", "USE_WIDGET_TOY_FOX_CAMERA_122026", "USE_WIDGET_TOY_FOX_CAMERA_122028", "USE_WIDGET_TOY_FOX_CAMERA_122029", "USE_WIDGET_TOY_FOX_CAMERA_122030", "QUEST_START_122032", "USE_WIDGET_TOY_FOX_CAMERA_122034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_122006(context, evt)
	-- 调用提示id为 7210716 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210716) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_122007(context, evt)
	-- 调用提示id为 7210708 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210708) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_122008(context, evt)
	-- 调用提示id为 7210710 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210710) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_122009(context, evt)
	-- 调用提示id为 7210712 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210712) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122012(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==122001 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210709") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 7210708 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210708) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122013(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==122002 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210710") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 7210710 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210710) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122014(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==122003 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210711") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 7210712 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210712) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_122015(context, evt)
	-- 调用提示id为 7210714 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210714) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122025(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==122004 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122025(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210712") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122026(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==122005 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210713") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122028(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==122010 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122028(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210724") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122029(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==122011 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122029(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210726") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122030(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==122024 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122030(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210728") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_122032(context, evt)
	-- 将configid为 122001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 122002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 122003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 122004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 122005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 122010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 122011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 122024 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122024, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 122027 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122027, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122034(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==122027 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_122034(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210730") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "V2_0/PhotoTakenSuccessfully"