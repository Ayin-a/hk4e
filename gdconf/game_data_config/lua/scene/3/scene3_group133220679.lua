-- 基础信息
local base_info = {
	group_id = 133220679
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 679001, monster_id = 23030101, pos = { x = -2869.187, y = 202.364, z = -4187.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 679003, monster_id = 23010401, pos = { x = -2867.222, y = 202.716, z = -4189.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 679004, monster_id = 23010601, pos = { x = -2871.671, y = 202.667, z = -4189.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 679005, monster_id = 23010501, pos = { x = -2875.668, y = 201.839, z = -4182.397 }, rot = { x = 0.000, y = 58.751, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 679006, monster_id = 23010401, pos = { x = -2878.800, y = 201.831, z = -4181.026 }, rot = { x = 0.000, y = 58.131, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 679007, monster_id = 23010401, pos = { x = -2876.508, y = 201.969, z = -4184.445 }, rot = { x = 0.000, y = 55.940, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 }
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
	{ config_id = 1679002, name = "ANY_MONSTER_DIE_679002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_679002", action = "action_EVENT_ANY_MONSTER_DIE_679002" },
	{ config_id = 1679008, name = "ANY_MONSTER_DIE_679008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_679008", action = "action_EVENT_ANY_MONSTER_DIE_679008" }
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
	suite = 3,
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
		monsters = { 679001, 679003, 679004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_679002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 679005, 679006, 679007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_679008" },
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
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_ANY_MONSTER_DIE_679002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_679002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220679, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2867.764,y=202.4918,z=-4188.245}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110176, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_679008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_679008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1902005") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end