-- 基础信息
local base_info = {
	group_id = 133307304
}

-- DEFS_MISCS
--风扇
local fans =
{
    304012
}
--沙堆
local sandpiles =
{
    304004 
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
   [fans[1]] = 330700008
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
	{ config_id = 304001, gadget_id = 70330333, pos = { x = -1669.027, y = 23.262, z = 5778.172 }, rot = { x = 0.000, y = 15.226, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 304003, gadget_id = 70330416, pos = { x = -1664.569, y = 23.305, z = 5782.480 }, rot = { x = 0.000, y = 286.160, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 304004, gadget_id = 70290702, pos = { x = -1665.294, y = 23.302, z = 5781.104 }, rot = { x = 0.502, y = 1.009, z = 3.895 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 304005, gadget_id = 70290699, pos = { x = -1680.017, y = 23.204, z = 5779.252 }, rot = { x = 0.000, y = 15.595, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 304006, gadget_id = 70290763, pos = { x = -1678.673, y = 23.188, z = 5784.053 }, rot = { x = 0.000, y = 195.702, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 304011, gadget_id = 70290763, pos = { x = -1681.358, y = 23.188, z = 5774.465 }, rot = { x = 0.000, y = 15.699, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 304012, gadget_id = 70290697, pos = { x = -1681.818, y = 23.723, z = 5772.932 }, rot = { x = 0.000, y = 194.788, z = 0.000 }, level = 32, state = GadgetState.GearStop, is_use_point_array = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 断线重连
	{ config_id = 1304007, name = "GADGET_CREATE_304007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_304007", action = "action_EVENT_GADGET_CREATE_304007", trigger_count = 0 },
	-- 开门
	{ config_id = 1304008, name = "SELECT_OPTION_304008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_304008", action = "action_EVENT_SELECT_OPTION_304008", trigger_count = 0 },
	-- 断线重连开门
	{ config_id = 1304009, name = "GROUP_LOAD_304009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_304009", action = "action_EVENT_GROUP_LOAD_304009", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1304010, name = "GADGET_STATE_CHANGE_304010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304010", action = "action_EVENT_GADGET_STATE_CHANGE_304010", trigger_count = 0 }
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
		gadgets = { 304001, 304003, 304004, 304005, 304006, 304011, 304012 },
		regions = { },
		triggers = { "GADGET_CREATE_304007", "SELECT_OPTION_304008", "GROUP_LOAD_304009", "GADGET_STATE_CHANGE_304010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_304007(context, evt)
	if 304001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_304007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307304, 304001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_304008(context, evt)
	-- 判断是gadgetid 304001 option_id 7
	if 304001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_304008(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 304001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 304003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307304 ；指定config：304001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307304, 304001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_304009(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "open", 133307304) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_304009(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,304003, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,304001, GadgetState.GearStart)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_304010(context, evt)
	if 304004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133307304, 304001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304010(context, evt)
	-- 将configid为 304001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307304, 304001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"