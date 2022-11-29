-- 基础信息
local base_info = {
	group_id = 133106424
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 424001, monster_id = 25010401, pos = { x = -277.045, y = 302.591, z = 1493.873 }, rot = { x = 0.000, y = 247.450, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9003, area_id = 19 },
	{ config_id = 424002, monster_id = 25010401, pos = { x = -266.678, y = 302.718, z = 1486.089 }, rot = { x = 0.000, y = 15.611, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9007, area_id = 19 },
	{ config_id = 424003, monster_id = 25010501, pos = { x = -265.962, y = 302.728, z = 1487.403 }, rot = { x = 0.000, y = 191.978, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9006, area_id = 19 },
	{ config_id = 424004, monster_id = 25010501, pos = { x = -277.868, y = 302.974, z = 1488.675 }, rot = { x = 0.000, y = 249.992, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9002, area_id = 19 }
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
	{ config_id = 1424005, name = "ANY_MONSTER_DIE_424005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_424005", action = "action_EVENT_ANY_MONSTER_DIE_424005" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 424001, 424002, 424003, 424004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_424005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_424005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_424005(context, evt)
	-- 将本组内变量名为 "AlchemyCamp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "AlchemyCamp", 1, 133106426) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7105408finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 310642401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310642401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end