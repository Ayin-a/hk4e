-- 基础信息
local base_info = {
	group_id = 220169009
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
	{ config_id = 9001, gadget_id = 70360287, pos = { x = 10.692, y = 65.721, z = -81.953 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 9002, gadget_id = 70360287, pos = { x = 10.850, y = 71.000, z = -76.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9009, gadget_id = 70360288, pos = { x = 15.941, y = 71.104, z = -84.107 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 9010, gadget_id = 70360170, pos = { x = 20.131, y = 67.230, z = -82.407 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9013, gadget_id = 70360288, pos = { x = 13.460, y = 76.989, z = -69.929 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 9014, gadget_id = 70360170, pos = { x = 10.689, y = 72.571, z = -66.146 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9017, gadget_id = 70211101, pos = { x = 23.188, y = 65.301, z = -74.004 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	-- 单向门1开门
	{ config_id = 9007, shape = RegionShape.CUBIC, size = { x = 8.000, y = 8.000, z = 8.000 }, pos = { x = 10.692, y = 65.992, z = -87.525 } },
	-- 单向门2开门
	{ config_id = 9008, shape = RegionShape.CUBIC, size = { x = 10.000, y = 8.000, z = 6.000 }, pos = { x = 10.692, y = 71.902, z = -74.252 } },
	-- 单向门2关门
	{ config_id = 9018, shape = RegionShape.CUBIC, size = { x = 10.000, y = 8.000, z = 8.000 }, pos = { x = 10.692, y = 71.724, z = -85.567 } },
	-- 单向门1关门
	{ config_id = 9019, shape = RegionShape.CUBIC, size = { x = 9.000, y = 8.000, z = 8.000 }, pos = { x = 10.692, y = 65.921, z = -74.431 } }
}

-- 触发器
triggers = {
	-- 单向门1
	{ config_id = 1009003, name = "GADGET_CREATE_9003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9003", action = "action_EVENT_GADGET_CREATE_9003" },
	-- 单向门2
	{ config_id = 1009004, name = "GADGET_CREATE_9004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9004", action = "action_EVENT_GADGET_CREATE_9004" },
	-- 单向门1
	{ config_id = 1009005, name = "SELECT_OPTION_9005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9005", action = "action_EVENT_SELECT_OPTION_9005" },
	-- 单向门2
	{ config_id = 1009006, name = "SELECT_OPTION_9006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9006", action = "action_EVENT_SELECT_OPTION_9006" },
	-- 单向门1开门
	{ config_id = 1009007, name = "ENTER_REGION_9007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9007", action = "action_EVENT_ENTER_REGION_9007", trigger_count = 0 },
	-- 单向门2开门
	{ config_id = 1009008, name = "ENTER_REGION_9008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9008", action = "action_EVENT_ENTER_REGION_9008", trigger_count = 0 },
	-- 拉杆机关1
	{ config_id = 1009011, name = "GADGET_CREATE_9011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9011", action = "action_EVENT_GADGET_CREATE_9011" },
	-- 拉杆机关1
	{ config_id = 1009012, name = "SELECT_OPTION_9012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9012", action = "action_EVENT_SELECT_OPTION_9012" },
	-- 拉杆机关2
	{ config_id = 1009015, name = "GADGET_CREATE_9015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9015", action = "action_EVENT_GADGET_CREATE_9015" },
	-- 拉杆机关2
	{ config_id = 1009016, name = "SELECT_OPTION_9016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9016", action = "action_EVENT_SELECT_OPTION_9016" },
	-- 单向门2关门
	{ config_id = 1009018, name = "ENTER_REGION_9018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9018", action = "action_EVENT_ENTER_REGION_9018", trigger_count = 0 },
	-- 单向门1关门
	{ config_id = 1009019, name = "ENTER_REGION_9019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9019", action = "action_EVENT_ENTER_REGION_9019", trigger_count = 0 }
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
		gadgets = { 9001, 9002, 9009, 9010, 9017 },
		regions = { 9007, 9008, 9018, 9019 },
		triggers = { "ENTER_REGION_9007", "ENTER_REGION_9008", "GADGET_CREATE_9011", "SELECT_OPTION_9012", "ENTER_REGION_9018", "ENTER_REGION_9019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_9003(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9004(context, evt)
	if 9002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9005(context, evt)
	-- 判断是gadgetid 9001 option_id 1
	if 9001 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9005(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220169009 ；指定config：9001；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220169009, 9001, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9006(context, evt)
	-- 判断是gadgetid 9002 option_id 1
	if 9002 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9006(context, evt)
	-- 将configid为 9002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220169009 ；指定config：9002；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220169009, 9002, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9007(context, evt)
	if evt.param1 ~= 9007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9007(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9008(context, evt)
	if evt.param1 ~= 9008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9008(context, evt)
	-- 将configid为 9002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9011(context, evt)
	if 9010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9012(context, evt)
	-- 判断是gadgetid 9010 option_id 7
	if 9010 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9012(context, evt)
	-- 将configid为 9010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220169009 ；指定config：9010；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220169009, 9010, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9015(context, evt)
	if 9014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9016(context, evt)
	-- 判断是gadgetid 9014 option_id 7
	if 9014 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9016(context, evt)
	-- 将configid为 9014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220169009 ；指定config：9014；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220169009, 9014, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9018(context, evt)
	if evt.param1 ~= 9018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9018(context, evt)
	-- 将configid为 9002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9019(context, evt)
	if evt.param1 ~= 9019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9019(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end