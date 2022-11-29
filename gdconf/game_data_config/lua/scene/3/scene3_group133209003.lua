-- 基础信息
local base_info = {
	group_id = 133209003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3003, monster_id = 25050301, pos = { x = -2999.118, y = 200.057, z = -4160.201 }, rot = { x = 0.000, y = 9.540, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 3004, monster_id = 25050301, pos = { x = -3005.866, y = 200.000, z = -4156.884 }, rot = { x = 0.000, y = 26.047, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 3006, monster_id = 25050301, pos = { x = -3002.317, y = 200.000, z = -4158.809 }, rot = { x = 0.000, y = 22.874, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 3008, monster_id = 25050402, pos = { x = -2996.542, y = 200.088, z = -4132.811 }, rot = { x = 2.771, y = 194.831, z = 1.235 }, level = 26, drop_id = 1000100, affix = { 1033 }, isElite = true, title_id = 10027, special_name_id = 10048, area_id = 11 }
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
	{ config_id = 1003001, name = "ANY_MONSTER_DIE_3001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3001", action = "action_EVENT_ANY_MONSTER_DIE_3001" },
	{ config_id = 1003005, name = "ANY_MONSTER_DIE_3005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3005", action = "action_EVENT_ANY_MONSTER_DIE_3005", trigger_count = 0 },
	{ config_id = 1003007, name = "QUEST_START_3007", event = EventType.EVENT_QUEST_START, source = "1201306", condition = "", action = "action_EVENT_QUEST_START_3007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Boss_Die", value = 0, no_refresh = false }
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
		monsters = { 3008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3001", "ANY_MONSTER_DIE_3005", "QUEST_START_3007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3003, 3004, 3006 },
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
function condition_EVENT_ANY_MONSTER_DIE_3001(context, evt)
	--判断死亡怪物的configid是否为 3008
	if evt.param1 ~= 3008 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3001(context, evt)
	-- 将本组内变量名为 "Boss_Die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Boss_Die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133209003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3005(context, evt)
	-- 判断指定group组剩余怪物数量是否是1 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133209003) ~= 1 then
		return false
	end
	
	-- 判断变量"Boss_Die"为0
	if ScriptLib.GetGroupVariableValue(context, "Boss_Die") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209003, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_3007(context, evt)
	-- 调用提示id为 400043 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400043) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209003, 2)
	
	return 0
end