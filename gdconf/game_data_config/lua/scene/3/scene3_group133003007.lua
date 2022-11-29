-- 基础信息
local base_info = {
	group_id = 133003007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 21010201, pos = { x = 2776.456, y = 260.904, z = -1301.384 }, rot = { x = 0.000, y = 280.318, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 7002, monster_id = 21010201, pos = { x = 2779.115, y = 261.488, z = -1305.223 }, rot = { x = 0.000, y = 288.779, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 7003, monster_id = 21010502, pos = { x = 2772.951, y = 260.097, z = -1289.321 }, rot = { x = 0.000, y = 218.887, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 7004, monster_id = 21010701, pos = { x = 2776.868, y = 261.175, z = -1302.823 }, rot = { x = 0.000, y = 275.475, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 7005, monster_id = 21010701, pos = { x = 2777.241, y = 260.580, z = -1296.098 }, rot = { x = 0.000, y = 270.405, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 7006, monster_id = 21010201, pos = { x = 2776.928, y = 260.286, z = -1294.532 }, rot = { x = 0.000, y = 276.073, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 7007, monster_id = 21020101, pos = { x = 2781.529, y = 260.563, z = -1291.403 }, rot = { x = 0.000, y = 265.125, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 }
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
	{ config_id = 1007028, name = "ANY_MONSTER_DIE_7028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7028", action = "action_EVENT_ANY_MONSTER_DIE_7028", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7001, 7002, 7003, 7004, 7005, 7006, 7007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7028" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7028(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003925") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end