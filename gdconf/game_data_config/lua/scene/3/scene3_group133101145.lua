-- 基础信息
local base_info = {
	group_id = 133101145
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 145001, gadget_id = 70220001, pos = { x = 1357.472, y = 234.037, z = 1188.082 }, rot = { x = 0.868, y = 38.442, z = 7.503 }, level = 19, area_id = 6 },
	{ config_id = 145002, gadget_id = 70220001, pos = { x = 1330.348, y = 228.565, z = 1150.030 }, rot = { x = 353.334, y = 34.049, z = 358.725 }, level = 19, area_id = 6 },
	{ config_id = 145003, gadget_id = 70220001, pos = { x = 1345.166, y = 230.932, z = 1164.128 }, rot = { x = 352.610, y = 20.312, z = 2.005 }, level = 19, area_id = 6 },
	{ config_id = 145005, gadget_id = 70210101, pos = { x = 1357.461, y = 234.082, z = 1188.057 }, rot = { x = 5.325, y = 0.333, z = 5.364 }, level = 16, drop_tag = "搜刮点解谜破损璃月", area_id = 6 },
	{ config_id = 145006, gadget_id = 70210101, pos = { x = 1330.313, y = 228.570, z = 1150.094 }, rot = { x = 353.765, y = 359.854, z = 2.684 }, level = 16, drop_tag = "搜刮点解谜破损璃月", area_id = 6 },
	{ config_id = 145007, gadget_id = 70210101, pos = { x = 1345.110, y = 230.939, z = 1164.258 }, rot = { x = 353.751, y = 0.090, z = 4.431 }, level = 16, drop_tag = "搜刮点解谜破损璃月", area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1145009, name = "ANY_GADGET_DIE_145009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_145009", action = "action_EVENT_ANY_GADGET_DIE_145009" },
	{ config_id = 1145010, name = "ANY_GADGET_DIE_145010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_145010", action = "action_EVENT_ANY_GADGET_DIE_145010" },
	{ config_id = 1145011, name = "ANY_GADGET_DIE_145011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_145011", action = "action_EVENT_ANY_GADGET_DIE_145011" }
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
		gadgets = { 145001, 145002, 145003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_145009", "ANY_GADGET_DIE_145010", "ANY_GADGET_DIE_145011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_145009(context, evt)
	if 145001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_145009(context, evt)
	-- 创建id为145005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 145005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_145010(context, evt)
	if 145002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_145010(context, evt)
	-- 创建id为145006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 145006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_145011(context, evt)
	if 145003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_145011(context, evt)
	-- 创建id为145007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 145007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end