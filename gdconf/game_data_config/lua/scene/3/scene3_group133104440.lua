-- 基础信息
local base_info = {
	group_id = 133104440
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
	{ config_id = 440001, gadget_id = 70211123, pos = { x = 837.416, y = 248.556, z = 936.577 }, rot = { x = 0.000, y = 88.899, z = 0.000 }, level = 21, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 440002, gadget_id = 70211121, pos = { x = 837.432, y = 248.505, z = 941.497 }, rot = { x = 0.000, y = 89.068, z = 0.000 }, level = 21, chest_drop_id = 2001200, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 440003, gadget_id = 70211123, pos = { x = 837.418, y = 248.573, z = 946.922 }, rot = { x = 0.000, y = 88.764, z = 0.000 }, level = 21, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 440008, gadget_id = 70350037, pos = { x = 845.862, y = 251.789, z = 941.237 }, rot = { x = 0.000, y = 91.063, z = 180.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 440009, gadget_id = 70310001, pos = { x = 852.964, y = 247.179, z = 937.689 }, rot = { x = 0.000, y = 358.343, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 440010, gadget_id = 70310001, pos = { x = 853.039, y = 247.179, z = 946.520 }, rot = { x = 0.000, y = 358.343, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 440004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 861.971, y = 251.919, z = 939.249 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1440004, name = "ENTER_REGION_440004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_440004" },
	{ config_id = 1440005, name = "GADGET_STATE_CHANGE_440005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_440005", action = "action_EVENT_GADGET_STATE_CHANGE_440005" },
	{ config_id = 1440006, name = "GADGET_CREATE_440006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_440006", action = "action_EVENT_GADGET_CREATE_440006", trigger_count = 0 }
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
		gadgets = { 440001, 440002, 440003, 440008, 440009, 440010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_440005", "GADGET_CREATE_440006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_440004(context, evt)
	-- 改变指定group组133104440中， configid为440008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104440, 440008, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_440005(context, evt)
	if 440008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_440005(context, evt)
	-- 将configid为 440001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 440001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 440002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 440002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 440003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 440003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_440006(context, evt)
	if 440008 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_440006(context, evt)
	-- 将configid为 440001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 440001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 440002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 440002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 440003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 440003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end