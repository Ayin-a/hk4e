-- 基础信息
local base_info = {
	group_id = 133223291
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
	{ config_id = 1291001, name = "VARIABLE_CHANGE_291001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_291001", action = "action_EVENT_VARIABLE_CHANGE_291001" },
	-- 成就进度
	{ config_id = 1291002, name = "VARIABLE_CHANGE_291002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "progress", value = 0, no_refresh = true },
	{ config_id = 2, name = "progress_2", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_291001", "VARIABLE_CHANGE_291002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_291001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"progress"为40
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 40 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_291001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7220202_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end