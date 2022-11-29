-- 基础信息
local base_info = {
	group_id = 201019002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010201, pos = { x = 58.573, y = 16.500, z = -10.540 }, rot = { x = 0.000, y = 47.646, z = 0.000 }, level = 1 },
	{ config_id = 2002, monster_id = 21010201, pos = { x = 58.621, y = 16.500, z = 5.389 }, rot = { x = 0.000, y = 109.451, z = 0.000 }, level = 1 },
	{ config_id = 2003, monster_id = 21010201, pos = { x = 55.574, y = 16.500, z = -2.216 }, rot = { x = 0.000, y = 102.518, z = 0.000 }, level = 1 },
	{ config_id = 2004, monster_id = 21010201, pos = { x = 68.159, y = 16.500, z = -11.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, monster_id = 21010201, pos = { x = 67.541, y = 16.500, z = 8.025 }, rot = { x = 0.000, y = 170.982, z = 0.000 }, level = 1 }
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
	{ config_id = 1002006, name = "ANY_MONSTER_DIE_2006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2006", action = "action_EVENT_ANY_MONSTER_DIE_2006" }
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
		monsters = { 2001, 2002, 2003, 2004, 2005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201019002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201019003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end