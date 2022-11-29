-- 基础信息
local base_info = {
	group_id = 133209021
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21001, monster_id = 21010101, pos = { x = -2795.874, y = 200.416, z = -4583.811 }, rot = { x = 0.000, y = 187.509, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 11 },
	{ config_id = 21002, monster_id = 21010101, pos = { x = -2798.479, y = 200.248, z = -4586.180 }, rot = { x = 0.000, y = 120.442, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 11 },
	{ config_id = 21003, monster_id = 21010501, pos = { x = -2784.383, y = 206.388, z = -4585.743 }, rot = { x = 0.000, y = 259.877, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	{ config_id = 21004, monster_id = 21030101, pos = { x = -2784.734, y = 199.954, z = -4597.508 }, rot = { x = 0.000, y = 68.172, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 11 },
	{ config_id = 21005, monster_id = 21030101, pos = { x = -2784.550, y = 200.487, z = -4593.579 }, rot = { x = 0.000, y = 135.233, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 11 },
	{ config_id = 21006, monster_id = 21020101, pos = { x = -2794.075, y = 199.449, z = -4595.449 }, rot = { x = 0.000, y = 31.730, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 11 }
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
	{ config_id = 1021007, name = "ANY_MONSTER_DIE_21007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21007", action = "action_EVENT_ANY_MONSTER_DIE_21007" }
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
		monsters = { 21001, 21002, 21003, 21004, 21005, 21006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_21007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22030_01") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end