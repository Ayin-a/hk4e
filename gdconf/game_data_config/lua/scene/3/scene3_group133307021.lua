-- 基础信息
local base_info = {
	group_id = 133307021
}

-- DEFS_MISCS
--风扇
local fans =
{
    21007,
    21013
}
--沙堆
local sandpiles =
{
   21008,
   21016,
   21017
}
--百叶窗
local shutters =
{
   21014
}
--百叶窗开关
local shutter_switches =
{
   21015
}
--每个风扇对应点阵
local FanToPointArray =
{
   [fans[1]] = 330700010,
   [fans[2]] = 330700011
}
--沙堆风扇方向位置
local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 202, pos = 2},
    [sandpiles[2]] = {fan = fans[2], dir_state = 201, pos = 2},
    [sandpiles[3]] = {fan = fans[2], dir_state = 203, pos = 1, shutter = shutters[1]}
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
	-- 风扇C
	{ config_id = 21001, gadget_id = 70290610, pos = { x = -1636.573, y = 25.492, z = 5863.558 }, rot = { x = 0.000, y = 13.459, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	-- 关门大门
	{ config_id = 21003, gadget_id = 70330416, pos = { x = -1649.776, y = 23.305, z = 5814.907 }, rot = { x = 0.000, y = 15.056, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 左侧
	{ config_id = 21004, gadget_id = 70290763, pos = { x = -1663.891, y = 25.492, z = 5830.630 }, rot = { x = 0.000, y = 15.749, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 左侧
	{ config_id = 21005, gadget_id = 70290763, pos = { x = -1661.185, y = 25.481, z = 5840.200 }, rot = { x = 0.000, y = 195.040, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 左侧
	{ config_id = 21006, gadget_id = 70290699, pos = { x = -1662.519, y = 25.492, z = 5835.418 }, rot = { x = 0.000, y = 16.196, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 左侧
	{ config_id = 21007, gadget_id = 70290697, pos = { x = -1664.418, y = 26.097, z = 5828.852 }, rot = { x = 0.000, y = 13.765, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, is_use_point_array = true, area_id = 32 },
	-- 左侧
	{ config_id = 21008, gadget_id = 70290702, pos = { x = -1657.700, y = 25.050, z = 5856.626 }, rot = { x = 0.000, y = 102.847, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	-- 左侧
	{ config_id = 21009, gadget_id = 70330416, pos = { x = -1657.015, y = 25.570, z = 5854.026 }, rot = { x = 0.000, y = 10.162, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 左侧
	{ config_id = 21010, gadget_id = 70330333, pos = { x = -1661.120, y = 25.492, z = 5852.541 }, rot = { x = 0.000, y = 12.397, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 32 },
	-- 右侧百叶
	{ config_id = 21011, gadget_id = 70290763, pos = { x = -1619.557, y = 25.492, z = 5860.497 }, rot = { x = 0.000, y = 15.749, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 右侧百叶
	{ config_id = 21012, gadget_id = 70290763, pos = { x = -1618.239, y = 25.481, z = 5865.293 }, rot = { x = 0.000, y = 195.040, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 右侧
	{ config_id = 21013, gadget_id = 70290697, pos = { x = -1617.847, y = 26.097, z = 5866.811 }, rot = { x = 0.000, y = 193.968, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, is_use_point_array = true, area_id = 32 },
	-- 右侧
	{ config_id = 21014, gadget_id = 70290756, pos = { x = -1625.644, y = 25.705, z = 5860.180 }, rot = { x = 0.000, y = 104.979, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 右侧
	{ config_id = 21015, gadget_id = 70290757, pos = { x = -1612.924, y = 25.492, z = 5856.895 }, rot = { x = 0.000, y = 15.724, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 右侧f风扇开关
	{ config_id = 21016, gadget_id = 70290703, pos = { x = -1611.159, y = 25.129, z = 5856.959 }, rot = { x = 0.000, y = 155.410, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	-- 右侧
	{ config_id = 21017, gadget_id = 70290703, pos = { x = -1636.866, y = 25.269, z = 5863.730 }, rot = { x = 0.000, y = 116.675, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 左侧开门
	{ config_id = 1021002, name = "GADGET_STATE_CHANGE_21002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_21002", action = "action_EVENT_GADGET_STATE_CHANGE_21002" },
	{ config_id = 1021018, name = "SELECT_OPTION_21018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_21018", action = "action_EVENT_SELECT_OPTION_21018" },
	-- 右侧开关
	{ config_id = 1021019, name = "GADGET_STATE_CHANGE_21019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_21019", action = "action_EVENT_GADGET_STATE_CHANGE_21019" },
	-- 核心
	{ config_id = 1021020, name = "GADGET_STATE_CHANGE_21020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_21020", action = "action_EVENT_GADGET_STATE_CHANGE_21020" },
	-- 核心开C风扇
	{ config_id = 1021021, name = "SELECT_OPTION_21021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_21021", action = "action_EVENT_SELECT_OPTION_21021", trigger_count = 0 }
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
		gadgets = { 21001, 21003, 21004, 21005, 21006, 21007, 21008, 21009, 21010, 21011, 21012, 21013, 21014, 21015, 21016, 21017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_21002", "SELECT_OPTION_21018", "GADGET_STATE_CHANGE_21019", "GADGET_STATE_CHANGE_21020", "SELECT_OPTION_21021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_21002(context, evt)
	if 21008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133307021, 21010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_21002(context, evt)
	-- 将configid为 21010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307021, 21010, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_21018(context, evt)
	-- 判断是gadgetid 21010 option_id 7
	if 21010 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_21018(context, evt)
	-- 将configid为 21010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 21009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307021 ；指定config：21010；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307021, 21010, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_21019(context, evt)
	if 21016 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_21019(context, evt)
	-- 将configid为 21015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_21020(context, evt)
	if 21017 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133307021, 21001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_21020(context, evt)
	-- 将configid为 21001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307021, 21001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_21021(context, evt)
	-- 判断是gadgetid 21010 option_id 7
	if 21010 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_21021(context, evt)
	-- 将configid为 21010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133307022中， configid为22007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133307022, 22007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133307384中， configid为384007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133307384, 384007, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 133307021 ；指定config：21010；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307021, 21010, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

require "V3_4/ScarletKingFan"