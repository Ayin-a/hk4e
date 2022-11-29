-- 基础信息
local base_info = {
	group_id = 250004072
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
	{ config_id = 652, gadget_id = 70900308, pos = { x = -174.751, y = -11.000, z = -615.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 50004024 },
	{ config_id = 653, gadget_id = 70900309, pos = { x = -174.800, y = -11.000, z = -617.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 654, gadget_id = 70211001, pos = { x = -176.811, y = -11.000, z = -616.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 655, gadget_id = 70900308, pos = { x = -174.800, y = -11.000, z = -613.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 50004025 },
	{ config_id = 656, gadget_id = 70900308, pos = { x = -174.800, y = -11.000, z = -610.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 50004026 },
	{ config_id = 657, gadget_id = 70900033, pos = { x = -181.807, y = -11.903, z = -612.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 658, gadget_id = 70900033, pos = { x = -167.956, y = -11.742, z = -612.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 659, gadget_id = 70900033, pos = { x = -174.211, y = -11.649, z = -603.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000138, name = "CLIENT_EXECUTE_138", event = EventType.EVENT_CLIENT_EXECUTE, source = "Jigsaw_Reward", condition = "", action = "action_EVENT_CLIENT_EXECUTE_138", trigger_count = 0 },
	{ config_id = 1000139, name = "GADGET_STATE_CHANGE_139", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_139", action = "action_EVENT_GADGET_STATE_CHANGE_139", trigger_count = 0 },
	{ config_id = 1000140, name = "GADGET_STATE_CHANGE_140", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_140", action = "action_EVENT_GADGET_STATE_CHANGE_140", trigger_count = 0 },
	{ config_id = 1000141, name = "GADGET_STATE_CHANGE_141", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_141", action = "action_EVENT_GADGET_STATE_CHANGE_141", trigger_count = 0 },
	{ config_id = 1000142, name = "GADGET_STATE_CHANGE_142", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142", action = "action_EVENT_GADGET_STATE_CHANGE_142", trigger_count = 0 },
	{ config_id = 1000143, name = "GADGET_STATE_CHANGE_143", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_143", action = "action_EVENT_GADGET_STATE_CHANGE_143", trigger_count = 0 },
	{ config_id = 1000144, name = "GADGET_STATE_CHANGE_144", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144", action = "action_EVENT_GADGET_STATE_CHANGE_144", trigger_count = 0 }
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
		gadgets = { 652, 653, 655, 656, 657, 658, 659 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_138", "GADGET_STATE_CHANGE_139", "GADGET_STATE_CHANGE_140", "GADGET_STATE_CHANGE_141", "GADGET_STATE_CHANGE_142", "GADGET_STATE_CHANGE_143", "GADGET_STATE_CHANGE_144" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_138(context, evt)
	-- 创建id为654的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 654 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_139(context, evt)
	if 657 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_139(context, evt)
	-- 将configid为 653 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 653, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 652) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_140(context, evt)
	if 657 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_140(context, evt)
	-- 将configid为 653 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 653, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 652) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_141(context, evt)
	if 658 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_141(context, evt)
	-- 将configid为 653 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 653, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 655) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142(context, evt)
	if 658 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142(context, evt)
	-- 将configid为 653 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 653, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 655) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_143(context, evt)
	if 659 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_143(context, evt)
	-- 将configid为 653 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 653, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 656) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144(context, evt)
	if 659 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144(context, evt)
	-- 将configid为 653 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 653, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 656) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end