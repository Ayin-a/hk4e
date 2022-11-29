-- 基础信息
local base_info = {
	group_id = 250016018
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 18001, monster_id = 21010501, pos = { x = -202.199, y = -8.028, z = -291.468 }, rot = { x = 0.000, y = 298.972, z = 0.000 }, level = 5 },
	{ config_id = 18002, monster_id = 21010501, pos = { x = -202.585, y = -8.028, z = -292.927 }, rot = { x = 0.000, y = 251.439, z = 0.000 }, level = 5 },
	{ config_id = 18003, monster_id = 21010501, pos = { x = -220.347, y = -8.028, z = -283.728 }, rot = { x = 0.000, y = 155.259, z = 0.000 }, level = 5 },
	{ config_id = 18004, monster_id = 21010501, pos = { x = -219.018, y = -8.028, z = -283.087 }, rot = { x = 0.000, y = 135.602, z = 0.000 }, level = 5 },
	{ config_id = 18005, monster_id = 21010501, pos = { x = -218.469, y = -8.028, z = -303.283 }, rot = { x = 0.000, y = 52.300, z = 0.000 }, level = 5 },
	{ config_id = 18006, monster_id = 21010501, pos = { x = -219.460, y = -8.028, z = -302.110 }, rot = { x = 0.000, y = 30.715, z = 0.000 }, level = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 18007, gadget_id = 70220018, pos = { x = -201.251, y = -14.529, z = -293.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18008, gadget_id = 70220018, pos = { x = -201.251, y = -14.529, z = -291.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18009, gadget_id = 70220018, pos = { x = -203.451, y = -14.529, z = -291.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18010, gadget_id = 70220018, pos = { x = -203.423, y = -14.529, z = -293.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18011, gadget_id = 70220018, pos = { x = -218.422, y = -14.529, z = -284.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18012, gadget_id = 70220018, pos = { x = -218.421, y = -14.529, z = -282.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18013, gadget_id = 70220018, pos = { x = -220.621, y = -14.529, z = -282.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18014, gadget_id = 70220018, pos = { x = -220.593, y = -14.529, z = -284.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18015, gadget_id = 70220018, pos = { x = -217.991, y = -14.529, z = -304.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18016, gadget_id = 70220018, pos = { x = -217.990, y = -14.529, z = -301.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18017, gadget_id = 70220018, pos = { x = -220.190, y = -14.529, z = -301.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18018, gadget_id = 70220018, pos = { x = -220.163, y = -14.529, z = -304.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000049, name = "ANY_MONSTER_DIE_49", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49", action = "action_EVENT_ANY_MONSTER_DIE_49", trigger_count = 0 },
	{ config_id = 1000111, name = "ANY_MONSTER_DIE_111", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_111", action = "action_EVENT_ANY_MONSTER_DIE_111", trigger_count = 0 }
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
		monsters = { 18001, 18002, 18003, 18004, 18005, 18006 },
		gadgets = { 18007, 18008, 18009, 18010, 18011, 18012, 18013, 18014, 18015, 18016, 18017, 18018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_111" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016018) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016017, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016018, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_111(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016018) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_111(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016031, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016018, 2)
	
	return 0
end