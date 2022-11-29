-- 基础信息
local base_info = {
	group_id = 250006008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 20011001, pos = { x = 360.174, y = -11.353, z = 253.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 8002, monster_id = 20011001, pos = { x = 360.937, y = -11.353, z = 255.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 8003, monster_id = 20011001, pos = { x = 326.239, y = -11.354, z = 254.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 8004, monster_id = 20011001, pos = { x = 326.038, y = -11.354, z = 255.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8005, gadget_id = 70220003, pos = { x = 359.941, y = -11.365, z = 258.913 }, rot = { x = 0.000, y = 2.520, z = 0.000 }, level = 1 },
	{ config_id = 8006, gadget_id = 70220003, pos = { x = 358.269, y = -11.352, z = 256.220 }, rot = { x = 0.000, y = 266.514, z = 0.000 }, level = 1 },
	{ config_id = 8007, gadget_id = 70220003, pos = { x = 358.193, y = -11.347, z = 251.813 }, rot = { x = 0.000, y = 266.514, z = 0.000 }, level = 1 },
	{ config_id = 8008, gadget_id = 70220003, pos = { x = 357.931, y = -11.347, z = 247.741 }, rot = { x = 0.000, y = 266.514, z = 0.000 }, level = 1 },
	{ config_id = 8009, gadget_id = 70220003, pos = { x = 354.072, y = -11.358, z = 245.186 }, rot = { x = 0.000, y = 185.024, z = 0.000 }, level = 1 },
	{ config_id = 8010, gadget_id = 70220003, pos = { x = 332.467, y = -11.347, z = 245.184 }, rot = { x = 0.000, y = 185.024, z = 0.000 }, level = 1 },
	{ config_id = 8011, gadget_id = 70220003, pos = { x = 328.476, y = -11.366, z = 249.450 }, rot = { x = 0.000, y = 274.126, z = 0.000 }, level = 1 },
	{ config_id = 8012, gadget_id = 70220003, pos = { x = 328.536, y = -11.347, z = 253.376 }, rot = { x = 0.000, y = 272.043, z = 0.000 }, level = 1 },
	{ config_id = 8013, gadget_id = 70220003, pos = { x = 328.525, y = -11.347, z = 257.384 }, rot = { x = 0.000, y = 270.531, z = 0.000 }, level = 1 },
	{ config_id = 8014, gadget_id = 70220003, pos = { x = 326.578, y = -11.354, z = 258.500 }, rot = { x = 0.000, y = 180.815, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000017, name = "ANY_MONSTER_DIE_17", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17", action = "action_EVENT_ANY_MONSTER_DIE_17", trigger_count = 0 },
	{ config_id = 1000018, name = "ANY_MONSTER_DIE_18", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_18", action = "action_EVENT_ANY_MONSTER_DIE_18", trigger_count = 0 },
	{ config_id = 1000019, name = "ANY_MONSTER_DIE_19", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19", action = "action_EVENT_ANY_MONSTER_DIE_19", trigger_count = 0 },
	{ config_id = 1000020, name = "ANY_MONSTER_DIE_20", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20", action = "action_EVENT_ANY_MONSTER_DIE_20", trigger_count = 0 }
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
	suite = 2,
	end_suite = 1,
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
		monsters = { 8001, 8002, 8003, 8004 },
		gadgets = { 8005, 8006, 8007, 8008, 8009, 8010, 8011, 8012, 8013, 8014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17", "ANY_MONSTER_DIE_18", "ANY_MONSTER_DIE_19", "ANY_MONSTER_DIE_20" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_17(context, evt)
	if 8001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8001, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_18(context, evt)
	if 8002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_18(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8002, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19(context, evt)
	if 8003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8003, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20(context, evt)
	if 8004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end