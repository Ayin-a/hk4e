-- 基础信息
local base_info = {
	group_id = 220145008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8021, monster_id = 26120301, pos = { x = 476.029, y = 145.013, z = 422.356 }, rot = { x = 0.000, y = 105.331, z = 0.000 }, level = 1, disableWander = true, pose_id = 101, title_id = 10125, special_name_id = 10177 },
	{ config_id = 8022, monster_id = 26120301, pos = { x = 493.518, y = 145.529, z = 419.347 }, rot = { x = 0.000, y = 282.915, z = 0.000 }, level = 1, disableWander = true, pose_id = 101, title_id = 10125, special_name_id = 10177 },
	{ config_id = 8023, monster_id = 26090201, pos = { x = 475.402, y = 145.020, z = 418.397 }, rot = { x = 0.000, y = 92.634, z = 0.000 }, level = 1, disableWander = true, pose_id = 105 },
	{ config_id = 8024, monster_id = 26090201, pos = { x = 493.873, y = 144.856, z = 421.695 }, rot = { x = 0.000, y = 253.103, z = 0.000 }, level = 1, disableWander = true, pose_id = 105 },
	{ config_id = 8025, monster_id = 26090201, pos = { x = 477.838, y = 145.075, z = 425.132 }, rot = { x = 0.000, y = 117.610, z = 0.000 }, level = 1, disableWander = true, pose_id = 105 },
	{ config_id = 8026, monster_id = 26090201, pos = { x = 492.946, y = 144.983, z = 416.257 }, rot = { x = 0.000, y = 275.833, z = 0.000 }, level = 1, disableWander = true, pose_id = 105 }
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
	{ config_id = 1008027, name = "ANY_MONSTER_DIE_8027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8027", action = "action_EVENT_ANY_MONSTER_DIE_8027" }
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
		triggers = { "ANY_MONSTER_DIE_8027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8021, 8022, 8023, 8024, 8025, 8026 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8027(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306913") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 33010135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end