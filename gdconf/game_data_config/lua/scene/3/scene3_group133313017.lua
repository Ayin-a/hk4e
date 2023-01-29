-- 基础信息
local base_info = {
	group_id = 133313017
}

-- DEFS_MISCS
local I_connectors = 
{
    [1] = 17005
}

local L_connectors = 
{

}

local containers = 
{
    [1] = 17008
}

local lights = 
{
    [1] = 17012
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[1]}
}

local L_connections = 
{

}

local base_interval = 1

local special_interval = 
{
}

local worktops = 
{

}

local connector_to_worktop = 
{

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
	-- 开门机关
	{ config_id = 17001, gadget_id = 70330333, pos = { x = -506.718, y = -24.336, z = 5256.741 }, rot = { x = 0.000, y = 85.233, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 17004, gadget_id = 70330416, pos = { x = -505.718, y = -24.179, z = 5263.938 }, rot = { x = 0.000, y = 313.009, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	{ config_id = 17005, gadget_id = 70290454, pos = { x = -491.181, y = -23.809, z = 5218.424 }, rot = { x = 90.000, y = 134.535, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 17006, gadget_id = 70290610, pos = { x = -482.703, y = -24.305, z = 5221.471 }, rot = { x = 0.000, y = 43.837, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 容器替代
	{ config_id = 17008, gadget_id = 70360001, pos = { x = -509.580, y = -24.305, z = 5253.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 17012, gadget_id = 70290627, pos = { x = -518.219, y = -21.456, z = 5243.997 }, rot = { x = 270.734, y = 13.078, z = 30.736 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开门保底
	{ config_id = 1017002, name = "GROUP_LOAD_17002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_17002", action = "action_EVENT_GROUP_LOAD_17002", trigger_count = 0 },
	-- 开启大门
	{ config_id = 1017003, name = "SELECT_OPTION_17003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17003", action = "action_EVENT_SELECT_OPTION_17003", trigger_count = 0 },
	-- 管道操作机关
	{ config_id = 1017007, name = "GADGET_CREATE_17007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_17007", action = "action_EVENT_GADGET_CREATE_17007", trigger_count = 0 },
	-- 连通管道
	{ config_id = 1017009, name = "SELECT_OPTION_17009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17009", action = "action_EVENT_SELECT_OPTION_17009", trigger_count = 0 },
	-- 开门机关上选项
	{ config_id = 1017010, name = "GADGET_STATE_CHANGE_17010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17010", action = "action_EVENT_GADGET_STATE_CHANGE_17010", trigger_count = 0 },
	-- 开门机关选项
	{ config_id = 1017011, name = "GADGET_CREATE_17011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_17011", action = "action_EVENT_GADGET_CREATE_17011", trigger_count = 0 }
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
		gadgets = { 17001, 17004, 17005, 17006, 17008, 17012 },
		regions = { },
		triggers = { "GROUP_LOAD_17002", "SELECT_OPTION_17003", "GADGET_CREATE_17007", "SELECT_OPTION_17009", "GADGET_STATE_CHANGE_17010", "GADGET_CREATE_17011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_17002(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_17002(context, evt)
	-- 将configid为 17004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 17001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_17003(context, evt)
	-- 判断是gadgetid 17001 option_id 7
	if 17001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_17003(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 17001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 17004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133313017 ；指定config：17001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133313017, 17001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_17007(context, evt)
	if 17006 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_17007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313017, 17006, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_17009(context, evt)
	-- 判断是gadgetid 17006 option_id 7
	if 17006 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_17009(context, evt)
	-- 将configid为 17006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 17005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133313017 ；指定config：17006；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133313017, 17006, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_17010(context, evt)
	if 17008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133313017, 17001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17010(context, evt)
	-- 将configid为 17001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313017, 17001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_17011(context, evt)
	if 17001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_17011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313017, 17001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_4/SandPipe"