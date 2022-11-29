-- 基础信息
local base_info = {
	group_id = 133003914
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
	{ config_id = 914001, gadget_id = 70210102, pos = { x = 2478.194, y = 213.564, z = -1294.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1914002, name = "GADGET_STATE_CHANGE_914002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_914002", action = "action_EVENT_GADGET_STATE_CHANGE_914002", trigger_count = 0 },
	{ config_id = 1914003, name = "QUEST_START_914003", event = EventType.EVENT_QUEST_START, source = "4112508", condition = "condition_EVENT_QUEST_START_914003", action = "action_EVENT_QUEST_START_914003", trigger_count = 0 },
	{ config_id = 1914004, name = "QUEST_FINISH_914004", event = EventType.EVENT_QUEST_FINISH, source = "4112502", condition = "", action = "action_EVENT_QUEST_FINISH_914004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "QuestVar3", value = 0, no_refresh = false }
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
		gadgets = { 914001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_914002" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = 初始空suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_914003", "QUEST_FINISH_914004" },
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
function condition_EVENT_GADGET_STATE_CHANGE_914002(context, evt)
	if 914001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_914002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13003914") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_914003(context, evt)
	-- 判断变量"QuestVar3"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "QuestVar3", 133003914) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_914003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003914, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_914004(context, evt)
	-- 将本组内变量名为 "QuestVar3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestVar3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end