-- 基础信息
local base_info = {
	group_id = 133106423
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 423001, monster_id = 25010501, pos = { x = -343.898, y = 300.173, z = 1604.334 }, rot = { x = 0.000, y = 275.897, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9006, area_id = 19 },
	{ config_id = 423002, monster_id = 25070101, pos = { x = -345.713, y = 300.143, z = 1604.630 }, rot = { x = 0.000, y = 93.320, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9009, area_id = 19 },
	{ config_id = 423003, monster_id = 25010701, pos = { x = -354.201, y = 300.174, z = 1610.050 }, rot = { x = 0.000, y = 252.034, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9002, area_id = 19 },
	{ config_id = 423004, monster_id = 25030301, pos = { x = -343.504, y = 300.175, z = 1611.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 }
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
	{ config_id = 1423005, name = "ANY_MONSTER_DIE_423005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_423005", action = "action_EVENT_ANY_MONSTER_DIE_423005" }
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
		monsters = { 423001, 423002, 423003, 423004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_423005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_423005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_423005(context, evt)
	-- 将本组内变量名为 "CookingCamp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "CookingCamp", 1, 133106426) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7105407finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 310642301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310642301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end