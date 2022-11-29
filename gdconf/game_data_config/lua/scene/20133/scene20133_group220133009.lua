-- 基础信息
local base_info = {
	group_id = 220133009
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
	{ config_id = 9001, gadget_id = 70290286, pos = { x = 5048.340, y = 537.560, z = -1740.160 }, rot = { x = 8.283, y = 1.704, z = 2.290 }, level = 1, state = GadgetState.GearStop, persistent = true, server_global_value_config = { ["SGV_XinyanPortal_Pic"]= 125} },
	{ config_id = 9002, gadget_id = 70290264, pos = { x = 5048.340, y = 537.560, z = -1740.160 }, rot = { x = 8.283, y = 1.704, z = 2.290 }, level = 1 },
	-- 交钥匙解锁门 interactID126
	{ config_id = 9005, gadget_id = 70310172, pos = { x = 5048.340, y = 537.560, z = -1740.160 }, rot = { x = 8.283, y = 1.704, z = 2.290 }, level = 1, isOneoff = true, interact_id = 126 }
}

-- 区域
regions = {
	-- 离开区域 把门关上
	{ config_id = 9006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 5048.340, y = 537.560, z = -1740.160 } }
}

-- 触发器
triggers = {
	-- 隐形交付台交付 解锁门
	{ config_id = 1009003, name = "GADGET_STATE_CHANGE_9003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9003", action = "action_EVENT_GADGET_STATE_CHANGE_9003", trigger_count = 0 },
	-- 门开后 创localTrigger
	{ config_id = 1009004, name = "GADGET_STATE_CHANGE_9004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9004", action = "action_EVENT_GADGET_STATE_CHANGE_9004", trigger_count = 0 },
	-- 离开区域 把门关上
	{ config_id = 1009006, name = "LEAVE_REGION_9006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_9006", action = "action_EVENT_LEAVE_REGION_9006", trigger_count = 0 },
	-- 门初始状态重置
	{ config_id = 1009007, name = "GADGET_CREATE_9007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9007", action = "action_EVENT_GADGET_CREATE_9007", trigger_count = 0 },
	-- 离开区域 把门关上
	{ config_id = 1009008, name = "TIME_AXIS_PASS_9008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_9008", action = "action_EVENT_TIME_AXIS_PASS_9008", trigger_count = 0 }
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
		gadgets = { 9001, 9005 },
		regions = { 9006 },
		triggers = { "GADGET_STATE_CHANGE_9003", "GADGET_STATE_CHANGE_9004", "LEAVE_REGION_9006", "GADGET_CREATE_9007", "TIME_AXIS_PASS_9008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9003(context, evt)
	-- 检测config_id为9005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 9005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9003(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 9005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9004(context, evt)
	-- 检测config_id为9001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 9001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9004(context, evt)
	-- 创建id为9002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 9002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建标识为"CloseTime"，时间节点为{8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "CloseTime", {8}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_9006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133009, 9001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_9006(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133009, EntityType.GADGET, 9002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9007(context, evt)
	if 9001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9007(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_9008(context, evt)
	if "CloseTime" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_9008(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133009, EntityType.GADGET, 9002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end