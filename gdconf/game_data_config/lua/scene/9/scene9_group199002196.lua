-- 基础信息
local base_info = {
	group_id = 199002196
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
	{ config_id = 196002, gadget_id = 70360001, pos = { x = 492.520, y = 125.291, z = -447.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 196006, gadget_id = 70500000, pos = { x = 495.765, y = 128.814, z = -445.369 }, rot = { x = 0.000, y = 314.914, z = 0.000 }, level = 1, point_type = 9312, isOneoff = true, persistent = true, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1196003, name = "QUEST_FINISH_196003", event = EventType.EVENT_QUEST_FINISH, source = "7902607", condition = "", action = "action_EVENT_QUEST_FINISH_196003", trigger_count = 0 },
	{ config_id = 1196004, name = "VARIABLE_CHANGE_196004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_196004", action = "action_EVENT_VARIABLE_CHANGE_196004", trigger_count = 0 },
	{ config_id = 1196005, name = "GROUP_LOAD_196005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196005", action = "action_EVENT_GROUP_LOAD_196005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "QuestFinishAll", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 196001, gadget_id = 71700438, pos = { x = 494.746, y = 127.538, z = -446.259 }, rot = { x = 0.000, y = 318.602, z = 0.000 }, level = 1, area_id = 401 }
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
		gadgets = { 196002 },
		regions = { },
		triggers = { "QUEST_FINISH_196003", "VARIABLE_CHANGE_196004", "GROUP_LOAD_196005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 196006 },
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
function action_EVENT_QUEST_FINISH_196003(context, evt)
	-- 将本组内变量名为 "QuestFinishAll" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestFinishAll", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_196004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"QuestFinishAll"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestFinishAll") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_196004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002196, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_196005(context, evt)
	-- 判断变量"QuestFinishAll"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestFinishAll") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_196005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002196, 2)
	
	return 0
end