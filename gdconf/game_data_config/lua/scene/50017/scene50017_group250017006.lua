-- 基础信息
local base_info = {
	group_id = 250017006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20010904, pos = { x = -0.156, y = -0.009, z = -8.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 6101 } },
	{ config_id = 6002, monster_id = 20010604, pos = { x = -0.156, y = -0.009, z = -8.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 6104 } },
	{ config_id = 6003, monster_id = 20011502, pos = { x = -0.156, y = -0.009, z = -8.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 6103 } },
	{ config_id = 6004, monster_id = 20010403, pos = { x = -0.156, y = -0.009, z = -8.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 6102 } },
	{ config_id = 6005, monster_id = 20011304, pos = { x = -0.156, y = -0.009, z = -8.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 6105 } },
	{ config_id = 6011, monster_id = 20011103, pos = { x = -0.156, y = -0.009, z = -8.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 6106 } },
	{ config_id = 6013, monster_id = 21030303, pos = { x = -0.156, y = -0.009, z = -8.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6014, monster_id = 23020102, pos = { x = -0.156, y = -0.009, z = -8.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6015, monster_id = 23030102, pos = { x = -0.156, y = -0.009, z = -8.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6016, monster_id = 21020202, pos = { x = -0.156, y = -0.009, z = -8.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6017, monster_id = 20010604, pos = { x = -0.156, y = -0.009, z = -8.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6018, monster_id = 20010702, pos = { x = -0.156, y = -0.009, z = -8.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6027, monster_id = 21010401, pos = { x = -7.261, y = -0.009, z = -7.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6028, monster_id = 21010401, pos = { x = 5.048, y = -0.009, z = -7.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6022, gadget_id = 70900205, pos = { x = 15.805, y = -1.375, z = 3.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006006, name = "ANY_MONSTER_DIE_6006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6006", action = "action_EVENT_ANY_MONSTER_DIE_6006", trigger_count = 0 },
	{ config_id = 1006007, name = "ANY_MONSTER_DIE_6007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6007", action = "action_EVENT_ANY_MONSTER_DIE_6007", trigger_count = 0 },
	{ config_id = 1006008, name = "ANY_MONSTER_DIE_6008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6008", action = "action_EVENT_ANY_MONSTER_DIE_6008", trigger_count = 0 },
	{ config_id = 1006009, name = "ANY_MONSTER_DIE_6009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6009", action = "action_EVENT_ANY_MONSTER_DIE_6009", trigger_count = 0 },
	{ config_id = 1006010, name = "ANY_MONSTER_DIE_6010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6010", action = "action_EVENT_ANY_MONSTER_DIE_6010", trigger_count = 0 },
	{ config_id = 1006012, name = "ANY_MONSTER_DIE_6012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6012", action = "action_EVENT_ANY_MONSTER_DIE_6012", trigger_count = 0 },
	{ config_id = 1006019, name = "ANY_MONSTER_DIE_6019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6019", action = "action_EVENT_ANY_MONSTER_DIE_6019", trigger_count = 0 },
	{ config_id = 1006020, name = "ANY_MONSTER_DIE_6020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6020", action = "action_EVENT_ANY_MONSTER_DIE_6020", trigger_count = 0 },
	{ config_id = 1006021, name = "ANY_MONSTER_DIE_6021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6021", action = "action_EVENT_ANY_MONSTER_DIE_6021", trigger_count = 0 },
	{ config_id = 1006023, name = "ANY_MONSTER_DIE_6023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6023", action = "action_EVENT_ANY_MONSTER_DIE_6023", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_count", value = 0, no_refresh = false },
	{ config_id = 2, name = "level_status", value = 0, no_refresh = false }
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
		gadgets = { 6022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 6001 },
		gadgets = { 6022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6006", "ANY_MONSTER_DIE_6007", "ANY_MONSTER_DIE_6008", "ANY_MONSTER_DIE_6009", "ANY_MONSTER_DIE_6010", "ANY_MONSTER_DIE_6012", "ANY_MONSTER_DIE_6019", "ANY_MONSTER_DIE_6020", "ANY_MONSTER_DIE_6021", "ANY_MONSTER_DIE_6023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 6027, 6028 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
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
function condition_EVENT_ANY_MONSTER_DIE_6006(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6007(context, evt)
	if 6002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6008(context, evt)
	if 6003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6009(context, evt)
	if 6004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6010(context, evt)
	if 6005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6012(context, evt)
	if 6011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6019(context, evt)
	if 6013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6019(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6014, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6020(context, evt)
	if 6014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6020(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6015, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6021(context, evt)
	if 6015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6021(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6016, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6023(context, evt)
	if 6016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6023(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6017, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6018, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end