-- 基础信息
local base_info = {
	group_id = 220134093
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- [door1]4007404 任务保底
	{ config_id = 1093001, name = "QUEST_START_93001", event = EventType.EVENT_QUEST_START, source = "4007404", condition = "condition_EVENT_QUEST_START_93001", action = "action_EVENT_QUEST_START_93001", trigger_count = 0 },
	-- [door1]4007404 任务保底
	{ config_id = 1093002, name = "GROUP_LOAD_93002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93002", action = "action_EVENT_GROUP_LOAD_93002", trigger_count = 0 },
	-- [002finish]4007405 任务保底
	{ config_id = 1093003, name = "QUEST_START_93003", event = EventType.EVENT_QUEST_START, source = "4007405", condition = "condition_EVENT_QUEST_START_93003", action = "action_EVENT_QUEST_START_93003", trigger_count = 0 },
	-- [002finish]4007405 任务保底
	{ config_id = 1093004, name = "GROUP_LOAD_93004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93004", action = "action_EVENT_GROUP_LOAD_93004", trigger_count = 0 },
	-- [door2]4007502 任务保底
	{ config_id = 1093005, name = "QUEST_START_93005", event = EventType.EVENT_QUEST_START, source = "4007502", condition = "condition_EVENT_QUEST_START_93005", action = "action_EVENT_QUEST_START_93005", trigger_count = 0 },
	-- [door2]4007502 任务保底
	{ config_id = 1093006, name = "GROUP_LOAD_93006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93006", action = "action_EVENT_GROUP_LOAD_93006", trigger_count = 0 },
	-- [door3]4007602 任务保底
	{ config_id = 1093007, name = "QUEST_START_93007", event = EventType.EVENT_QUEST_START, source = "4007602", condition = "condition_EVENT_QUEST_START_93007", action = "action_EVENT_QUEST_START_93007", trigger_count = 0 },
	-- [door3]4007602 任务保底
	{ config_id = 1093008, name = "GROUP_LOAD_93008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93008", action = "action_EVENT_GROUP_LOAD_93008", trigger_count = 0 },
	-- [door4]4007605 任务保底
	{ config_id = 1093009, name = "QUEST_START_93009", event = EventType.EVENT_QUEST_START, source = "4007605", condition = "condition_EVENT_QUEST_START_93009", action = "action_EVENT_QUEST_START_93009", trigger_count = 0 },
	-- [door4]4007605 任务保底
	{ config_id = 1093010, name = "GROUP_LOAD_93010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93010", action = "action_EVENT_GROUP_LOAD_93010", trigger_count = 0 },
	-- [010finish]4007503 任务保底
	{ config_id = 1093011, name = "QUEST_START_93011", event = EventType.EVENT_QUEST_START, source = "4007503", condition = "condition_EVENT_QUEST_START_93011", action = "action_EVENT_QUEST_START_93011", trigger_count = 0 },
	-- [010finish]4007503 任务保底
	{ config_id = 1093012, name = "GROUP_LOAD_93012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93012", action = "action_EVENT_GROUP_LOAD_93012", trigger_count = 0 },
	-- [011finish]4007603 任务保底
	{ config_id = 1093013, name = "QUEST_START_93013", event = EventType.EVENT_QUEST_START, source = "4007603", condition = "condition_EVENT_QUEST_START_93013", action = "action_EVENT_QUEST_START_93013", trigger_count = 0 },
	-- [011finish]4007603 任务保底
	{ config_id = 1093014, name = "GROUP_LOAD_93014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93014", action = "action_EVENT_GROUP_LOAD_93014", trigger_count = 0 },
	-- [013finish]4007606 任务保底
	{ config_id = 1093015, name = "QUEST_START_93015", event = EventType.EVENT_QUEST_START, source = "4007606", condition = "condition_EVENT_QUEST_START_93015", action = "action_EVENT_QUEST_START_93015", trigger_count = 0 },
	-- [013finish]4007606 任务保底
	{ config_id = 1093016, name = "GROUP_LOAD_93016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93016", action = "action_EVENT_GROUP_LOAD_93016", trigger_count = 0 },
	-- [015 reach]4007406 任务保底
	{ config_id = 1093017, name = "QUEST_START_93017", event = EventType.EVENT_QUEST_START, source = "4007406", condition = "condition_EVENT_QUEST_START_93017", action = "action_EVENT_QUEST_START_93017", trigger_count = 0 },
	-- [015 reach]4007406 任务保底
	{ config_id = 1093018, name = "GROUP_LOAD_93018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93018", action = "action_EVENT_GROUP_LOAD_93018", trigger_count = 0 },
	-- [016 reach]4007504 任务保底
	{ config_id = 1093019, name = "QUEST_START_93019", event = EventType.EVENT_QUEST_START, source = "4007504", condition = "condition_EVENT_QUEST_START_93019", action = "action_EVENT_QUEST_START_93019", trigger_count = 0 },
	-- [016 reach]4007504 任务保底
	{ config_id = 1093020, name = "GROUP_LOAD_93020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93020", action = "action_EVENT_GROUP_LOAD_93020", trigger_count = 0 },
	-- [017 reach]4007604 任务保底
	{ config_id = 1093021, name = "QUEST_START_93021", event = EventType.EVENT_QUEST_START, source = "4007604", condition = "condition_EVENT_QUEST_START_93021", action = "action_EVENT_QUEST_START_93021", trigger_count = 0 },
	-- [017 reach]4007604 任务保底
	{ config_id = 1093022, name = "GROUP_LOAD_93022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93022", action = "action_EVENT_GROUP_LOAD_93022", trigger_count = 0 },
	-- [018 reach]4007607 任务保底
	{ config_id = 1093023, name = "QUEST_START_93023", event = EventType.EVENT_QUEST_START, source = "4007607", condition = "condition_EVENT_QUEST_START_93023", action = "action_EVENT_QUEST_START_93023", trigger_count = 0 },
	-- [018 reach]4007607 任务保底
	{ config_id = 1093024, name = "GROUP_LOAD_93024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93024", action = "action_EVENT_GROUP_LOAD_93024", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_93001", "GROUP_LOAD_93002", "QUEST_START_93003", "GROUP_LOAD_93004", "QUEST_START_93005", "GROUP_LOAD_93006", "QUEST_START_93007", "GROUP_LOAD_93008", "QUEST_START_93009", "GROUP_LOAD_93010", "QUEST_START_93011", "GROUP_LOAD_93012", "QUEST_START_93013", "GROUP_LOAD_93014", "QUEST_START_93015", "GROUP_LOAD_93016", "QUEST_START_93017", "GROUP_LOAD_93018", "QUEST_START_93019", "GROUP_LOAD_93020", "QUEST_START_93021", "GROUP_LOAD_93022", "QUEST_START_93023", "GROUP_LOAD_93024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_93001(context, evt)
	-- 判断变量"door1"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "door1", 220134033) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_93001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "door1complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_93002(context, evt)
	-- 判断变量"door1"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "door1", 220134033) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "door1complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_93003(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 220134002) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_93003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroom1complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_93004(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 220134002) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroom1complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_93005(context, evt)
	-- 判断变量"door2"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "door2", 220134033) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_93005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "door2complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_93006(context, evt)
	-- 判断变量"door2"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "door2", 220134033) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "door2complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_93007(context, evt)
	-- 判断变量"door3"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "door3", 220134033) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_93007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "door3complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_93008(context, evt)
	-- 判断变量"door3"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "door3", 220134033) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "door3complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_93009(context, evt)
	-- 判断变量"door4"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "door4", 220134033) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_93009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "door4complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_93010(context, evt)
	-- 判断变量"door4"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "door4", 220134033) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "door4complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_93011(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 220134010) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_93011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroom2complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_93012(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 220134010) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroom2complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_93013(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 220134011) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_93013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroom3complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_93014(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 220134011) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroom3complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_93015(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 220134013) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_93015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroom4complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_93016(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 220134013) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroom4complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_93017(context, evt)
	-- 判断变量"reach"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "reach", 220134015) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_93017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroute1complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_93018(context, evt)
	-- 判断变量"reach"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "reach", 220134015) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroute1complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_93019(context, evt)
	-- 判断变量"reach"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "reach", 220134016) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_93019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroute2complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_93020(context, evt)
	-- 判断变量"reach"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "reach", 220134016) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroute2complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_93021(context, evt)
	-- 判断变量"reach"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "reach", 220134017) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_93021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroute3complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_93022(context, evt)
	-- 判断变量"reach"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "reach", 220134017) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroute3complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_93023(context, evt)
	-- 判断变量"reach"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "reach", 220134018) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_93023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroute4complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_93024(context, evt)
	-- 判断变量"reach"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "reach", 220134018) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93024(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroute4complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end