-- 基础信息
local base_info = {
	group_id = 133003604
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 604001, monster_id = 21010601, pos = { x = 2843.014, y = 263.083, z = -1882.085 }, rot = { x = 0.000, y = 227.806, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 604004, monster_id = 21010601, pos = { x = 2846.011, y = 262.742, z = -1883.741 }, rot = { x = 0.000, y = 238.144, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 604005, monster_id = 21010301, pos = { x = 2839.935, y = 263.397, z = -1880.943 }, rot = { x = 0.000, y = 207.718, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 604006, monster_id = 21030301, pos = { x = 2843.952, y = 262.598, z = -1879.341 }, rot = { x = 1.935, y = 215.862, z = 5.489 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 604007, monster_id = 21020101, pos = { x = 2835.708, y = 263.674, z = -1877.667 }, rot = { x = 0.000, y = 170.671, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 604008, monster_id = 21010901, pos = { x = 2832.687, y = 263.892, z = -1877.635 }, rot = { x = 0.000, y = 152.339, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 604009, monster_id = 21010501, pos = { x = 2838.514, y = 263.389, z = -1876.804 }, rot = { x = 0.000, y = 171.801, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 }
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
	{ config_id = 1604002, name = "ANY_MONSTER_DIE_604002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_604002", action = "action_EVENT_ANY_MONSTER_DIE_604002" },
	{ config_id = 1604003, name = "ANY_MONSTER_DIE_604003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_604003", action = "action_EVENT_ANY_MONSTER_DIE_604003" }
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
	end_suite = 2,
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
		monsters = { 604001, 604004, 604005, 604006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_604002" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 604007, 604008, 604009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_604003" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
function condition_EVENT_ANY_MONSTER_DIE_604002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133003604) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_604002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003604, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_604003(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133003604) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_604003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003604") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end