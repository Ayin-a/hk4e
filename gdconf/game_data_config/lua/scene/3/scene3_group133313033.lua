-- 基础信息
local base_info = {
	group_id = 133313033
}

-- DEFS_MISCS
local I_connectors = 
{
    [1] = 33009
}

local L_connectors = 
{
    [1] = 33006
}

local containers = 
{
    [1] = 33005,
    [2] = 33002
}

local lights = 
{
    [1] = 33010,
    [2] = 33011,
    [3] = 33012,
    [4] = 33013,
    [5] = 33014,
    [6] = 33016
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[1],L_connectors[1],lights[6]},
   [containers[2]] = {I_connectors[1],lights[1],L_connectors[1],lights[2],lights[3],lights[4],lights[5]}
}

local L_connections = 
{
    [L_connectors[1]] = {[202] = lights[2], [201] = lights[6]}
}

local base_interval = 1

local special_interval = 
{
}

local worktops = 
{
    [1] = 33001
}

local connector_to_worktop = 
{
    [L_connectors[1]] = worktops[1]
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
	{ config_id = 33001, gadget_id = 70290610, pos = { x = -667.724, y = -217.384, z = 5852.728 }, rot = { x = 0.000, y = 325.899, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 33002, gadget_id = 70360001, pos = { x = -706.129, y = -214.000, z = 5838.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 33005, gadget_id = 70290460, pos = { x = -661.784, y = -217.451, z = 5821.819 }, rot = { x = 0.000, y = 94.539, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 33006, gadget_id = 70290455, pos = { x = -661.758, y = -218.260, z = 5857.695 }, rot = { x = 270.000, y = 92.968, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 33008, gadget_id = 70330416, pos = { x = -721.689, y = -229.223, z = 5814.986 }, rot = { x = 0.000, y = 2.909, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 33009, gadget_id = 70290613, pos = { x = -638.334, y = -209.278, z = 5856.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 33010, gadget_id = 70290461, pos = { x = -649.413, y = -217.108, z = 5857.487 }, rot = { x = 270.981, y = 5.024, z = 358.911 }, level = 32, area_id = 32 },
	{ config_id = 33011, gadget_id = 70290461, pos = { x = -662.189, y = -215.034, z = 5864.767 }, rot = { x = 270.449, y = 177.972, z = 94.937 }, level = 32, area_id = 32 },
	{ config_id = 33012, gadget_id = 70290461, pos = { x = -673.047, y = -215.254, z = 5865.688 }, rot = { x = 271.690, y = 5.952, z = 356.836 }, level = 32, area_id = 32 },
	{ config_id = 33013, gadget_id = 70290461, pos = { x = -692.161, y = -212.893, z = 5848.764 }, rot = { x = 272.106, y = 24.486, z = 337.925 }, level = 32, area_id = 32 },
	{ config_id = 33014, gadget_id = 70290461, pos = { x = -703.532, y = -212.816, z = 5849.360 }, rot = { x = 271.984, y = 7.750, z = 355.742 }, level = 32, area_id = 32 },
	{ config_id = 33015, gadget_id = 70290612, pos = { x = -710.460, y = -214.180, z = 5853.280 }, rot = { x = 0.328, y = 316.532, z = 359.869 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 33016, gadget_id = 70290461, pos = { x = -660.834, y = -217.070, z = 5827.853 }, rot = { x = 270.963, y = 5.108, z = 268.692 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 上选项开门
	{ config_id = 1033003, name = "GADGET_STATE_CHANGE_33003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33003", action = "action_EVENT_GADGET_STATE_CHANGE_33003", trigger_count = 0 },
	{ config_id = 1033004, name = "GADGET_CREATE_33004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_33004", action = "action_EVENT_GADGET_CREATE_33004", trigger_count = 0 },
	-- 开门保底
	{ config_id = 1033007, name = "GROUP_LOAD_33007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_33007", action = "action_EVENT_GROUP_LOAD_33007", trigger_count = 0 },
	-- 开门
	{ config_id = 1033017, name = "SELECT_OPTION_33017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_33017", action = "action_EVENT_SELECT_OPTION_33017", trigger_count = 0 },
	-- 解锁大管道控制机关
	{ config_id = 1033018, name = "GADGET_STATE_CHANGE_33018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33018", action = "action_EVENT_GADGET_STATE_CHANGE_33018", trigger_count = 0 },
	-- 解锁元能火种
	{ config_id = 1033019, name = "GADGET_STATE_CHANGE_33019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33019", action = "action_EVENT_GADGET_STATE_CHANGE_33019", trigger_count = 0 }
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
		gadgets = { 33001, 33002, 33005, 33006, 33008, 33009, 33010, 33011, 33012, 33013, 33014, 33015, 33016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_33003", "GADGET_CREATE_33004", "GROUP_LOAD_33007", "SELECT_OPTION_33017", "GADGET_STATE_CHANGE_33018", "GADGET_STATE_CHANGE_33019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33003(context, evt)
	if 33002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133313033, 33015) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33003(context, evt)
	-- 将configid为 33015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313033, 33015, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_33004(context, evt)
	if 33015 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_33004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313033, 33015, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_33007(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_33007(context, evt)
	-- 将configid为 33008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 33015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_33017(context, evt)
	-- 判断是gadgetid 33015 option_id 7
	if 33015 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_33017(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 33015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 33008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33018(context, evt)
	if 33005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33018(context, evt)
	-- 将本组内变量名为 "unlock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock", 1, 133313034) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33019(context, evt)
	if 33006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33019(context, evt)
	-- 将本组内变量名为 "unlock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock", 1, 133313150) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_4/SandPipe"