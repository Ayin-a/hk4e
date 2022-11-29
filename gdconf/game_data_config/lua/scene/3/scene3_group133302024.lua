-- 基础信息
local base_info = {
	group_id = 133302024
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 24001, monster_id = 24020304, pos = { x = -682.824, y = 133.298, z = 2579.656 }, rot = { x = 0.000, y = 285.900, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 100, title_id = 10115, special_name_id = 10148, area_id = 24 }
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
	{ config_id = 1024002, name = "LUA_NOTIFY_24002", event = EventType.EVENT_LUA_NOTIFY, source = "karkata13000", condition = "", action = "action_EVENT_LUA_NOTIFY_24002", trigger_count = 0 },
	{ config_id = 1024003, name = "TIME_AXIS_PASS_24003", event = EventType.EVENT_TIME_AXIS_PASS, source = "2024time", condition = "", action = "action_EVENT_TIME_AXIS_PASS_24003" },
	{ config_id = 1024004, name = "TIME_AXIS_PASS_24004", event = EventType.EVENT_TIME_AXIS_PASS, source = "2024time02", condition = "", action = "action_EVENT_TIME_AXIS_PASS_24004" }
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
		monsters = { 24001 },
		gadgets = { },
		regions = { },
		triggers = { "LUA_NOTIFY_24002", "TIME_AXIS_PASS_24003", "TIME_AXIS_PASS_24004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_LUA_NOTIFY_24002(context, evt)
	-- 创建标识为"2024time"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "2024time", {4}, false)
	
	
	-- 调用提示id为 400319 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400319) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_24003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1333020241") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建标识为"2024time02"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "2024time02", {1}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_24004(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133302024, EntityType.MONSTER, 24001)
	
		
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133302024, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end