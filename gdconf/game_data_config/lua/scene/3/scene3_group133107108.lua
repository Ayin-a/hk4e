-- 基础信息
local base_info = {
	group_id = 133107108
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 108001, monster_id = 25050101, pos = { x = -372.869, y = 284.549, z = 669.382 }, rot = { x = 0.000, y = 145.430, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 108002, monster_id = 25050101, pos = { x = -371.606, y = 284.549, z = 671.549 }, rot = { x = 0.000, y = 139.220, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 108003, monster_id = 25050101, pos = { x = -371.829, y = 284.549, z = 673.718 }, rot = { x = 0.000, y = 116.660, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 108004, monster_id = 25050201, pos = { x = -368.906, y = 284.549, z = 662.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 108005, monster_id = 25050101, pos = { x = -362.951, y = 284.549, z = 676.602 }, rot = { x = 0.000, y = 222.660, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 108010, monster_id = 25050101, pos = { x = -367.059, y = 284.549, z = 662.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 108011, monster_id = 25050101, pos = { x = -370.865, y = 284.549, z = 674.384 }, rot = { x = 0.000, y = 125.620, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 108012, monster_id = 25050201, pos = { x = -375.871, y = 284.549, z = 665.976 }, rot = { x = 0.000, y = 64.570, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 108013, monster_id = 25050101, pos = { x = -374.612, y = 284.549, z = 664.396 }, rot = { x = 0.000, y = 42.970, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 108014, monster_id = 25050101, pos = { x = -364.964, y = 284.549, z = 664.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 108015, monster_id = 25050101, pos = { x = -365.093, y = 284.549, z = 676.507 }, rot = { x = 0.000, y = 213.790, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 }
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
	{ config_id = 1108006, name = "ANY_MONSTER_DIE_108006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_108006", action = "action_EVENT_ANY_MONSTER_DIE_108006", trigger_count = 0 },
	{ config_id = 1108007, name = "ANY_MONSTER_DIE_108007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_108007", action = "action_EVENT_ANY_MONSTER_DIE_108007", trigger_count = 0 },
	{ config_id = 1108008, name = "ANY_MONSTER_DIE_108008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_108008", action = "action_EVENT_ANY_MONSTER_DIE_108008", trigger_count = 0 },
	{ config_id = 1108009, name = "GROUP_REFRESH_108009", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_108009" }
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
		monsters = { 108001, 108002, 108003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_108006", "GROUP_REFRESH_108009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 108004, 108005, 108010, 108011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_108007" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 108012, 108013, 108014, 108015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_108008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_108006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_108006(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-369,y=284,z=670}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107108, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_108007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_108007(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-368,y=284,z=670}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107108, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_108008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_108008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "10200501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_108009(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-368,y=284,z=670}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400001, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end