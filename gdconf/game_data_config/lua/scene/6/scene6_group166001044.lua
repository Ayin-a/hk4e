-- 基础信息
local base_info = {
	group_id = 166001044
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
	{ config_id = 44001, gadget_id = 70350004, pos = { x = 1018.840, y = 1017.379, z = 952.911 }, rot = { x = 359.325, y = 248.336, z = 358.577 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 44002, gadget_id = 70360328, pos = { x = 1018.198, y = 1018.444, z = 952.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, interact_id = 75, area_id = 300 },
	{ config_id = 44004, gadget_id = 70350006, pos = { x = 1059.104, y = 1014.193, z = 915.856 }, rot = { x = 0.063, y = 161.370, z = 359.279 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 44005, gadget_id = 70360170, pos = { x = 1055.592, y = 1015.546, z = 915.562 }, rot = { x = 88.040, y = 357.140, z = 15.601 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 44006, gadget_id = 70360001, pos = { x = 1055.644, y = 1015.400, z = 916.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1044003, name = "GADGET_STATE_CHANGE_44003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_44003", action = "action_EVENT_GADGET_STATE_CHANGE_44003" },
	{ config_id = 1044007, name = "GADGET_CREATE_44007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_44007", action = "action_EVENT_GADGET_CREATE_44007", trigger_count = 0 },
	{ config_id = 1044008, name = "SELECT_OPTION_44008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_44008", action = "action_EVENT_SELECT_OPTION_44008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "OPEN", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 44009, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1060.760, y = 1013.681, z = 924.724 }, area_id = 300 }
	},
	triggers = {
		{ config_id = 1044009, name = "ENTER_REGION_44009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44009", action = "action_EVENT_ENTER_REGION_44009" }
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
		gadgets = { 44001, 44004, 44005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_44003", "GADGET_CREATE_44007", "SELECT_OPTION_44008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 44002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_44003(context, evt)
	if 44002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_44003(context, evt)
	-- 将configid为 44001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "OPEN" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OPEN", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为44006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 44006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_44007(context, evt)
	if 44006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_44007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001044, 44006, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_44008(context, evt)
	-- 判断是gadgetid 44006 option_id 1
	if 44006 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_44008(context, evt)
	-- 将configid为 44004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 44005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 44006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end