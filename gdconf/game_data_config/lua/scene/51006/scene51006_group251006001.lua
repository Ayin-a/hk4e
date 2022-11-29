-- 基础信息
local base_info = {
	group_id = 251006001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010201, pos = { x = 27.728, y = 1.707, z = 22.432 }, rot = { x = 0.000, y = 280.115, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1002, monster_id = 21010201, pos = { x = 29.535, y = 1.707, z = 30.762 }, rot = { x = 0.000, y = 285.722, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1003, monster_id = 21010401, pos = { x = 37.137, y = 1.707, z = 20.644 }, rot = { x = 0.000, y = 294.839, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1004, monster_id = 21010401, pos = { x = 39.771, y = 1.707, z = 29.633 }, rot = { x = 0.000, y = 266.458, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1006, monster_id = 21020201, pos = { x = 38.800, y = 1.707, z = 24.991 }, rot = { x = 0.000, y = 274.356, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1007, gadget_id = 70211001, pos = { x = 41.085, y = 1.707, z = 28.259 }, rot = { x = 0.000, y = 267.716, z = 0.000 }, level = 1, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001005, name = "ANY_MONSTER_DIE_1005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1005", action = "action_EVENT_ANY_MONSTER_DIE_1005" },
	{ config_id = 1001008, name = "ANY_MONSTER_DIE_1008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1008", action = "action_EVENT_ANY_MONSTER_DIE_1008" }
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
		monsters = { 1001, 1002, 1003, 1004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1007 },
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
function condition_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 251006001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 251006001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 251006001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 251006001, 3)
	
	return 0
end