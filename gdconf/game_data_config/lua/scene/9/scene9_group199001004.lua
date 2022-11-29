-- 基础信息
local base_info = {
	group_id = 199001004
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
	{ config_id = 4001, gadget_id = 70290286, pos = { x = 196.388, y = 135.236, z = 288.355 }, rot = { x = 0.000, y = 357.793, z = 0.000 }, level = 20, persistent = true, server_global_value_config = { ["SGV_XinyanPortal_Pic"]= 401}, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 402 },
	{ config_id = 4002, gadget_id = 70290264, pos = { x = 196.388, y = 135.236, z = 288.355 }, rot = { x = 0.000, y = 357.793, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	-- 离开区域 把门关上
	{ config_id = 4006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 196.388, y = 135.236, z = 288.355 }, area_id = 402 }
}

-- 触发器
triggers = {
	-- 门开后 创localTrigger
	{ config_id = 1004005, name = "GADGET_STATE_CHANGE_4005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4005", action = "action_EVENT_GADGET_STATE_CHANGE_4005", trigger_count = 0 },
	-- 离开区域 把门关上
	{ config_id = 1004006, name = "LEAVE_REGION_4006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_4006", action = "action_EVENT_LEAVE_REGION_4006", trigger_count = 0 },
	-- 门初始状态重置
	{ config_id = 1004007, name = "GADGET_CREATE_4007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4007", action = "action_EVENT_GADGET_CREATE_4007", trigger_count = 0 },
	{ config_id = 1004008, name = "TIME_AXIS_PASS_4008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4008", action = "action_EVENT_TIME_AXIS_PASS_4008", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 4003, gadget_id = 70310172, pos = { x = 196.388, y = 135.236, z = 288.121 }, rot = { x = 0.000, y = 357.793, z = 0.000 }, level = 20, isOneoff = true, interact_id = 126, area_id = 402 }
	},
	triggers = {
		{ config_id = 1004004, name = "GADGET_STATE_CHANGE_4004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4004", action = "action_EVENT_GADGET_STATE_CHANGE_4004", trigger_count = 0 }
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
		gadgets = { 4001 },
		regions = { 4006 },
		triggers = { "GADGET_STATE_CHANGE_4005", "LEAVE_REGION_4006", "GADGET_CREATE_4007", "TIME_AXIS_PASS_4008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4005(context, evt)
	-- 检测config_id为4001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 4001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4005(context, evt)
	-- 创建id为4002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建标识为"CloseTime"，时间节点为{8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "CloseTime", {8}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_4006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001004, 4001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_4006(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199001004, EntityType.GADGET, 4002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4007(context, evt)
	if 4001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4007(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4008(context, evt)
	if "CloseTime" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4008(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199001004, EntityType.GADGET, 4002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end