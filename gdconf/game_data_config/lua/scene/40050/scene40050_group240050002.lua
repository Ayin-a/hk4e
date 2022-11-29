-- 基础信息
local base_info = {
	group_id = 240050002
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
	{ config_id = 2001, gadget_id = 70220070, pos = { x = 10.430, y = 71.286, z = -82.554 }, rot = { x = 0.000, y = 353.878, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70220071, pos = { x = 14.637, y = 71.262, z = -84.986 }, rot = { x = 0.000, y = 88.220, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70220071, pos = { x = 12.679, y = 71.277, z = -82.566 }, rot = { x = 0.000, y = 6.311, z = 0.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70360287, pos = { x = 10.800, y = 70.951, z = -76.645 }, rot = { x = 0.000, y = 359.421, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 70360287, pos = { x = 10.753, y = 65.547, z = -82.022 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, gadget_id = 70360288, pos = { x = 15.578, y = 71.099, z = -67.656 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, gadget_id = 70360001, pos = { x = 16.200, y = 66.829, z = -66.238 }, rot = { x = 0.000, y = 93.337, z = 0.000 }, level = 1 },
	{ config_id = 2015, gadget_id = 70360170, pos = { x = 16.027, y = 66.778, z = -66.233 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2008, shape = RegionShape.CUBIC, size = { x = 6.000, y = 5.000, z = 5.000 }, pos = { x = 10.923, y = 68.175, z = -84.731 } },
	{ config_id = 2010, shape = RegionShape.CUBIC, size = { x = 6.000, y = 6.000, z = 6.000 }, pos = { x = 10.703, y = 67.048, z = -79.130 } },
	{ config_id = 2011, shape = RegionShape.CUBIC, size = { x = 5.000, y = 4.000, z = 5.000 }, pos = { x = 10.574, y = 72.903, z = -74.153 } },
	{ config_id = 2013, shape = RegionShape.CUBIC, size = { x = 6.000, y = 6.000, z = 6.000 }, pos = { x = 10.524, y = 72.220, z = -79.474 } }
}

-- 触发器
triggers = {
	{ config_id = 1002008, name = "ENTER_REGION_2008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2008", action = "action_EVENT_ENTER_REGION_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "SELECT_OPTION_2009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2009", action = "action_EVENT_SELECT_OPTION_2009", trigger_count = 0 },
	{ config_id = 1002010, name = "ENTER_REGION_2010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2010", action = "action_EVENT_ENTER_REGION_2010", trigger_count = 0 },
	{ config_id = 1002011, name = "ENTER_REGION_2011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2011", action = "action_EVENT_ENTER_REGION_2011", trigger_count = 0 },
	{ config_id = 1002012, name = "SELECT_OPTION_2012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2012", action = "action_EVENT_SELECT_OPTION_2012", trigger_count = 0 },
	{ config_id = 1002013, name = "ENTER_REGION_2013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2013", action = "action_EVENT_ENTER_REGION_2013", trigger_count = 0 },
	{ config_id = 1002016, name = "GADGET_CREATE_2016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2016", action = "action_EVENT_GADGET_CREATE_2016", trigger_count = 0 },
	{ config_id = 1002017, name = "SELECT_OPTION_2017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2017", action = "action_EVENT_SELECT_OPTION_2017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true }
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
		gadgets = { 2001, 2002, 2004, 2005, 2006, 2007, 2014, 2015 },
		regions = { 2008, 2010, 2011, 2013 },
		triggers = { "ENTER_REGION_2008", "SELECT_OPTION_2009", "ENTER_REGION_2010", "ENTER_REGION_2011", "SELECT_OPTION_2012", "ENTER_REGION_2013", "GADGET_CREATE_2016", "SELECT_OPTION_2017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_2008(context, evt)
	if evt.param1 ~= 2008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240050002, 2006, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2009(context, evt)
	-- 判断是gadgetid 2006 option_id 1
	if 2006 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2009(context, evt)
	-- 删除指定group： 240050002 ；指定config：2006；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240050002, 2006, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 2006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2010(context, evt)
	if evt.param1 ~= 2010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2010(context, evt)
	-- 将configid为 2006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2011(context, evt)
	if evt.param1 ~= 2011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240050002, 2005, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2012(context, evt)
	-- 判断是gadgetid 2005 option_id 1
	if 2005 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2012(context, evt)
	-- 删除指定group： 240050002 ；指定config：2005；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240050002, 2005, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 2005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2013(context, evt)
	if evt.param1 ~= 2013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2013(context, evt)
	-- 将configid为 2005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2016(context, evt)
	if 2014 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"open"为0
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2017(context, evt)
	-- 判断是gadgetid 2014 option_id 1
	if 2014 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2017(context, evt)
	-- 删除指定group： 240050002 ；指定config：2014；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240050002, 2014, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 2015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end