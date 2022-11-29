-- 基础信息
local base_info = {
	group_id = 133003798
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 798001, monster_id = 22010101, pos = { x = 2571.188, y = 226.185, z = -1129.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9013, area_id = 1 },
	{ config_id = 798002, monster_id = 22010301, pos = { x = 2571.787, y = 226.015, z = -1120.550 }, rot = { x = 0.000, y = 174.846, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 798004, monster_id = 22010201, pos = { x = 2567.401, y = 225.520, z = -1125.010 }, rot = { x = 357.680, y = 95.083, z = 359.794 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 798005, monster_id = 22010201, pos = { x = 2576.309, y = 226.818, z = -1123.731 }, rot = { x = 0.000, y = 263.917, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 798006, monster_id = 21011001, pos = { x = 2572.353, y = 226.024, z = -1117.092 }, rot = { x = 0.000, y = 165.581, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 798007, monster_id = 21011001, pos = { x = 2571.895, y = 226.831, z = -1132.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 798003, gadget_id = 70300107, pos = { x = 2572.679, y = 226.115, z = -1125.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1798008, name = "ANY_MONSTER_DIE_798008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_798008", action = "action_EVENT_ANY_MONSTER_DIE_798008" },
	{ config_id = 1798009, name = "ANY_MONSTER_DIE_798009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_798009", action = "action_EVENT_ANY_MONSTER_DIE_798009" }
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
		monsters = { 798001, 798002 },
		gadgets = { 798003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_798008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 798004, 798005, 798006, 798007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_798009" },
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
function condition_EVENT_ANY_MONSTER_DIE_798008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_798008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003798, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_798009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_798009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003798") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end