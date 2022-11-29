-- 基础信息
local base_info = {
	group_id = 133107947
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 947001, monster_id = 25010201, pos = { x = -648.047, y = 221.347, z = 676.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 7 },
	{ config_id = 947002, monster_id = 25010201, pos = { x = -645.191, y = 221.347, z = 673.569 }, rot = { x = 0.000, y = 339.180, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 7 },
	{ config_id = 947003, monster_id = 25020201, pos = { x = -646.847, y = 221.347, z = 676.454 }, rot = { x = 0.000, y = 352.410, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 7 },
	{ config_id = 947004, monster_id = 25020201, pos = { x = -647.264, y = 221.347, z = 670.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 7 }
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
	{ config_id = 1947005, name = "ANY_MONSTER_DIE_947005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_947005", action = "action_EVENT_ANY_MONSTER_DIE_947005", trigger_count = 0 }
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
		monsters = { 947001, 947002, 947003, 947004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_947005" },
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
function condition_EVENT_ANY_MONSTER_DIE_947005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_947005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079471") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end