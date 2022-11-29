-- 基础信息
local base_info = {
	group_id = 133008053
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
	{ config_id = 53001, gadget_id = 70220024, pos = { x = 909.091, y = 289.997, z = -545.264 }, rot = { x = 337.353, y = 197.492, z = 4.491 }, level = 30, area_id = 10 },
	{ config_id = 53002, gadget_id = 70350006, pos = { x = 913.871, y = 290.235, z = -536.591 }, rot = { x = 0.000, y = 17.423, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 53003, gadget_id = 70350081, pos = { x = 910.390, y = 290.160, z = -537.862 }, rot = { x = 20.927, y = 69.034, z = 19.954 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 53004, gadget_id = 70360001, pos = { x = 911.054, y = 291.061, z = -537.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1053005, name = "ANY_GADGET_DIE_53005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_53005", action = "action_EVENT_ANY_GADGET_DIE_53005" },
	{ config_id = 1053006, name = "GADGET_CREATE_53006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53006", action = "action_EVENT_GADGET_CREATE_53006", trigger_count = 0 },
	{ config_id = 1053007, name = "SELECT_OPTION_53007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_53007", action = "action_EVENT_SELECT_OPTION_53007" },
	{ config_id = 1053008, name = "VARIABLE_CHANGE_53008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_53008", action = "action_EVENT_VARIABLE_CHANGE_53008" },
	{ config_id = 1053009, name = "GADGET_CREATE_53009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53009", action = "action_EVENT_GADGET_CREATE_53009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "canopen", value = 0, no_refresh = true }
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
		gadgets = { 53001, 53002, 53003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_53005", "GADGET_CREATE_53006", "SELECT_OPTION_53007", "VARIABLE_CHANGE_53008", "GADGET_CREATE_53009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_53005(context, evt)
	if 53001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_53005(context, evt)
	-- 针对当前group内变量名为 "canopen" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "canopen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_53006(context, evt)
	if 53004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_53006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008053, 53004, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_53007(context, evt)
	-- 判断是gadgetid 53004 option_id 1
	if 53004 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_53007(context, evt)
	-- 将configid为 53002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 53003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 53004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_53008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"canopen"为2
	if ScriptLib.GetGroupVariableValue(context, "canopen") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_53008(context, evt)
	-- 创建id为53004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_53009(context, evt)
	if 53002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"canopen"为2
	if ScriptLib.GetGroupVariableValue(context, "canopen") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_53009(context, evt)
	-- 创建id为53004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end