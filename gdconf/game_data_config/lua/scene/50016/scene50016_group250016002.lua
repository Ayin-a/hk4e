-- 基础信息
local base_info = {
	group_id = 250016002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8, monster_id = 21010701, pos = { x = -50.746, y = -10.680, z = -50.621 }, rot = { x = 0.000, y = 226.000, z = 0.000 }, level = 5 },
	{ config_id = 9, monster_id = 21010701, pos = { x = -48.057, y = -10.680, z = -52.754 }, rot = { x = 0.000, y = 256.212, z = 0.000 }, level = 5 },
	{ config_id = 10, monster_id = 21010101, pos = { x = -48.676, y = -10.680, z = -57.482 }, rot = { x = 0.000, y = 306.044, z = 0.000 }, level = 5 },
	{ config_id = 11, monster_id = 21010101, pos = { x = -51.143, y = -10.680, z = -59.121 }, rot = { x = 0.000, y = 301.128, z = 0.000 }, level = 5 },
	{ config_id = 13, monster_id = 21010101, pos = { x = -46.068, y = -10.680, z = -55.218 }, rot = { x = 0.000, y = 306.044, z = 0.000 }, level = 5 }
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
	{ config_id = 1000006, name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6", action = "action_EVENT_ANY_MONSTER_DIE_6", trigger_count = 0 },
	{ config_id = 1000087, name = "ANY_MONSTER_DIE_87", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_87", action = "action_EVENT_ANY_MONSTER_DIE_87", trigger_count = 0 }
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
		monsters = { 8, 9, 10, 11, 13 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_87" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016003, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_87(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_87(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016027, 1)
	
	return 0
end