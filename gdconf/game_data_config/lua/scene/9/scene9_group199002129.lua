-- 基础信息
local base_info = {
	group_id = 199002129
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
	{ config_id = 129001, gadget_id = 70310332, pos = { x = 485.243, y = 119.582, z = -361.458 }, rot = { x = 302.191, y = 0.000, z = 359.425 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 401 },
	{ config_id = 129002, gadget_id = 70310332, pos = { x = 486.610, y = 119.412, z = -361.929 }, rot = { x = 313.324, y = 16.121, z = 7.825 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 401 },
	{ config_id = 129003, gadget_id = 70360001, pos = { x = 485.212, y = 120.087, z = -362.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, worktop_config = { init_options = { 425 } }, area_id = 401 },
	{ config_id = 129005, gadget_id = 70310332, pos = { x = 485.185, y = 119.974, z = -362.279 }, rot = { x = 0.000, y = 316.254, z = 0.000 }, level = 1, persistent = true, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1129004, name = "SELECT_OPTION_129004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_129004", action = "action_EVENT_SELECT_OPTION_129004", trigger_count = 0 },
	{ config_id = 1129006, name = "GROUP_LOAD_129006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_129006", action = "action_EVENT_GROUP_LOAD_129006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 129001, 129002, 129003 },
		regions = { },
		triggers = { "SELECT_OPTION_129004", "GROUP_LOAD_129006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_129004(context, evt)
	-- 判断是gadgetid 129003 option_id 425
	if 129003 ~= evt.param1 then
		return false	
	end
	
	if 425 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_129004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 129001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为129005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 129005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 129003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_129006(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_129006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 129003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为129005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 129005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 129001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end