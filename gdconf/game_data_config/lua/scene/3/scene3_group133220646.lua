-- 基础信息
local base_info = {
	group_id = 133220646
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 646001, monster_id = 25010601, pos = { x = -2962.148, y = 200.713, z = -4254.251 }, rot = { x = 0.000, y = 264.268, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 646002, monster_id = 25030301, pos = { x = -2957.092, y = 200.147, z = -4254.749 }, rot = { x = 0.000, y = 38.891, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 646003, monster_id = 25010301, pos = { x = -2958.978, y = 200.105, z = -4257.331 }, rot = { x = 0.000, y = 53.756, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 646005, monster_id = 25030301, pos = { x = -2958.154, y = 200.341, z = -4253.009 }, rot = { x = 0.000, y = 65.025, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 646008, monster_id = 25010501, pos = { x = -2959.680, y = 200.311, z = -4255.441 }, rot = { x = 0.000, y = 58.095, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 646009, monster_id = 25010401, pos = { x = -2957.539, y = 200.000, z = -4257.683 }, rot = { x = 0.000, y = 14.271, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 646010, monster_id = 25010401, pos = { x = -2960.816, y = 200.684, z = -4252.281 }, rot = { x = 0.000, y = 104.931, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 646012, monster_id = 25010201, pos = { x = -2957.955, y = 200.326, z = -4252.931 }, rot = { x = 0.000, y = 204.389, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 646013, monster_id = 25010201, pos = { x = -2955.452, y = 200.000, z = -4257.443 }, rot = { x = 0.000, y = 172.564, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 }
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
	{ config_id = 1646004, name = "ANY_MONSTER_DIE_646004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_646004", action = "action_EVENT_ANY_MONSTER_DIE_646004" },
	{ config_id = 1646011, name = "ANY_MONSTER_DIE_646011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_646011", action = "action_EVENT_ANY_MONSTER_DIE_646011" }
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
	end_suite = 2,
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
		monsters = { 646001, 646003, 646012, 646013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_646011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 646002, 646005, 646008, 646009, 646010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_646004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_646004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_646004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220646") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_646011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_646011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220646, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end