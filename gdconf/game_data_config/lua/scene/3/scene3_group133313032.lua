-- 基础信息
local base_info = {
	group_id = 133313032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32001, monster_id = 23010501, pos = { x = -1345.304, y = 55.199, z = 5038.848 }, rot = { x = 0.000, y = 103.409, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9011, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 32004, gadget_id = 70300110, pos = { x = -1349.114, y = 55.150, z = 5044.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 32005, gadget_id = 70710413, pos = { x = -1350.039, y = 55.252, z = 5040.466 }, rot = { x = 0.000, y = 104.497, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 32006, gadget_id = 70710414, pos = { x = -1349.741, y = 55.283, z = 5045.789 }, rot = { x = 0.000, y = 92.119, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032002, name = "ANY_MONSTER_DIE_32002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32002", action = "action_EVENT_ANY_MONSTER_DIE_32002" },
	{ config_id = 1032003, name = "MONSTER_BATTLE_32003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_32003", action = "action_EVENT_MONSTER_BATTLE_32003" }
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
		monsters = { 32001 },
		gadgets = { 32004, 32005, 32006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_32002", "MONSTER_BATTLE_32003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326403") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_32003(context, evt)
	if 32001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_32003(context, evt)
	-- 调用提示id为 1000170001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000170001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end