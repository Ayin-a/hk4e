-- 基础信息
local base_info = {
	group_id = 199001008
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
	-- 交互切201
	{ config_id = 8001, gadget_id = 70290286, pos = { x = 201.059, y = 104.590, z = 309.903 }, rot = { x = 0.589, y = 31.330, z = 5.197 }, level = 20, persistent = true, server_global_value_config = { ["SGV_XinyanPortal_Pic"]= 501}, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 402 },
	{ config_id = 8002, gadget_id = 70290264, pos = { x = 201.059, y = 104.590, z = 309.903 }, rot = { x = 0.589, y = 31.330, z = 5.197 }, level = 20, area_id = 402 },
	-- 交互切201
	{ config_id = 8008, gadget_id = 70290286, pos = { x = 201.059, y = 104.590, z = 309.903 }, rot = { x = 0.589, y = 31.330, z = 5.197 }, level = 20, persistent = true, server_global_value_config = { ["SGV_XinyanPortal_Pic"]= 502}, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 402 }
}

-- 区域
regions = {
	-- 离开区域 把门关上
	{ config_id = 8006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 201.059, y = 104.590, z = 309.903 }, area_id = 402 },
	-- 离开区域 把门关上
	{ config_id = 8010, shape = RegionShape.SPHERE, radius = 5, pos = { x = 201.059, y = 104.590, z = 309.903 }, area_id = 402 }
}

-- 触发器
triggers = {
	-- 门开后 创localTrigger
	{ config_id = 1008005, name = "GADGET_STATE_CHANGE_8005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8005", action = "action_EVENT_GADGET_STATE_CHANGE_8005", trigger_count = 0 },
	-- 离开区域 把门关上
	{ config_id = 1008006, name = "LEAVE_REGION_8006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_8006", action = "action_EVENT_LEAVE_REGION_8006", trigger_count = 0 },
	-- 门初始状态重置
	{ config_id = 1008007, name = "GADGET_CREATE_8007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8007", action = "action_EVENT_GADGET_CREATE_8007", trigger_count = 0 },
	-- 门开后 创localTrigger
	{ config_id = 1008009, name = "GADGET_STATE_CHANGE_8009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8009", action = "action_EVENT_GADGET_STATE_CHANGE_8009", trigger_count = 0 },
	-- 离开区域 把门关上
	{ config_id = 1008010, name = "LEAVE_REGION_8010", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_8010", action = "action_EVENT_LEAVE_REGION_8010", trigger_count = 0 },
	-- 门初始状态重置
	{ config_id = 1008011, name = "GADGET_CREATE_8011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8011", action = "action_EVENT_GADGET_CREATE_8011", trigger_count = 0 },
	-- 贴图保底
	{ config_id = 1008012, name = "GROUP_LOAD_8012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8012", action = "action_EVENT_GROUP_LOAD_8012", trigger_count = 0 },
	{ config_id = 1008013, name = "TIME_AXIS_PASS_8013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_8013", action = "action_EVENT_TIME_AXIS_PASS_8013", trigger_count = 0 },
	{ config_id = 1008014, name = "TIME_AXIS_PASS_8014", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_8014", action = "action_EVENT_TIME_AXIS_PASS_8014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "DoorOpen", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 8003, gadget_id = 70310172, pos = { x = 201.059, y = 104.590, z = 309.903 }, rot = { x = 0.589, y = 31.330, z = 5.197 }, level = 20, isOneoff = true, interact_id = 126, area_id = 402 }
	},
	triggers = {
		{ config_id = 1008004, name = "GADGET_STATE_CHANGE_8004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8004", action = "action_EVENT_GADGET_STATE_CHANGE_8004", trigger_count = 0 }
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
		-- description = 501,
		monsters = { },
		gadgets = { 8001 },
		regions = { 8006 },
		triggers = { "GADGET_STATE_CHANGE_8005", "LEAVE_REGION_8006", "GADGET_CREATE_8007", "GROUP_LOAD_8012", "TIME_AXIS_PASS_8013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 502,
		monsters = { },
		gadgets = { 8008 },
		regions = { 8010 },
		triggers = { "GADGET_STATE_CHANGE_8009", "LEAVE_REGION_8010", "GADGET_CREATE_8011", "TIME_AXIS_PASS_8014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8005(context, evt)
	-- 检测config_id为8001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8005(context, evt)
	-- 创建id为8002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 8002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建标识为"CloseTime"，时间节点为{8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "CloseTime", {8}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_8006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001008, 8001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_8006(context, evt)
	-- 将configid为 8001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199001008, EntityType.GADGET, 8002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8007(context, evt)
	if 8001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8007(context, evt)
	-- 将configid为 8001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8009(context, evt)
	-- 检测config_id为8008的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8009(context, evt)
	-- 创建id为8002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 8002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建标识为"CloseTime"，时间节点为{8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "CloseTime", {8}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_8010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001008, 8008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_8010(context, evt)
	-- 将configid为 8008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199001008, EntityType.GADGET, 8002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8011(context, evt)
	if 8008 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8011(context, evt)
	-- 将configid为 8008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_8012(context, evt)
	-- 判断变量"DoorOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "DoorOpen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_8012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199001008, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_8013(context, evt)
	if "CloseTime" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_8013(context, evt)
	-- 将configid为 8001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199001008, EntityType.GADGET, 8002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_8014(context, evt)
	if "CloseTime" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_8014(context, evt)
	-- 将configid为 8008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199001008, EntityType.GADGET, 8002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end