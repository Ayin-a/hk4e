-- 基础信息
local base_info = {
	group_id = 133313040
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 40001, monster_id = 23010301, pos = { x = -1255.982, y = 68.615, z = 5137.131 }, rot = { x = 0.000, y = 54.668, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9001, area_id = 32 },
	{ config_id = 40003, monster_id = 23020101, pos = { x = -1253.735, y = 68.616, z = 5139.218 }, rot = { x = 0.000, y = 258.223, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 40004, monster_id = 23050101, pos = { x = -1254.905, y = 68.608, z = 5143.373 }, rot = { x = 0.000, y = 192.464, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 40012, monster_id = 28060509, pos = { x = -1258.648, y = 65.497, z = 5122.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 40005, gadget_id = 70300093, pos = { x = -1261.130, y = 66.453, z = 5151.241 }, rot = { x = 348.876, y = 55.471, z = 11.775 }, level = 1, area_id = 32 },
	{ config_id = 40008, gadget_id = 70300110, pos = { x = -1261.223, y = 67.033, z = 5150.757 }, rot = { x = 0.000, y = 0.000, z = 22.532 }, level = 1, area_id = 32 },
	{ config_id = 40009, gadget_id = 70300110, pos = { x = -1251.523, y = 69.568, z = 5143.361 }, rot = { x = 0.000, y = 0.000, z = 1.589 }, level = 1, area_id = 32 },
	{ config_id = 40010, gadget_id = 70300110, pos = { x = -1244.354, y = 71.966, z = 5133.162 }, rot = { x = 0.000, y = 0.000, z = 183.447 }, level = 1, area_id = 32 },
	{ config_id = 40013, gadget_id = 70710710, pos = { x = -1244.437, y = 71.970, z = 5133.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 40006, shape = RegionShape.SPHERE, radius = 40, pos = { x = -1262.980, y = 65.355, z = 5143.058 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1040002, name = "ANY_MONSTER_DIE_40002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40002", action = "action_EVENT_ANY_MONSTER_DIE_40002" },
	{ config_id = 1040006, name = "ENTER_REGION_40006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_40006" },
	{ config_id = 1040007, name = "MONSTER_BATTLE_40007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_40007" },
	{ config_id = 1040011, name = "ANY_MONSTER_DIE_40011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40011", action = "action_EVENT_ANY_MONSTER_DIE_40011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monsterdie", value = 0, no_refresh = false }
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
		monsters = { 40001, 40003, 40012 },
		gadgets = { 40005, 40008, 40009, 40010, 40013 },
		regions = { 40006 },
		triggers = { "ANY_MONSTER_DIE_40002", "ENTER_REGION_40006", "MONSTER_BATTLE_40007", "ANY_MONSTER_DIE_40011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 40004 },
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
function condition_EVENT_ANY_MONSTER_DIE_40002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monsterdie"为1
	if ScriptLib.GetGroupVariableValue(context, "monsterdie") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326411") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_40006(context, evt)
	-- 调用提示id为 1000170007 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000170007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1253.736, y=67.61845, z=5139.218}，持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1253.736, y=67.61845, z=5139.218}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_40007(context, evt)
	-- 调用提示id为 1000170009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000170009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40011(context, evt)
	if 40001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313040, 2)
	
	-- 将本组内变量名为 "monsterdie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end