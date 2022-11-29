-- 基础信息
local base_info = {
	group_id = 220151002
}

-- Trigger变量
local defs = {
	pointarray_ID = 1,
	elevatorOptionID = 24,
	gadget_elevatorID = 2008
}

-- DEFS_MISCS
--旋转的时间间隔
defs.RotateTime = 5

--方尖碑configID
defs.gadget_1 = 2001
defs.gadget_2 = 2002
defs.gadget_3 = 2003

--方尖碑初始旋转角
defs.rotation_1 = 120
defs.rotation_2 = 0
defs.rotation_3 = 240

--重力压板对应的控制的方尖碑
defs.boardControlList={
[2004]={2003},
[2005]={2002},
[2006]={2001},
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
	{ config_id = 2001, gadget_id = 70330302, pos = { x = -127.548, y = 5.872, z = 97.210 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 2002, gadget_id = 70330302, pos = { x = -138.438, y = 5.872, z = 97.188 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 2003, gadget_id = 70330302, pos = { x = -149.509, y = 5.872, z = 97.193 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 2004, gadget_id = 70330341, pos = { x = -149.509, y = 3.346, z = 83.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	-- 隐藏的,不给操作
	{ config_id = 2005, gadget_id = 70330341, pos = { x = -138.602, y = 5.149, z = 113.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 2006, gadget_id = 70330341, pos = { x = -128.089, y = 2.995, z = 83.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 2008, gadget_id = 70330303, pos = { x = -127.549, y = 5.872, z = 97.210 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 2009, gadget_id = 70330303, pos = { x = -138.438, y = 5.872, z = 97.188 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 2010, gadget_id = 70330303, pos = { x = -149.509, y = 5.872, z = 97.193 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 2011, gadget_id = 70330287, pos = { x = -138.663, y = -46.300, z = 73.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002007, name = "VARIABLE_CHANGE_2007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2007", action = "action_EVENT_VARIABLE_CHANGE_2007" },
	-- 初始选项
	{ config_id = 1002012, name = "GADGET_STATE_CHANGE_2012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2012", action = "action_EVENT_GADGET_STATE_CHANGE_2012" },
	-- 开关1
	{ config_id = 1002013, name = "SELECT_OPTION_2013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2013", action = "action_EVENT_SELECT_OPTION_2013", trigger_count = 0 },
	-- 关开1
	{ config_id = 1002014, name = "SELECT_OPTION_2014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2014", action = "action_EVENT_SELECT_OPTION_2014", trigger_count = 0 },
	-- 开关2
	{ config_id = 1002015, name = "SELECT_OPTION_2015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2015", action = "action_EVENT_SELECT_OPTION_2015", trigger_count = 0 },
	-- 关开2
	{ config_id = 1002016, name = "SELECT_OPTION_2016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2016", action = "action_EVENT_SELECT_OPTION_2016", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 2017, gadget_id = 70330341, pos = { x = -138.602, y = 2.980, z = 83.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop }
	}
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2008, 2009, 2010, 2011 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_2007", "GADGET_STATE_CHANGE_2012", "SELECT_OPTION_2013", "SELECT_OPTION_2014", "SELECT_OPTION_2015", "SELECT_OPTION_2016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "success", 220151002) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2007(context, evt)
	-- 将本组内变量名为 "success1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "success1", 1, 220151005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220151002, EntityType.GADGET, 2011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 220151002 ；指定config：2004；物件身上指定option：493；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220151002, 2004, 493) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 220151002 ；指定config：2006；物件身上指定option：493；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220151002, 2006, 493) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 220151002 ；指定config：2004；物件身上指定option：492；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220151002, 2004, 492) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 0 ；指定config：2006；物件身上指定option：492；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 0, 2006, 492) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 2004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2012(context, evt)
	-- 检测config_id为2004的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 2004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220151002, 2004, {493}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220151002, 2006, {493}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2013(context, evt)
	-- 判断是gadgetid 2004 option_id 493
	if 2004 ~= evt.param1 then
		return false	
	end
	
	if 493 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2013(context, evt)
	-- 删除指定group： 220151002 ；指定config：2004；物件身上指定option：493；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220151002, 2004, 493) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220151002, 2004, {492}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 2004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2014(context, evt)
	-- 判断是gadgetid 2004 option_id 492
	if 2004 ~= evt.param1 then
		return false	
	end
	
	if 492 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2014(context, evt)
	-- 删除指定group： 220151002 ；指定config：2004；物件身上指定option：492；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220151002, 2004, 492) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220151002, 2004, {493}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 2004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2015(context, evt)
	-- 判断是gadgetid 2006 option_id 493
	if 2006 ~= evt.param1 then
		return false	
	end
	
	if 493 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2015(context, evt)
	-- 删除指定group： 220151002 ；指定config：2006；物件身上指定option：493；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220151002, 2006, 493) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220151002, 2006, {492}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 2006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2016(context, evt)
	-- 判断是gadgetid 2006 option_id 492
	if 2006 ~= evt.param1 then
		return false	
	end
	
	if 492 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2016(context, evt)
	-- 删除指定group： 220151002 ；指定config：2006；物件身上指定option：492；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220151002, 2006, 492) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220151002, 2006, {493}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 2006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/DesertRotObelisk_Auto"