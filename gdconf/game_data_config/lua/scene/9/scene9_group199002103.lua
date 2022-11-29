-- 基础信息
local base_info = {
	group_id = 199002103
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
	{ config_id = 103001, gadget_id = 70310175, pos = { x = 568.260, y = 186.916, z = -501.895 }, rot = { x = 0.000, y = 264.645, z = 0.000 }, level = 20, state = GadgetState.GearStop, is_use_point_array = true, area_id = 401 },
	{ config_id = 103002, gadget_id = 70220115, pos = { x = 571.668, y = 186.829, z = -500.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, area_id = 401 },
	{ config_id = 103003, gadget_id = 70211101, pos = { x = 572.072, y = 186.794, z = -502.405 }, rot = { x = 0.000, y = 0.000, z = 14.984 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	{ config_id = 103004, gadget_id = 70310310, pos = { x = 570.438, y = 186.758, z = -501.037 }, rot = { x = 7.517, y = 68.768, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 103005, gadget_id = 70310310, pos = { x = 568.841, y = 186.876, z = -501.657 }, rot = { x = 359.799, y = 68.768, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 103007, gadget_id = 70360001, pos = { x = 571.684, y = 187.171, z = -500.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 420 } }, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1103006, name = "SELECT_OPTION_103006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_103006", action = "action_EVENT_SELECT_OPTION_103006", trigger_count = 0 },
	{ config_id = 1103008, name = "PLATFORM_REACH_POINT_103008", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_103008", action = "action_EVENT_PLATFORM_REACH_POINT_103008", trigger_count = 0 },
	{ config_id = 1103009, name = "PLATFORM_REACH_POINT_103009", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_103009", action = "action_EVENT_PLATFORM_REACH_POINT_103009", trigger_count = 0 },
	{ config_id = 1103010, name = "PLATFORM_REACH_POINT_103010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_103010", action = "action_EVENT_PLATFORM_REACH_POINT_103010", trigger_count = 0 },
	{ config_id = 1103011, name = "GROUP_LOAD_103011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_103011", action = "action_EVENT_GROUP_LOAD_103011", trigger_count = 0 },
	{ config_id = 1103012, name = "GROUP_LOAD_103012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_103012", action = "action_EVENT_GROUP_LOAD_103012", trigger_count = 0 },
	{ config_id = 1103013, name = "SELECT_OPTION_103013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_103013", action = "action_EVENT_SELECT_OPTION_103013", trigger_count = 0 },
	{ config_id = 1103014, name = "SELECT_OPTION_103014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_103014", action = "action_EVENT_SELECT_OPTION_103014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "turnoff", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 103001, 103002, 103004, 103005, 103007 },
		regions = { },
		triggers = { "SELECT_OPTION_103006", "PLATFORM_REACH_POINT_103008", "PLATFORM_REACH_POINT_103009", "PLATFORM_REACH_POINT_103010", "GROUP_LOAD_103011", "GROUP_LOAD_103012", "SELECT_OPTION_103013", "SELECT_OPTION_103014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 103001, 103002, 103003, 103004, 103005 },
		regions = { },
		triggers = { "GROUP_LOAD_103011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_103006(context, evt)
	-- 判断是gadgetid 103007 option_id 420
	if 103007 ~= evt.param1 then
		return false	
	end
	
	if 420 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turnoff"为0
	if ScriptLib.GetGroupVariableValue(context, "turnoff") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_103006(context, evt)
	-- 针对当前group内变量名为 "turnoff" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turnoff", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 103002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 103002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 103001, 900200133, {1,2,3,4,5,6,7,8,9}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199002103, EntityType.GADGET, 103007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_103008(context, evt)
	-- 判断是gadgetid 为 103001的移动平台，是否到达了900200133 的点集中的 5 点
	
	if 103001 ~= evt.param1 then
	  return false
	end
	
	if 900200133 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_103008(context, evt)
	-- 将configid为 103002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 103002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_103009(context, evt)
	-- 判断是gadgetid 为 103001的移动平台，是否到达了900200133 的点集中的 9 点
	
	if 103001 ~= evt.param1 then
	  return false
	end
	
	if 900200133 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_103009(context, evt)
	-- 创建id为103007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 103007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_103010(context, evt)
	-- 判断是gadgetid 为 103001的移动平台，是否到达了900200133 的点集中的 9 点
	
	if 103001 ~= evt.param1 then
	  return false
	end
	
	if 900200133 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"turnoff"为3
	if ScriptLib.GetGroupVariableValue(context, "turnoff") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_103010(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199002103, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 调用提示id为 1111343 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111343) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199002103, EntityType.GADGET, 103007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_103011(context, evt)
	-- 判断变量"turnoff"为3
	if ScriptLib.GetGroupVariableValue(context, "turnoff") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_103011(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199002103, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 103002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 103002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_103012(context, evt)
	-- 判断变量"turnoff"小于3
	if ScriptLib.GetGroupVariableValue(context, "turnoff") >= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_103012(context, evt)
	-- 创建id为103007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 103007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 103002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 103002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_103013(context, evt)
	-- 判断是gadgetid 103007 option_id 420
	if 103007 ~= evt.param1 then
		return false	
	end
	
	if 420 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turnoff"为1
	if ScriptLib.GetGroupVariableValue(context, "turnoff") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_103013(context, evt)
	-- 针对当前group内变量名为 "turnoff" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turnoff", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 103002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 103002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 103001, 900200133, {1,2,3,4,5,6,7,8,9}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199002103, EntityType.GADGET, 103007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_103014(context, evt)
	-- 判断是gadgetid 103007 option_id 420
	if 103007 ~= evt.param1 then
		return false	
	end
	
	if 420 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turnoff"为2
	if ScriptLib.GetGroupVariableValue(context, "turnoff") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_103014(context, evt)
	-- 针对当前group内变量名为 "turnoff" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turnoff", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 103002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 103002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 103001, 900200133, {1,2,3,4,5,6,7,8,9}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199002103, EntityType.GADGET, 103007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end