-- 基础信息
local base_info = {
	group_id = 133003920
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
	{ config_id = 920001, gadget_id = 70210102, pos = { x = 2513.198, y = 202.862, z = -1206.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1920002, name = "GADGET_STATE_CHANGE_920002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_920002", action = "action_EVENT_GADGET_STATE_CHANGE_920002", trigger_count = 0 },
	{ config_id = 1920003, name = "QUEST_START_920003", event = EventType.EVENT_QUEST_START, source = "4112507", condition = "condition_EVENT_QUEST_START_920003", action = "action_EVENT_QUEST_START_920003", trigger_count = 0 },
	{ config_id = 1920004, name = "QUEST_FINISH_920004", event = EventType.EVENT_QUEST_FINISH, source = "4112504", condition = "", action = "action_EVENT_QUEST_FINISH_920004", trigger_count = 0 },
	{ config_id = 1920005, name = "QUEST_FINISH_920005", event = EventType.EVENT_QUEST_FINISH, source = "4112503", condition = "", action = "action_EVENT_QUEST_FINISH_920005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "QuestVar5", value = 0, no_refresh = false }
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
		gadgets = { 920001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_920002" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = 初始空suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_920003", "QUEST_FINISH_920004", "QUEST_FINISH_920005" },
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
function condition_EVENT_GADGET_STATE_CHANGE_920002(context, evt)
	if 920001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_920002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003920") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_920003(context, evt)
	-- 判断变量"QuestVar5"为2或3
	if ScriptLib.GetGroupVariableValue(context, "QuestVar5") == 3 or ScriptLib.GetGroupVariableValue(context, "QuestVar5") == 2 then
			return true
	end
	
	return false
	
end

-- 触发操作
function action_EVENT_QUEST_START_920003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003920, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_920004(context, evt)
	-- 将本组内变量名为 "QuestVar5" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestVar5", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_920005(context, evt)
	-- 将本组内变量名为 "QuestVar5" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestVar5", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end