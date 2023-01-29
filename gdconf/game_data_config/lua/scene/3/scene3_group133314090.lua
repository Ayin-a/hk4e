-- 基础信息
local base_info = {
	group_id = 133314090
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 普通的沙蝎
	{ config_id = 90001, monster_id = 26100401, pos = { x = -836.697, y = -13.785, z = 4694.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 32 },
	-- 中毒的沙蝎
	{ config_id = 90003, monster_id = 26100401, pos = { x = -836.749, y = -13.790, z = 4694.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 32 },
	-- 眩晕的沙蝎
	{ config_id = 90004, monster_id = 26100401, pos = { x = -836.741, y = -13.789, z = 4694.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 32 },
	-- 双生沙蝎（普通）
	{ config_id = 90005, monster_id = 26100401, pos = { x = -836.741, y = -13.789, z = 4694.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 32 }
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
	{ config_id = 1090002, name = "ANY_MONSTER_DIE_90002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_90002", action = "action_EVENT_ANY_MONSTER_DIE_90002" },
	{ config_id = 1090006, name = "ANY_MONSTER_DIE_90006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_90006", action = "action_EVENT_ANY_MONSTER_DIE_90006" },
	{ config_id = 1090007, name = "ANY_MONSTER_DIE_90007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_90007", action = "action_EVENT_ANY_MONSTER_DIE_90007" },
	{ config_id = 1090008, name = "ANY_MONSTER_DIE_90008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_90008", action = "action_EVENT_ANY_MONSTER_DIE_90008" },
	-- 怪物创生
	{ config_id = 1090009, name = "ANY_MONSTER_LIVE_90009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_90009", action = "action_EVENT_ANY_MONSTER_LIVE_90009" },
	-- 第二只魔蝎刷新
	{ config_id = 1090010, name = "ANY_MONSTER_LIVE_90010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_90010", action = "action_EVENT_ANY_MONSTER_LIVE_90010" }
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
		monsters = { 90001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_90002", "ANY_MONSTER_LIVE_90009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 90003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_90006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 90004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_90007" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 90005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_90008", "ANY_MONSTER_LIVE_90010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_90002(context, evt)
	--判断死亡怪物的configid是否为 90001
	if evt.param1 ~= 90001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_90002(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314090, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_90006(context, evt)
	--判断死亡怪物的configid是否为 90003
	if evt.param1 ~= 90003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_90006(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314090, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_90007(context, evt)
	--判断死亡怪物的configid是否为 90004
	if evt.param1 ~= 90004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_90007(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314090, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_90008(context, evt)
	--判断死亡怪物的configid是否为 90005
	if evt.param1 ~= 90005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_90008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328114") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_90009(context, evt)
	if 90001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_90009(context, evt)
	-- 调用提示id为 1000190022 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000190022) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_90010(context, evt)
	if 90005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_90010(context, evt)
	-- 调用提示id为 1000190023 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000190023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end