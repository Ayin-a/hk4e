-- 基础信息
local base_info = {
	group_id = 133304125
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
	{ config_id = 125001, gadget_id = 70230111, pos = { x = -1865.389, y = 253.514, z = 2913.899 }, rot = { x = 3.530, y = 358.045, z = 78.084 }, level = 30, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 21 },
	{ config_id = 125002, gadget_id = 70230111, pos = { x = -1869.969, y = 252.305, z = 2926.008 }, rot = { x = 353.971, y = 302.268, z = 82.473 }, level = 30, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 21 },
	{ config_id = 125003, gadget_id = 70230111, pos = { x = -1876.201, y = 252.008, z = 2914.992 }, rot = { x = 3.830, y = 321.291, z = 76.841 }, level = 30, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 21 },
	{ config_id = 125004, gadget_id = 70360001, pos = { x = -1863.294, y = 254.240, z = 2917.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 125006, gadget_id = 70230112, pos = { x = -1861.261, y = 252.386, z = 2927.153 }, rot = { x = 8.717, y = 327.127, z = 93.676 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 125007, gadget_id = 70230112, pos = { x = -1866.427, y = 252.994, z = 2920.723 }, rot = { x = 2.679, y = 336.015, z = 87.229 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 125008, gadget_id = 70230112, pos = { x = -1874.040, y = 251.601, z = 2923.022 }, rot = { x = 4.467, y = 0.035, z = 104.643 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 125025, gadget_id = 70211101, pos = { x = -1863.008, y = 253.270, z = 2917.500 }, rot = { x = 3.817, y = 315.591, z = 356.144 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 125026, gadget_id = 70220065, pos = { x = -1865.307, y = 253.524, z = 2913.777 }, rot = { x = 3.740, y = 332.813, z = 0.271 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 125027, gadget_id = 70220065, pos = { x = -1869.716, y = 252.336, z = 2925.698 }, rot = { x = 4.301, y = 328.671, z = 0.722 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 125028, gadget_id = 70220065, pos = { x = -1876.004, y = 252.054, z = 2914.852 }, rot = { x = 4.192, y = 314.622, z = 352.701 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 125029, gadget_id = 70220065, pos = { x = -1861.370, y = 252.403, z = 2926.995 }, rot = { x = 3.679, y = 329.936, z = 355.953 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 125030, gadget_id = 70220065, pos = { x = -1866.204, y = 253.064, z = 2920.322 }, rot = { x = 8.691, y = 330.274, z = 358.702 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 125031, gadget_id = 70220065, pos = { x = -1874.040, y = 251.601, z = 2923.021 }, rot = { x = 359.130, y = 359.368, z = 13.340 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 保底，如果玩家在倒计时阶段就传送走，回来刷到suite2
	{ config_id = 1125005, name = "GROUP_LOAD_125005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_125005", trigger_count = 0 },
	{ config_id = 1125009, name = "GADGET_STATE_CHANGE_125009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_125009", action = "action_EVENT_GADGET_STATE_CHANGE_125009", trigger_count = 0 },
	{ config_id = 1125038, name = "ANY_GADGET_DIE_125038", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_125038", action = "action_EVENT_ANY_GADGET_DIE_125038" },
	{ config_id = 1125039, name = "ANY_GADGET_DIE_125039", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_125039", action = "action_EVENT_ANY_GADGET_DIE_125039" },
	{ config_id = 1125040, name = "ANY_GADGET_DIE_125040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_125040", action = "action_EVENT_ANY_GADGET_DIE_125040" },
	{ config_id = 1125041, name = "ANY_GADGET_DIE_125041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_125041", action = "action_EVENT_ANY_GADGET_DIE_125041" },
	{ config_id = 1125042, name = "ANY_GADGET_DIE_125042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_125042", action = "action_EVENT_ANY_GADGET_DIE_125042" },
	{ config_id = 1125043, name = "ANY_GADGET_DIE_125043", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_125043", action = "action_EVENT_ANY_GADGET_DIE_125043" },
	{ config_id = 1125044, name = "VARIABLE_CHANGE_125044", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_125044", action = "action_EVENT_VARIABLE_CHANGE_125044", trigger_count = 0 },
	{ config_id = 1125046, name = "TIME_AXIS_PASS_125046", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_125046", action = "action_EVENT_TIME_AXIS_PASS_125046", trigger_count = 0 },
	{ config_id = 1125047, name = "GADGET_CREATE_125047", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_125047", action = "action_EVENT_GADGET_CREATE_125047" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1125032, name = "GADGET_CREATE_125032", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_125032", action = "action_EVENT_GADGET_CREATE_125032" },
		{ config_id = 1125033, name = "GADGET_CREATE_125033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_125033", action = "action_EVENT_GADGET_CREATE_125033" },
		{ config_id = 1125034, name = "GADGET_CREATE_125034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_125034", action = "action_EVENT_GADGET_CREATE_125034" },
		{ config_id = 1125035, name = "GADGET_CREATE_125035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_125035", action = "action_EVENT_GADGET_CREATE_125035" },
		{ config_id = 1125036, name = "GADGET_CREATE_125036", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_125036", action = "action_EVENT_GADGET_CREATE_125036" },
		{ config_id = 1125037, name = "GADGET_CREATE_125037", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_125037", action = "action_EVENT_GADGET_CREATE_125037" },
		{ config_id = 1125045, name = "TIME_AXIS_PASS_125045", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_125045", action = "action_EVENT_TIME_AXIS_PASS_125045", trigger_count = 0 }
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
		gadgets = { 125001, 125002, 125003, 125006, 125007, 125008 },
		regions = { },
		triggers = { "GROUP_LOAD_125005", "TIME_AXIS_PASS_125046", "GADGET_CREATE_125047" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 125026, 125027, 125028, 125029, 125030, 125031 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_125038", "ANY_GADGET_DIE_125039", "ANY_GADGET_DIE_125040", "ANY_GADGET_DIE_125041", "ANY_GADGET_DIE_125042", "ANY_GADGET_DIE_125043", "VARIABLE_CHANGE_125044" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 125004, 125025 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_125009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_125005(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304125, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_125009(context, evt)
	if 125025 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_125009(context, evt)
	-- 将configid为 125004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_125038(context, evt)
	if 125026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_125038(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建id为125001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 125001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_125039(context, evt)
	if 125027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_125039(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建id为125002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 125002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_125040(context, evt)
	if 125028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_125040(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建id为125003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 125003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_125041(context, evt)
	if 125029 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_125041(context, evt)
	-- 创建id为125006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 125006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7325903_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_125042(context, evt)
	if 125030 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_125042(context, evt)
	-- 创建id为125007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 125007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7325903_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_125043(context, evt)
	if 125031 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_125043(context, evt)
	-- 创建id为125008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 125008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7325903_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_125044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_125044(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7325903_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_125046(context, evt)
	if "duration" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_125046(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304125, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_125047(context, evt)
	if 125001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_125047(context, evt)
	-- 创建标识为"duration"，时间节点为{16}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "duration", {16}, false)
	
	
	-- 触发镜头注目，注目位置为坐标{x=-1866.886, y=252.8797, z=2920.835}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1866.886, y=252.8797, z=2920.835}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 4,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end