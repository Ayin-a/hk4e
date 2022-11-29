-- 基础信息
local base_info = {
	group_id = 133220167
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 167001, monster_id = 25100101, pos = { x = -2928.337, y = 206.772, z = -4161.245 }, rot = { x = 0.000, y = 11.663, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 5113 }, pose_id = 1, title_id = 10017, special_name_id = 10036, area_id = 11 },
	{ config_id = 167009, monster_id = 25100201, pos = { x = -2932.702, y = 207.022, z = -4159.932 }, rot = { x = 0.000, y = 31.523, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 5113 }, pose_id = 1, title_id = 10017, special_name_id = 10037, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 167016, gadget_id = 70900394, pos = { x = -2932.312, y = 208.197, z = -4167.451 }, rot = { x = 349.109, y = 148.439, z = 1.510 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 167018, gadget_id = 70900394, pos = { x = -2931.964, y = 208.017, z = -4167.210 }, rot = { x = 2.218, y = 61.352, z = 4.375 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 167026, gadget_id = 70380281, pos = { x = -2931.531, y = 207.925, z = -4165.154 }, rot = { x = 3.117, y = 345.683, z = 357.899 }, level = 27, persistent = true, interact_id = 33, area_id = 11 },
	{ config_id = 167027, gadget_id = 70380281, pos = { x = -2931.700, y = 207.897, z = -4164.797 }, rot = { x = 3.552, y = 0.589, z = 358.771 }, level = 27, persistent = true, interact_id = 34, area_id = 11 },
	{ config_id = 167031, gadget_id = 70211131, pos = { x = -2932.022, y = 208.014, z = -4166.416 }, rot = { x = 0.000, y = 13.186, z = 0.000 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 167033, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2930.414, y = 205.668, z = -4161.419 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 再次加载任务回滚0
	{ config_id = 1167002, name = "GROUP_LOAD_167002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_167002", action = "action_EVENT_GROUP_LOAD_167002", trigger_count = 0 },
	-- 死亡后发送通知
	{ config_id = 1167003, name = "VARIABLE_CHANGE_167003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_167003", action = "action_EVENT_VARIABLE_CHANGE_167003", trigger_count = 0 },
	-- 完成后保底
	{ config_id = 1167004, name = "GROUP_LOAD_167004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_167004", action = "action_EVENT_GROUP_LOAD_167004", trigger_count = 0 },
	-- 100:共同台词
	{ config_id = 1167005, name = "MONSTER_BATTLE_167005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_167005", action = "action_EVENT_MONSTER_BATTLE_167005", trigger_count = 0 },
	-- 雷先死reminder
	{ config_id = 1167006, name = "VARIABLE_CHANGE_167006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_167006", action = "action_EVENT_VARIABLE_CHANGE_167006", trigger_count = 0 },
	-- 火后死reminder 
	{ config_id = 1167007, name = "VARIABLE_CHANGE_167007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_167007", action = "action_EVENT_VARIABLE_CHANGE_167007", trigger_count = 0 },
	-- 火死亡变量+1
	{ config_id = 1167008, name = "ANY_MONSTER_DIE_167008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167008", action = "action_EVENT_ANY_MONSTER_DIE_167008", trigger_count = 0 },
	-- 雷死亡变量+1
	{ config_id = 1167010, name = "ANY_MONSTER_DIE_167010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167010", action = "action_EVENT_ANY_MONSTER_DIE_167010", trigger_count = 0 },
	-- 重置count0
	{ config_id = 1167011, name = "QUEST_START_167011", event = EventType.EVENT_QUEST_START, source = "7211015", condition = "", action = "action_EVENT_QUEST_START_167011", trigger_count = 0 },
	-- 重置count0
	{ config_id = 1167022, name = "QUEST_START_167022", event = EventType.EVENT_QUEST_START, source = "7211008", condition = "", action = "action_EVENT_QUEST_START_167022", trigger_count = 0 },
	-- 火先死reminder
	{ config_id = 1167023, name = "VARIABLE_CHANGE_167023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_167023", action = "action_EVENT_VARIABLE_CHANGE_167023", trigger_count = 0 },
	-- 雷后死reminder
	{ config_id = 1167024, name = "VARIABLE_CHANGE_167024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_167024", action = "action_EVENT_VARIABLE_CHANGE_167024", trigger_count = 0 },
	-- 再次加载任务回滚1
	{ config_id = 1167025, name = "GROUP_LOAD_167025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_167025", action = "action_EVENT_GROUP_LOAD_167025", trigger_count = 0 },
	-- 插剑1
	{ config_id = 1167028, name = "GADGET_STATE_CHANGE_167028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167028", action = "action_EVENT_GADGET_STATE_CHANGE_167028", trigger_count = 0 },
	-- 插剑2
	{ config_id = 1167029, name = "GADGET_STATE_CHANGE_167029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167029", action = "action_EVENT_GADGET_STATE_CHANGE_167029", trigger_count = 0 },
	-- 插剑判定
	{ config_id = 1167030, name = "VARIABLE_CHANGE_167030", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_167030", action = "action_EVENT_VARIABLE_CHANGE_167030", trigger_count = 0 },
	{ config_id = 1167033, name = "LEAVE_REGION_167033", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_167033", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = true },
	{ config_id = 2, name = "count", value = 0, no_refresh = true },
	{ config_id = 3, name = "aka", value = 0, no_refresh = true },
	{ config_id = 4, name = "aoi", value = 0, no_refresh = true },
	{ config_id = 5, name = "rua", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { 167033 },
		triggers = { "GROUP_LOAD_167002", "VARIABLE_CHANGE_167003", "GROUP_LOAD_167004", "MONSTER_BATTLE_167005", "VARIABLE_CHANGE_167006", "VARIABLE_CHANGE_167007", "ANY_MONSTER_DIE_167008", "ANY_MONSTER_DIE_167010", "QUEST_START_167011", "QUEST_START_167022", "VARIABLE_CHANGE_167023", "VARIABLE_CHANGE_167024", "GROUP_LOAD_167025", "GADGET_STATE_CHANGE_167028", "GADGET_STATE_CHANGE_167029", "VARIABLE_CHANGE_167030", "LEAVE_REGION_167033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 167001, 167009 },
		gadgets = { },
		regions = { 167033 },
		triggers = { "GROUP_LOAD_167002", "VARIABLE_CHANGE_167003", "GROUP_LOAD_167004", "MONSTER_BATTLE_167005", "VARIABLE_CHANGE_167006", "VARIABLE_CHANGE_167007", "ANY_MONSTER_DIE_167008", "ANY_MONSTER_DIE_167010", "QUEST_START_167011", "QUEST_START_167022", "VARIABLE_CHANGE_167023", "VARIABLE_CHANGE_167024", "GADGET_STATE_CHANGE_167028", "GADGET_STATE_CHANGE_167029", "VARIABLE_CHANGE_167030", "LEAVE_REGION_167033" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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

-- 触发条件
function condition_EVENT_GROUP_LOAD_167002(context, evt)
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_167002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fail_7211008") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220167, EntityType.MONSTER, 167009)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220167, EntityType.MONSTER, 167001)
	
		
	
	-- 将本组内变量名为 "count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_167003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fin"为2
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_167003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7211008") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为167026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 167026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为167027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 167027 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_167004(context, evt)
	-- 判断变量"fin"为2
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_167004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7211008") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_167005(context, evt)
	if 167009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"rua"为0
	if ScriptLib.GetGroupVariableValue(context, "rua") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_167005(context, evt)
	-- 调用提示id为 -1074247089 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247089) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "rua" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rua", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_167006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 0 then
			return false
	end
	
	-- 判断变量"aka"为0
	if ScriptLib.GetGroupVariableValue(context, "aka") ~= 0 then
			return false
	end
	
	-- 判断变量"aoi"为1
	if ScriptLib.GetGroupVariableValue(context, "aoi") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_167006(context, evt)
	-- 调用提示id为 -1074247088 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247088) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "aoi" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "aoi", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_167007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 0 then
			return false
	end
	
	-- 判断变量"aka"为1
	if ScriptLib.GetGroupVariableValue(context, "aka") ~= 1 then
			return false
	end
	
	-- 判断变量"aoi"为2
	if ScriptLib.GetGroupVariableValue(context, "aoi") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_167007(context, evt)
	-- 调用提示id为 -1074247083 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247083) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167008(context, evt)
	if 167009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167008(context, evt)
	-- 针对当前group内变量名为 "aka" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "aka", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "fin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167010(context, evt)
	if 167001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167010(context, evt)
	-- 针对当前group内变量名为 "aoi" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "aoi", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "fin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_167011(context, evt)
	-- 将本组内变量名为 "fin" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "aoi" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "aoi", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "aka" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "aka", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_167022(context, evt)
	-- 将本组内变量名为 "fin" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "aoi" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "aoi", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "aka" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "aka", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_167023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 0 then
			return false
	end
	
	-- 判断变量"aka"为1
	if ScriptLib.GetGroupVariableValue(context, "aka") ~= 1 then
			return false
	end
	
	-- 判断变量"aoi"为0
	if ScriptLib.GetGroupVariableValue(context, "aoi") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_167023(context, evt)
	-- 调用提示id为 -1074247085 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247085) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "aka" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "aka", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_167024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 0 then
			return false
	end
	
	-- 判断变量"aka"为2
	if ScriptLib.GetGroupVariableValue(context, "aka") ~= 2 then
			return false
	end
	
	-- 判断变量"aoi"为1
	if ScriptLib.GetGroupVariableValue(context, "aoi") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_167024(context, evt)
	-- 调用提示id为 -1074247086 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247086) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_167025(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_167025(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fail_7211008") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220167, EntityType.MONSTER, 167009)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220167, EntityType.MONSTER, 167001)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_167028(context, evt)
	if 167026 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_167028(context, evt)
	-- 创建id为167016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 167016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_167029(context, evt)
	if 167027 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_167029(context, evt)
	-- 创建id为167018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 167018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_167030(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_167030(context, evt)
	-- 创建id为167031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 167031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_167033(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fail_7211008") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end