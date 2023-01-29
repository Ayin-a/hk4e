-- 基础信息
local base_info = {
	group_id = 133307397
}

-- DEFS_MISCS
--风扇
local fans =
{
    397007
}
--沙堆
local sandpiles =
{
    397003 
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
   [fans[1]] = 330700013
}
--沙堆风扇方向位置
local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 202, pos = 2}
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
	{ config_id = 397001, gadget_id = 70330333, pos = { x = -1786.708, y = 23.262, z = 5653.375 }, rot = { x = 0.000, y = 15.226, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 397002, gadget_id = 70330416, pos = { x = -1790.624, y = 23.537, z = 5651.705 }, rot = { x = 0.000, y = 14.167, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 397003, gadget_id = 70290702, pos = { x = -1789.874, y = 22.822, z = 5648.618 }, rot = { x = 3.743, y = 295.949, z = 1.187 }, level = 32, isOneoff = true, persistent = true, area_id = 27 },
	{ config_id = 397004, gadget_id = 70290699, pos = { x = -1786.548, y = 23.018, z = 5666.965 }, rot = { x = 0.000, y = 15.595, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 397005, gadget_id = 70290763, pos = { x = -1785.204, y = 23.002, z = 5671.766 }, rot = { x = 0.000, y = 195.702, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 397006, gadget_id = 70290763, pos = { x = -1787.889, y = 23.002, z = 5662.178 }, rot = { x = 0.000, y = 15.699, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 397007, gadget_id = 70290697, pos = { x = -1784.721, y = 23.607, z = 5673.609 }, rot = { x = 0.000, y = 194.788, z = 0.000 }, level = 32, state = GadgetState.GearStop, is_use_point_array = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 断线重连
	{ config_id = 1397008, name = "GADGET_CREATE_397008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_397008", action = "action_EVENT_GADGET_CREATE_397008", trigger_count = 0 },
	-- 开门
	{ config_id = 1397009, name = "SELECT_OPTION_397009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_397009", action = "action_EVENT_SELECT_OPTION_397009", trigger_count = 0 },
	-- 断线重连开门
	{ config_id = 1397010, name = "GROUP_LOAD_397010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_397010", action = "action_EVENT_GROUP_LOAD_397010", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1397011, name = "GADGET_STATE_CHANGE_397011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_397011", action = "action_EVENT_GADGET_STATE_CHANGE_397011", trigger_count = 0 }
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
		gadgets = { 397001, 397002, 397003, 397004, 397005, 397006, 397007 },
		regions = { },
		triggers = { "GADGET_CREATE_397008", "SELECT_OPTION_397009", "GROUP_LOAD_397010", "GADGET_STATE_CHANGE_397011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_397008(context, evt)
	if 397001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_397008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307397, 397001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_397009(context, evt)
	-- 判断是gadgetid 397001 option_id 7
	if 397001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_397009(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 397001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 397001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 397002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 397002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307397 ；指定config：397001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307397, 397001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_397010(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "open", 133307397) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_397010(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,397002, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,397001, GadgetState.GearStart)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_397011(context, evt)
	if 397003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133307397, 397001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_397011(context, evt)
	-- 将configid为 397001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 397001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307397, 397001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"