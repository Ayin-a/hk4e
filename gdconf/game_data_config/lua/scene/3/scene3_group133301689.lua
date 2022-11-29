-- 基础信息
local base_info = {
	group_id = 133301689
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
	{ config_id = 689001, gadget_id = 70330238, pos = { x = -182.406, y = 242.596, z = 3633.115 }, rot = { x = 4.929, y = 95.493, z = 346.752 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 689002, gadget_id = 70290561, pos = { x = -196.488, y = 245.637, z = 3640.427 }, rot = { x = 4.759, y = 72.097, z = 1.423 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 29 },
	{ config_id = 689006, gadget_id = 70290561, pos = { x = -193.748, y = 245.352, z = 3647.555 }, rot = { x = 357.344, y = 174.840, z = 5.583 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 29 },
	{ config_id = 689007, gadget_id = 70330238, pos = { x = -182.569, y = 246.023, z = 3654.076 }, rot = { x = 0.000, y = 21.551, z = 0.000 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 689008, gadget_id = 70230112, pos = { x = -195.175, y = 245.882, z = 3640.940 }, rot = { x = 350.180, y = 273.559, z = 100.918 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 689009, gadget_id = 70230112, pos = { x = -193.342, y = 245.584, z = 3644.743 }, rot = { x = 359.900, y = 359.858, z = 54.940 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 689010, gadget_id = 70230111, pos = { x = -194.781, y = 245.642, z = 3643.231 }, rot = { x = 0.005, y = 322.902, z = 88.846 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 689011, gadget_id = 70290561, pos = { x = -195.438, y = 245.338, z = 3644.844 }, rot = { x = 358.087, y = 151.647, z = 346.441 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 29 },
	{ config_id = 689012, gadget_id = 70211021, pos = { x = -193.172, y = 245.564, z = 3642.047 }, rot = { x = 2.897, y = 119.267, z = 2.507 }, level = 26, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 29 },
	{ config_id = 689013, gadget_id = 70330238, pos = { x = -205.419, y = 254.581, z = 3644.195 }, rot = { x = 36.406, y = 63.890, z = 359.401 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 689014, gadget_id = 70230111, pos = { x = -200.909, y = 252.591, z = 3644.877 }, rot = { x = 333.704, y = 254.961, z = 65.050 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 689015, gadget_id = 70230112, pos = { x = -185.686, y = 245.981, z = 3634.764 }, rot = { x = 334.478, y = 317.130, z = 72.995 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 689016, gadget_id = 70230112, pos = { x = -183.511, y = 247.480, z = 3652.847 }, rot = { x = 312.337, y = 270.868, z = 61.903 }, level = 27, persistent = true, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 删除执行1
	{ config_id = 1689003, name = "GADGET_STATE_CHANGE_689003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_689003", action = "action_EVENT_GADGET_STATE_CHANGE_689003", trigger_count = 0 },
	{ config_id = 1689004, name = "GROUP_LOAD_689004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_689004", action = "action_EVENT_GROUP_LOAD_689004", trigger_count = 0 },
	-- 删除执行2
	{ config_id = 1689005, name = "GADGET_STATE_CHANGE_689005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_689005", action = "action_EVENT_GADGET_STATE_CHANGE_689005", trigger_count = 0 },
	-- 删除执行3
	{ config_id = 1689017, name = "GADGET_STATE_CHANGE_689017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_689017", action = "action_EVENT_GADGET_STATE_CHANGE_689017", trigger_count = 0 },
	-- 成功
	{ config_id = 1689018, name = "GADGET_STATE_CHANGE_689018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_689018", action = "action_EVENT_GADGET_STATE_CHANGE_689018", trigger_count = 0 }
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
		gadgets = { 689001, 689002, 689006, 689007, 689008, 689009, 689010, 689011, 689013, 689014, 689015, 689016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_689003", "GROUP_LOAD_689004", "GADGET_STATE_CHANGE_689005", "GADGET_STATE_CHANGE_689017", "GADGET_STATE_CHANGE_689018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 689001, 689007, 689008, 689009, 689010, 689012, 689013, 689014, 689015, 689016 },
		regions = { },
		triggers = { "GROUP_LOAD_689004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_689003(context, evt)
	if 689001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_689003(context, evt)
	-- 将configid为 689002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 689002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 689008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 689008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 689015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 689015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_689004(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301689, 689001) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301689, 689007) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301689, 689013) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_689004(context, evt)
	-- 创建id为689012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 689012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_689005(context, evt)
	if 689007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_689005(context, evt)
	-- 将configid为 689006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 689006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 689016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 689016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 689009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 689009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_689017(context, evt)
	if 689013 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_689017(context, evt)
	-- 将configid为 689011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 689011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 689010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 689010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 689014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 689014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_689018(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301689, 689001) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301689, 689007) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301689, 689013) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_689018(context, evt)
	-- 创建id为689012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 689012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end