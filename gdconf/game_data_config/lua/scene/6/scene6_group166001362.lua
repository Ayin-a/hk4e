-- 基础信息
local base_info = {
	group_id = 166001362
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 362009, monster_id = 28010202, pos = { x = 931.853, y = 846.863, z = 603.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 362010, monster_id = 28050301, pos = { x = 926.477, y = 846.951, z = 603.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 362011, monster_id = 20010501, pos = { x = 924.415, y = 846.882, z = 611.741 }, rot = { x = 0.000, y = 122.530, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 362012, monster_id = 20011401, pos = { x = 931.678, y = 848.047, z = 612.928 }, rot = { x = 0.000, y = 214.483, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 362001, gadget_id = 70220062, pos = { x = 931.006, y = 846.831, z = 598.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 362002, gadget_id = 70220062, pos = { x = 931.670, y = 846.822, z = 613.525 }, rot = { x = 0.000, y = 262.310, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 362003, gadget_id = 70220063, pos = { x = 926.917, y = 846.760, z = 602.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 362004, gadget_id = 70220062, pos = { x = 930.418, y = 846.853, z = 607.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 362005, gadget_id = 70220062, pos = { x = 924.363, y = 846.811, z = 611.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 362006, gadget_id = 70220062, pos = { x = 931.857, y = 846.867, z = 603.117 }, rot = { x = 0.000, y = 278.922, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 362007, gadget_id = 70220063, pos = { x = 936.016, y = 846.816, z = 605.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 362008, gadget_id = 70220062, pos = { x = 926.428, y = 846.786, z = 603.815 }, rot = { x = 0.000, y = 307.119, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 362013, gadget_id = 70211101, pos = { x = 929.927, y = 846.814, z = 608.187 }, rot = { x = 0.000, y = 149.328, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 362019, gadget_id = 70217014, pos = { x = 913.037, y = 840.143, z = 609.462 }, rot = { x = 351.815, y = 359.914, z = 1.207 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1362014, name = "ANY_GADGET_DIE_362014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362014", action = "action_EVENT_ANY_GADGET_DIE_362014" },
	{ config_id = 1362015, name = "ANY_GADGET_DIE_362015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362015", action = "action_EVENT_ANY_GADGET_DIE_362015" },
	{ config_id = 1362016, name = "ANY_GADGET_DIE_362016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362016", action = "action_EVENT_ANY_GADGET_DIE_362016" },
	{ config_id = 1362017, name = "ANY_GADGET_DIE_362017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362017", action = "action_EVENT_ANY_GADGET_DIE_362017" },
	{ config_id = 1362018, name = "ANY_GADGET_DIE_362018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362018", action = "action_EVENT_ANY_GADGET_DIE_362018" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1362020, name = "ANY_GADGET_DIE_362020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362020", action = "" }
	}
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
		gadgets = { 362001, 362002, 362003, 362004, 362005, 362006, 362007, 362008, 362019 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 362001, 362002, 362003, 362004, 362005, 362006, 362007, 362008, 362019 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362015", "ANY_GADGET_DIE_362016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 362001, 362002, 362003, 362004, 362005, 362006, 362007, 362008, 362019 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362017", "ANY_GADGET_DIE_362018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 362001, 362002, 362003, 362004, 362005, 362006, 362007, 362008, 362019 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362014", "ANY_GADGET_DIE_362017" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 362001, 362002, 362003, 362004, 362005, 362006, 362007, 362008, 362019 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362015", "ANY_GADGET_DIE_362016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362014(context, evt)
	if 362005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362015(context, evt)
	if 362006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362015(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362016(context, evt)
	if 362002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362016(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362017(context, evt)
	if 362008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362017(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362018(context, evt)
	if 362004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362018(context, evt)
	-- 创建id为362013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 362013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end