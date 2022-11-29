-- 基础信息
local base_info = {
	group_id = 250016006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19, monster_id = 20010501, pos = { x = -52.562, y = -11.000, z = -128.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5 },
	{ config_id = 20, monster_id = 21011001, pos = { x = -40.476, y = -11.000, z = -124.482 }, rot = { x = 0.000, y = 237.852, z = 0.000 }, level = 5 },
	{ config_id = 21, monster_id = 21010901, pos = { x = -40.469, y = -11.000, z = -140.099 }, rot = { x = 0.000, y = 306.097, z = 0.000 }, level = 5 },
	{ config_id = 22, monster_id = 20010701, pos = { x = -52.675, y = -11.000, z = -135.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5 },
	{ config_id = 23, monster_id = 20010601, pos = { x = -48.089, y = -11.000, z = -131.875 }, rot = { x = 0.000, y = 271.696, z = 0.000 }, level = 1 }
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
	{ config_id = 1000012, name = "ANY_MONSTER_DIE_12", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12", action = "action_EVENT_ANY_MONSTER_DIE_12", trigger_count = 0 },
	{ config_id = 1000093, name = "ANY_MONSTER_DIE_93", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_93", action = "action_EVENT_ANY_MONSTER_DIE_93", trigger_count = 0 }
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
		monsters = { 19, 20, 21, 22, 23 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_93" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_12" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016006) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016004, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_93(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016006) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_93(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016028, 1)
	
	return 0
end