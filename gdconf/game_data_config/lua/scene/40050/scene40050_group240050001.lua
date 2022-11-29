-- 基础信息
local base_info = {
	group_id = 240050001
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
	{ config_id = 1001, gadget_id = 70360001, pos = { x = -10.240, y = 77.553, z = -98.917 }, rot = { x = 0.000, y = 93.040, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70290141, pos = { x = -10.045, y = 76.890, z = -98.919 }, rot = { x = 0.000, y = 89.169, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70290141, pos = { x = 26.835, y = 55.416, z = -73.788 }, rot = { x = 0.000, y = 270.900, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70290141, pos = { x = 14.632, y = 65.851, z = -87.329 }, rot = { x = 0.000, y = 271.630, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70360001, pos = { x = 26.323, y = 56.646, z = -73.806 }, rot = { x = 0.000, y = 93.040, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70360001, pos = { x = 14.399, y = 66.698, z = -87.292 }, rot = { x = 0.000, y = 93.040, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70900201, pos = { x = -9.681, y = 77.851, z = -98.977 }, rot = { x = 0.000, y = 91.010, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70900201, pos = { x = 26.436, y = 56.436, z = -73.783 }, rot = { x = 0.000, y = 91.010, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70900201, pos = { x = 14.208, y = 66.716, z = -87.375 }, rot = { x = 0.000, y = 91.010, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 1
	{ config_id = 1016, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 10.000 }, pos = { x = 22.912, y = 79.000, z = -81.223 } },
	-- 2
	{ config_id = 1017, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 10.000 }, pos = { x = 22.912, y = 79.000, z = -81.223 } },
	-- 3
	{ config_id = 1018, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 10.000 }, pos = { x = 22.912, y = 79.000, z = -81.223 } }
}

-- 触发器
triggers = {
	-- 1
	{ config_id = 1001002, name = "GADGET_CREATE_1002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1002", action = "action_EVENT_GADGET_CREATE_1002", trigger_count = 0 },
	-- 2
	{ config_id = 1001003, name = "GADGET_CREATE_1003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1003", action = "action_EVENT_GADGET_CREATE_1003", trigger_count = 0 },
	-- 3
	{ config_id = 1001007, name = "GADGET_CREATE_1007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1007", action = "action_EVENT_GADGET_CREATE_1007", trigger_count = 0 },
	-- 1
	{ config_id = 1001010, name = "SELECT_OPTION_1010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1010", action = "action_EVENT_SELECT_OPTION_1010", trigger_count = 0 },
	-- 2
	{ config_id = 1001011, name = "SELECT_OPTION_1011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1011", action = "action_EVENT_SELECT_OPTION_1011", trigger_count = 0 },
	-- 2
	{ config_id = 1001012, name = "SELECT_OPTION_1012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1012", action = "action_EVENT_SELECT_OPTION_1012", trigger_count = 0 },
	-- 1
	{ config_id = 1001016, name = "ENTER_REGION_1016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1016", action = "action_EVENT_ENTER_REGION_1016", trigger_count = 0 },
	-- 2
	{ config_id = 1001017, name = "ENTER_REGION_1017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1017", action = "action_EVENT_ENTER_REGION_1017", trigger_count = 0 },
	-- 3
	{ config_id = 1001018, name = "ENTER_REGION_1018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1018", action = "action_EVENT_ENTER_REGION_1018", trigger_count = 0 }
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
		gadgets = { 1001, 1004, 1005, 1006, 1008, 1009 },
		regions = { 1016, 1017, 1018 },
		triggers = { "GADGET_CREATE_1002", "GADGET_CREATE_1003", "GADGET_CREATE_1007", "SELECT_OPTION_1010", "SELECT_OPTION_1011", "SELECT_OPTION_1012", "ENTER_REGION_1016", "ENTER_REGION_1017", "ENTER_REGION_1018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1002(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240050001, 1001, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1003(context, evt)
	if 1008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240050001, 1008, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1007(context, evt)
	if 1009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240050001, 1009, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1010(context, evt)
	-- 判断是gadgetid 1001 option_id 73
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1010(context, evt)
	-- 将configid为 1004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240050001 ；指定config：1001；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240050001, 1001, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1011(context, evt)
	-- 判断是gadgetid 1008 option_id 73
	if 1008 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1011(context, evt)
	-- 将configid为 1005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240050001 ；指定config：1008；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240050001, 1008, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1012(context, evt)
	-- 判断是gadgetid 1009 option_id 73
	if 1009 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1012(context, evt)
	-- 将configid为 1006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240050001 ；指定config：1009；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240050001, 1009, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1016(context, evt)
	if evt.param1 ~= 1016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 240050001, 1004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1016(context, evt)
	-- 创建id为1013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1017(context, evt)
	if evt.param1 ~= 1017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 240050001, 1005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1017(context, evt)
	-- 创建id为1014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1018(context, evt)
	if evt.param1 ~= 1018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 240050001, 1006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1018(context, evt)
	-- 创建id为1015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end