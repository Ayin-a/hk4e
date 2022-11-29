-- 基础信息
local base_info = {
	group_id = 220121002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2023, monster_id = 20011201, pos = { x = -79.811, y = -249.566, z = -27.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 2024, monster_id = 20011201, pos = { x = -84.961, y = -249.576, z = -26.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 2025, monster_id = 20011201, pos = { x = -81.558, y = -250.257, z = -21.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 2027, monster_id = 21011201, pos = { x = 5.148, y = -256.882, z = -18.710 }, rot = { x = 0.000, y = 175.657, z = 0.000 }, level = 1, pose_id = 9013 },
	{ config_id = 2028, monster_id = 21010501, pos = { x = 17.031, y = -254.876, z = -17.025 }, rot = { x = 0.000, y = 271.509, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 2029, monster_id = 21011201, pos = { x = 11.315, y = -256.878, z = -19.285 }, rot = { x = 0.000, y = 293.991, z = 0.000 }, level = 1, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70330019, pos = { x = 5.266, y = -256.883, z = -20.486 }, rot = { x = 0.000, y = 26.075, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2002, gadget_id = 70330019, pos = { x = -6.520, y = -243.035, z = -57.530 }, rot = { x = 0.000, y = 76.540, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2003, gadget_id = 70330019, pos = { x = -89.477, y = -258.909, z = -22.329 }, rot = { x = 0.000, y = 359.169, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2004, gadget_id = 70330021, pos = { x = 18.282, y = -253.795, z = -20.739 }, rot = { x = 27.541, y = 185.172, z = 320.234 }, level = 1, persistent = true },
	{ config_id = 2005, gadget_id = 70330021, pos = { x = -3.348, y = -242.812, z = -53.623 }, rot = { x = 0.000, y = 146.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2006, gadget_id = 70330021, pos = { x = -80.398, y = -256.224, z = -36.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2011, gadget_id = 70900201, pos = { x = 5.288, y = -254.784, z = -20.505 }, rot = { x = 0.000, y = 3.532, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2012, gadget_id = 70900201, pos = { x = -6.513, y = -240.862, z = -57.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2013, gadget_id = 70900201, pos = { x = -89.349, y = -256.746, z = -22.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2014, gadget_id = 70690011, pos = { x = 3.514, y = -259.570, z = -29.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2015, gadget_id = 70310013, pos = { x = -17.161, y = -243.867, z = -55.828 }, rot = { x = 0.000, y = 351.963, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70310013, pos = { x = -23.052, y = -243.867, z = -57.219 }, rot = { x = 0.000, y = 346.715, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2018, gadget_id = 70690011, pos = { x = -56.294, y = -259.570, z = -65.725 }, rot = { x = 0.000, y = 332.326, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2019, gadget_id = 70310013, pos = { x = -29.101, y = -243.867, z = -58.648 }, rot = { x = 0.000, y = 346.715, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2020, gadget_id = 70211101, pos = { x = -65.637, y = -235.743, z = -68.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, autopick = true },
	{ config_id = 2021, gadget_id = 70690011, pos = { x = -35.947, y = -259.570, z = -61.005 }, rot = { x = 0.000, y = 347.043, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2026, gadget_id = 70900201, pos = { x = -35.531, y = -256.831, z = -30.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	{ config_id = 2016, shape = RegionShape.SPHERE, radius = 2.4, pos = { x = -17.002, y = -243.244, z = -55.967 } },
	{ config_id = 2022, shape = RegionShape.SPHERE, radius = 10, pos = { x = -81.926, y = -259.590, z = -22.366 } },
	{ config_id = 2034, shape = RegionShape.SPHERE, radius = 2.4, pos = { x = -22.972, y = -243.244, z = -57.416 } }
}

-- 触发器
triggers = {
	{ config_id = 1002007, name = "GADGET_STATE_CHANGE_2007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2007", action = "action_EVENT_GADGET_STATE_CHANGE_2007", trigger_count = 0 },
	{ config_id = 1002008, name = "GADGET_STATE_CHANGE_2008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2008", action = "action_EVENT_GADGET_STATE_CHANGE_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "GADGET_STATE_CHANGE_2009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2009", action = "action_EVENT_GADGET_STATE_CHANGE_2009", trigger_count = 0 },
	{ config_id = 1002010, name = "VARIABLE_CHANGE_2010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2010", action = "action_EVENT_VARIABLE_CHANGE_2010" },
	{ config_id = 1002016, name = "ENTER_REGION_2016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2016", action = "action_EVENT_ENTER_REGION_2016" },
	{ config_id = 1002022, name = "ENTER_REGION_2022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2022", action = "action_EVENT_ENTER_REGION_2022" },
	{ config_id = 1002030, name = "GADGET_STATE_CHANGE_2030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2030", action = "action_EVENT_GADGET_STATE_CHANGE_2030" },
	{ config_id = 1002034, name = "ENTER_REGION_2034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2034", action = "action_EVENT_ENTER_REGION_2034" }
}

-- 变量
variables = {
	{ config_id = 1, name = "box1", value = 0, no_refresh = false },
	{ config_id = 2, name = "box2", value = 0, no_refresh = false },
	{ config_id = 3, name = "box3", value = 0, no_refresh = false }
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
		monsters = { 2027, 2028, 2029 },
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2011, 2012, 2013, 2020 },
		regions = { 2022 },
		triggers = { "GADGET_STATE_CHANGE_2007", "GADGET_STATE_CHANGE_2008", "GADGET_STATE_CHANGE_2009", "VARIABLE_CHANGE_2010", "ENTER_REGION_2022", "GADGET_STATE_CHANGE_2030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2015 },
		regions = { 2016 },
		triggers = { "ENTER_REGION_2016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2017 },
		regions = { 2034 },
		triggers = { "ENTER_REGION_2034" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 2018, 2019, 2021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 岩片小怪,
		monsters = { 2023, 2024, 2025 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_2007(context, evt)
	if 2001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2007(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-5.6, y=-243, z=-49.2}，持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-5.6, y=-243, z=-49.2}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "box1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "box1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为2014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220121002, EntityType.GADGET, 2011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2008(context, evt)
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2008(context, evt)
	-- 将本组内变量名为 "box2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "box2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220121002, EntityType.GADGET, 2012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121002, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2009(context, evt)
	if 2003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2009(context, evt)
	-- 将本组内变量名为 "box3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "box3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220121002, EntityType.GADGET, 2013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"box1"为1
	if ScriptLib.GetGroupVariableValue(context, "box1") ~= 1 then
			return false
	end
	
	-- 判断变量"box2"为1
	if ScriptLib.GetGroupVariableValue(context, "box2") ~= 1 then
			return false
	end
	
	-- 判断变量"box3"为1
	if ScriptLib.GetGroupVariableValue(context, "box3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2010(context, evt)
	-- 改变指定group组220121006中， configid为6010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220121006, 6010, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201210021") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为2026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-35.53051, y=-256.1645, z=-30.99733}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-35.53051, y=-256.1645, z=-30.99733}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2016(context, evt)
	if evt.param1 ~= 2016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2022(context, evt)
	if evt.param1 ~= 2022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2022(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2030(context, evt)
	if 2020 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2030(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220121002, EntityType.GADGET, 2018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220121002, EntityType.GADGET, 2021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2034(context, evt)
	if evt.param1 ~= 2034 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2034(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121002, 4)
	
	return 0
end