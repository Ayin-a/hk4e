-- 基础信息
local base_info = {
	group_id = 133003915
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
	{ config_id = 915002, gadget_id = 70210102, pos = { x = 2373.349, y = 225.481, z = -1167.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1915001, name = "GADGET_STATE_CHANGE_915001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_915001", action = "action_EVENT_GADGET_STATE_CHANGE_915001", trigger_count = 0 },
	{ config_id = 1915003, name = "QUEST_START_915003", event = EventType.EVENT_QUEST_START, source = "4112506", condition = "condition_EVENT_QUEST_START_915003", action = "action_EVENT_QUEST_START_915003", trigger_count = 0 },
	{ config_id = 1915004, name = "QUEST_FINISH_915004", event = EventType.EVENT_QUEST_FINISH, source = "4112505", condition = "", action = "action_EVENT_QUEST_FINISH_915004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "QuestVar4", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		gadgets = { 915002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_915001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_915003", "QUEST_FINISH_915004" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_915001(context, evt)
	if 915002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_915001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003915") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_915003(context, evt)
	-- 判断变量"QuestVar4"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "QuestVar4", 133003915) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_915003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003915, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_915004(context, evt)
	-- 将本组内变量名为 "QuestVar4" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestVar4", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end