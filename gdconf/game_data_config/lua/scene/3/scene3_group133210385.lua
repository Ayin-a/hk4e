-- 基础信息
local base_info = {
	group_id = 133210385
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
	{ config_id = 385002, gadget_id = 70290084, pos = { x = -3911.212, y = 201.950, z = -534.438 }, rot = { x = 352.159, y = 231.111, z = 3.316 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1385001, name = "QUEST_FINISH_385001", event = EventType.EVENT_QUEST_FINISH, source = "7215107", condition = "", action = "action_EVENT_QUEST_FINISH_385001", trigger_count = 0 },
	{ config_id = 1385003, name = "GROUP_LOAD_385003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_385003", action = "action_EVENT_GROUP_LOAD_385003", trigger_count = 0 },
	{ config_id = 1385004, name = "VARIABLE_CHANGE_385004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_385004", action = "action_EVENT_VARIABLE_CHANGE_385004", trigger_count = 0 },
	{ config_id = 1385005, name = "QUEST_FINISH_385005", event = EventType.EVENT_QUEST_FINISH, source = "7215109", condition = "", action = "action_EVENT_QUEST_FINISH_385005", trigger_count = 0 },
	{ config_id = 1385006, name = "QUEST_START_385006", event = EventType.EVENT_QUEST_START, source = "7215107", condition = "", action = "action_EVENT_QUEST_START_385006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Questfinish", value = 0, no_refresh = true }
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
		triggers = { "QUEST_FINISH_385001", "GROUP_LOAD_385003", "QUEST_FINISH_385005", "QUEST_START_385006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 385002 },
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
function action_EVENT_QUEST_FINISH_385001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210385, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_385003(context, evt)
	-- 判断变量"Questfinish"为2
	if ScriptLib.GetGroupVariableValue(context, "Questfinish") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_385003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210385, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_385004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Questfinish"为1
	if ScriptLib.GetGroupVariableValue(context, "Questfinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_385004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210385, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_385005(context, evt)
	-- 将本组内变量名为 "Questfinish" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Questfinish", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_385006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133210385, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end