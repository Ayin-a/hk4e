-- 基础信息
local base_info = {
	group_id = 133107080
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80001, monster_id = 25020201, pos = { x = -364.459, y = 284.549, z = 678.415 }, rot = { x = 0.000, y = 218.106, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 2, area_id = 7 },
	{ config_id = 80002, monster_id = 25010201, pos = { x = -366.616, y = 284.549, z = 665.565 }, rot = { x = 0.000, y = 312.988, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 80003, monster_id = 25070101, pos = { x = -363.762, y = 284.549, z = 665.105 }, rot = { x = 0.000, y = 311.793, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 80004, monster_id = 25020201, pos = { x = -373.238, y = 284.549, z = 678.865 }, rot = { x = 0.000, y = 150.888, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 80006, monster_id = 25010301, pos = { x = -374.621, y = 284.549, z = 664.824 }, rot = { x = 0.000, y = 26.317, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 2, area_id = 7 },
	{ config_id = 80007, monster_id = 25010501, pos = { x = -371.025, y = 284.549, z = 663.213 }, rot = { x = 0.000, y = 3.102, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 2, area_id = 7 },
	{ config_id = 80008, monster_id = 25010301, pos = { x = -366.367, y = 284.549, z = 665.328 }, rot = { x = 0.000, y = 356.648, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 2, area_id = 7 },
	{ config_id = 80009, monster_id = 25030301, pos = { x = -365.116, y = 284.549, z = 669.027 }, rot = { x = 0.000, y = 292.612, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 80011, monster_id = 25030201, pos = { x = -367.007, y = 284.549, z = 663.267 }, rot = { x = 0.000, y = 329.250, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 80012, monster_id = 25070101, pos = { x = -367.225, y = 284.549, z = 665.112 }, rot = { x = 0.000, y = 329.411, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 80013, monster_id = 25010201, pos = { x = -377.154, y = 284.623, z = 669.131 }, rot = { x = 0.000, y = 77.313, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 80014, monster_id = 25010201, pos = { x = -373.245, y = 284.549, z = 678.803 }, rot = { x = 0.000, y = 149.865, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 80015, monster_id = 25010201, pos = { x = -365.388, y = 284.623, z = 678.636 }, rot = { x = 0.000, y = 213.148, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 80016, monster_id = 25010201, pos = { x = -362.806, y = 284.623, z = 671.953 }, rot = { x = 0.000, y = 263.813, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 }
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
	{ config_id = 1080005, name = "ANY_MONSTER_DIE_80005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80005", action = "action_EVENT_ANY_MONSTER_DIE_80005", trigger_count = 0 },
	{ config_id = 1080010, name = "ANY_MONSTER_DIE_80010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80010", action = "action_EVENT_ANY_MONSTER_DIE_80010", trigger_count = 0 },
	{ config_id = 1080017, name = "ANY_MONSTER_DIE_80017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80017", action = "action_EVENT_ANY_MONSTER_DIE_80017", trigger_count = 0 },
	{ config_id = 1080018, name = "GROUP_REFRESH_80018", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_80018" }
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
		monsters = { 80001, 80002, 80003, 80011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_80005", "GROUP_REFRESH_80018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 80004, 80006, 80007, 80008, 80009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_80010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 80012, 80013, 80014, 80015, 80016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_80017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_80005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_80005(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-369,y=284,z=670}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107080, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_80010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_80010(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-368,y=284,z=670}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107080, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_80017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_80017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "10151001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_80018(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-368,y=284,z=670}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400001, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end