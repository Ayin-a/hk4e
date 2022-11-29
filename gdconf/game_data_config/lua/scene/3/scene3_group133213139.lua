-- 基础信息
local base_info = {
	group_id = 133213139
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 139001, monster_id = 23010201, pos = { x = -3623.864, y = 201.697, z = -3335.543 }, rot = { x = 0.000, y = 16.550, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 139002, monster_id = 23010301, pos = { x = -3612.824, y = 201.887, z = -3323.457 }, rot = { x = 0.000, y = 253.957, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 139003, monster_id = 23010601, pos = { x = -3628.012, y = 201.815, z = -3320.258 }, rot = { x = 0.000, y = 141.520, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 12 }
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
	{ config_id = 1139004, name = "ANY_MONSTER_DIE_139004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_139004", action = "action_EVENT_ANY_MONSTER_DIE_139004" },
	{ config_id = 1139005, name = "MONSTER_BATTLE_139005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_139005", action = "action_EVENT_MONSTER_BATTLE_139005" }
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
		triggers = { "MONSTER_BATTLE_139005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 139001, 139002, 139003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_139004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_139004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133213139) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_139004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212316_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_139005(context, evt)
	if 139003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_139005(context, evt)
	-- 调用提示id为 1110357 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110357) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end