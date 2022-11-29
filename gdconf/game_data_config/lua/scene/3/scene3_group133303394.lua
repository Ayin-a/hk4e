-- 基础信息
local base_info = {
	group_id = 133303394
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 394001, monster_id = 25210102, pos = { x = -1672.622, y = 273.272, z = 4026.977 }, rot = { x = 0.000, y = 206.102, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 394002, monster_id = 25210501, pos = { x = -1672.939, y = 273.465, z = 4024.815 }, rot = { x = 0.000, y = 215.248, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 26 },
	{ config_id = 394003, monster_id = 25210303, pos = { x = -1668.529, y = 273.263, z = 4024.213 }, rot = { x = 0.000, y = 224.964, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 394004, monster_id = 25210201, pos = { x = -1670.739, y = 273.040, z = 4027.386 }, rot = { x = 0.000, y = 206.104, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 394006, monster_id = 25310301, pos = { x = -1670.535, y = 273.332, z = 4023.024 }, rot = { x = 0.000, y = 229.376, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 26 },
	{ config_id = 394007, monster_id = 25210402, pos = { x = -1669.101, y = 273.010, z = 4026.211 }, rot = { x = 0.000, y = 210.926, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 26 }
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
	{ config_id = 1394005, name = "ANY_MONSTER_DIE_394005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_394005", action = "action_EVENT_ANY_MONSTER_DIE_394005" },
	{ config_id = 1394008, name = "ANY_MONSTER_DIE_394008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_394008", action = "action_EVENT_ANY_MONSTER_DIE_394008" }
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
	suite = 2,
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
		monsters = { 394001, 394003, 394004, 394007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_394008" },
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
		monsters = { 394002, 394006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_394005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_394005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133303394) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_394005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1300908") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_394008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_394008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303394, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1672.504,y=273.9044,z=4023.676}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end