-- 基础信息
local base_info = {
	group_id = 201032001
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
	{ config_id = 1001, gadget_id = 70350106, pos = { x = -28.760, y = 246.100, z = -63.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "QUEST_FINISH_1002", event = EventType.EVENT_QUEST_FINISH, source = "1110204", condition = "", action = "action_EVENT_QUEST_FINISH_1002" },
	{ config_id = 1001004, name = "TIMER_EVENT_1004", event = EventType.EVENT_TIMER_EVENT, source = "xiao_skill", condition = "", action = "action_EVENT_TIMER_EVENT_1004" },
	{ config_id = 1001005, name = "TIMER_EVENT_1005", event = EventType.EVENT_TIMER_EVENT, source = "tutorial", condition = "", action = "action_EVENT_TIMER_EVENT_1005" }
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
		gadgets = { 1001 },
		regions = { },
		triggers = { "QUEST_FINISH_1002", "TIMER_EVENT_1004", "TIMER_EVENT_1005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_1002(context, evt)
	-- 屏蔽战斗主界面UI模块,参数传字符串,参数内容为"bool 屏蔽ui组key"
	if 0 ~= ScriptLib.SetPlayerInteractOption(context, "false DisableXiaoDungeon") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_player_interact_option")
		return -1
	end
	
	-- 延迟2秒后,向groupId为：201032001的对象,请求一次调用,并将string参数："xiao_skill" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201032001, "xiao_skill", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1004(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：201032001的对象,请求一次调用,并将string参数："tutorial" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201032001, "tutorial", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "isFirstEntry" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isFirstEntry", 0, 201032010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1110207") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 屏蔽战斗主界面UI模块,参数传字符串,参数内容为"bool 屏蔽ui组key"
	if 0 ~= ScriptLib.SetPlayerInteractOption(context, "true DisableXiaoDungeon") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_player_interact_option")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201032002, 4)
	
	-- 将本组内变量名为 "test_re" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "test_re", 1, 201032010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end