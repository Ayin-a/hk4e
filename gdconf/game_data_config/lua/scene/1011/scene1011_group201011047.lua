-- 基础信息
local base_info = {
	group_id = 201011047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 236, monster_id = 21010201, pos = { x = 22.381, y = 0.800, z = -132.052 }, rot = { x = 0.000, y = 97.396, z = 0.000 }, level = 7, disableWander = true, affix = { 1008, 1019 }, isElite = true },
	{ config_id = 237, monster_id = 21010201, pos = { x = 22.079, y = 0.800, z = -141.533 }, rot = { x = 0.000, y = 84.642, z = 0.000 }, level = 7, disableWander = true, affix = { 1008, 1019 }, isElite = true },
	{ config_id = 238, monster_id = 21010701, pos = { x = 25.788, y = 0.800, z = -136.986 }, rot = { x = 0.000, y = 87.238, z = 0.000 }, level = 7, disableWander = true, affix = { 1008, 1019 }, isElite = true },
	{ config_id = 239, monster_id = 21020201, pos = { x = 21.419, y = 0.800, z = -136.951 }, rot = { x = 0.000, y = 92.144, z = 0.000 }, level = 7, disableWander = true, affix = { 1008, 1018 }, isElite = true },
	{ config_id = 262, monster_id = 20011201, pos = { x = 25.707, y = 0.800, z = -143.527 }, rot = { x = 0.000, y = 46.555, z = 0.000 }, level = 7, disableWander = true, affix = { 1008, 1019 }, isElite = true },
	{ config_id = 263, monster_id = 20011201, pos = { x = 25.498, y = 0.800, z = -130.435 }, rot = { x = 0.000, y = 118.855, z = 0.000 }, level = 7, disableWander = true, affix = { 1008, 1019 }, isElite = true }
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
	{ config_id = 1000156, name = "ANY_MONSTER_DIE_156", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_156", action = "action_EVENT_ANY_MONSTER_DIE_156" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 236, 237, 238, 239, 262, 263 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_156" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_156(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_156(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011051, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end