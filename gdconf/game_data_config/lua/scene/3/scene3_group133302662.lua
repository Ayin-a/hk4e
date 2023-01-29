-- 基础信息
local base_info = {
	group_id = 133302662
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 662011, monster_id = 21010401, pos = { x = -1046.252, y = 231.365, z = 2560.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 24 },
	{ config_id = 662012, monster_id = 21010401, pos = { x = -1041.847, y = 230.730, z = 2561.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 24 },
	{ config_id = 662013, monster_id = 21010401, pos = { x = -1042.046, y = 230.556, z = 2566.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 24 },
	{ config_id = 662014, monster_id = 21020201, pos = { x = -1048.757, y = 231.750, z = 2565.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 24 },
	{ config_id = 662016, monster_id = 21010401, pos = { x = -1041.797, y = 234.540, z = 2528.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 24 },
	{ config_id = 662017, monster_id = 21010401, pos = { x = -1037.391, y = 233.069, z = 2529.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 24 },
	{ config_id = 662018, monster_id = 21010401, pos = { x = -1037.591, y = 233.107, z = 2534.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 24 },
	{ config_id = 662019, monster_id = 21020201, pos = { x = -1044.303, y = 233.620, z = 2533.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 24 },
	{ config_id = 662020, monster_id = 21010401, pos = { x = -1021.870, y = 228.434, z = 2549.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 24 },
	{ config_id = 662021, monster_id = 21010401, pos = { x = -1017.465, y = 227.732, z = 2551.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 24 },
	{ config_id = 662022, monster_id = 21010401, pos = { x = -1017.664, y = 227.622, z = 2556.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 24 },
	{ config_id = 662023, monster_id = 21020201, pos = { x = -1024.376, y = 228.607, z = 2555.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 24 },
	{ config_id = 662027, monster_id = 21020801, pos = { x = -1036.416, y = 230.497, z = 2550.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1031, 6113 }, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 662001, gadget_id = 70350023, pos = { x = -1021.435, y = 228.269, z = 2553.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 662002, gadget_id = 70350023, pos = { x = -1045.741, y = 231.234, z = 2563.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 662003, gadget_id = 70350023, pos = { x = -1040.223, y = 233.196, z = 2532.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 662004, gadget_id = 70220103, pos = { x = -1023.547, y = 235.233, z = 2553.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 662005, gadget_id = 70220103, pos = { x = -1045.741, y = 238.197, z = 2561.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 662006, gadget_id = 70220103, pos = { x = -1039.705, y = 240.159, z = 2534.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 662007, gadget_id = 70350036, pos = { x = -1021.435, y = 228.269, z = 2553.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 662008, gadget_id = 70350036, pos = { x = -1045.741, y = 231.234, z = 2563.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 662009, gadget_id = 70350036, pos = { x = -1040.223, y = 233.196, z = 2532.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 662015, gadget_id = 70220122, pos = { x = -1045.741, y = 239.274, z = 2561.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 662024, gadget_id = 70220122, pos = { x = -1023.547, y = 236.188, z = 2553.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 662025, gadget_id = 70220122, pos = { x = -1039.705, y = 241.183, z = 2534.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 662026, gadget_id = 70220103, pos = { x = -1039.682, y = 237.787, z = 2551.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 662028, gadget_id = 70320001, pos = { x = -1045.984, y = 231.994, z = 2546.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 662029, gadget_id = 70320001, pos = { x = -1026.457, y = 228.760, z = 2558.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 662010, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1035.899, y = 230.534, z = 2549.199 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1662010, name = "ENTER_REGION_662010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_662010", action = "action_EVENT_ENTER_REGION_662010" },
	{ config_id = 1662030, name = "ANY_MONSTER_DIE_662030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_662030", action = "action_EVENT_ANY_MONSTER_DIE_662030" },
	{ config_id = 1662031, name = "ANY_MONSTER_DIE_662031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_662031", action = "action_EVENT_ANY_MONSTER_DIE_662031" },
	{ config_id = 1662032, name = "GADGET_CREATE_662032", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_662032", action = "action_EVENT_GADGET_CREATE_662032" },
	{ config_id = 1662033, name = "TIME_AXIS_PASS_662033", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_662033" }
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
		gadgets = { 662001, 662002, 662003, 662004, 662005, 662006, 662026 },
		regions = { 662010 },
		triggers = { "ENTER_REGION_662010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 662011, 662012, 662013, 662014 },
		gadgets = { 662007, 662008, 662009, 662015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_662030" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 662016, 662017, 662018, 662019, 662020, 662021, 662022, 662023 },
		gadgets = { 662024, 662025 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_662031" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 662028, 662029 },
		regions = { },
		triggers = { "GADGET_CREATE_662032", "TIME_AXIS_PASS_662033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 662027 },
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
function condition_EVENT_ENTER_REGION_662010(context, evt)
	if evt.param1 ~= 662010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_662010(context, evt)
	ScriptLib.AddExtraGroupSuite(context, 133302662, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_662030(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133302662) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_662030(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302662, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_662031(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133302662) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_662031(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302662, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_662032(context, evt)
	if 662028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_662032(context, evt)
	ScriptLib.InitTimeAxis(context, "T1", {15}, false)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_662033(context, evt)
	ScriptLib.AddExtraGroupSuite(context, 133302662, 5)
	
	ScriptLib.RemoveExtraGroupSuite(context, 133302662, 4)
	
	return 0
end