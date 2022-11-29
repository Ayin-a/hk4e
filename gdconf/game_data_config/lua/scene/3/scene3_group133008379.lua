-- 基础信息
local base_info = {
	group_id = 133008379
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
	{ config_id = 379001, gadget_id = 70710221, pos = { x = 899.307, y = 289.609, z = -564.466 }, rot = { x = 0.046, y = 344.003, z = 359.779 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 379002, gadget_id = 70350081, pos = { x = 889.882, y = 299.601, z = -567.942 }, rot = { x = 0.000, y = 260.241, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 379003, gadget_id = 70220046, pos = { x = 889.295, y = 300.338, z = -567.248 }, rot = { x = 331.119, y = 26.798, z = 13.087 }, level = 30, area_id = 10 },
	{ config_id = 379005, gadget_id = 70360001, pos = { x = 889.641, y = 300.755, z = -567.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 379008, gadget_id = 70211145, pos = { x = 899.193, y = 289.460, z = -564.264 }, rot = { x = 336.146, y = 8.848, z = 350.550 }, level = 26, drop_tag = "雪山玉髓高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1379004, name = "ANY_GADGET_DIE_379004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_379004", action = "action_EVENT_ANY_GADGET_DIE_379004" },
	{ config_id = 1379006, name = "GADGET_CREATE_379006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_379006", action = "action_EVENT_GADGET_CREATE_379006", trigger_count = 0 },
	{ config_id = 1379007, name = "SELECT_OPTION_379007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_379007", action = "action_EVENT_SELECT_OPTION_379007" }
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
		gadgets = { 379001, 379002, 379003, 379008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_379004", "GADGET_CREATE_379006", "SELECT_OPTION_379007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_GADGET_DIE_379004(context, evt)
	if 379003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_379004(context, evt)
	-- 创建id为379005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 379005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_379006(context, evt)
	if 379005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_379006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008379, 379005, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_379007(context, evt)
	-- 判断是gadgetid 379005 option_id 24
	if 379005 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_379007(context, evt)
	-- 将configid为 379002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 379001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 379008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 379005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end