-- 基础信息
local base_info = {
	group_id = 133313224
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
	{ config_id = 224001, gadget_id = 70330333, pos = { x = -1786.620, y = 23.296, z = 5652.887 }, rot = { x = 0.000, y = 15.226, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 224002, gadget_id = 70290697, pos = { x = -1784.677, y = 23.683, z = 5673.554 }, rot = { x = 0.000, y = 14.674, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 224003, gadget_id = 70330416, pos = { x = -1790.581, y = 23.540, z = 5652.082 }, rot = { x = 0.000, y = 195.508, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 224004, gadget_id = 70290702, pos = { x = -1791.391, y = 22.577, z = 5652.421 }, rot = { x = 4.795, y = 25.468, z = 0.636 }, level = 32, isOneoff = true, persistent = true, area_id = 27 },
	{ config_id = 224005, gadget_id = 70290763, pos = { x = -1786.526, y = 23.078, z = 5666.957 }, rot = { x = 0.000, y = 15.500, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 224006, gadget_id = 70290763, pos = { x = -1785.194, y = 23.078, z = 5671.753 }, rot = { x = 0.000, y = 195.611, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 224007, gadget_id = 70290697, pos = { x = -1780.789, y = 23.692, z = 5662.820 }, rot = { x = 0.000, y = 15.200, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 断线重连
	{ config_id = 1224008, name = "GADGET_CREATE_224008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_224008", action = "action_EVENT_GADGET_CREATE_224008", trigger_count = 0 },
	-- 开门
	{ config_id = 1224009, name = "SELECT_OPTION_224009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_224009", action = "action_EVENT_SELECT_OPTION_224009", trigger_count = 0 },
	-- 断线重连开门
	{ config_id = 1224010, name = "GROUP_LOAD_224010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_224010", action = "action_EVENT_GROUP_LOAD_224010", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1224011, name = "GADGET_STATE_CHANGE_224011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224011", action = "action_EVENT_GADGET_STATE_CHANGE_224011", trigger_count = 0 }
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
		gadgets = { 224001, 224002, 224003, 224004, 224005, 224006, 224007 },
		regions = { },
		triggers = { "GADGET_CREATE_224008", "SELECT_OPTION_224009", "GROUP_LOAD_224010", "GADGET_STATE_CHANGE_224011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 设置指定group的操作台与option
function TLA_set_work_options_by_configid(context, evt, group_id, config_id, gear_id)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, group_id, config_id, gear_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_224008(context, evt)
	if 224001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_224008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313224, 224001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_224009(context, evt)
	-- 判断是gadgetid 224001 option_id 7
	if 224001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_224009(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 224001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 224001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 224003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 224003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133313224 ；指定config：224001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133313224, 224001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_224010(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "open", 133313224) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_224010(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,224003, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,224001, GadgetState.GearStart)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_224011(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133313224, 224002) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133313224, 224001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_224011(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,224001, GadgetState.Default)
	
	TLA_set_work_options_by_configid(context, evt, 133313224, 224001, {7})
	
	return 0
end