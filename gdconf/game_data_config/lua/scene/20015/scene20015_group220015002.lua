-- 基础信息
local base_info = {
	group_id = 220015002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 20011001, pos = { x = 409.587, y = -23.900, z = 125.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, monster_id = 20011001, pos = { x = 409.604, y = -23.900, z = 122.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2003, monster_id = 20011001, pos = { x = 403.924, y = -23.900, z = 126.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, monster_id = 20011001, pos = { x = 399.316, y = -23.900, z = 125.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, monster_id = 20011001, pos = { x = 397.502, y = -23.900, z = 122.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2006, gadget_id = 70900207, pos = { x = 405.983, y = -24.066, z = 119.548 }, rot = { x = 0.000, y = 40.248, z = 0.000 }, level = 1 },
	{ config_id = 2007, gadget_id = 70900207, pos = { x = 400.584, y = -24.075, z = 119.636 }, rot = { x = 0.000, y = 116.240, z = 0.000 }, level = 1 },
	{ config_id = 2008, gadget_id = 70900207, pos = { x = 406.007, y = -24.133, z = 125.175 }, rot = { x = 0.000, y = 53.119, z = 0.000 }, level = 1 },
	{ config_id = 2009, gadget_id = 70900207, pos = { x = 400.544, y = -24.090, z = 125.221 }, rot = { x = 0.000, y = 251.571, z = 0.000 }, level = 1 },
	{ config_id = 2010, gadget_id = 70211002, pos = { x = 403.241, y = -23.621, z = 121.760 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000006, name = "ANY_GADGET_DIE_6", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_6", action = "action_EVENT_ANY_GADGET_DIE_6" }
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
		gadgets = { 2006, 2007, 2008, 2009, 2010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_6" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_6(context, evt)
	if 2010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_6(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end