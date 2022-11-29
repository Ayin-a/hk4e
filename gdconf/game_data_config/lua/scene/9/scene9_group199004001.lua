-- 基础信息
local base_info = {
	group_id = 199004001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1003, monster_id = 21010201, pos = { x = -372.697, y = 224.572, z = -614.589 }, rot = { x = 0.000, y = 58.892, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9003, area_id = 400 },
	{ config_id = 1007, monster_id = 21010201, pos = { x = -370.484, y = 225.342, z = -616.378 }, rot = { x = 0.000, y = 20.352, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 400 },
	{ config_id = 1008, monster_id = 21010201, pos = { x = -372.601, y = 224.273, z = -611.685 }, rot = { x = 0.000, y = 106.829, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 400 },
	{ config_id = 1009, monster_id = 21020201, pos = { x = -364.098, y = 225.210, z = -613.224 }, rot = { x = 0.000, y = 269.924, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 401, area_id = 400 },
	{ config_id = 1013, monster_id = 22010101, pos = { x = -367.332, y = 223.730, z = -609.850 }, rot = { x = 0.000, y = 191.937, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9013, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70710221, pos = { x = -373.284, y = 223.080, z = -608.814 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, persistent = true, area_id = 400 },
	{ config_id = 1005, gadget_id = 70360001, pos = { x = -373.465, y = 223.064, z = -608.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 400 },
	{ config_id = 1011, gadget_id = 70310004, pos = { x = -368.531, y = 224.496, z = -613.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 400 },
	{ config_id = 1012, gadget_id = 70310001, pos = { x = -364.565, y = 223.898, z = -609.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "GADGET_STATE_CHANGE_1001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1001", action = "action_EVENT_GADGET_STATE_CHANGE_1001", trigger_count = 0 },
	{ config_id = 1001004, name = "QUEST_FINISH_1004", event = EventType.EVENT_QUEST_FINISH, source = "7902507", condition = "", action = "action_EVENT_QUEST_FINISH_1004", trigger_count = 0 },
	{ config_id = 1001006, name = "SELECT_OPTION_1006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1006", action = "action_EVENT_SELECT_OPTION_1006" },
	{ config_id = 1001010, name = "ANY_MONSTER_DIE_1010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1010", action = "action_EVENT_ANY_MONSTER_DIE_1010", trigger_count = 0 },
	{ config_id = 1001014, name = "QUEST_FINISH_1014", event = EventType.EVENT_QUEST_FINISH, source = "7902508", condition = "", action = "action_EVENT_QUEST_FINISH_1014", trigger_count = 0 },
	{ config_id = 1001015, name = "QUEST_START_1015", event = EventType.EVENT_QUEST_START, source = "7902508", condition = "condition_EVENT_QUEST_START_1015", action = "action_EVENT_QUEST_START_1015", trigger_count = 0 },
	{ config_id = 1001016, name = "QUEST_START_1016", event = EventType.EVENT_QUEST_START, source = "7902509", condition = "", action = "action_EVENT_QUEST_START_1016", trigger_count = 0 },
	{ config_id = 1001017, name = "GROUP_LOAD_1017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1017", action = "action_EVENT_GROUP_LOAD_1017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 3, name = "option", value = 0, no_refresh = true }
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
		monsters = { 1003, 1007, 1008, 1009, 1013 },
		gadgets = { 1002, 1011, 1012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1001", "QUEST_FINISH_1004", "SELECT_OPTION_1006", "ANY_MONSTER_DIE_1010", "QUEST_FINISH_1014", "QUEST_START_1015", "QUEST_START_1016", "GROUP_LOAD_1017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1001(context, evt)
	-- 检测config_id为1002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 1002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7902509finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1004(context, evt)
	-- 调用提示id为 1111136 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111136) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为1005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1006(context, evt)
	-- 判断是gadgetid 1005 option_id 1
	if 1005 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1006(context, evt)
	-- 将configid为 1002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "option" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "option", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 199004001 ；指定config：1005；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199004001, 1005, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1010(context, evt)
	-- 将本组内变量名为 "option" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "option", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7902508finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199004001, 1005, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1014(context, evt)
	-- 调用提示id为 1111138 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111138) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_1015(context, evt)
	-- 判断变量"option"为1
	if ScriptLib.GetGroupVariableValue(context, "option") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_1015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7902508finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199004001, 1005, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_1016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199004001, 1005, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_1017(context, evt)
	-- 判断变量"option"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "option", 199004001) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1017(context, evt)
	-- 创建id为1005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end