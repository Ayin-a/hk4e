-- 基础信息
local base_info = {
	group_id = 240009002
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
	{ config_id = 2001, gadget_id = 70350003, pos = { x = -102.977, y = -12.400, z = 125.571 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70360002, pos = { x = -81.382, y = -15.397, z = 117.847 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 2004, gadget_id = 70220005, pos = { x = -89.615, y = -15.483, z = 100.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70220005, pos = { x = -92.909, y = -15.522, z = 102.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 70360019, pos = { x = -81.502, y = -15.396, z = 112.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, gadget_id = 70360016, pos = { x = -87.945, y = -15.483, z = 107.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2008, gadget_id = 70360016, pos = { x = -90.529, y = -15.536, z = 104.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2009, gadget_id = 70360016, pos = { x = -91.457, y = -15.483, z = 100.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2010, gadget_id = 70360020, pos = { x = -91.941, y = -15.530, z = 98.223 }, rot = { x = 1.947, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2019, gadget_id = 70220007, pos = { x = -91.560, y = -14.959, z = 100.974 }, rot = { x = 0.767, y = 9.116, z = 11.436 }, level = 1 },
	{ config_id = 2022, gadget_id = 70360019, pos = { x = -81.496, y = -15.280, z = 122.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2024, gadget_id = 70360016, pos = { x = -85.007, y = -15.500, z = 125.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2025, gadget_id = 70220013, pos = { x = -91.556, y = -7.948, z = 95.200 }, rot = { x = 0.000, y = 15.286, z = 0.000 }, level = 1 },
	{ config_id = 2027, gadget_id = 70220005, pos = { x = -92.092, y = -15.531, z = 103.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2028, gadget_id = 70220005, pos = { x = -90.262, y = -15.483, z = 100.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2029, gadget_id = 70220013, pos = { x = -81.385, y = -15.515, z = 129.880 }, rot = { x = 0.000, y = 17.408, z = 0.000 }, level = 1 },
	{ config_id = 2030, gadget_id = 70220013, pos = { x = -83.523, y = -15.572, z = 130.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2037, gadget_id = 70360016, pos = { x = -85.897, y = -12.427, z = 132.529 }, rot = { x = 273.545, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2039, gadget_id = 70360017, pos = { x = -85.468, y = -8.617, z = 132.292 }, rot = { x = 0.000, y = 88.992, z = 0.000 }, level = 1 },
	{ config_id = 2040, gadget_id = 70360020, pos = { x = -86.471, y = -8.183, z = 133.809 }, rot = { x = 0.780, y = 92.008, z = 88.434 }, level = 1 },
	{ config_id = 2041, gadget_id = 70220005, pos = { x = -89.139, y = -7.343, z = 133.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2042, gadget_id = 70220005, pos = { x = -87.434, y = -7.677, z = 132.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2043, gadget_id = 70220013, pos = { x = -93.298, y = -7.801, z = 96.799 }, rot = { x = 0.000, y = 40.960, z = 0.000 }, level = 1 },
	{ config_id = 2044, gadget_id = 70211001, pos = { x = -93.869, y = -7.986, z = 94.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2045, gadget_id = 70360016, pos = { x = -85.769, y = -15.569, z = 129.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2049, gadget_id = 70360016, pos = { x = -85.118, y = -15.484, z = 110.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002032, name = "GADGET_STATE_CHANGE_2032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2032", action = "action_EVENT_GADGET_STATE_CHANGE_2032" },
	{ config_id = 1002035, name = "GADGET_STATE_CHANGE_2035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2035", action = "action_EVENT_GADGET_STATE_CHANGE_2035" },
	{ config_id = 1002036, name = "VARIABLE_CHANGE_2036", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2036", action = "action_EVENT_VARIABLE_CHANGE_2036" },
	{ config_id = 1002038, name = "SELECT_OPTION_2038", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2038", action = "action_EVENT_SELECT_OPTION_2038" }
}

-- 变量
variables = {
	{ config_id = 1, name = "jgCount", value = 0, no_refresh = false }
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
		gadgets = { 2001, 2002, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2019, 2022, 2024, 2025, 2027, 2028, 2029, 2030, 2037, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2049 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2032", "GADGET_STATE_CHANGE_2035", "VARIABLE_CHANGE_2036", "SELECT_OPTION_2038" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2032(context, evt)
	if 2010 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2032(context, evt)
	-- 针对当前group内变量名为 "jgCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "jgCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2035(context, evt)
	if 2040 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2035(context, evt)
	-- 针对当前group内变量名为 "jgCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "jgCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"jgCount"为2
	if ScriptLib.GetGroupVariableValue(context, "jgCount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2036(context, evt)
	-- 将configid为 2002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240009002, 2002, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2038(context, evt)
	-- 判断是gadgetid 2002 option_id 1
	if 2002 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2038(context, evt)
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-102，-12，125），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-102, y=-12, z=125}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 删除指定group： 240009002 ；指定config：2002；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240009002, 2002, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end