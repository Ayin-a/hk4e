-- 基础信息
local base_info = {
	group_id = 250015030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30001, monster_id = 21010701, pos = { x = 1735.394, y = 204.683, z = 1006.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30002, monster_id = 21010701, pos = { x = 1724.762, y = 202.567, z = 1003.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30003, monster_id = 21010201, pos = { x = 1725.737, y = 204.247, z = 1009.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30004, monster_id = 21010201, pos = { x = 1736.609, y = 205.079, z = 1007.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30005, monster_id = 21010501, pos = { x = 1718.805, y = 205.490, z = 995.895 }, rot = { x = 1.860, y = 31.980, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 30018, monster_id = 21010701, pos = { x = 1732.106, y = 206.603, z = 1015.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30019, monster_id = 21010701, pos = { x = 1730.706, y = 201.950, z = 998.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30020, monster_id = 22010101, pos = { x = 1730.749, y = 204.446, z = 1008.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30022, monster_id = 21030201, pos = { x = 1727.189, y = 206.534, z = 1016.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30023, monster_id = 21030201, pos = { x = 1723.913, y = 202.379, z = 1002.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30026, monster_id = 21010201, pos = { x = 1730.760, y = 202.535, z = 1000.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30028, monster_id = 21010201, pos = { x = 1732.106, y = 206.600, z = 1015.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 30007, gadget_id = 70300081, pos = { x = 1718.716, y = 203.872, z = 1014.628 }, rot = { x = 18.650, y = 189.750, z = 337.300 }, level = 1 },
	{ config_id = 30008, gadget_id = 70300081, pos = { x = 1717.865, y = 202.700, z = 1009.842 }, rot = { x = 18.650, y = 189.750, z = 337.300 }, level = 1 },
	{ config_id = 30009, gadget_id = 70300081, pos = { x = 1721.219, y = 206.672, z = 1021.130 }, rot = { x = 18.650, y = 224.900, z = 2.000 }, level = 1 },
	{ config_id = 30010, gadget_id = 70300081, pos = { x = 1733.780, y = 200.291, z = 990.111 }, rot = { x = 349.710, y = 44.000, z = 0.000 }, level = 1 },
	{ config_id = 30011, gadget_id = 70300081, pos = { x = 1728.439, y = 207.647, z = 1021.845 }, rot = { x = 0.000, y = 298.120, z = 0.000 }, level = 1 },
	{ config_id = 30012, gadget_id = 70300081, pos = { x = 1732.662, y = 207.451, z = 1021.315 }, rot = { x = 11.900, y = 232.100, z = 0.000 }, level = 1 },
	{ config_id = 30013, gadget_id = 70300081, pos = { x = 1737.906, y = 208.290, z = 1020.528 }, rot = { x = 0.000, y = 329.600, z = 0.000 }, level = 1 },
	{ config_id = 30014, gadget_id = 70300081, pos = { x = 1717.674, y = 200.116, z = 997.370 }, rot = { x = 11.500, y = 162.500, z = 0.000 }, level = 1 },
	{ config_id = 30015, gadget_id = 70300090, pos = { x = 1719.143, y = 200.000, z = 994.646 }, rot = { x = 0.000, y = 30.900, z = 0.000 }, level = 1 },
	{ config_id = 30016, gadget_id = 70300086, pos = { x = 1719.776, y = 205.558, z = 1017.821 }, rot = { x = 350.000, y = 100.000, z = 347.000 }, level = 1 },
	{ config_id = 30017, gadget_id = 70300086, pos = { x = 1717.373, y = 202.288, z = 1006.938 }, rot = { x = 350.000, y = 100.000, z = 347.000 }, level = 1 },
	{ config_id = 30021, gadget_id = 70300081, pos = { x = 1722.369, y = 200.000, z = 992.778 }, rot = { x = 359.100, y = 120.300, z = 331.640 }, level = 1 },
	{ config_id = 30024, gadget_id = 70300081, pos = { x = 1727.466, y = 200.000, z = 989.965 }, rot = { x = 359.100, y = 120.300, z = 331.640 }, level = 1 },
	{ config_id = 30025, gadget_id = 70300081, pos = { x = 1744.730, y = 205.167, z = 1006.061 }, rot = { x = 349.710, y = 29.800, z = 0.000 }, level = 1 },
	{ config_id = 30027, gadget_id = 70220005, pos = { x = 1719.806, y = 205.490, z = 995.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30030, gadget_id = 70300081, pos = { x = 1715.965, y = 201.346, z = 1003.340 }, rot = { x = 11.500, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 30032, gadget_id = 40200001, pos = { x = 1706.810, y = 200.000, z = 1014.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30034, gadget_id = 70300081, pos = { x = 1742.153, y = 207.569, z = 1017.584 }, rot = { x = 349.600, y = 311.270, z = 0.000 }, level = 1 },
	{ config_id = 30042, gadget_id = 70300081, pos = { x = 1745.462, y = 206.319, z = 1011.869 }, rot = { x = 349.600, y = 344.480, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1030006, name = "ANY_GADGET_DIE_30006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_30006", action = "action_EVENT_ANY_GADGET_DIE_30006" },
	{ config_id = 1030029, name = "ANY_MONSTER_DIE_30029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_30029", action = "action_EVENT_ANY_MONSTER_DIE_30029" },
	{ config_id = 1030035, name = "ANY_MONSTER_DIE_30035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_30035", action = "action_EVENT_ANY_MONSTER_DIE_30035" }
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
		monsters = { 30001, 30002, 30018, 30019, 30020, 30022, 30023 },
		gadgets = { 30007, 30008, 30009, 30010, 30011, 30012, 30013, 30014, 30015, 30016, 30017, 30021, 30024, 30025, 30027, 30030, 30032, 30034, 30042 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_30006", "ANY_MONSTER_DIE_30035" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 30003, 30004, 30005, 30026, 30028 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_30029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 30005, 30020, 30022, 30023 },
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
function condition_EVENT_ANY_GADGET_DIE_30006(context, evt)
	if 30027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_30006(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250015030, monsters = {30005}, gadgets = {} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_30029(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_30029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015030, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_30035(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_30035(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015030, 2)
	
	return 0
end