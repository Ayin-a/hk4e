-- 基础信息
local base_info = {
	group_id = 133106425
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 425001, monster_id = 25030301, pos = { x = -364.151, y = 303.475, z = 1519.982 }, rot = { x = 0.000, y = 27.419, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9005, area_id = 19 },
	{ config_id = 425002, monster_id = 25010201, pos = { x = -373.653, y = 303.248, z = 1516.730 }, rot = { x = 0.000, y = 282.276, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9102, area_id = 19 },
	{ config_id = 425003, monster_id = 25020201, pos = { x = -374.785, y = 303.739, z = 1510.605 }, rot = { x = 0.000, y = 261.678, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9002, area_id = 19 },
	{ config_id = 425004, monster_id = 25020201, pos = { x = -377.989, y = 303.112, z = 1498.024 }, rot = { x = 0.000, y = 218.958, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 }
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
	{ config_id = 1425005, name = "ANY_MONSTER_DIE_425005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_425005", action = "action_EVENT_ANY_MONSTER_DIE_425005" }
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
		monsters = { 425001, 425002, 425003, 425004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_425005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_425005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_425005(context, evt)
	-- 将本组内变量名为 "WeaponCamp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "WeaponCamp", 1, 133106426) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7105409finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 310642501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310642501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end