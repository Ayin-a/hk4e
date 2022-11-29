-- 基础信息
local base_info = {
	group_id = 250016012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44, monster_id = 20011501, pos = { x = -52.051, y = -11.000, z = -211.061 }, rot = { x = 0.000, y = 271.593, z = 0.000 }, level = 5 },
	{ config_id = 45, monster_id = 20011501, pos = { x = -48.304, y = -11.000, z = -214.381 }, rot = { x = 0.000, y = 267.255, z = 0.000 }, level = 5 },
	{ config_id = 46, monster_id = 20011501, pos = { x = -52.234, y = -11.000, z = -217.982 }, rot = { x = 0.000, y = 271.985, z = 0.000 }, level = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13, gadget_id = 70220005, pos = { x = -44.947, y = -11.000, z = -209.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14, gadget_id = 70220005, pos = { x = -44.823, y = -11.000, z = -208.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15, gadget_id = 70220005, pos = { x = -43.820, y = -11.000, z = -209.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000029, name = "ANY_MONSTER_DIE_29", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29", action = "action_EVENT_ANY_MONSTER_DIE_29", trigger_count = 0 },
	{ config_id = 1000101, name = "ANY_MONSTER_DIE_101", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_101", action = "action_EVENT_ANY_MONSTER_DIE_101", trigger_count = 0 }
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
		monsters = { 44, 45, 46 },
		gadgets = { 13, 14, 15 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_101" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016005) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016009, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016012, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_101(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016012) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_101(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016029, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016012, 2)
	
	return 0
end