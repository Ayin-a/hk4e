-- 基础信息
local base_info = {
	group_id = 133307384
}

-- DEFS_MISCS
--风扇
local fans =
{
    384007
}
--沙堆
local sandpiles =
{
    384003 
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
   
}
--沙堆风扇方向位置
local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 203, pos = 1}
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
	{ config_id = 384001, gadget_id = 70330333, pos = { x = -1657.215, y = 25.497, z = 5865.740 }, rot = { x = 0.000, y = 15.226, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 384002, gadget_id = 70330416, pos = { x = -1658.998, y = 25.771, z = 5869.141 }, rot = { x = 0.000, y = 286.160, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 384003, gadget_id = 70290702, pos = { x = -1661.413, y = 25.156, z = 5868.928 }, rot = { x = 357.677, y = 78.242, z = 354.501 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 384007, gadget_id = 70290697, pos = { x = -1654.336, y = 25.497, z = 5874.006 }, rot = { x = 0.000, y = 104.085, z = 0.000 }, level = 32, persistent = true, is_use_point_array = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 断线重连
	{ config_id = 1384008, name = "GADGET_CREATE_384008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_384008", action = "action_EVENT_GADGET_CREATE_384008", trigger_count = 0 },
	-- 开门
	{ config_id = 1384009, name = "SELECT_OPTION_384009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_384009", action = "action_EVENT_SELECT_OPTION_384009", trigger_count = 0 },
	-- 断线重连开门
	{ config_id = 1384010, name = "GROUP_LOAD_384010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_384010", action = "action_EVENT_GROUP_LOAD_384010", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1384011, name = "GADGET_STATE_CHANGE_384011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_384011", action = "action_EVENT_GADGET_STATE_CHANGE_384011", trigger_count = 0 }
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
		gadgets = { 384001, 384002, 384003, 384007 },
		regions = { },
		triggers = { "GADGET_CREATE_384008", "SELECT_OPTION_384009", "GROUP_LOAD_384010", "GADGET_STATE_CHANGE_384011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_384008(context, evt)
	if 384001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_384008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307384, 384001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_384009(context, evt)
	-- 判断是gadgetid 384001 option_id 7
	if 384001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_384009(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 384001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 384001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 384002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 384002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307384 ；指定config：384001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307384, 384001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_384010(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "open", 133307384) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_384010(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,384002, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,384001, GadgetState.GearStart)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_384011(context, evt)
	if 384003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_384011(context, evt)
	-- 将configid为 384001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 384001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307384, 384001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"