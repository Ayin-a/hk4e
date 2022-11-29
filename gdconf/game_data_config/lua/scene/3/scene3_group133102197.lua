-- 基础信息
local base_info = {
	group_id = 133102197
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
	{ config_id = 197001, gadget_id = 70950099, pos = { x = 1312.398, y = 200.000, z = 414.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, isOneoff = true, persistent = true, fishing_id = 2007, fishing_areas = { 300038 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1197002, name = "FISHING_QTE_FINISH_197002", event = EventType.EVENT_FISHING_QTE_FINISH, source = "", condition = "condition_EVENT_FISHING_QTE_FINISH_197002", action = "action_EVENT_FISHING_QTE_FINISH_197002", trigger_count = 0 },
	{ config_id = 1197003, name = "VARIABLE_CHANGE_197003", event = EventType.EVENT_VARIABLE_CHANGE, source = "fished", condition = "condition_EVENT_VARIABLE_CHANGE_197003", action = "action_EVENT_VARIABLE_CHANGE_197003", trigger_count = 0 },
	{ config_id = 1197004, name = "GROUP_LOAD_197004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_197004", action = "action_EVENT_GROUP_LOAD_197004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fished", value = 0, no_refresh = true }
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
		gadgets = { 197001 },
		regions = { },
		triggers = { "FISHING_QTE_FINISH_197002", "VARIABLE_CHANGE_197003", "GROUP_LOAD_197004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_FISHING_QTE_FINISH_197002(context, evt)
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_FISHING_QTE_FINISH_197002(context, evt)
	-- 针对当前group内变量名为 "fished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_197003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fished"大于等于3
	if ScriptLib.GetGroupVariableValue(context, "fished") < 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_197003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102197") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_197004(context, evt)
	-- 判断变量"fished"大于等于3
	if ScriptLib.GetGroupVariableValue(context, "fished") < 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_197004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102197") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end