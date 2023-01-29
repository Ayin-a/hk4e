-- 基础信息
local base_info = {
	group_id = 133313221
}

-- DEFS_MISCS
local fans =
{
    221001
}

local sandpiles =
{
    221002,
    221005
}

local shutters =
{

}

local shutter_switches =
{

}

local FanToPointArray =
{
    [fans[1]] = 331300005
}

local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 201, pos = 1},
    [sandpiles[2]] = {fan = fans[1], dir_state = 203, pos = 2}
}


local SwitchToShutter =
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
	{ config_id = 221001, gadget_id = 70290697, pos = { x = -475.031, y = -9.263, z = 5217.027 }, rot = { x = 0.000, y = 42.351, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, is_use_point_array = true, area_id = 32 },
	-- 管道开关
	{ config_id = 221002, gadget_id = 70290703, pos = { x = -481.947, y = -9.684, z = 5226.193 }, rot = { x = 0.000, y = 88.822, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 221003, gadget_id = 70290763, pos = { x = -473.488, y = -9.868, z = 5218.662 }, rot = { x = 0.000, y = 43.095, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 221004, gadget_id = 70290763, pos = { x = -470.090, y = -9.868, z = 5222.290 }, rot = { x = 0.000, y = 223.120, z = 0.000 }, level = 32, area_id = 32 },
	-- 2
	{ config_id = 221005, gadget_id = 70290702, pos = { x = -460.108, y = -9.512, z = 5215.559 }, rot = { x = 355.360, y = 70.948, z = 0.897 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 221007, gadget_id = 70330256, pos = { x = -471.044, y = -4.129, z = 5248.670 }, rot = { x = 0.000, y = 222.506, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	-- 操作风扇
	{ config_id = 221008, gadget_id = 70330333, pos = { x = -459.576, y = -9.520, z = 5219.576 }, rot = { x = 0.000, y = 271.654, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 沙堆1死亡
	{ config_id = 1221006, name = "GADGET_STATE_CHANGE_221006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221006", action = "action_EVENT_GADGET_STATE_CHANGE_221006" },
	-- 沙堆2死亡
	{ config_id = 1221009, name = "GADGET_STATE_CHANGE_221009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221009", action = "action_EVENT_GADGET_STATE_CHANGE_221009" },
	-- 关闭风扇
	{ config_id = 1221010, name = "SELECT_OPTION_221010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_221010", action = "action_EVENT_SELECT_OPTION_221010", trigger_count = 0 },
	-- 风扇关闭机关重登保底
	{ config_id = 1221011, name = "GROUP_LOAD_221011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_221011", action = "action_EVENT_GROUP_LOAD_221011", trigger_count = 0 },
	-- 重登给风扇机关上选项
	{ config_id = 1221012, name = "GADGET_CREATE_221012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_221012", action = "action_EVENT_GADGET_CREATE_221012", trigger_count = 0 },
	-- 沙堆1死亡保底
	{ config_id = 1221013, name = "GROUP_LOAD_221013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_221013", action = "action_EVENT_GROUP_LOAD_221013", trigger_count = 0 }
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
		gadgets = { 221001, 221002, 221003, 221004, 221005, 221007, 221008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_221006", "GADGET_STATE_CHANGE_221009", "SELECT_OPTION_221010", "GROUP_LOAD_221011", "GADGET_CREATE_221012", "GROUP_LOAD_221013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 设置指定group中指定gadget的state
function TLA_set_gadget_state_by_groupid_configid(context, evt, config_id, group_id, state)
	-- 改变指定group组group_id中， configid为config_id的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, config_id, state) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_221006(context, evt)
	if 221002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221006(context, evt)
	-- 将本组内变量名为 "unlock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock", 1, 133313025) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_221009(context, evt)
	if 221005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221009(context, evt)
	-- 将configid为 221008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313221, 221008, {439}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_221010(context, evt)
	-- 判断是gadgetid 221008 option_id 439
	if 221008 ~= evt.param1 then
		return false	
	end
	
	if 439 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_221010(context, evt)
	TLA_set_gadget_state_by_groupid_configid(context, evt, 221008, 133313221, GadgetState.GearStart)
	
	TLA_set_gadget_state_by_groupid_configid(context, evt, 221007, 133313221, GadgetState.Default)
	
	ScriptLib.DelWorktopOptionByGroupId(context, 133313221, 221008, 439)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_221011(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133313221, 221008) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313221, 221005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_221011(context, evt)
	-- 将configid为 221008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313221, 221008, {439}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_221012(context, evt)
	if 221008 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_221012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313221, 221008, {439}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_221013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313221, 221002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_221013(context, evt)
	-- 将本组内变量名为 "unlock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock", 1, 133313025) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"