-- 基础信息
local base_info = {
	group_id = 133304162
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 162001, monster_id = 26090201, pos = { x = -1708.322, y = 201.373, z = 2518.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 162002, monster_id = 26090101, pos = { x = -1706.441, y = 201.360, z = 2521.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 162004, monster_id = 26090501, pos = { x = -1706.239, y = 201.415, z = 2519.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 162005, monster_id = 26090701, pos = { x = -1704.295, y = 201.465, z = 2521.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 162006, monster_id = 26090701, pos = { x = -1704.361, y = 201.439, z = 2520.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 162007, monster_id = 26090201, pos = { x = -1706.838, y = 201.323, z = 2520.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 162011, monster_id = 26090501, pos = { x = -1708.433, y = 201.277, z = 2521.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 162012, monster_id = 26090101, pos = { x = -1706.886, y = 201.349, z = 2522.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 }
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
	{ config_id = 1162009, name = "ANY_MONSTER_DIE_162009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162009", action = "action_EVENT_ANY_MONSTER_DIE_162009", trigger_count = 0 },
	{ config_id = 1162010, name = "ANY_MONSTER_DIE_162010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162010", action = "action_EVENT_ANY_MONSTER_DIE_162010", trigger_count = 0 }
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
		monsters = { 162001, 162002, 162004, 162011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_162009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 162005, 162006, 162007, 162012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_162010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_162009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304162, suite = 2 }) then
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
function condition_EVENT_ANY_MONSTER_DIE_162010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_162010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13330416201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end