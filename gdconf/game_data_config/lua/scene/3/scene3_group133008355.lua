-- 基础信息
local base_info = {
	group_id = 133008355
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
	{ config_id = 355001, gadget_id = 70211011, pos = { x = 748.766, y = 199.596, z = -1262.956 }, rot = { x = 344.175, y = 36.594, z = 10.799 }, level = 26, drop_tag = "雪山战斗中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 355013, gadget_id = 70900009, pos = { x = 744.293, y = 199.654, z = -1259.544 }, rot = { x = 357.601, y = 359.869, z = 6.245 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 355015, gadget_id = 70220054, pos = { x = 764.119, y = 203.162, z = -1254.373 }, rot = { x = 0.000, y = 157.999, z = 0.000 }, level = 30, route_id = 300800088, persistent = true, area_id = 10 },
	{ config_id = 355017, gadget_id = 70220054, pos = { x = 766.875, y = 203.627, z = -1260.473 }, rot = { x = 0.000, y = 66.191, z = 0.000 }, level = 30, route_id = 300800087, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1355002, name = "GADGET_STATE_CHANGE_355002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_355002", action = "action_EVENT_GADGET_STATE_CHANGE_355002", trigger_count = 0 },
	{ config_id = 1355003, name = "GADGET_STATE_CHANGE_355003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_355003", action = "action_EVENT_GADGET_STATE_CHANGE_355003", trigger_count = 0 },
	{ config_id = 1355004, name = "ANY_GADGET_DIE_355004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_355004", action = "action_EVENT_ANY_GADGET_DIE_355004", trigger_count = 0 },
	{ config_id = 1355018, name = "GADGET_STATE_CHANGE_355018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_355018", action = "action_EVENT_GADGET_STATE_CHANGE_355018", trigger_count = 0 },
	{ config_id = 1355019, name = "GADGET_STATE_CHANGE_355019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_355019", action = "action_EVENT_GADGET_STATE_CHANGE_355019", trigger_count = 0 },
	{ config_id = 1355020, name = "ANY_GADGET_DIE_355020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_355020", action = "action_EVENT_ANY_GADGET_DIE_355020", trigger_count = 0 },
	{ config_id = 1355021, name = "ANY_GADGET_DIE_355021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_355021", action = "action_EVENT_ANY_GADGET_DIE_355021" },
	{ config_id = 1355022, name = "GADGET_STATE_CHANGE_355022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_355022", action = "action_EVENT_GADGET_STATE_CHANGE_355022" }
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
		gadgets = { 355013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_355002", "GADGET_STATE_CHANGE_355003", "ANY_GADGET_DIE_355004", "GADGET_STATE_CHANGE_355018", "GADGET_STATE_CHANGE_355019", "ANY_GADGET_DIE_355020", "ANY_GADGET_DIE_355021", "GADGET_STATE_CHANGE_355022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_355002(context, evt)
	if 355017 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_355002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 355017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_355003(context, evt)
	if 355017 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_355003(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 355017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_355004(context, evt)
	if 355017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_355004(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 355017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_355018(context, evt)
	if 355015 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_355018(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 355015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_355019(context, evt)
	if 355015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_355019(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 355015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_355020(context, evt)
	if 355015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_355020(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 355015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_355021(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133008355}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_355021(context, evt)
	-- 创建id为355001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 355001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_355022(context, evt)
	if 355013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_355022(context, evt)
	-- 创建id为355015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 355015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为355017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 355017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end