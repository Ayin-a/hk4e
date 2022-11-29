-- 基础信息
local base_info = {
	group_id = 133315192
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
	{ config_id = 192001, gadget_id = 70310217, pos = { x = 471.090, y = 131.452, z = 2463.881 }, rot = { x = 0.000, y = 297.387, z = 0.000 }, level = 27, state = GadgetState.GatherDrop, persistent = true, area_id = 20 },
	{ config_id = 192002, gadget_id = 70230113, pos = { x = 464.957, y = 136.678, z = 2481.654 }, rot = { x = 0.999, y = 208.298, z = 88.146 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 192003, gadget_id = 70310218, pos = { x = 438.451, y = 136.685, z = 2484.025 }, rot = { x = 0.000, y = 134.811, z = 0.000 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 192004, gadget_id = 70230113, pos = { x = 464.658, y = 137.336, z = 2481.247 }, rot = { x = 3.920, y = 238.650, z = 87.615 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 192005, gadget_id = 70230112, pos = { x = 466.911, y = 137.173, z = 2481.143 }, rot = { x = 352.591, y = 316.063, z = 89.850 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 192006, gadget_id = 70230112, pos = { x = 465.895, y = 136.458, z = 2481.964 }, rot = { x = 8.531, y = 55.516, z = 84.984 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 192007, gadget_id = 70230113, pos = { x = 464.487, y = 137.127, z = 2481.936 }, rot = { x = 359.280, y = 346.856, z = 86.920 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 192008, gadget_id = 70230113, pos = { x = 467.849, y = 137.136, z = 2480.052 }, rot = { x = 356.867, y = 140.284, z = 83.629 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 192009, gadget_id = 70230113, pos = { x = 467.458, y = 136.669, z = 2480.083 }, rot = { x = 6.510, y = 279.930, z = 92.831 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 192010, gadget_id = 70230113, pos = { x = 467.157, y = 136.537, z = 2479.696 }, rot = { x = 353.229, y = 58.850, z = 92.131 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 192011, gadget_id = 70310216, pos = { x = 470.564, y = 130.478, z = 2463.689 }, rot = { x = 344.142, y = 322.069, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 192014, gadget_id = 70310198, pos = { x = 466.626, y = 136.816, z = 2481.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 方碑一亮 涂鸦06亮
	{ config_id = 1192012, name = "GADGET_STATE_CHANGE_192012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_192012", action = "action_EVENT_GADGET_STATE_CHANGE_192012", trigger_count = 0 },
	-- 方碑二亮 涂鸦06亮
	{ config_id = 1192013, name = "GADGET_STATE_CHANGE_192013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_192013", action = "action_EVENT_GADGET_STATE_CHANGE_192013", trigger_count = 0 },
	-- 全亮 草种子激活
	{ config_id = 1192015, name = "GROUP_LOAD_192015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_192015", action = "action_EVENT_GROUP_LOAD_192015", trigger_count = 0 },
	-- 全亮 草种子激活
	{ config_id = 1192016, name = "GADGET_STATE_CHANGE_192016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_192016", action = "action_EVENT_GADGET_STATE_CHANGE_192016", trigger_count = 0 },
	-- 石块碎了创石碑
	{ config_id = 1192017, name = "ANY_GADGET_DIE_192017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_192017", action = "action_EVENT_ANY_GADGET_DIE_192017" }
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
		gadgets = { 192002, 192003, 192004, 192005, 192006, 192007, 192008, 192009, 192010, 192011, 192014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_192012", "GADGET_STATE_CHANGE_192013", "GROUP_LOAD_192015", "GADGET_STATE_CHANGE_192016", "ANY_GADGET_DIE_192017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_192012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315192, 192003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_192012(context, evt)
	-- 将configid为 192006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 192002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 192004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 192007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_192013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315192, 192001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_192013(context, evt)
	-- 将configid为 192005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 192008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 192009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 192010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_192015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315192, 192001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315192, 192003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_192015(context, evt)
	-- 将configid为 192014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_192016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315192, 192001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315192, 192003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_192016(context, evt)
	-- 将configid为 192014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_192017(context, evt)
	if 192011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_192017(context, evt)
	-- 创建id为192001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 192001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"