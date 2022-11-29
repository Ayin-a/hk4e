-- 基础信息
local base_info = {
	group_id = 133008594
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 594001, monster_id = 26010101, pos = { x = 1318.771, y = 356.510, z = -915.187 }, rot = { x = 11.514, y = 154.654, z = 13.059 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 },
	{ config_id = 594002, monster_id = 26010101, pos = { x = 1322.948, y = 356.329, z = -926.585 }, rot = { x = 349.527, y = 339.075, z = 346.097 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 },
	{ config_id = 594003, monster_id = 26010101, pos = { x = 1325.937, y = 355.708, z = -916.389 }, rot = { x = 349.527, y = 339.075, z = 346.097 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 },
	{ config_id = 594004, monster_id = 26010101, pos = { x = 1332.262, y = 353.333, z = -931.530 }, rot = { x = 349.527, y = 339.075, z = 346.097 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 594005, gadget_id = 70360102, pos = { x = 1317.977, y = 355.876, z = -914.040 }, rot = { x = 0.898, y = 359.900, z = 349.673 }, level = 1, area_id = 10 },
	{ config_id = 594006, gadget_id = 70360102, pos = { x = 1325.594, y = 354.413, z = -916.383 }, rot = { x = 350.627, y = 228.175, z = 8.683 }, level = 1, area_id = 10 },
	{ config_id = 594007, gadget_id = 70360102, pos = { x = 1340.962, y = 351.043, z = -914.430 }, rot = { x = 344.417, y = 261.369, z = 3.622 }, level = 1, area_id = 10 },
	{ config_id = 594008, gadget_id = 70360102, pos = { x = 1322.424, y = 355.097, z = -926.229 }, rot = { x = 348.637, y = 241.842, z = 8.658 }, level = 1, area_id = 10 },
	{ config_id = 594009, gadget_id = 70360102, pos = { x = 1331.842, y = 352.138, z = -931.052 }, rot = { x = 19.182, y = 96.739, z = 350.540 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1594010, name = "ANY_GADGET_DIE_594010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_594010", action = "action_EVENT_ANY_GADGET_DIE_594010" },
	{ config_id = 1594011, name = "ANY_GADGET_DIE_594011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_594011", action = "action_EVENT_ANY_GADGET_DIE_594011" },
	{ config_id = 1594012, name = "ANY_GADGET_DIE_594012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_594012", action = "action_EVENT_ANY_GADGET_DIE_594012" },
	{ config_id = 1594013, name = "ANY_GADGET_DIE_594013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_594013", action = "action_EVENT_ANY_GADGET_DIE_594013" }
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
	rand_suite = true
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
		gadgets = { 594005, 594006, 594007, 594008, 594009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_594010", "ANY_GADGET_DIE_594011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 594005, 594006, 594007, 594008, 594009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_594010", "ANY_GADGET_DIE_594012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 594005, 594006, 594007, 594008, 594009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_594011", "ANY_GADGET_DIE_594013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 594005, 594006, 594007, 594008, 594009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_594012", "ANY_GADGET_DIE_594013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_594010(context, evt)
	if 594005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_594010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 594001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_594011(context, evt)
	if 594008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_594011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 594002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_594012(context, evt)
	if 594006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_594012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 594003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_594013(context, evt)
	if 594009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_594013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 594004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end