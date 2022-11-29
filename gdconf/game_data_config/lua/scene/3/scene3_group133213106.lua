-- 基础信息
local base_info = {
	group_id = 133213106
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 106001, monster_id = 23010101, pos = { x = -3665.985, y = 218.404, z = -2975.660 }, rot = { x = 0.000, y = 144.056, z = 0.000 }, level = 29, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 106002, monster_id = 23010501, pos = { x = -3661.614, y = 219.666, z = -2983.205 }, rot = { x = 0.000, y = 167.526, z = 0.000 }, level = 29, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 106003, monster_id = 23010601, pos = { x = -3662.305, y = 217.988, z = -2971.454 }, rot = { x = 0.000, y = 146.318, z = 0.000 }, level = 29, drop_id = 1000100, disableWander = true, area_id = 12 }
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
	{ config_id = 1106004, name = "ANY_MONSTER_DIE_106004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_106004", action = "action_EVENT_ANY_MONSTER_DIE_106004" },
	{ config_id = 1106005, name = "MONSTER_BATTLE_106005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_106005" },
	{ config_id = 1106006, name = "GROUP_LOAD_106006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_106006" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 106001, 106002, 106003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_106004", "MONSTER_BATTLE_106005", "GROUP_LOAD_106006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_106004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_106004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7211417") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_106005(context, evt)
	-- 调用提示id为 1110306 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110306) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_106006(context, evt)
	-- 触发镜头注目，注目位置为坐标（-3665.929，220.6298，-2978.285），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3665.929, y=220.6298, z=-2978.285}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end