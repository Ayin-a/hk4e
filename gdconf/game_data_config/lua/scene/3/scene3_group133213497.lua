-- 基础信息
local base_info = {
	group_id = 133213497
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 497001, monster_id = 21020101, pos = { x = -2561.584, y = 208.237, z = -4117.146 }, rot = { x = 0.000, y = 52.510, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 497002, monster_id = 21010201, pos = { x = -2555.109, y = 205.659, z = -4110.846 }, rot = { x = 0.000, y = 296.300, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 11 },
	{ config_id = 497003, monster_id = 21010401, pos = { x = -2564.877, y = 208.862, z = -4112.904 }, rot = { x = 0.000, y = 104.500, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 497004, monster_id = 21010401, pos = { x = -2559.230, y = 207.465, z = -4108.059 }, rot = { x = 0.000, y = 104.500, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 11 },
	{ config_id = 497005, monster_id = 21010401, pos = { x = -2558.987, y = 207.803, z = -4110.682 }, rot = { x = 0.000, y = 104.500, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 11 },
	{ config_id = 497007, monster_id = 21010401, pos = { x = -2560.580, y = 207.630, z = -4114.377 }, rot = { x = 0.000, y = 104.500, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 497009, monster_id = 21010201, pos = { x = -2555.109, y = 205.659, z = -4108.034 }, rot = { x = 0.000, y = 245.700, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 11 }
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
	{ config_id = 1497006, name = "ANY_MONSTER_DIE_497006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_497006", action = "action_EVENT_ANY_MONSTER_DIE_497006" },
	{ config_id = 1497008, name = "ANY_MONSTER_DIE_497008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_497008", action = "action_EVENT_ANY_MONSTER_DIE_497008" }
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
		monsters = { 497002, 497004, 497005, 497009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_497006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 497001, 497003, 497007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_497008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_497006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_497006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213497, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_497008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_497008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "191170201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end