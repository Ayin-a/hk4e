-- 基础信息
local base_info = {
	group_id = 250008150
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
	{ config_id = 150001, gadget_id = 70710091, pos = { x = 132.867, y = 4.000, z = -57.986 }, rot = { x = 0.000, y = 276.750, z = 0.000 }, level = 1 },
	{ config_id = 150002, gadget_id = 70710092, pos = { x = 132.787, y = 4.000, z = -65.874 }, rot = { x = 0.000, y = 268.400, z = 0.000 }, level = 1 },
	{ config_id = 150003, gadget_id = 70710093, pos = { x = 132.993, y = 4.000, z = -73.263 }, rot = { x = 0.000, y = 268.400, z = 0.000 }, level = 1 },
	{ config_id = 150004, gadget_id = 70360002, pos = { x = 126.379, y = 4.000, z = -65.905 }, rot = { x = 0.000, y = 276.750, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1150005, name = "GADGET_CREATE_150005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_150005", action = "action_EVENT_GADGET_CREATE_150005", trigger_count = 0 },
	{ config_id = 1150006, name = "SELECT_OPTION_150006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_150006", action = "action_EVENT_SELECT_OPTION_150006", trigger_count = 0 },
	{ config_id = 1150007, name = "SELECT_OPTION_150007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_150007", action = "action_EVENT_SELECT_OPTION_150007", trigger_count = 0 }
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
		gadgets = { 150004 },
		regions = { },
		triggers = { "GADGET_CREATE_150005", "SELECT_OPTION_150006", "SELECT_OPTION_150007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_150005(context, evt)
	if 150004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_150005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250008150, 150004, {1,4}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_150006(context, evt)
	-- 判断是gadgetid 150004 option_id 1
	if 150004 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_150006(context, evt)
	-- 创建id为150001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 150001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为150002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 150002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为150003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 150003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_150007(context, evt)
	-- 判断是gadgetid 150004 option_id 4
	if 150004 ~= evt.param1 then
		return false	
	end
	
	if 4 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_150007(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 150001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 150002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 150003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end