-- 基础信息
local base_info = {
	group_id = 133210387
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
	{ config_id = 387002, gadget_id = 70330094, pos = { x = -3882.420, y = 209.248, z = -456.696 }, rot = { x = 0.000, y = 34.863, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 387003, gadget_id = 70900049, pos = { x = -3863.858, y = 200.076, z = -427.521 }, rot = { x = 6.232, y = 359.837, z = 356.427 }, level = 30, area_id = 17 },
	{ config_id = 387006, gadget_id = 70900008, pos = { x = -3870.892, y = 202.221, z = -438.568 }, rot = { x = 359.733, y = 0.070, z = 0.916 }, level = 30, area_id = 17 },
	{ config_id = 387008, gadget_id = 70900008, pos = { x = -3879.436, y = 204.344, z = -452.484 }, rot = { x = 13.954, y = 359.300, z = 352.916 }, level = 30, area_id = 17 },
	{ config_id = 387010, gadget_id = 70330114, pos = { x = -3860.384, y = 200.661, z = -430.738 }, rot = { x = 0.000, y = 135.560, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 387011, gadget_id = 70330114, pos = { x = -3867.856, y = 203.152, z = -438.641 }, rot = { x = 9.344, y = 90.813, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 387012, gadget_id = 70330114, pos = { x = -3876.187, y = 204.705, z = -450.969 }, rot = { x = 10.922, y = 63.948, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 387013, gadget_id = 70330114, pos = { x = -3863.356, y = 202.554, z = -444.697 }, rot = { x = 8.790, y = 63.948, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1387001, name = "QUEST_START_387001", event = EventType.EVENT_QUEST_START, source = "7215104", condition = "", action = "action_EVENT_QUEST_START_387001", trigger_count = 0 },
	{ config_id = 1387004, name = "VARIABLE_CHANGE_387004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_387004", action = "action_EVENT_VARIABLE_CHANGE_387004" },
	{ config_id = 1387005, name = "GADGET_STATE_CHANGE_387005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_387005", action = "action_EVENT_GADGET_STATE_CHANGE_387005" },
	{ config_id = 1387007, name = "GADGET_STATE_CHANGE_387007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_387007", action = "action_EVENT_GADGET_STATE_CHANGE_387007" },
	{ config_id = 1387009, name = "GADGET_STATE_CHANGE_387009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_387009", action = "action_EVENT_GADGET_STATE_CHANGE_387009" },
	{ config_id = 1387014, name = "QUEST_START_387014", event = EventType.EVENT_QUEST_START, source = "7215108", condition = "", action = "action_EVENT_QUEST_START_387014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetCount", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_387001" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetCount", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 387002, state = 0 },
			{ config_id = 387003, state = 0 },
			{ config_id = 387006, state = 0 },
			{ config_id = 387008, state = 0 },
			{ config_id = 387010, state = 0 },
			{ config_id = 387011, state = 0 },
			{ config_id = 387012, state = 0 },
			{ config_id = 387013, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_387004", "GADGET_STATE_CHANGE_387005", "GADGET_STATE_CHANGE_387007", "GADGET_STATE_CHANGE_387009" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetCount", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetCount", value = 0, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 387002, state = 0 },
			{ config_id = 387003, state = 202 },
			{ config_id = 387006, state = 202 },
			{ config_id = 387008, state = 202 },
			{ config_id = 387010, state = 0 },
			{ config_id = 387011, state = 0 },
			{ config_id = 387012, state = 0 },
			{ config_id = 387013, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_387014" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetCount", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_387001(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210387, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_387004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetCount"为3
	if ScriptLib.GetGroupVariableValue(context, "GadgetCount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_387004(context, evt)
	-- 改变指定group组133210386中， configid为386001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133210386, 386001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-3851.68，199.86，-439.07），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3851.68, y=199.86, z=-439.07}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210387, 3)
	
	-- 将本组内变量名为 "queststate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "queststate", 1, 133210211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Reminder", 1, 133210211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_387005(context, evt)
	if 387003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_387005(context, evt)
	-- 针对当前group内变量名为 "GadgetCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "GadgetCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_387007(context, evt)
	if 387006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_387007(context, evt)
	-- 针对当前group内变量名为 "GadgetCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "GadgetCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_387009(context, evt)
	if 387008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_387009(context, evt)
	-- 针对当前group内变量名为 "GadgetCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "GadgetCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_387014(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210387, 2)
	
	return 0
end