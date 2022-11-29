-- 基础信息
local base_info = {
	group_id = 133302064
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
	{ config_id = 64001, gadget_id = 70290501, pos = { x = -774.127, y = 226.240, z = 2993.367 }, rot = { x = 7.124, y = 3.168, z = 354.090 }, level = 27, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 23 },
	{ config_id = 64002, gadget_id = 70290150, pos = { x = -766.340, y = 225.380, z = 2995.288 }, rot = { x = 15.604, y = 28.953, z = 0.643 }, level = 27, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 23 },
	{ config_id = 64003, gadget_id = 70290150, pos = { x = -771.411, y = 225.357, z = 2997.706 }, rot = { x = 9.915, y = 263.206, z = 351.213 }, level = 27, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 23 },
	{ config_id = 64004, gadget_id = 70290150, pos = { x = -776.964, y = 223.374, z = 3005.611 }, rot = { x = 4.248, y = 263.758, z = 357.741 }, level = 27, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 23 },
	{ config_id = 64005, gadget_id = 70220067, pos = { x = -776.919, y = 222.985, z = 3005.630 }, rot = { x = 359.513, y = 196.004, z = 355.215 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 64006, gadget_id = 70290501, pos = { x = -766.088, y = 224.412, z = 2999.525 }, rot = { x = 13.114, y = 359.148, z = 354.591 }, level = 27, area_id = 23 },
	{ config_id = 64007, gadget_id = 70290501, pos = { x = -774.140, y = 224.235, z = 3008.328 }, rot = { x = 0.147, y = 281.509, z = 8.197 }, level = 27, area_id = 23 },
	{ config_id = 64011, gadget_id = 70360001, pos = { x = -767.775, y = 223.388, z = 3006.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 23 },
	{ config_id = 64012, gadget_id = 70220065, pos = { x = -774.280, y = 225.204, z = 2993.203 }, rot = { x = 9.451, y = 61.490, z = 20.147 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 64013, gadget_id = 70220065, pos = { x = -766.372, y = 224.713, z = 2995.141 }, rot = { x = 15.595, y = 29.680, z = 0.838 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 64014, gadget_id = 70220065, pos = { x = -771.214, y = 224.366, z = 2997.616 }, rot = { x = 359.774, y = 265.224, z = 346.782 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 64015, gadget_id = 70220065, pos = { x = -766.163, y = 223.630, z = 2999.435 }, rot = { x = 347.316, y = 174.872, z = 6.365 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 64016, gadget_id = 70220065, pos = { x = -774.077, y = 223.171, z = 3008.472 }, rot = { x = 0.147, y = 281.509, z = 8.197 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 64041, gadget_id = 70211001, pos = { x = -767.515, y = 222.364, z = 3006.943 }, rot = { x = 354.394, y = 347.523, z = 351.269 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1064008, name = "ANY_GADGET_DIE_64008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_64008", trigger_count = 0 },
	-- 保底，如果玩家在倒计时阶段就传送走，回来刷到suite2
	{ config_id = 1064009, name = "GROUP_LOAD_64009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_64009", trigger_count = 0 },
	{ config_id = 1064010, name = "GADGET_STATE_CHANGE_64010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_64010", action = "action_EVENT_GADGET_STATE_CHANGE_64010", trigger_count = 0 },
	{ config_id = 1064025, name = "ANY_GADGET_DIE_64025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_64025", action = "action_EVENT_ANY_GADGET_DIE_64025" },
	{ config_id = 1064026, name = "ANY_GADGET_DIE_64026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_64026", action = "action_EVENT_ANY_GADGET_DIE_64026" },
	{ config_id = 1064027, name = "ANY_GADGET_DIE_64027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_64027", action = "action_EVENT_ANY_GADGET_DIE_64027" },
	{ config_id = 1064028, name = "ANY_GADGET_DIE_64028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_64028", action = "action_EVENT_ANY_GADGET_DIE_64028" },
	{ config_id = 1064029, name = "ANY_GADGET_DIE_64029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_64029", action = "action_EVENT_ANY_GADGET_DIE_64029" },
	{ config_id = 1064030, name = "ANY_GADGET_DIE_64030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_64030", action = "action_EVENT_ANY_GADGET_DIE_64030" },
	{ config_id = 1064031, name = "VARIABLE_CHANGE_64031", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_64031", action = "action_EVENT_VARIABLE_CHANGE_64031", trigger_count = 0 },
	{ config_id = 1064033, name = "TIME_AXIS_PASS_64033", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_64033", action = "action_EVENT_TIME_AXIS_PASS_64033", trigger_count = 0 },
	{ config_id = 1064034, name = "GADGET_CREATE_64034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_64034", action = "action_EVENT_GADGET_CREATE_64034" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1064019, name = "GADGET_CREATE_64019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_64019", action = "action_EVENT_GADGET_CREATE_64019" },
		{ config_id = 1064020, name = "GADGET_CREATE_64020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_64020", action = "action_EVENT_GADGET_CREATE_64020" },
		{ config_id = 1064021, name = "GADGET_CREATE_64021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_64021", action = "action_EVENT_GADGET_CREATE_64021" },
		{ config_id = 1064022, name = "GADGET_CREATE_64022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_64022", action = "action_EVENT_GADGET_CREATE_64022" },
		{ config_id = 1064023, name = "GADGET_CREATE_64023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_64023", action = "action_EVENT_GADGET_CREATE_64023" },
		{ config_id = 1064024, name = "GADGET_CREATE_64024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_64024", action = "action_EVENT_GADGET_CREATE_64024" },
		{ config_id = 1064032, name = "TIME_AXIS_PASS_64032", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_64032", action = "action_EVENT_TIME_AXIS_PASS_64032", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 64001, 64002, 64003, 64004, 64006, 64007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_64008", "GROUP_LOAD_64009", "TIME_AXIS_PASS_64033", "GADGET_CREATE_64034" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 64005, 64012, 64013, 64014, 64015, 64016 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_64025", "ANY_GADGET_DIE_64026", "ANY_GADGET_DIE_64027", "ANY_GADGET_DIE_64028", "ANY_GADGET_DIE_64029", "ANY_GADGET_DIE_64030", "VARIABLE_CHANGE_64031" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 64011, 64041 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_64010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_64008(context, evt)
	-- 调用提示id为 7308602 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308602) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_64009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302064, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_64010(context, evt)
	if 64041 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_64010(context, evt)
	-- 将configid为 64011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_64025(context, evt)
	if 64005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_64025(context, evt)
	-- 创建id为64004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 64004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7308603_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_64026(context, evt)
	if 64012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_64026(context, evt)
	-- 创建id为64001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 64001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_64027(context, evt)
	if 64013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_64027(context, evt)
	-- 创建id为64002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 64002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7308603_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_64028(context, evt)
	if 64014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_64028(context, evt)
	-- 创建id为64003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 64003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7308603_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_64029(context, evt)
	if 64015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_64029(context, evt)
	-- 创建id为64006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 64006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_64030(context, evt)
	if 64016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_64030(context, evt)
	-- 创建id为64007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 64007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_64031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_64031(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7308603_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_64033(context, evt)
	if "duration" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_64033(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302064, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_64034(context, evt)
	if 64001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_64034(context, evt)
	-- 创建标识为"duration"，时间节点为{16}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "duration", {16}, false)
	
	
	-- 触发镜头注目，注目位置为坐标{x=-770.2754, y=223.8299, z=3006.017}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-770.2754, y=223.8299, z=3006.017}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 4,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end