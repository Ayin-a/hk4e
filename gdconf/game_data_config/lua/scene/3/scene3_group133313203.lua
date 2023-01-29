-- 基础信息
local base_info = {
	group_id = 133313203
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203001, monster_id = 23010601, pos = { x = -1344.386, y = 42.972, z = 5184.906 }, rot = { x = 0.000, y = 135.301, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 203005, monster_id = 28060509, pos = { x = -1346.771, y = 42.724, z = 5179.282 }, rot = { x = 0.000, y = 142.219, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 2, area_id = 32 },
	{ config_id = 203009, monster_id = 23010401, pos = { x = -1343.024, y = 44.711, z = 5168.476 }, rot = { x = 0.000, y = 335.835, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9011, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 203006, gadget_id = 70710852, pos = { x = -1337.677, y = 45.535, z = 5170.245 }, rot = { x = 359.436, y = 47.262, z = 3.439 }, level = 1, area_id = 32 },
	{ config_id = 203007, gadget_id = 70710416, pos = { x = -1339.427, y = 43.691, z = 5176.523 }, rot = { x = 3.069, y = 351.766, z = 4.803 }, level = 1, area_id = 32 },
	{ config_id = 203008, gadget_id = 70710350, pos = { x = -1339.863, y = 45.098, z = 5166.738 }, rot = { x = 0.000, y = 307.576, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 203010, gadget_id = 70710548, pos = { x = -1343.980, y = 44.872, z = 5167.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 203011, gadget_id = 70710350, pos = { x = -1340.836, y = 43.481, z = 5179.520 }, rot = { x = 0.000, y = 336.334, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 203012, gadget_id = 71700487, pos = { x = -1340.993, y = 44.329, z = 5170.413 }, rot = { x = 359.237, y = 323.115, z = 70.919 }, level = 1, area_id = 32 },
	{ config_id = 203013, gadget_id = 70710710, pos = { x = -1340.212, y = 43.762, z = 5174.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 203004, shape = RegionShape.SPHERE, radius = 17, pos = { x = -1345.229, y = 43.161, z = 5177.250 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1203002, name = "ANY_MONSTER_DIE_203002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_203002", action = "action_EVENT_ANY_MONSTER_DIE_203002" },
	-- 入战时怪物开车
	{ config_id = 1203003, name = "MONSTER_BATTLE_203003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_203003", action = "action_EVENT_MONSTER_BATTLE_203003" },
	{ config_id = 1203004, name = "ENTER_REGION_203004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_203004" }
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
		monsters = { 203001, 203005, 203009 },
		gadgets = { 203006, 203007, 203008, 203010, 203011, 203012, 203013 },
		regions = { 203004 },
		triggers = { "ANY_MONSTER_DIE_203002", "MONSTER_BATTLE_203003", "ENTER_REGION_203004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_203002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_203002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326416") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_203003(context, evt)
	if 203001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_203003(context, evt)
	-- 调用提示id为 1000170006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000170006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_203004(context, evt)
	-- 调用提示id为 1000170005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000170005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end