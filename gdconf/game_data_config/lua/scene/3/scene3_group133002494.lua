-- 基础信息
local base_info = {
	group_id = 133002494
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 494001, monster_id = 23010101, pos = { x = 1545.363, y = 266.738, z = -754.067 }, rot = { x = 0.000, y = 251.050, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9001, area_id = 10 },
	{ config_id = 494002, monster_id = 23010301, pos = { x = 1553.086, y = 268.824, z = -751.484 }, rot = { x = 0.000, y = 284.393, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 10 },
	{ config_id = 494003, monster_id = 23010601, pos = { x = 1553.601, y = 267.343, z = -764.777 }, rot = { x = 1.202, y = 328.950, z = 1.995 }, level = 15, drop_id = 1000100, area_id = 10 },
	{ config_id = 494004, monster_id = 23030101, pos = { x = 1554.423, y = 268.222, z = -759.797 }, rot = { x = 0.000, y = 330.350, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 10 },
	{ config_id = 494005, monster_id = 23010401, pos = { x = 1546.981, y = 266.565, z = -763.173 }, rot = { x = 357.904, y = 64.108, z = 1.017 }, level = 15, drop_id = 1000100, area_id = 10 },
	{ config_id = 494007, monster_id = 23010601, pos = { x = 1557.262, y = 269.551, z = -756.159 }, rot = { x = 0.000, y = 332.401, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9001, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 494010, gadget_id = 70310001, pos = { x = 1558.589, y = 269.793, z = -752.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 494011, gadget_id = 70310001, pos = { x = 1543.519, y = 266.852, z = -749.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1494008, name = "ANY_MONSTER_DIE_494008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_494008", action = "action_EVENT_ANY_MONSTER_DIE_494008" },
	{ config_id = 1494009, name = "ANY_MONSTER_DIE_494009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_494009", action = "action_EVENT_ANY_MONSTER_DIE_494009" }
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
		monsters = { 494001, 494002, 494007 },
		gadgets = { 494010, 494011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_494008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 494003, 494004, 494005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_494009" },
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
function condition_EVENT_ANY_MONSTER_DIE_494008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_494008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002494, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_494009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_494009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002494") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end