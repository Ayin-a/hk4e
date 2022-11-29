-- 基础信息
local base_info = {
	group_id = 250015032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32001, monster_id = 21011001, pos = { x = 1531.765, y = 208.097, z = 909.129 }, rot = { x = 0.000, y = 279.955, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 32002, monster_id = 21011001, pos = { x = 1532.374, y = 208.096, z = 912.817 }, rot = { x = 0.000, y = 292.020, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 32003, monster_id = 22010101, pos = { x = 1523.728, y = 208.088, z = 914.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32004, monster_id = 21030201, pos = { x = 1515.884, y = 208.096, z = 923.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32005, monster_id = 21030201, pos = { x = 1513.133, y = 208.094, z = 913.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32006, monster_id = 21030201, pos = { x = 1532.196, y = 208.096, z = 911.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32007, monster_id = 21010201, pos = { x = 1517.821, y = 208.092, z = 920.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32008, monster_id = 21010201, pos = { x = 1529.873, y = 208.095, z = 909.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32009, monster_id = 21010701, pos = { x = 1515.616, y = 208.092, z = 910.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32010, monster_id = 21010701, pos = { x = 1530.860, y = 208.095, z = 918.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32012, monster_id = 21010701, pos = { x = 1517.658, y = 208.093, z = 921.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32022, monster_id = 21010701, pos = { x = 1529.544, y = 208.095, z = 908.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32025, monster_id = 21010301, pos = { x = 1517.115, y = 208.090, z = 915.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32026, monster_id = 21010301, pos = { x = 1528.738, y = 208.093, z = 913.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32031, monster_id = 21010501, pos = { x = 1511.441, y = 208.096, z = 917.702 }, rot = { x = 0.000, y = 112.162, z = 0.000 }, level = 1 },
	{ config_id = 32032, monster_id = 21010501, pos = { x = 1512.994, y = 208.095, z = 921.385 }, rot = { x = 0.000, y = 116.649, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 32011, gadget_id = 70220005, pos = { x = 1512.320, y = 208.095, z = 919.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32013, gadget_id = 70220020, pos = { x = 1509.244, y = 208.097, z = 917.845 }, rot = { x = 0.000, y = 292.944, z = 0.000 }, level = 1 },
	{ config_id = 32014, gadget_id = 70220020, pos = { x = 1510.982, y = 208.097, z = 921.664 }, rot = { x = 0.000, y = 292.944, z = 0.000 }, level = 1 },
	{ config_id = 32015, gadget_id = 70220020, pos = { x = 1509.756, y = 208.098, z = 922.183 }, rot = { x = 0.000, y = 292.944, z = 0.000 }, level = 1 },
	{ config_id = 32016, gadget_id = 70220020, pos = { x = 1508.421, y = 208.098, z = 918.935 }, rot = { x = 0.000, y = 292.944, z = 0.000 }, level = 1 },
	{ config_id = 32017, gadget_id = 70220020, pos = { x = 1507.408, y = 208.099, z = 916.542 }, rot = { x = 0.000, y = 281.995, z = 0.000 }, level = 1 },
	{ config_id = 32018, gadget_id = 70220020, pos = { x = 1534.772, y = 208.098, z = 912.223 }, rot = { x = 0.000, y = 291.658, z = 0.000 }, level = 1 },
	{ config_id = 32019, gadget_id = 70220020, pos = { x = 1533.506, y = 208.099, z = 908.632 }, rot = { x = 0.000, y = 286.043, z = 0.000 }, level = 1 },
	{ config_id = 32020, gadget_id = 70220020, pos = { x = 1535.913, y = 208.099, z = 912.670 }, rot = { x = 0.000, y = 291.658, z = 0.000 }, level = 1 },
	{ config_id = 32021, gadget_id = 70220020, pos = { x = 1534.482, y = 208.100, z = 909.066 }, rot = { x = 0.000, y = 291.658, z = 0.000 }, level = 1 },
	{ config_id = 32029, gadget_id = 40200001, pos = { x = 1523.696, y = 200.000, z = 854.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32030, gadget_id = 40200001, pos = { x = 1545.465, y = 200.000, z = 908.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32033, gadget_id = 70220005, pos = { x = 1531.799, y = 208.097, z = 910.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032027, name = "ANY_MONSTER_DIE_32027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32027", action = "action_EVENT_ANY_MONSTER_DIE_32027" },
	{ config_id = 1032028, name = "ANY_MONSTER_DIE_32028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32028", action = "action_EVENT_ANY_MONSTER_DIE_32028" }
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
		monsters = { 32001, 32002, 32007, 32008, 32031, 32032 },
		gadgets = { 32011, 32013, 32014, 32015, 32016, 32017, 32018, 32019, 32020, 32021, 32029, 32030, 32033 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_32027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 32009, 32010, 32012, 32022, 32025, 32026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_32028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 32003, 32004, 32005, 32006 },
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
function condition_EVENT_ANY_MONSTER_DIE_32027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32027(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015032, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32028(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015032, 3)
	
	return 0
end