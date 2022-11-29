-- 基础信息
local base_info = {
	group_id = 220134014
}

-- DEFS_MISCS
function SLC_Try_Trans_Player(context)
        ScriptLib.TransPlayerToPos(context, {uid_list = {ScriptLib.GetSceneOwnerUid(context)}, pos = {x=395, y= 638, z=-1524}, radius = 1, rot = {x=0,y=180,z=0}, is_skip_ui=false})
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
	[14001] = { config_id = 14001, gadget_id = 70310405, pos = { x = 359.266, y = 692.635, z = -1567.969 }, rot = { x = 0.000, y = 200.623, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[14002] = { config_id = 14002, gadget_id = 70310406, pos = { x = 406.187, y = 682.889, z = -1464.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[14003] = { config_id = 14003, gadget_id = 70310407, pos = { x = 443.857, y = 722.710, z = -1548.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[14004] = { config_id = 14004, gadget_id = 70360002, pos = { x = 401.905, y = 612.587, z = -1528.624 }, rot = { x = 0.000, y = 112.634, z = 0.000 }, level = 1, worktop_config = { init_options = { 413 } } },
	[14010] = { config_id = 14010, gadget_id = 70310388, pos = { x = 395.000, y = 612.601, z = -1524.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[14011] = { config_id = 14011, gadget_id = 70310389, pos = { x = 393.703, y = 699.706, z = -1525.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[14012] = { config_id = 14012, gadget_id = 70380328, pos = { x = 395.661, y = 610.957, z = -1524.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[14013] = { config_id = 14013, gadget_id = 70290428, pos = { x = 427.395, y = 611.515, z = -1537.074 }, rot = { x = 0.000, y = 294.254, z = 0.000 }, level = 1 },
	-- 下
	[14016] = { config_id = 14016, gadget_id = 70360001, pos = { x = 395.000, y = 612.601, z = -1524.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 416 } } },
	-- 上
	[14019] = { config_id = 14019, gadget_id = 70360001, pos = { x = 395.000, y = 637.799, z = -1524.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 410 } } },
	[14020] = { config_id = 14020, gadget_id = 70290428, pos = { x = 359.382, y = 633.992, z = -1508.369 }, rot = { x = 0.000, y = 294.254, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[14009] = { config_id = 14009, shape = RegionShape.SPHERE, radius = 10, pos = { x = 401.816, y = 612.601, z = -1528.525 }, ability_group_list = { "RegionAbility_Dreamland_MonaCamera" } },
	[14026] = { config_id = 14026, shape = RegionShape.CUBIC, size = { x = 100.000, y = 10.000, z = 100.000 }, pos = { x = 396.610, y = 612.747, z = -1523.321 }, team_ability_group_list = { "MonaDreamland_Enter_TransPlayer_Handle_2" } }
}

-- 触发器
triggers = {
	{ config_id = 1014005, name = "SELECT_OPTION_14005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14005", action = "action_EVENT_SELECT_OPTION_14005", trigger_count = 0 },
	{ config_id = 1014006, name = "SELECT_OPTION_14006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14006", action = "action_EVENT_SELECT_OPTION_14006", trigger_count = 0 },
	{ config_id = 1014007, name = "SELECT_OPTION_14007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14007", action = "action_EVENT_SELECT_OPTION_14007", trigger_count = 0 },
	{ config_id = 1014008, name = "VARIABLE_CHANGE_14008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_14008", action = "action_EVENT_VARIABLE_CHANGE_14008", trigger_count = 0 },
	{ config_id = 1014014, name = "PLATFORM_REACH_POINT_14014", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_14014", action = "action_EVENT_PLATFORM_REACH_POINT_14014", trigger_count = 0 },
	{ config_id = 1014015, name = "PLATFORM_REACH_POINT_14015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_14015", action = "action_EVENT_PLATFORM_REACH_POINT_14015", trigger_count = 0 },
	-- 选上升
	{ config_id = 1014017, name = "SELECT_OPTION_14017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14017", action = "action_EVENT_SELECT_OPTION_14017", trigger_count = 0 },
	-- 选下降
	{ config_id = 1014018, name = "SELECT_OPTION_14018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14018", action = "action_EVENT_SELECT_OPTION_14018", trigger_count = 0 },
	{ config_id = 1014021, name = "PLATFORM_REACH_POINT_14021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_14021", action = "action_EVENT_PLATFORM_REACH_POINT_14021", trigger_count = 0 },
	-- 非选择销毁
	{ config_id = 1014022, name = "PLATFORM_REACH_POINT_14022", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_14022", action = "action_EVENT_PLATFORM_REACH_POINT_14022", trigger_count = 0 },
	-- 非选择销毁
	{ config_id = 1014023, name = "PLATFORM_REACH_POINT_14023", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_14023", action = "action_EVENT_PLATFORM_REACH_POINT_14023", trigger_count = 0 },
	-- 非选择销毁
	{ config_id = 1014024, name = "PLATFORM_REACH_POINT_14024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_14024", action = "action_EVENT_PLATFORM_REACH_POINT_14024", trigger_count = 0 },
	{ config_id = 1014025, name = "SELECT_OPTION_14025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14025", action = "action_EVENT_SELECT_OPTION_14025", trigger_count = 0 },
	{ config_id = 1014027, name = "PLATFORM_REACH_POINT_14027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_14027", action = "action_EVENT_PLATFORM_REACH_POINT_14027", trigger_count = 0 },
	{ config_id = 1014028, name = "GROUP_LOAD_14028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_14028", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 2, no_refresh = true },
	{ config_id = 2, name = "finish", value = 0, no_refresh = true },
	{ config_id = 3, name = "camera", value = 0, no_refresh = true }
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
		gadgets = { 14004, 14011 },
		regions = { },
		triggers = { "SELECT_OPTION_14005", "SELECT_OPTION_14006", "SELECT_OPTION_14007", "VARIABLE_CHANGE_14008", "PLATFORM_REACH_POINT_14014", "PLATFORM_REACH_POINT_14015", "SELECT_OPTION_14017", "SELECT_OPTION_14018", "PLATFORM_REACH_POINT_14021", "PLATFORM_REACH_POINT_14022", "PLATFORM_REACH_POINT_14023", "PLATFORM_REACH_POINT_14024", "SELECT_OPTION_14025", "PLATFORM_REACH_POINT_14027", "GROUP_LOAD_14028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 14010, 14012, 14016, 14019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 14026 },
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
function condition_EVENT_SELECT_OPTION_14005(context, evt)
	-- 判断是gadgetid 14004 option_id 413
	if 14004 ~= evt.param1 then
		return false	
	end
	
	if 413 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14005(context, evt)
	ScriptLib.CreateGadget(context, { config_id = 14001 }) 
	
	local tempParam = {route_type = 0, turn_mode = false}
	ScriptLib.SetPlatformPointArray(context, 14001, 64, {2}, tempParam) 
	
	
	local tempParam = {route_type = 0, turn_mode = false}
	ScriptLib.SetPlatformPointArray(context, 14002, 66, {1}, tempParam) 
	
	
	local tempParam = {route_type = 0, turn_mode = false}
	ScriptLib.SetPlatformPointArray(context, 14003, 65, {2}, tempParam) 
	ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 220134014)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14006(context, evt)
	-- 判断是gadgetid 14004 option_id 413
	if 14004 ~= evt.param1 then
		return false	
	end
	
	if 413 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14006(context, evt)
	 ScriptLib.CreateGadget(context, { config_id = 14002 })
	
	
	local tempParam = {route_type = 0, turn_mode = false}
	ScriptLib.SetPlatformPointArray(context, 14001, 64, {1}, tempParam) 
	
	
	local tempParam = {route_type = 0, turn_mode = false}
	ScriptLib.SetPlatformPointArray(context, 14002, 66, {3}, tempParam) 
	
	
	local tempParam = {route_type = 0, turn_mode = false}
	 ScriptLib.SetPlatformPointArray(context, 14003, 65, {2}, tempParam) 
	
	ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 220134014)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14007(context, evt)
	-- 判断是gadgetid 14004 option_id 413
	if 14004 ~= evt.param1 then
		return false	
	end
	
	if 413 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14007(context, evt)
	 ScriptLib.CreateGadget(context, { config_id = 14003 })
	
	
	local tempParam = {route_type = 0, turn_mode = false}
	 ScriptLib.SetPlatformPointArray(context, 14001, 64, {1}, tempParam) 
	
	
	local tempParam = {route_type = 0, turn_mode = false}
	 ScriptLib.SetPlatformPointArray(context, 14002, 66, {1}, tempParam) 
	
	
	local tempParam = {route_type = 0, turn_mode = false}
	 ScriptLib.SetPlatformPointArray(context, 14003, 65, {1}, tempParam) 
	
	ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 220134014) 
	
		
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_14008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") <4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_14008(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_14014(context, evt)
	-- 判断是gadgetid 为 14002的移动平台，是否到达了66 的点集中的 3 点
	
	if 14002 ~= evt.param1 then
	  return false
	end
	
	if 66 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_14014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220134014, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_14015(context, evt)
	-- 判断是gadgetid 为 14002的移动平台，是否到达了66 的点集中的 3 点
	
	if 14002 ~= evt.param1 then
	  return false
	end
	
	if 66 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 or 2 ~= evt.param3  then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_14015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220134014, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14017(context, evt)
	-- 判断是gadgetid 14016 option_id 416
	if 14016 ~= evt.param1 then
		return false	
	end
	
	if 416 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14017(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 14012, 106, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 创建id为14013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 14013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为14020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 14020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（393.7027，699.7061，-1525.28），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=393.7027, y=699.7061, z=-1525.28}
	  local pos_follow = {x=2, y=-2, z=16}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14018(context, evt)
	-- 判断是gadgetid 14019 option_id 410
	if 14019 ~= evt.param1 then
		return false	
	end
	
	if 410 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14018(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 14010, 106, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 14012, 106, {1,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220134014, 3)
	
	-- 触发镜头注目，注目位置为坐标（393.7027，699.7061，-1525.28），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=393.7027, y=699.7061, z=-1525.28}
	  local pos_follow = {x=2, y=-2, z=16}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220134014, EntityType.GADGET, 14013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220134014, EntityType.GADGET, 14020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_14021(context, evt)
	-- 判断是gadgetid 为 14012的移动平台，是否到达了106 的点集中的 4 点
	
	if 14012 ~= evt.param1 then
	  return false
	end
	
	if 106 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_14021(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 14010, 106, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 14012, 106, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_14022(context, evt)
	-- 判断是gadgetid 为 14001的移动平台，是否到达了64 的点集中的 1 点
	
	if 14001 ~= evt.param1 then
	  return false
	end
	
	if 64 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_14022(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220134014, EntityType.GADGET, 14001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_14023(context, evt)
	-- 判断是gadgetid 为 14002的移动平台，是否到达了66 的点集中的 1 点
	
	if 14002 ~= evt.param1 then
	  return false
	end
	
	if 66 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_14023(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220134014, EntityType.GADGET, 14002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_14024(context, evt)
	-- 判断是gadgetid 为 14003的移动平台，是否到达了65 的点集中的 2 点
	
	if 14003 ~= evt.param1 then
	  return false
	end
	
	if 65 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_14024(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220134014, EntityType.GADGET, 14003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14025(context, evt)
	-- 判断是gadgetid 14004 option_id 413
	if 14004 ~= evt.param1 then
		return false	
	end
	
	if 413 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"camera"为0
	if ScriptLib.GetGroupVariableValue(context, "camera") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14025(context, evt)
	-- 触发镜头注目，注目位置为坐标（393，699，-1525），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=393, y=699, z=-1525}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "camera", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_14027(context, evt)
	-- 判断是gadgetid 为 14012的移动平台，是否到达了106 的点集中的 2 点
	
	if 14012 ~= evt.param1 then
	  return false
	end
	
	if 106 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_14027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220134014, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_14028(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220134014, 3)
	
	return 0
end