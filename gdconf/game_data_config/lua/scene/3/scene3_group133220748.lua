-- 基础信息
local base_info = {
	group_id = 133220748
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 海斗
	{ config_id = 748001, monster_id = 25100201, pos = { x = -2869.436, y = 205.008, z = -4215.861 }, rot = { x = 0.000, y = 94.524, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1009, 1018, 1006 }, pose_id = 1, title_id = 10091, special_name_id = 10124, area_id = 11 },
	{ config_id = 748003, monster_id = 25080301, pos = { x = -2869.330, y = 205.173, z = -4210.726 }, rot = { x = 0.000, y = 131.916, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 748004, monster_id = 25080301, pos = { x = -2872.184, y = 205.077, z = -4217.980 }, rot = { x = 0.000, y = 64.139, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 748005, monster_id = 23010101, pos = { x = -2869.804, y = 205.648, z = -4222.020 }, rot = { x = 0.000, y = 16.782, z = 0.000 }, level = 26, drop_id = 1000100, title_id = 10092, special_name_id = 10125, area_id = 11 },
	{ config_id = 748006, monster_id = 23010201, pos = { x = -2865.211, y = 206.021, z = -4224.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 }
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
	{ config_id = 1748002, name = "ANY_MONSTER_DIE_748002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_748002", action = "action_EVENT_ANY_MONSTER_DIE_748002", trigger_count = 0 },
	{ config_id = 1748008, name = "ANY_MONSTER_DIE_748008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_748008", action = "action_EVENT_ANY_MONSTER_DIE_748008", trigger_count = 0 }
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
		monsters = { 748001, 748003, 748004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_748008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 748005, 748006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_748002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_748002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_748002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332207481") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_748008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_748008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220748, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 400132 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400132) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end