-- 基础信息
local base_info = {
	group_id = 133307305
}

-- DEFS_MISCS
--风扇
local fans =
{
    305002
}
--沙堆
local sandpiles =
{
   305016,
   305004,
}
--百叶窗
local shutters =
{
   305005
}
--百叶窗开关
local shutter_switches =
{
   305006
}
--每个风扇对应点阵
local FanToPointArray =
{
   [fans[1]] = 330700009
}
--沙堆风扇方向位置
local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 203, pos = 2},
    [sandpiles[2]] = {fan = fans[1], dir_state = 203, pos = 1, shutter = shutters[1]}
}

--百叶窗开关和百叶窗对应
local SwitchToShutter =
{
    [shutter_switches[1]] = shutters[1]
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
	{ config_id = 305001, gadget_id = 70330333, pos = { x = -1647.050, y = 23.262, z = 5811.241 }, rot = { x = 0.000, y = 15.226, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 305002, gadget_id = 70290697, pos = { x = -1655.083, y = 23.658, z = 5790.811 }, rot = { x = 0.000, y = 285.228, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, area_id = 32 },
	{ config_id = 305003, gadget_id = 70330416, pos = { x = -1649.852, y = 23.389, z = 5814.485 }, rot = { x = 0.000, y = 197.026, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 305004, gadget_id = 70290702, pos = { x = -1649.196, y = 23.012, z = 5816.129 }, rot = { x = 0.000, y = 17.918, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 305005, gadget_id = 70290756, pos = { x = -1653.648, y = 24.122, z = 5798.137 }, rot = { x = 0.000, y = 194.873, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 305006, gadget_id = 70290757, pos = { x = -1643.865, y = 23.262, z = 5796.098 }, rot = { x = 0.000, y = 10.034, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 305014, gadget_id = 70290763, pos = { x = -1653.316, y = 23.030, z = 5790.302 }, rot = { x = 0.000, y = 105.471, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 305015, gadget_id = 70290763, pos = { x = -1648.505, y = 23.030, z = 5788.969 }, rot = { x = 0.000, y = 285.603, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 305016, gadget_id = 70290703, pos = { x = -1645.660, y = 22.916, z = 5797.513 }, rot = { x = 0.000, y = 21.432, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开启开关
	{ config_id = 1305007, name = "GADGET_STATE_CHANGE_305007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_305007", action = "action_EVENT_GADGET_STATE_CHANGE_305007", trigger_count = 0 },
	-- 开门
	{ config_id = 1305008, name = "SELECT_OPTION_305008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_305008", action = "action_EVENT_SELECT_OPTION_305008", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1305010, name = "GADGET_STATE_CHANGE_305010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_305010", action = "action_EVENT_GADGET_STATE_CHANGE_305010", trigger_count = 0 }
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
		gadgets = { 305001, 305002, 305003, 305004, 305005, 305006, 305014, 305015, 305016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_305007", "SELECT_OPTION_305008", "GADGET_STATE_CHANGE_305010" },
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
function condition_EVENT_GADGET_STATE_CHANGE_305007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307305, 305016) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_305007(context, evt)
	-- 将configid为 305006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 305006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_305008(context, evt)
	-- 判断是gadgetid 305001 option_id 7
	if 305001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_305008(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 305001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 305001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 305003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 305003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307305 ；指定config：305001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307305, 305001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_305010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307305, 305004) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133307305, 305001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_305010(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,305001, GadgetState.Default)
	
	TLA_set_work_options_by_configid(context, evt, 133307305, 305001, {7})
	
	return 0
end

require "V3_4/ScarletKingFan"