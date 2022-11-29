-- 基础信息
local base_info = {
	group_id = 133302696
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 696001, monster_id = 26090901, pos = { x = -128.509, y = 203.228, z = 2878.420 }, rot = { x = 0.000, y = 307.779, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 696002, monster_id = 26090901, pos = { x = -130.035, y = 203.611, z = 2879.837 }, rot = { x = 0.000, y = 222.878, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 696003, monster_id = 26090901, pos = { x = -129.333, y = 203.739, z = 2879.020 }, rot = { x = 0.000, y = 46.433, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 }
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
	{ config_id = 1696006, name = "MONSTER_BATTLE_696006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_696006", action = "action_EVENT_MONSTER_BATTLE_696006" },
	{ config_id = 1696008, name = "ANY_MONSTER_DIE_696008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_696008", action = "action_EVENT_ANY_MONSTER_DIE_696008", trigger_count = 0 }
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
		monsters = { 696001, 696002, 696003 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_696006", "ANY_MONSTER_DIE_696008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_696006(context, evt)
	if 696001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_696006(context, evt)
	-- 调用提示id为  7306335 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306335) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_696008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133302696) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_696008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306308") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end