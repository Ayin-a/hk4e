-- 基础信息
local base_info = {
	group_id = 166001167
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
	{ config_id = 167001, gadget_id = 70220066, pos = { x = 970.111, y = 730.892, z = 272.440 }, rot = { x = 0.000, y = 227.741, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 167002, gadget_id = 70220066, pos = { x = 970.599, y = 730.973, z = 273.748 }, rot = { x = 0.000, y = 18.405, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 167003, gadget_id = 70220066, pos = { x = 971.122, y = 730.978, z = 275.008 }, rot = { x = 0.000, y = 328.304, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 167006, gadget_id = 70220064, pos = { x = 970.139, y = 730.952, z = 272.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 167007, gadget_id = 70220064, pos = { x = 970.602, y = 731.008, z = 273.766 }, rot = { x = 0.000, y = 85.579, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 167008, gadget_id = 70220064, pos = { x = 971.182, y = 731.078, z = 275.056 }, rot = { x = 0.000, y = 219.911, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 167012, gadget_id = 70210101, pos = { x = 970.112, y = 730.571, z = 272.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 },
	{ config_id = 167013, gadget_id = 70210101, pos = { x = 970.684, y = 730.620, z = 273.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 },
	{ config_id = 167014, gadget_id = 70210101, pos = { x = 971.241, y = 730.631, z = 275.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1167009, name = "ANY_GADGET_DIE_167009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_167009", action = "action_EVENT_ANY_GADGET_DIE_167009" },
	{ config_id = 1167010, name = "ANY_GADGET_DIE_167010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_167010", action = "action_EVENT_ANY_GADGET_DIE_167010" },
	{ config_id = 1167011, name = "ANY_GADGET_DIE_167011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_167011", action = "action_EVENT_ANY_GADGET_DIE_167011" },
	{ config_id = 1167015, name = "ANY_GADGET_DIE_167015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_167015", action = "action_EVENT_ANY_GADGET_DIE_167015" },
	{ config_id = 1167016, name = "ANY_GADGET_DIE_167016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_167016", action = "action_EVENT_ANY_GADGET_DIE_167016" },
	{ config_id = 1167017, name = "ANY_GADGET_DIE_167017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_167017", action = "action_EVENT_ANY_GADGET_DIE_167017" }
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
		gadgets = { 167001, 167002, 167003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_167009", "ANY_GADGET_DIE_167015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 167001, 167002, 167003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_167010", "ANY_GADGET_DIE_167016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 167001, 167002, 167003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_167011", "ANY_GADGET_DIE_167017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_167009(context, evt)
	if 167001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_167009(context, evt)
	-- 创建id为167006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 167006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_167010(context, evt)
	if 167002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_167010(context, evt)
	-- 创建id为167007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 167007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_167011(context, evt)
	if 167003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_167011(context, evt)
	-- 创建id为167008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 167008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_167015(context, evt)
	if 167006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_167015(context, evt)
	-- 创建id为167012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 167012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_167016(context, evt)
	if 167007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_167016(context, evt)
	-- 创建id为167013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 167013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_167017(context, evt)
	if 167008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_167017(context, evt)
	-- 创建id为167014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 167014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end