-- 基础信息
local base_info = {
	group_id = 133220036
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
	{ config_id = 36007, npc_id = 20281, pos = { x = -2673.735, y = 243.393, z = -4361.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 }
}

-- 装置
gadgets = {
	{ config_id = 36005, gadget_id = 70330091, pos = { x = -2673.085, y = 243.398, z = -4363.854 }, rot = { x = 0.000, y = 347.110, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 36006, gadget_id = 70500000, pos = { x = -2673.721, y = 243.560, z = -4361.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2041, area_id = 11 },
	{ config_id = 36019, gadget_id = 70211111, pos = { x = -2670.359, y = 242.884, z = -4357.072 }, rot = { x = 359.429, y = 211.484, z = 357.481 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 36023, gadget_id = 70330091, pos = { x = -2676.297, y = 242.744, z = -4360.925 }, rot = { x = 0.000, y = 109.119, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 36024, gadget_id = 70211111, pos = { x = -2672.490, y = 243.935, z = -4366.074 }, rot = { x = 356.928, y = 342.975, z = 359.437 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 36025, gadget_id = 70211111, pos = { x = -2678.959, y = 242.603, z = -4360.528 }, rot = { x = 357.424, y = 94.760, z = 9.290 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 36026, gadget_id = 70330091, pos = { x = -2671.802, y = 243.013, z = -4358.885 }, rot = { x = 356.635, y = 229.620, z = 357.747 }, level = 27, persistent = true, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 36001, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2655.385, y = 233.853, z = -4303.383 }, area_id = 11 },
	{ config_id = 36002, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2655.137, y = 242.752, z = -4335.073 }, area_id = 11 },
	{ config_id = 36004, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2702.265, y = 236.972, z = -4344.704 }, area_id = 11 },
	{ config_id = 36014, shape = RegionShape.SPHERE, radius = 4, pos = { x = -2631.190, y = 262.215, z = -4369.604 }, area_id = 11 },
	{ config_id = 36016, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2634.708, y = 247.141, z = -4357.075 }, area_id = 11 },
	{ config_id = 36018, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2677.015, y = 243.707, z = -4363.348 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1036001, name = "ENTER_REGION_36001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36001", action = "action_EVENT_ENTER_REGION_36001", trigger_count = 0 },
	{ config_id = 1036002, name = "ENTER_REGION_36002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36002", action = "action_EVENT_ENTER_REGION_36002", trigger_count = 0 },
	{ config_id = 1036003, name = "GROUP_LOAD_36003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_36003", action = "action_EVENT_GROUP_LOAD_36003", trigger_count = 0 },
	{ config_id = 1036004, name = "ENTER_REGION_36004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36004", action = "action_EVENT_ENTER_REGION_36004", trigger_count = 0 },
	{ config_id = 1036008, name = "QUEST_FINISH_36008", event = EventType.EVENT_QUEST_FINISH, source = "7213502", condition = "", action = "action_EVENT_QUEST_FINISH_36008", trigger_count = 0 },
	{ config_id = 1036009, name = "QUEST_FINISH_36009", event = EventType.EVENT_QUEST_FINISH, source = "7213602", condition = "", action = "action_EVENT_QUEST_FINISH_36009", trigger_count = 0 },
	{ config_id = 1036010, name = "QUEST_FINISH_36010", event = EventType.EVENT_QUEST_FINISH, source = "7213702", condition = "", action = "action_EVENT_QUEST_FINISH_36010", trigger_count = 0 },
	{ config_id = 1036011, name = "QUEST_START_36011", event = EventType.EVENT_QUEST_START, source = "7213501", condition = "", action = "action_EVENT_QUEST_START_36011", trigger_count = 0 },
	{ config_id = 1036012, name = "QUEST_START_36012", event = EventType.EVENT_QUEST_START, source = "7213601", condition = "", action = "action_EVENT_QUEST_START_36012", trigger_count = 0 },
	{ config_id = 1036013, name = "QUEST_START_36013", event = EventType.EVENT_QUEST_START, source = "7213701", condition = "", action = "action_EVENT_QUEST_START_36013", trigger_count = 0 },
	{ config_id = 1036014, name = "ENTER_REGION_36014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36014", action = "action_EVENT_ENTER_REGION_36014", trigger_count = 0 },
	{ config_id = 1036016, name = "ENTER_REGION_36016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36016", action = "action_EVENT_ENTER_REGION_36016", trigger_count = 0 },
	{ config_id = 1036018, name = "ENTER_REGION_36018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36018", action = "action_EVENT_ENTER_REGION_36018", trigger_count = 0 },
	{ config_id = 1036021, name = "GADGET_STATE_CHANGE_36021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36021", action = "action_EVENT_GADGET_STATE_CHANGE_36021", trigger_count = 0 },
	{ config_id = 1036022, name = "VARIABLE_CHANGE_36022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36022", action = "action_EVENT_VARIABLE_CHANGE_36022" },
	{ config_id = 1036027, name = "VARIABLE_CHANGE_36027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36027", action = "action_EVENT_VARIABLE_CHANGE_36027" },
	{ config_id = 1036028, name = "QUEST_FINISH_36028", event = EventType.EVENT_QUEST_FINISH, source = "7213501", condition = "", action = "action_EVENT_QUEST_FINISH_36028", trigger_count = 0 },
	{ config_id = 1036029, name = "QUEST_FINISH_36029", event = EventType.EVENT_QUEST_FINISH, source = "7213602", condition = "", action = "action_EVENT_QUEST_FINISH_36029", trigger_count = 0 },
	{ config_id = 1036030, name = "VARIABLE_CHANGE_36030", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36030", action = "action_EVENT_VARIABLE_CHANGE_36030" },
	{ config_id = 1036031, name = "QUEST_FINISH_36031", event = EventType.EVENT_QUEST_FINISH, source = "7213603", condition = "", action = "action_EVENT_QUEST_FINISH_36031", trigger_count = 0 },
	{ config_id = 1036032, name = "QUEST_FINISH_36032", event = EventType.EVENT_QUEST_FINISH, source = "7213502", condition = "", action = "action_EVENT_QUEST_FINISH_36032", trigger_count = 0 },
	{ config_id = 1036033, name = "QUEST_FINISH_36033", event = EventType.EVENT_QUEST_FINISH, source = "7213503", condition = "", action = "action_EVENT_QUEST_FINISH_36033", trigger_count = 0 },
	{ config_id = 1036034, name = "QUEST_FINISH_36034", event = EventType.EVENT_QUEST_FINISH, source = "7213601", condition = "", action = "action_EVENT_QUEST_FINISH_36034", trigger_count = 0 },
	{ config_id = 1036035, name = "QUEST_FINISH_36035", event = EventType.EVENT_QUEST_FINISH, source = "7213701", condition = "", action = "action_EVENT_QUEST_FINISH_36035", trigger_count = 0 },
	{ config_id = 1036036, name = "QUEST_FINISH_36036", event = EventType.EVENT_QUEST_FINISH, source = "7213702", condition = "", action = "action_EVENT_QUEST_FINISH_36036", trigger_count = 0 },
	{ config_id = 1036037, name = "QUEST_FINISH_36037", event = EventType.EVENT_QUEST_FINISH, source = "7213703", condition = "", action = "action_EVENT_QUEST_FINISH_36037", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "var_right", value = 0, no_refresh = true },
	{ config_id = 2, name = "puzzle_done", value = 0, no_refresh = true },
	{ config_id = 3, name = "reminder", value = 0, no_refresh = true }
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
		gadgets = { 36005, 36023, 36026 },
		regions = { 36001, 36002, 36004, 36014, 36016, 36018 },
		triggers = { "ENTER_REGION_36001", "ENTER_REGION_36002", "GROUP_LOAD_36003", "ENTER_REGION_36004", "QUEST_FINISH_36008", "QUEST_FINISH_36009", "QUEST_FINISH_36010", "QUEST_START_36011", "QUEST_START_36012", "QUEST_START_36013", "ENTER_REGION_36014", "ENTER_REGION_36016", "ENTER_REGION_36018", "GADGET_STATE_CHANGE_36021", "VARIABLE_CHANGE_36022", "VARIABLE_CHANGE_36027", "QUEST_FINISH_36028", "QUEST_FINISH_36029", "VARIABLE_CHANGE_36030", "QUEST_FINISH_36031", "QUEST_FINISH_36032", "QUEST_FINISH_36033", "QUEST_FINISH_36034", "QUEST_FINISH_36035", "QUEST_FINISH_36036", "QUEST_FINISH_36037" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 36006, 36019, 36024, 36025 },
		regions = { },
		triggers = { },
		npcs = { 36007 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_36001(context, evt)
	if evt.param1 ~= 36001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7213501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_36002(context, evt)
	if evt.param1 ~= 36002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7213502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_36003(context, evt)
	-- 判断变量"puzzle_done"为1
	if ScriptLib.GetGroupVariableValue(context, "puzzle_done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_36003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_721353637") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220036, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_36004(context, evt)
	if evt.param1 ~= 36004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7213601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_36008(context, evt)
	-- 将configid为 36005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_36009(context, evt)
	-- 将configid为 36023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_36010(context, evt)
	-- 将configid为 36026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_36011(context, evt)
	-- 将configid为 36005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_36012(context, evt)
	-- 将configid为 36023 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36023, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_36013(context, evt)
	-- 将configid为 36026 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36026, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_36014(context, evt)
	if evt.param1 ~= 36014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7213602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_36016(context, evt)
	if evt.param1 ~= 36016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7213701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_36018(context, evt)
	if evt.param1 ~= 36018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7213703") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36021(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133220036, 36005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133220036, 36023) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133220036, 36026) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_721353637") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "puzzle_done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "puzzle_done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220036, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36022(context, evt)
	-- 调用提示id为 7210704 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210704) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder"为2
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36027(context, evt)
	-- 调用提示id为 7210705 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210705) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_36028(context, evt)
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_36029(context, evt)
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36030(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder"为3
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36030(context, evt)
	-- 调用提示id为 7210706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_36031(context, evt)
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_36032(context, evt)
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_36033(context, evt)
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_36034(context, evt)
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_36035(context, evt)
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_36036(context, evt)
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_36037(context, evt)
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end