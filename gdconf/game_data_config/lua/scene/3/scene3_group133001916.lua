-- 基础信息
local base_info = {
	group_id = 133001916
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 916001, monster_id = 20010801, pos = { x = 1231.273, y = 370.402, z = -938.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 916002, monster_id = 20010901, pos = { x = 1232.326, y = 370.312, z = -939.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 916003, monster_id = 20010801, pos = { x = 1231.864, y = 370.161, z = -940.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 916004, monster_id = 20010801, pos = { x = 1223.417, y = 370.483, z = -939.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 916005, monster_id = 20010901, pos = { x = 1224.453, y = 370.373, z = -940.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 916006, monster_id = 20010904, pos = { x = 1228.056, y = 370.160, z = -941.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 916007, monster_id = 20010801, pos = { x = 1226.609, y = 370.160, z = -941.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 916008, monster_id = 20010801, pos = { x = 1229.237, y = 370.156, z = -942.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
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
	{ config_id = 1916009, name = "ANY_MONSTER_DIE_916009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_916009", action = "action_EVENT_ANY_MONSTER_DIE_916009", trigger_count = 0 },
	{ config_id = 1916010, name = "ANY_MONSTER_DIE_916010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_916010", action = "action_EVENT_ANY_MONSTER_DIE_916010", trigger_count = 0 }
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
		monsters = { 916001, 916002, 916003, 916004, 916005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_916009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 916006, 916007, 916008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_916010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_916009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_916009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001916, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_916010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_916010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300191601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end