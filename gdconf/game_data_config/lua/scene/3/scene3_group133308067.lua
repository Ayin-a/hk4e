-- 基础信息
local base_info = {
	group_id = 133308067
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
	{ config_id = 67001, gadget_id = 70211112, pos = { x = -1905.460, y = 148.845, z = 5311.421 }, rot = { x = 342.066, y = 209.859, z = 0.000 }, level = 26, chest_drop_id = 1050234, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 67006, gadget_id = 70330392, pos = { x = -1905.859, y = 147.127, z = 5302.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 67003, shape = RegionShape.CUBIC, size = { x = 160.000, y = 100.000, z = 160.000 }, pos = { x = -1902.766, y = 154.386, z = 5297.080 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 没有任务
	{ config_id = 1067002, name = "GADGET_STATE_CHANGE_67002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_67002", action = "action_EVENT_GADGET_STATE_CHANGE_67002", trigger_count = 0 },
	{ config_id = 1067003, name = "ENTER_REGION_67003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_67003", action = "action_EVENT_ENTER_REGION_67003" },
	{ config_id = 1067004, name = "QUEST_START_67004", event = EventType.EVENT_QUEST_START, source = "7311001", condition = "", action = "action_EVENT_QUEST_START_67004" },
	-- 有任务
	{ config_id = 1067005, name = "GADGET_STATE_CHANGE_67005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_67005", action = "action_EVENT_GADGET_STATE_CHANGE_67005", trigger_count = 0 },
	{ config_id = 1067007, name = "GADGET_STATE_CHANGE_67007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_67007", action = "action_EVENT_GADGET_STATE_CHANGE_67007", trigger_count = 0 },
	{ config_id = 1067008, name = "GROUP_LOAD_67008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_67008", action = "action_EVENT_GROUP_LOAD_67008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "QuestExist", value = 0, no_refresh = true }
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
		gadgets = { 67001, 67006 },
		regions = { 67003 },
		triggers = { "GADGET_STATE_CHANGE_67002", "ENTER_REGION_67003", "QUEST_START_67004", "GADGET_STATE_CHANGE_67005", "GADGET_STATE_CHANGE_67007", "GROUP_LOAD_67008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_67002(context, evt)
	if 67001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"QuestExist"为0
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_67002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7319103") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_67003(context, evt)
	if evt.param1 ~= 67003 then return false end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_67003(context, evt)
	-- 调用提示id为 7319101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7319101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_67004(context, evt)
	-- 将本组内变量名为 "QuestExist" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestExist", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_67005(context, evt)
	if 67001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"QuestExist"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestExist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_67005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7319103") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 7319103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7319103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_67007(context, evt)
	if 67001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_67007(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 67006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_67008(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133308067}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_67008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7319103") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end