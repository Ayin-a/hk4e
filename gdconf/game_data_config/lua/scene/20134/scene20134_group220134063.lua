-- 基础信息
local base_info = {
	group_id = 220134063
}

-- DEFS_MISCS
function SLC_Try_Trans_Player(context)
        ScriptLib.TransPlayerToPos(context, {uid_list = {ScriptLib.GetSceneOwnerUid(context)}, pos = {x=335, y= 666, z=-1496}, radius = 1, rot = {x=0,y=180,z=0}, is_skip_ui=false})
        return 0
end

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
	{ config_id = 63001, gadget_id = 70380328, pos = { x = 329.721, y = 631.281, z = -1492.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 63002, gadget_id = 70310388, pos = { x = 335.174, y = 631.907, z = -1496.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	-- 高度1
	{ config_id = 63003, gadget_id = 70360001, pos = { x = 335.174, y = 633.490, z = -1496.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 416 } } },
	-- 高度2
	{ config_id = 63005, gadget_id = 70360001, pos = { x = 335.174, y = 651.027, z = -1496.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 高度3
	{ config_id = 63006, gadget_id = 70360001, pos = { x = 335.174, y = 665.583, z = -1496.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 63010, gadget_id = 70290428, pos = { x = 359.382, y = 633.992, z = -1508.369 }, rot = { x = 0.000, y = 294.254, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 63013, shape = RegionShape.CUBIC, size = { x = 100.000, y = 10.000, z = 100.000 }, pos = { x = 334.181, y = 632.052, z = -1495.903 }, team_ability_group_list = { "MonaDreamland_Enter_TransPlayer_Handle_1" } }
}

-- 触发器
triggers = {
	-- 高度1向上
	{ config_id = 1063004, name = "SELECT_OPTION_63004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_63004", action = "action_EVENT_SELECT_OPTION_63004", trigger_count = 0 },
	-- 高度2向上
	{ config_id = 1063007, name = "SELECT_OPTION_63007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_63007", action = "action_EVENT_SELECT_OPTION_63007", trigger_count = 0, forbid_guest = false },
	-- 高度2向下
	{ config_id = 1063008, name = "SELECT_OPTION_63008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_63008", action = "action_EVENT_SELECT_OPTION_63008", trigger_count = 0 },
	-- 高度3向下
	{ config_id = 1063009, name = "SELECT_OPTION_63009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_63009", action = "action_EVENT_SELECT_OPTION_63009", trigger_count = 0 },
	{ config_id = 1063011, name = "PLATFORM_REACH_POINT_63011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_63011", action = "action_EVENT_PLATFORM_REACH_POINT_63011", trigger_count = 0 },
	-- 高度1向上 清楚星空桥
	{ config_id = 1063012, name = "SELECT_OPTION_63012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_63012", action = "action_EVENT_SELECT_OPTION_63012", trigger_count = 0 },
	{ config_id = 1063014, name = "PLATFORM_REACH_POINT_63014", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_63014", action = "action_EVENT_PLATFORM_REACH_POINT_63014", trigger_count = 0 },
	{ config_id = 1063015, name = "GROUP_LOAD_63015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_63015", trigger_count = 0 }
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
		gadgets = { 63001 },
		regions = { },
		triggers = { "SELECT_OPTION_63004", "SELECT_OPTION_63007", "SELECT_OPTION_63008", "SELECT_OPTION_63009", "PLATFORM_REACH_POINT_63011", "SELECT_OPTION_63012", "PLATFORM_REACH_POINT_63014", "GROUP_LOAD_63015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 63001, 63002, 63003, 63005, 63006 },
		regions = { },
		triggers = { "SELECT_OPTION_63004", "SELECT_OPTION_63007", "SELECT_OPTION_63008", "SELECT_OPTION_63009", "PLATFORM_REACH_POINT_63011", "SELECT_OPTION_63012", "PLATFORM_REACH_POINT_63014", "GROUP_LOAD_63015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 63013 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_63004(context, evt)
	-- 判断是gadgetid 63003 option_id 416
	if 63003 ~= evt.param1 then
		return false	
	end
	
	if 416 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_63004(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 63001, 107, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 63002, 63, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除指定group： 220134063 ；指定config：63003；物件身上指定option：416；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220134063, 63003, 416) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220134063, 63005, {416,410}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 创建id为63010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 63010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（335.174，631.9067，-1496.881），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=335.174, y=631.9067, z=-1496.881}
	  local pos_follow = {x=2, y=-2, z=-16}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_63007(context, evt)
	-- 判断是gadgetid 63005 option_id 416
	if 63005 ~= evt.param1 then
		return false	
	end
	
	if 416 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_63007(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 63001, 107, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 63002, 63, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除指定group： 220134063 ；指定config：63005；物件身上指定option：416；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220134063, 63005, 416) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 220134063 ；指定config：63005；物件身上指定option：410；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220134063, 63005, 410) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220134063, 63006, {410}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（329.7214，631.2805，-1492.386），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=329.7214, y=631.2805, z=-1492.386}
	  local pos_follow = {x=2, y=-2, z=-16}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_63008(context, evt)
	-- 判断是gadgetid 63005 option_id 410
	if 63005 ~= evt.param1 then
		return false	
	end
	
	if 410 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_63008(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 63001, 107, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 63002, 63, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220134063, 3)
	
	-- 删除指定group： 220134063 ；指定config：63005；物件身上指定option：416；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220134063, 63005, 416) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 220134063 ；指定config：63005；物件身上指定option：410；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220134063, 63005, 410) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220134063, 63003, {416}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（329.7214，631.2805，-1492.386），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=329.7214, y=631.2805, z=-1492.386}
	  local pos_follow = {x=2, y=-2, z=-16}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_63009(context, evt)
	-- 判断是gadgetid 63006 option_id 410
	if 63006 ~= evt.param1 then
		return false	
	end
	
	if 410 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_63009(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 63001, 107, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 63002, 63, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除指定group： 220134063 ；指定config：63006；物件身上指定option：410；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220134063, 63006, 410) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220134063, 63005, {416,410}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（329.7214，631.2805，-1492.386），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=329.7214, y=631.2805, z=-1492.386}
	  local pos_follow = {x=2, y=-2, z=-16}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_63011(context, evt)
	-- 判断是gadgetid 为 63001的移动平台，是否到达了107 的点集中的 1 点
	
	if 63001 ~= evt.param1 then
	  return false
	end
	
	if 107 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_63011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220134063, EntityType.GADGET, 63010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_63012(context, evt)
	-- 判断是gadgetid 63003 option_id 416
	if 63003 ~= evt.param1 then
		return false	
	end
	
	if 416 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_63012(context, evt)
	-- 改变指定group组220134041中， configid为41001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134041, 41001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220134041中， configid为41002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134041, 41002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220134041中， configid为41003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134041, 41003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220134041中， configid为41004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134041, 41004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220134041中， configid为41005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134041, 41005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220134041中， configid为41006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134041, 41006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220134041中， configid为41007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134041, 41007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220134041中， configid为41008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134041, 41008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220134041中， configid为41009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220134041, 41009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_63014(context, evt)
	-- 判断是gadgetid 为 63001的移动平台，是否到达了107 的点集中的 2 点
	
	if 63001 ~= evt.param1 then
	  return false
	end
	
	if 107 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_63014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220134063, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_63015(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220134063, 3)
	
	return 0
end