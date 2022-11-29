-- 基础信息
local base_info = {
	group_id = 133223287
}

-- Trigger变量
local defs = {
	mushrooms = {287001,287002,287003,287004,287005}
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
	{ config_id = 287001, gadget_id = 70500000, pos = { x = -6008.920, y = 164.831, z = -2769.803 }, rot = { x = 9.442, y = 1.804, z = 10.865 }, level = 33, point_type = 2043, area_id = 18 },
	{ config_id = 287002, gadget_id = 70500000, pos = { x = -6011.327, y = 165.150, z = -2771.177 }, rot = { x = 0.000, y = 0.000, z = 14.011 }, level = 33, point_type = 2043, area_id = 18 },
	{ config_id = 287003, gadget_id = 70500000, pos = { x = -6013.317, y = 164.743, z = -2765.988 }, rot = { x = 34.627, y = 107.610, z = -0.002 }, level = 33, point_type = 2043, area_id = 18 },
	{ config_id = 287004, gadget_id = 70500000, pos = { x = -6013.223, y = 165.226, z = -2769.468 }, rot = { x = 0.000, y = 92.399, z = 0.000 }, level = 33, point_type = 2043, area_id = 18 },
	{ config_id = 287005, gadget_id = 70500000, pos = { x = -6015.119, y = 165.037, z = -2763.787 }, rot = { x = 3.719, y = 309.597, z = -0.001 }, level = 33, point_type = 2043, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1287006, name = "GATHER_287006", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_287006", action = "action_EVENT_GATHER_287006", trigger_count = 0 },
	-- 第一次触发
	{ config_id = 1287007, name = "VARIABLE_CHANGE_287007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_287007", action = "action_EVENT_VARIABLE_CHANGE_287007" },
	-- 第二次触发
	{ config_id = 1287008, name = "VARIABLE_CHANGE_287008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_287008", action = "action_EVENT_VARIABLE_CHANGE_287008" },
	{ config_id = 1287009, name = "QUEST_START_287009", event = EventType.EVENT_QUEST_START, source = "7220601", condition = "", action = "action_EVENT_QUEST_START_287009", trigger_count = 0 },
	-- 任务2开始
	{ config_id = 1287010, name = "QUEST_START_287010", event = EventType.EVENT_QUEST_START, source = "7220604", condition = "", action = "action_EVENT_QUEST_START_287010", trigger_count = 0 },
	-- 任务保底
	{ config_id = 1287011, name = "GROUP_LOAD_287011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_287011", action = "action_EVENT_GROUP_LOAD_287011", trigger_count = 0 },
	-- 任务保底
	{ config_id = 1287012, name = "GROUP_LOAD_287012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_287012", action = "action_EVENT_GROUP_LOAD_287012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gather_count", value = 0, no_refresh = true }
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
		gadgets = { 287001, 287002, 287003, 287004, 287005 },
		regions = { },
		triggers = { "QUEST_START_287009", "QUEST_START_287010", "GROUP_LOAD_287011", "GROUP_LOAD_287012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GATHER_287006", "VARIABLE_CHANGE_287007", "VARIABLE_CHANGE_287008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_287006(context, evt)
	for i=1,#defs.mushrooms do
		if defs.mushrooms[i] == evt.param1 then
			return true
		end 
	end
	
	return false
end

-- 触发操作
function action_EVENT_GATHER_287006(context, evt)
	-- 针对当前group内变量名为 "gather_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gather_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_287007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gather_count"为5
	if ScriptLib.GetGroupVariableValue(context, "gather_count") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_287007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "mushroom_trigger_1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_287008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gather_count"为10
	if ScriptLib.GetGroupVariableValue(context, "gather_count") ~= 10 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_287008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "mushroom_trigger_2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_287009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223287, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_287010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223287, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_287011(context, evt)
	-- 判断变量"gather_count"为5
	if ScriptLib.GetGroupVariableValue(context, "gather_count") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_287011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "mushroom_trigger_1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_287012(context, evt)
	-- 判断变量"gather_count"为10
	if ScriptLib.GetGroupVariableValue(context, "gather_count") ~= 10 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_287012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "mushroom_trigger_2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end