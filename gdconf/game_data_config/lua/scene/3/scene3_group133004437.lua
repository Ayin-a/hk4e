-- 基础信息
local base_info = {
	group_id = 133004437
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 437001, monster_id = 25070101, pos = { x = 2517.333, y = 205.565, z = -1210.830 }, rot = { x = 0.000, y = 356.940, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 9006, area_id = 1 },
	{ config_id = 437002, monster_id = 25010701, pos = { x = 2529.656, y = 207.229, z = -1219.755 }, rot = { x = 0.000, y = 317.100, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 1 },
	{ config_id = 437003, monster_id = 25030301, pos = { x = 2528.216, y = 207.182, z = -1220.902 }, rot = { x = 0.000, y = 336.300, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 1 },
	{ config_id = 437004, monster_id = 25010301, pos = { x = 2515.292, y = 205.275, z = -1208.473 }, rot = { x = 0.000, y = 110.300, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 9002, area_id = 1 },
	{ config_id = 437006, monster_id = 25010301, pos = { x = 2515.109, y = 205.143, z = -1209.755 }, rot = { x = 0.000, y = 69.800, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 9002, area_id = 1 },
	{ config_id = 437007, monster_id = 25030301, pos = { x = 2526.922, y = 206.792, z = -1219.254 }, rot = { x = 0.000, y = 306.600, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 1 },
	{ config_id = 437008, monster_id = 25070101, pos = { x = 2528.373, y = 206.888, z = -1218.477 }, rot = { x = 0.000, y = 304.800, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 1 },
	{ config_id = 437009, monster_id = 25010401, pos = { x = 2530.075, y = 204.886, z = -1196.363 }, rot = { x = 0.000, y = 201.800, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 1 },
	{ config_id = 437010, monster_id = 25010401, pos = { x = 2527.339, y = 204.844, z = -1195.638 }, rot = { x = 0.000, y = 197.400, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 1 },
	{ config_id = 437011, monster_id = 25070101, pos = { x = 2528.129, y = 204.978, z = -1197.927 }, rot = { x = 0.000, y = 188.700, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 1 },
	{ config_id = 437012, monster_id = 25070101, pos = { x = 2529.867, y = 205.107, z = -1199.010 }, rot = { x = 0.000, y = 219.000, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 1 },
	{ config_id = 437013, monster_id = 25070101, pos = { x = 2525.921, y = 205.007, z = -1197.468 }, rot = { x = 0.000, y = 152.700, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 1 }
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
	{ config_id = 1437005, name = "ANY_MONSTER_DIE_437005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_437005", action = "action_EVENT_ANY_MONSTER_DIE_437005", trigger_count = 0 },
	{ config_id = 1437014, name = "ANY_MONSTER_DIE_437014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_437014", action = "action_EVENT_ANY_MONSTER_DIE_437014", trigger_count = 0 },
	{ config_id = 1437015, name = "ANY_MONSTER_DIE_437015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_437015", action = "action_EVENT_ANY_MONSTER_DIE_437015", trigger_count = 0 }
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
	end_suite = 1,
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
		monsters = { 437001, 437004, 437006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_437014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 437002, 437003, 437007, 437008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_437015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 437009, 437010, 437011, 437012, 437013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_437005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_437005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_437005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044371") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_437014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_437014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004437, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_437015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_437015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004437, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end