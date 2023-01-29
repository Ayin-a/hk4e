-- 基础信息
local base_info = {
	group_id = 133307298
}

-- DEFS_MISCS
--风扇
local fans =
{
    298008
}
--沙堆
local sandpiles =
{
    298004 
}
--百叶窗
local shutters =
{

}
--百叶窗开关
local shutter_switches =
{

}
--每个风扇对应点阵
local FanToPointArray =
{
   [fans[1]] = 330700012
}
--沙堆风扇方向位置
local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 201, pos = 2}
}

--百叶窗开关和百叶窗对应
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
	{ config_id = 298001, gadget_id = 70330333, pos = { x = -1695.874, y = 22.497, z = 5874.944 }, rot = { x = 0.000, y = 15.226, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 298003, gadget_id = 70330416, pos = { x = -1699.285, y = 22.570, z = 5873.704 }, rot = { x = 0.000, y = 195.508, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 298004, gadget_id = 70290702, pos = { x = -1699.560, y = 21.924, z = 5873.537 }, rot = { x = 4.795, y = 25.468, z = 0.636 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 298006, gadget_id = 70290763, pos = { x = -1690.187, y = 22.322, z = 5878.195 }, rot = { x = 0.000, y = 284.798, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 298007, gadget_id = 70290763, pos = { x = -1694.996, y = 22.326, z = 5879.464 }, rot = { x = 0.000, y = 104.803, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 298008, gadget_id = 70290697, pos = { x = -1688.510, y = 22.927, z = 5877.766 }, rot = { x = 0.000, y = 283.738, z = 0.000 }, level = 32, state = GadgetState.GearAction2, is_use_point_array = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 断线重连
	{ config_id = 1298009, name = "GADGET_CREATE_298009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_298009", action = "action_EVENT_GADGET_CREATE_298009", trigger_count = 0 },
	-- 开门
	{ config_id = 1298010, name = "SELECT_OPTION_298010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_298010", action = "action_EVENT_SELECT_OPTION_298010", trigger_count = 0 },
	-- 断线重连开门
	{ config_id = 1298011, name = "GROUP_LOAD_298011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_298011", action = "action_EVENT_GROUP_LOAD_298011", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1298012, name = "GADGET_STATE_CHANGE_298012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_298012", action = "action_EVENT_GADGET_STATE_CHANGE_298012", trigger_count = 0 }
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
		gadgets = { 298001, 298003, 298004, 298006, 298007, 298008 },
		regions = { },
		triggers = { "GADGET_CREATE_298009", "SELECT_OPTION_298010", "GROUP_LOAD_298011", "GADGET_STATE_CHANGE_298012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_298009(context, evt)
	if 298001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_298009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307298, 298001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_298010(context, evt)
	-- 判断是gadgetid 298001 option_id 7
	if 298001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_298010(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 298001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 298001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 298003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 298003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307298 ；指定config：298001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307298, 298001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_298011(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "open", 133307298) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_298011(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,298003, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,298001, GadgetState.GearStart)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_298012(context, evt)
	if 298004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133307298, 298001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_298012(context, evt)
	-- 将configid为 298001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 298001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307298, 298001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"