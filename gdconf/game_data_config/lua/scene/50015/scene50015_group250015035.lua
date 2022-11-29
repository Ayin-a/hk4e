-- 基础信息
local base_info = {
	group_id = 250015035
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 21011001, pos = { x = 1634.802, y = 202.011, z = 925.966 }, rot = { x = 0.000, y = 291.326, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 35002, monster_id = 21011001, pos = { x = 1633.605, y = 202.010, z = 923.301 }, rot = { x = 0.000, y = 302.132, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 35003, monster_id = 22010101, pos = { x = 1626.916, y = 202.004, z = 929.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 35006, monster_id = 21010201, pos = { x = 1624.980, y = 202.006, z = 930.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 35007, monster_id = 21010201, pos = { x = 1628.777, y = 202.005, z = 926.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 35008, monster_id = 21010701, pos = { x = 1628.848, y = 202.005, z = 930.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 35009, monster_id = 21010701, pos = { x = 1623.150, y = 202.007, z = 926.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 35010, monster_id = 21010301, pos = { x = 1627.266, y = 202.005, z = 926.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 35011, monster_id = 21010301, pos = { x = 1627.737, y = 202.006, z = 931.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 35012, monster_id = 21010501, pos = { x = 1619.036, y = 202.011, z = 931.647 }, rot = { x = 0.000, y = 112.162, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 35013, monster_id = 21010501, pos = { x = 1619.976, y = 202.010, z = 933.664 }, rot = { x = 0.000, y = 132.947, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 35029, monster_id = 21030301, pos = { x = 1633.865, y = 202.094, z = 924.444 }, rot = { x = 0.000, y = 307.057, z = 0.000 }, level = 1 },
	{ config_id = 35030, monster_id = 21030301, pos = { x = 1619.717, y = 202.094, z = 932.686 }, rot = { x = 0.000, y = 124.508, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35016, gadget_id = 70220005, pos = { x = 1620.623, y = 202.011, z = 934.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 35017, gadget_id = 70220020, pos = { x = 1617.475, y = 202.012, z = 932.438 }, rot = { x = 0.000, y = 293.209, z = 0.000 }, level = 1 },
	{ config_id = 35018, gadget_id = 70220020, pos = { x = 1618.206, y = 202.012, z = 934.141 }, rot = { x = 0.000, y = 293.209, z = 0.000 }, level = 1 },
	{ config_id = 35019, gadget_id = 70220020, pos = { x = 1636.458, y = 202.013, z = 924.254 }, rot = { x = 0.000, y = 293.209, z = 0.000 }, level = 1 },
	{ config_id = 35020, gadget_id = 70220020, pos = { x = 1635.749, y = 202.012, z = 922.602 }, rot = { x = 0.000, y = 293.209, z = 0.000 }, level = 1 },
	{ config_id = 35021, gadget_id = 70220020, pos = { x = 1618.854, y = 202.012, z = 935.655 }, rot = { x = 0.000, y = 293.209, z = 0.000 }, level = 1 },
	{ config_id = 35022, gadget_id = 70220020, pos = { x = 1617.043, y = 202.012, z = 931.430 }, rot = { x = 0.000, y = 293.209, z = 0.000 }, level = 1 },
	{ config_id = 35023, gadget_id = 70220020, pos = { x = 1635.229, y = 202.012, z = 921.391 }, rot = { x = 0.000, y = 293.209, z = 0.000 }, level = 1 },
	{ config_id = 35024, gadget_id = 70220020, pos = { x = 1637.011, y = 202.013, z = 925.547 }, rot = { x = 0.000, y = 293.209, z = 0.000 }, level = 1 },
	{ config_id = 35025, gadget_id = 70300083, pos = { x = 1618.376, y = 202.095, z = 933.348 }, rot = { x = 0.000, y = 300.488, z = 0.000 }, level = 1 },
	{ config_id = 35026, gadget_id = 70300083, pos = { x = 1635.654, y = 202.096, z = 923.460 }, rot = { x = 0.000, y = 291.072, z = 0.000 }, level = 1 },
	{ config_id = 35027, gadget_id = 70300089, pos = { x = 1626.623, y = 202.088, z = 928.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1035014, name = "ANY_MONSTER_DIE_35014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35014", action = "action_EVENT_ANY_MONSTER_DIE_35014" },
	{ config_id = 1035015, name = "ANY_MONSTER_DIE_35015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35015", action = "action_EVENT_ANY_MONSTER_DIE_35015" },
	{ config_id = 1035028, name = "ANY_GADGET_DIE_35028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_35028", action = "action_EVENT_ANY_GADGET_DIE_35028" }
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
		monsters = { 35001, 35002, 35006, 35007, 35012, 35013 },
		gadgets = { 35025, 35026, 35027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_35014", "ANY_GADGET_DIE_35028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 35008, 35009, 35010, 35011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_35015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 35003, 35029, 35030 },
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
function condition_EVENT_ANY_MONSTER_DIE_35014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015035, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_35015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35015(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015035, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_35028(context, evt)
	if 35027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_35028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35025 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35026 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end