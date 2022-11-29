-- 基础信息
local base_info = {
	group_id = 177002002
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
	{ config_id = 2001, gadget_id = 70330202, pos = { x = 1302.904, y = 232.917, z = 699.075 }, rot = { x = 0.000, y = 348.942, z = 0.000 }, level = 1, persistent = true, interact_id = 97, area_id = 210 },
	{ config_id = 2002, gadget_id = 70330202, pos = { x = 1305.719, y = 233.976, z = 686.490 }, rot = { x = 0.000, y = 348.942, z = 0.000 }, level = 1, persistent = true, interact_id = 98, area_id = 210 },
	{ config_id = 2003, gadget_id = 70330202, pos = { x = 1315.867, y = 234.263, z = 684.278 }, rot = { x = 0.000, y = 348.942, z = 0.000 }, level = 1, persistent = true, interact_id = 99, area_id = 210 },
	{ config_id = 2004, gadget_id = 70330154, pos = { x = 1360.750, y = 263.495, z = 701.550 }, rot = { x = 0.000, y = 356.055, z = 0.000 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 2005, gadget_id = 70330165, pos = { x = 1320.993, y = 232.303, z = 702.099 }, rot = { x = 0.000, y = 243.291, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 2006, gadget_id = 70330149, pos = { x = 1360.746, y = 241.477, z = 701.542 }, rot = { x = 0.000, y = 80.300, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, area_id = 210 },
	{ config_id = 2007, gadget_id = 70330180, pos = { x = 1360.746, y = 241.477, z = 701.543 }, rot = { x = 0.000, y = 80.300, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, area_id = 210 },
	{ config_id = 2008, gadget_id = 70330183, pos = { x = 1360.746, y = 241.477, z = 701.542 }, rot = { x = 0.000, y = 170.300, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, area_id = 210 },
	{ config_id = 2009, gadget_id = 70330159, pos = { x = 1302.904, y = 232.917, z = 699.075 }, rot = { x = 0.000, y = 80.940, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, area_id = 210 },
	{ config_id = 2010, gadget_id = 70330159, pos = { x = 1305.719, y = 233.976, z = 686.490 }, rot = { x = 0.000, y = 80.940, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, area_id = 210 },
	{ config_id = 2011, gadget_id = 70330159, pos = { x = 1315.867, y = 234.263, z = 684.278 }, rot = { x = 0.000, y = 80.940, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, area_id = 210 },
	{ config_id = 2028, gadget_id = 70330163, pos = { x = 1302.904, y = 232.900, z = 699.075 }, rot = { x = 0.000, y = 348.680, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 2029, gadget_id = 70330163, pos = { x = 1305.719, y = 233.976, z = 686.490 }, rot = { x = 0.000, y = 348.956, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 2030, gadget_id = 70330163, pos = { x = 1315.867, y = 234.263, z = 684.278 }, rot = { x = 0.000, y = 348.942, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 2031, gadget_id = 70330173, pos = { x = 1360.750, y = 241.452, z = 701.549 }, rot = { x = 0.000, y = 260.367, z = 0.000 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 2033, gadget_id = 70330186, pos = { x = 1360.750, y = 241.416, z = 701.549 }, rot = { x = 0.000, y = 260.367, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 2042, gadget_id = 70330190, pos = { x = 1303.710, y = 234.810, z = 699.075 }, rot = { x = 314.598, y = 99.538, z = 138.374 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 2043, gadget_id = 70330190, pos = { x = 1307.053, y = 235.751, z = 686.708 }, rot = { x = 324.819, y = 79.903, z = 130.775 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 2044, gadget_id = 70330190, pos = { x = 1316.637, y = 236.052, z = 684.691 }, rot = { x = 348.584, y = 69.458, z = 120.163 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 2045, gadget_id = 70330191, pos = { x = 1336.470, y = 278.300, z = 692.470 }, rot = { x = 72.685, y = 355.600, z = 111.640 }, level = 36, area_id = 210 },
	{ config_id = 2047, gadget_id = 70330201, pos = { x = 1357.540, y = 256.802, z = 713.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 2048, gadget_id = 70330201, pos = { x = 1362.244, y = 254.502, z = 689.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	-- 密码本提示
	{ config_id = 2014, shape = RegionShape.SPHERE, radius = 6.4, pos = { x = 1317.671, y = 232.365, z = 698.456 }, area_id = 210 },
	{ config_id = 2046, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1360.620, y = 268.328, z = 701.697 }, area_id = 210 }
}

-- 触发器
triggers = {
	-- 合并对齐成功
	{ config_id = 1002012, name = "VARIABLE_CHANGE_2012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2012", action = "action_EVENT_VARIABLE_CHANGE_2012", trigger_count = 0 },
	-- 黑云关闭
	{ config_id = 1002013, name = "GADGET_STATE_CHANGE_2013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2013", action = "action_EVENT_GADGET_STATE_CHANGE_2013", trigger_count = 0 },
	-- 密码本提示
	{ config_id = 1002014, name = "ENTER_REGION_2014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2014", action = "action_EVENT_ENTER_REGION_2014", trigger_count = 0 },
	-- 延迟卸载塔
	{ config_id = 1002015, name = "TIMER_EVENT_2015", event = EventType.EVENT_TIMER_EVENT, source = "towerDelay", condition = "", action = "action_EVENT_TIMER_EVENT_2015", trigger_count = 0 },
	-- 供奉完成1
	{ config_id = 1002016, name = "GADGET_STATE_CHANGE_2016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2016", action = "action_EVENT_GADGET_STATE_CHANGE_2016", trigger_count = 0 },
	-- 供奉完成2
	{ config_id = 1002017, name = "GADGET_STATE_CHANGE_2017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2017", action = "action_EVENT_GADGET_STATE_CHANGE_2017", trigger_count = 0 },
	-- 供奉完成3
	{ config_id = 1002018, name = "GADGET_STATE_CHANGE_2018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2018", action = "action_EVENT_GADGET_STATE_CHANGE_2018", trigger_count = 0 },
	-- 旋转互动，改变变量1
	{ config_id = 1002019, name = "SELECT_OPTION_2019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2019", action = "action_EVENT_SELECT_OPTION_2019", trigger_count = 0 },
	-- 旋转互动，改变变量2
	{ config_id = 1002020, name = "SELECT_OPTION_2020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2020", action = "action_EVENT_SELECT_OPTION_2020", trigger_count = 0 },
	-- 旋转互动，改变变量3
	{ config_id = 1002021, name = "SELECT_OPTION_2021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2021", action = "action_EVENT_SELECT_OPTION_2021", trigger_count = 0 },
	-- 还原互动1
	{ config_id = 1002022, name = "TIMER_EVENT_2022", event = EventType.EVENT_TIMER_EVENT, source = "rotationtime1", condition = "", action = "action_EVENT_TIMER_EVENT_2022", trigger_count = 0 },
	-- 还原互动2
	{ config_id = 1002023, name = "TIMER_EVENT_2023", event = EventType.EVENT_TIMER_EVENT, source = "rotationtime2", condition = "", action = "action_EVENT_TIMER_EVENT_2023", trigger_count = 0 },
	-- 还原互动3
	{ config_id = 1002024, name = "TIMER_EVENT_2024", event = EventType.EVENT_TIMER_EVENT, source = "rotationtime3", condition = "", action = "action_EVENT_TIMER_EVENT_2024", trigger_count = 0 },
	-- 旋转1
	{ config_id = 1002025, name = "VARIABLE_CHANGE_2025", event = EventType.EVENT_VARIABLE_CHANGE, source = "state1", condition = "", action = "action_EVENT_VARIABLE_CHANGE_2025", trigger_count = 0 },
	-- 旋转2
	{ config_id = 1002026, name = "VARIABLE_CHANGE_2026", event = EventType.EVENT_VARIABLE_CHANGE, source = "state2", condition = "", action = "action_EVENT_VARIABLE_CHANGE_2026", trigger_count = 0 },
	-- 旋转3
	{ config_id = 1002027, name = "VARIABLE_CHANGE_2027", event = EventType.EVENT_VARIABLE_CHANGE, source = "state3", condition = "", action = "action_EVENT_VARIABLE_CHANGE_2027", trigger_count = 0 },
	-- 供奉提示
	{ config_id = 1002032, name = "VARIABLE_CHANGE_2032", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2032", action = "action_EVENT_VARIABLE_CHANGE_2032" },
	-- 旋转互动，改变变量1
	{ config_id = 1002034, name = "SELECT_OPTION_2034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2034", action = "action_EVENT_SELECT_OPTION_2034" },
	-- 旋转互动，改变变量2
	{ config_id = 1002035, name = "SELECT_OPTION_2035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2035", action = "action_EVENT_SELECT_OPTION_2035" },
	-- 旋转互动，改变变量3
	{ config_id = 1002036, name = "SELECT_OPTION_2036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2036", action = "action_EVENT_SELECT_OPTION_2036" },
	{ config_id = 1002037, name = "GROUP_LOAD_2037", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2037", trigger_count = 0 },
	{ config_id = 1002038, name = "QUEST_START_2038", event = EventType.EVENT_QUEST_START, source = "4004801", condition = "", action = "action_EVENT_QUEST_START_2038", trigger_count = 0 },
	{ config_id = 1002039, name = "QUEST_START_2039", event = EventType.EVENT_QUEST_START, source = "4004802", condition = "condition_EVENT_QUEST_START_2039", action = "action_EVENT_QUEST_START_2039", trigger_count = 0 },
	{ config_id = 1002040, name = "QUEST_START_2040", event = EventType.EVENT_QUEST_START, source = "4004803", condition = "condition_EVENT_QUEST_START_2040", action = "action_EVENT_QUEST_START_2040", trigger_count = 0 },
	{ config_id = 1002041, name = "QUEST_START_2041", event = EventType.EVENT_QUEST_START, source = "4004814", condition = "condition_EVENT_QUEST_START_2041", action = "action_EVENT_QUEST_START_2041", trigger_count = 0 },
	{ config_id = 1002046, name = "ENTER_REGION_2046", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2046", action = "action_EVENT_ENTER_REGION_2046", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true },
	{ config_id = 2, name = "state1", value = 1, no_refresh = true },
	{ config_id = 3, name = "state2", value = 1, no_refresh = true },
	{ config_id = 4, name = "state3", value = 1, no_refresh = true },
	{ config_id = 5, name = "off_count", value = 0, no_refresh = true }
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
		gadgets = { 2001, 2002, 2003, 2005, 2009, 2010, 2011, 2028, 2029, 2030, 2042, 2043, 2044, 2047, 2048 },
		regions = { 2014, 2046 },
		triggers = { "VARIABLE_CHANGE_2012", "GADGET_STATE_CHANGE_2013", "ENTER_REGION_2014", "TIMER_EVENT_2015", "GADGET_STATE_CHANGE_2016", "GADGET_STATE_CHANGE_2017", "GADGET_STATE_CHANGE_2018", "SELECT_OPTION_2019", "SELECT_OPTION_2020", "SELECT_OPTION_2021", "TIMER_EVENT_2022", "TIMER_EVENT_2023", "TIMER_EVENT_2024", "VARIABLE_CHANGE_2025", "VARIABLE_CHANGE_2026", "VARIABLE_CHANGE_2027", "VARIABLE_CHANGE_2032", "SELECT_OPTION_2034", "SELECT_OPTION_2035", "SELECT_OPTION_2036", "GROUP_LOAD_2037", "QUEST_START_2038", "QUEST_START_2039", "QUEST_START_2040", "QUEST_START_2041", "ENTER_REGION_2046" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2004, 2031 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2006, 2007, 2008, 2033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 2045 },
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
function condition_EVENT_VARIABLE_CHANGE_2012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400480201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：177002002的对象,请求一次调用,并将string参数："towerDelay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 177002002, "towerDelay", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为59 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 59, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2013(context, evt)
	if 2004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2013(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177002002, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2047 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2048 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 2031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=269.5, y=494.74, z=212.63}，持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=269.5, y=494.74, z=212.63}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "40048_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2014(context, evt)
	if evt.param1 ~= 2014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400480401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177002002, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177002002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2016(context, evt)
	if 2001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177002002, 2009, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 针对当前group内变量名为 "off_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "off_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 2009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2042 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2042, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400481001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2017(context, evt)
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177002002, 2010, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 针对当前group内变量名为 "off_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "off_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 2010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2043 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2043, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400481101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2018(context, evt)
	if 2003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177002002, 2011, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 针对当前group内变量名为 "off_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "off_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 2011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2044 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2044, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400481201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2019(context, evt)
	-- 判断是gadgetid 2009 option_id 31
	if 2009 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2019(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "state1") == 1 then
	        ScriptLib.SetGroupVariableValue(context, "state1", 2)
	        ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.GearStart)
	elseif ScriptLib.GetGroupVariableValue(context, "state1") == 2 then
	        ScriptLib.SetGroupVariableValue(context, "state1", 3)
	        ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.GearStop)
	elseif ScriptLib.GetGroupVariableValue(context, "state1") == 3 then
	        ScriptLib.SetGroupVariableValue(context, "state1", 4)
	        ScriptLib.ChangeGroupVariableValue(context, "count", -1)
	        ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.GearAction1)
	elseif ScriptLib.GetGroupVariableValue(context, "state1") == 4 then
	        ScriptLib.SetGroupVariableValue(context, "state1", 1)
	        ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.Default)
	end
	
	--删除操作选项
	ScriptLib.DelWorktopOptionByGroupId(context, 177002002, 2009, 31)
	ScriptLib.CreateGroupTimerEvent(context, 177002002, "rotationtime1", 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2020(context, evt)
	-- 判断是gadgetid 2010 option_id 31
	if 2010 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2020(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "state2") == 1 then
	        ScriptLib.SetGroupVariableValue(context, "state2", 2)
	        ScriptLib.SetGadgetStateByConfigId(context, 2007, GadgetState.GearStart)
	elseif ScriptLib.GetGroupVariableValue(context, "state2") == 2 then
	        ScriptLib.SetGroupVariableValue(context, "state2", 3)
	        ScriptLib.SetGadgetStateByConfigId(context, 2007, GadgetState.GearStop)
	elseif ScriptLib.GetGroupVariableValue(context, "state2") == 3 then
	        ScriptLib.SetGroupVariableValue(context, "state2", 4)
			ScriptLib.ChangeGroupVariableValue(context, "count", -1)
	        ScriptLib.SetGadgetStateByConfigId(context, 2007, GadgetState.GearAction1)
	elseif ScriptLib.GetGroupVariableValue(context, "state2") == 4 then
	        ScriptLib.SetGroupVariableValue(context, "state2", 1)
	        ScriptLib.SetGadgetStateByConfigId(context, 2007, GadgetState.Default)        
	end
	
	--删除操作选项
	ScriptLib.DelWorktopOptionByGroupId(context, 177002002, 2010, 31)
	ScriptLib.CreateGroupTimerEvent(context, 177002002, "rotationtime2", 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2021(context, evt)
	-- 判断是gadgetid 2011 option_id 31
	if 2011 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2021(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "state3") == 1 then
	        ScriptLib.SetGroupVariableValue(context, "state3", 2)
	        ScriptLib.SetGadgetStateByConfigId(context, 2008, GadgetState.GearStart)
	elseif ScriptLib.GetGroupVariableValue(context, "state3") == 2 then
	        ScriptLib.SetGroupVariableValue(context, "state3", 3)
	        ScriptLib.ChangeGroupVariableValue(context, "count", -1)   
	        ScriptLib.SetGadgetStateByConfigId(context, 2008, GadgetState.GearStop)    
	elseif ScriptLib.GetGroupVariableValue(context, "state3") == 3 then
	        ScriptLib.SetGroupVariableValue(context, "state3", 4)
	        ScriptLib.SetGadgetStateByConfigId(context, 2008, GadgetState.GearAction1)
	elseif ScriptLib.GetGroupVariableValue(context, "state3") == 4 then
	        ScriptLib.SetGroupVariableValue(context, "state3", 1)
	        ScriptLib.SetGadgetStateByConfigId(context, 2008, GadgetState.Default)
	end
	
	--删除操作选项
	ScriptLib.DelWorktopOptionByGroupId(context, 177002002, 2011, 31)
	ScriptLib.CreateGroupTimerEvent(context, 177002002, "rotationtime3", 3)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2022(context, evt)
	--判断是否已经调整成正确的一面
	if ScriptLib.GetGroupVariableValue(context, "state1") == 3 then
	    ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
	
	--全部正确删除选项,否则还原选项
	if ScriptLib.GetGroupVariableValue(context, "count") == 3 then
	    ScriptLib.DelWorktopOptionByGroupId(context, 177002002, 2010, 31)
	    ScriptLib.DelWorktopOptionByGroupId(context, 177002002, 2011, 31)
	
	else
		ScriptLib.SetWorktopOptionsByGroupId(context, 177002002, 2009, {31})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2023(context, evt)
	--判断是否已经调整成正确的一面
	
	if ScriptLib.GetGroupVariableValue(context, "state2") == 3 then
	    ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
	
	--全部正确删除选项,否则还原选项
	if ScriptLib.GetGroupVariableValue(context, "count") == 3 then
	    ScriptLib.DelWorktopOptionByGroupId(context, 177002002, 2009, 31)
	    ScriptLib.DelWorktopOptionByGroupId(context, 177002002, 2011, 31)
	
	else
		ScriptLib.SetWorktopOptionsByGroupId(context, 177002002, 2010, {31})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2024(context, evt)
	--判断是否已经调整成正确的一面
	
	if ScriptLib.GetGroupVariableValue(context, "state3") == 2 then
	    ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
	--全部正确删除选项,否则还原选项
	if ScriptLib.GetGroupVariableValue(context, "count") == 3 then
	    ScriptLib.DelWorktopOptionByGroupId(context, 177002002, 2009, 31)
	    ScriptLib.DelWorktopOptionByGroupId(context, 177002002, 2010, 31)
	else
		ScriptLib.SetWorktopOptionsByGroupId(context, 177002002, 2011, {31})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2025(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	
	
	
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 700200004, {5}, tempParam) then
	  	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2026(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	
	
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2010, 700200005, {5}, tempParam) then
	  	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2027(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	
	
	
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2011, 700200006, {5}, tempParam) then
	  	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"off_count"为1
	if ScriptLib.GetGroupVariableValue(context, "off_count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2032(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400480405") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2034(context, evt)
	-- 判断是gadgetid 2009 option_id 31
	if 2009 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2034(context, evt)
	-- 触发镜头注目，注目位置为坐标（1357.81，266.33，700.91），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1357.81, y=266.33, z=700.91}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2035(context, evt)
	-- 判断是gadgetid 2010 option_id 31
	if 2010 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2035(context, evt)
	-- 触发镜头注目，注目位置为坐标（1357.81，259.01，700.91），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1357.81, y=259.01, z=700.91}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2036(context, evt)
	-- 判断是gadgetid 2011 option_id 31
	if 2011 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2036(context, evt)
	-- 触发镜头注目，注目位置为坐标（1357.81，248.82，700.91），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1357.81, y=248.82, z=700.91}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2037(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "count")~=3 then
	  local temp_count=0
	  if ScriptLib.GetGroupVariableValue(context, "state1")==3 then
	    temp_count=temp_count+1
	  end
	  if ScriptLib.GetGroupVariableValue(context, "state2")==3 then
	    temp_count=temp_count+1
	  end
	  if ScriptLib.GetGroupVariableValue(context, "state3")==2 then
	    temp_count=temp_count+1
	  end
	  ScriptLib.SetGroupVariableValue(context, "count", temp_count)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "count")==3 then
	  --塔已经合并完毕，加载合并塔资源
	  ScriptLib.AddExtraGroupSuite(context, 177002002, 2)
	  ScriptLib.RemoveExtraGroupSuite(context, 177002002, 3)
	  ScriptLib.DelWorktopOptionByGroupId(context, 177002002, 2009, 31)  
	  ScriptLib.DelWorktopOptionByGroupId(context, 177002002, 2010, 31)
	  ScriptLib.DelWorktopOptionByGroupId(context, 177002002, 2011, 31)
	else
	
	  --塔没有合并，加载拆分塔资源
	  ScriptLib.AddExtraGroupSuite(context, 177002002, 3)
	  --还原所有操作台
	  if ScriptLib.GetGroupVariableValue(context, "off_count")~=0 then
	    if ScriptLib.GetGadgetStateByConfigId(context, 177002002, 2001)==GadgetState.GearStart then
	      ScriptLib.SetWorktopOptionsByGroupId(context, 177002002, 2009, {31})
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, 177002002, 2002)==GadgetState.GearStart then
	      ScriptLib.SetWorktopOptionsByGroupId(context, 177002002, 2010, {31})
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, 177002002, 2003)==GadgetState.GearStart then
	      ScriptLib.SetWorktopOptionsByGroupId(context, 177002002, 2011, {31})
	    end
	  end
	end
	--黑云发射器已经被启动创生光线
	if ScriptLib.GetGadgetStateByConfigId(context, 177002002, 2004)==GadgetState.GearStart then
	  ScriptLib.AddExtraGroupSuite(context, 177002002, 4)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_2038(context, evt)
	
	
	if ScriptLib.GetGadgetStateByConfigId(context, 177002002, 2001)==GadgetState.GearStart then
		ScriptLib.AddQuestProgress(context, "400481001")
	end
	if ScriptLib.GetGadgetStateByConfigId(context, 177002002, 2002)==GadgetState.GearStart then
		ScriptLib.AddQuestProgress(context, "400481101")
	end
	if ScriptLib.GetGadgetStateByConfigId(context, 177002002, 2003)==GadgetState.GearStart then
		ScriptLib.AddQuestProgress(context, "400481201")
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_2039(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_2039(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400480201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_2040(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 177002002, 2004)==GadgetState.GearStart then
		return true
	else
		return false
	end
end

-- 触发操作
function action_EVENT_QUEST_START_2040(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "40048_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_2041(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 177002002, 2004)==GadgetState.GearStart then
		return true
	else
		return false
	end
end

-- 触发操作
function action_EVENT_QUEST_START_2041(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "40048_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2046(context, evt)
	if evt.param1 ~= 2046 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 177002002, 2004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2046(context, evt)
	-- 调用提示id为 400130 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400130) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_5/Watcher_Tower"