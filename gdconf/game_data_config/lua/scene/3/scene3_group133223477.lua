-- 基础信息
local base_info = {
	group_id = 133223477
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
	{ config_id = 477001, gadget_id = 70500000, pos = { x = -6197.836, y = 200.248, z = -3266.001 }, rot = { x = 0.000, y = 47.920, z = 0.000 }, level = 33, point_type = 9279, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 477002, gadget_id = 70710136, pos = { x = -6197.824, y = 200.242, z = -3265.996 }, rot = { x = 0.000, y = 134.531, z = 355.078 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1477003, name = "GATHER_477003", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_477003", action = "action_EVENT_GATHER_477003" },
	{ config_id = 1477004, name = "QUEST_FINISH_477004", event = EventType.EVENT_QUEST_FINISH, source = "7217509", condition = "condition_EVENT_QUEST_FINISH_477004", action = "action_EVENT_QUEST_FINISH_477004", trigger_count = 0 },
	{ config_id = 1477005, name = "GROUP_LOAD_477005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_477005", action = "action_EVENT_GROUP_LOAD_477005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Start", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		triggers = { "QUEST_FINISH_477004", "GROUP_LOAD_477005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 477001, 477002 },
		regions = { },
		triggers = { "GATHER_477003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 完成,
		monsters = { },
		gadgets = { },
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

-- 触发条件
function condition_EVENT_GATHER_477003(context, evt)
	if 477001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_477003(context, evt)
	-- 调用提示id为 32250004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32250004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223477, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_477004(context, evt)
	-- 判断变量"Start"为0
	if ScriptLib.GetGroupVariableValue(context, "Start") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_477004(context, evt)
	-- 将本组内变量名为 "Start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223477, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_477005(context, evt)
	-- 判断变量"Start"为1
	if ScriptLib.GetGroupVariableValue(context, "Start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_477005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223477, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end