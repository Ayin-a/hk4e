-- 基础信息
local base_info = {
	group_id = 301001005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 25020201, pos = { x = -645.536, y = 221.364, z = 667.695 }, rot = { x = 0.000, y = 356.430, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 5002, monster_id = 25020201, pos = { x = -648.455, y = 221.752, z = 676.442 }, rot = { x = 0.000, y = 40.400, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 5003, monster_id = 25010201, pos = { x = -646.894, y = 221.347, z = 675.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 7 },
	{ config_id = 5004, monster_id = 25010201, pos = { x = -641.988, y = 221.265, z = 674.914 }, rot = { x = 0.000, y = 301.058, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 7 }
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
	{ config_id = 1005005, name = "ANY_MONSTER_DIE_5005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5005", action = "action_EVENT_ANY_MONSTER_DIE_5005" }
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
		monsters = { 5001, 5002, 5003, 5004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5005" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
function condition_EVENT_ANY_MONSTER_DIE_5005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "301001005") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end