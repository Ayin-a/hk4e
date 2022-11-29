-- 基础信息
local base_info = {
	group_id = 133213051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51001, monster_id = 21020801, pos = { x = -2947.022, y = 200.075, z = -3321.986 }, rot = { x = 0.000, y = 277.932, z = 0.000 }, level = 28, drop_id = 1000100, isElite = true, pose_id = 401, area_id = 12 },
	{ config_id = 51004, monster_id = 21030101, pos = { x = -2952.463, y = 200.997, z = -3318.926 }, rot = { x = 0.000, y = 45.855, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 12 },
	{ config_id = 51005, monster_id = 21030101, pos = { x = -2938.810, y = 200.486, z = -3313.293 }, rot = { x = 0.000, y = 228.592, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 12 }
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
	{ config_id = 1051002, name = "SPECIFIC_MONSTER_HP_CHANGE_51002", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "51001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_51002", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_51002" },
	{ config_id = 1051003, name = "ANY_MONSTER_DIE_51003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51003", action = "action_EVENT_ANY_MONSTER_DIE_51003" }
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
		monsters = { 51001 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_51002", "ANY_MONSTER_DIE_51003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 51004, 51005 },
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
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_51002(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_51002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213051, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133213051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end