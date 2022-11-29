-- 基础信息
local base_info = {
	group_id = 133220651
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 651001, monster_id = 20011201, pos = { x = -2811.635, y = 222.193, z = -4539.139 }, rot = { x = 0.000, y = 284.065, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 651002, monster_id = 20011201, pos = { x = -2813.264, y = 222.381, z = -4540.982 }, rot = { x = 0.000, y = 319.823, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 651003, monster_id = 20011301, pos = { x = -2812.146, y = 221.761, z = -4536.270 }, rot = { x = 0.000, y = 217.956, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 651005, monster_id = 20011301, pos = { x = -2815.154, y = 222.164, z = -4540.278 }, rot = { x = 0.000, y = 21.303, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 651006, monster_id = 20011201, pos = { x = -2816.283, y = 221.713, z = -4537.442 }, rot = { x = 0.000, y = 96.153, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 }
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
	{ config_id = 1651004, name = "ANY_MONSTER_DIE_651004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_651004", action = "action_EVENT_ANY_MONSTER_DIE_651004" }
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
		monsters = { 651001, 651002, 651003, 651005, 651006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_651004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_651004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_651004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1901408") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end