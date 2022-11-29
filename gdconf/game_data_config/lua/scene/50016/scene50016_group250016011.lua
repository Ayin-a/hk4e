-- 基础信息
local base_info = {
	group_id = 250016011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39, monster_id = 21010401, pos = { x = -43.626, y = -7.793, z = -214.637 }, rot = { x = 0.000, y = 298.972, z = 0.000 }, level = 5 },
	{ config_id = 40, monster_id = 21010401, pos = { x = -44.011, y = -7.793, z = -216.096 }, rot = { x = 0.000, y = 251.439, z = 0.000 }, level = 5 },
	{ config_id = 41, monster_id = 21011001, pos = { x = -61.774, y = -7.793, z = -206.896 }, rot = { x = 0.000, y = 155.259, z = 0.000 }, level = 5 },
	{ config_id = 42, monster_id = 21011001, pos = { x = -60.445, y = -7.793, z = -206.256 }, rot = { x = 0.000, y = 135.602, z = 0.000 }, level = 5 },
	{ config_id = 43, monster_id = 21020101, pos = { x = -46.779, y = -14.293, z = -214.363 }, rot = { x = 0.000, y = 271.696, z = 0.000 }, level = 1 },
	{ config_id = 47, monster_id = 21010501, pos = { x = -59.896, y = -7.793, z = -226.451 }, rot = { x = 0.000, y = 52.300, z = 0.000 }, level = 5 },
	{ config_id = 48, monster_id = 21010501, pos = { x = -60.887, y = -7.793, z = -225.279 }, rot = { x = 0.000, y = 30.715, z = 0.000 }, level = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 16, gadget_id = 70220018, pos = { x = -42.678, y = -14.293, z = -216.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17, gadget_id = 70220018, pos = { x = -42.677, y = -14.293, z = -214.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18, gadget_id = 70220018, pos = { x = -44.877, y = -14.293, z = -214.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19, gadget_id = 70220018, pos = { x = -44.850, y = -14.293, z = -216.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 20, gadget_id = 70220018, pos = { x = -59.848, y = -14.293, z = -207.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 21, gadget_id = 70220018, pos = { x = -59.848, y = -14.293, z = -205.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 22, gadget_id = 70220018, pos = { x = -62.048, y = -14.293, z = -205.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23, gadget_id = 70220018, pos = { x = -62.020, y = -14.293, z = -207.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 24, gadget_id = 70220018, pos = { x = -59.417, y = -14.293, z = -227.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25, gadget_id = 70220018, pos = { x = -59.417, y = -14.293, z = -225.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 26, gadget_id = 70220018, pos = { x = -61.617, y = -14.293, z = -225.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 27, gadget_id = 70220018, pos = { x = -61.589, y = -14.293, z = -227.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000028, name = "ANY_MONSTER_DIE_28", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28", action = "action_EVENT_ANY_MONSTER_DIE_28", trigger_count = 0 },
	{ config_id = 1000100, name = "ANY_MONSTER_DIE_100", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100", action = "action_EVENT_ANY_MONSTER_DIE_100", trigger_count = 0 }
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
		monsters = { 39, 40, 41, 42, 43, 47, 48 },
		gadgets = { 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_100" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016005) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016009, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016011, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016011) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016029, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016011, 2)
	
	return 0
end