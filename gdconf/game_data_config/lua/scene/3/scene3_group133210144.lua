-- 基础信息
local base_info = {
	group_id = 133210144
}

-- Trigger变量
local defs = {
	max_gear = 6,
	timer = 20,
	group_id = 133210144,
	gadget_1 = 144009,
	gadget_2 = 144010,
	gadget_3 = 144011,
	gadget_4 = 144012,
	gadget_5 = 144013,
	gadget_6 = 144014
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
	{ config_id = 144009, gadget_id = 70290096, pos = { x = -4080.442, y = 211.518, z = -1165.899 }, rot = { x = 358.256, y = 64.756, z = 351.665 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 144010, gadget_id = 70290158, pos = { x = -4074.646, y = 208.606, z = -1176.803 }, rot = { x = 5.750, y = 264.364, z = 10.869 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 144011, gadget_id = 70290158, pos = { x = -4087.535, y = 210.931, z = -1174.670 }, rot = { x = 356.428, y = 0.479, z = 344.732 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 144012, gadget_id = 70290096, pos = { x = -4077.846, y = 209.972, z = -1172.036 }, rot = { x = 4.477, y = 238.844, z = 8.157 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 144013, gadget_id = 70290096, pos = { x = -4088.007, y = 211.470, z = -1159.561 }, rot = { x = 359.876, y = 228.832, z = 4.710 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 144014, gadget_id = 70290158, pos = { x = -4099.187, y = 214.603, z = -1168.976 }, rot = { x = 7.263, y = 358.182, z = 345.905 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 144015, gadget_id = 70290096, pos = { x = -4080.442, y = 211.518, z = -1165.899 }, rot = { x = 358.256, y = 64.756, z = 351.665 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	{ config_id = 144016, gadget_id = 70290158, pos = { x = -4074.646, y = 208.606, z = -1176.803 }, rot = { x = 5.750, y = 264.364, z = 10.869 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	{ config_id = 144017, gadget_id = 70290158, pos = { x = -4087.535, y = 210.931, z = -1174.670 }, rot = { x = 356.428, y = 0.479, z = 344.732 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	{ config_id = 144018, gadget_id = 70290096, pos = { x = -4077.846, y = 209.972, z = -1172.036 }, rot = { x = 4.477, y = 238.844, z = 8.157 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	{ config_id = 144019, gadget_id = 70290096, pos = { x = -4088.007, y = 211.470, z = -1159.561 }, rot = { x = 359.876, y = 228.832, z = 4.710 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	{ config_id = 144020, gadget_id = 70290158, pos = { x = -4099.187, y = 214.603, z = -1168.976 }, rot = { x = 7.263, y = 358.182, z = 345.905 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 144003, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 20.000 }, pos = { x = -4086.608, y = 211.470, z = -1168.073 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1144001, name = "QUEST_START_144001", event = EventType.EVENT_QUEST_START, source = "7214803", condition = "", action = "action_EVENT_QUEST_START_144001", trigger_count = 0 },
	{ config_id = 1144002, name = "TIME_AXIS_PASS_144002", event = EventType.EVENT_TIME_AXIS_PASS, source = "changesuite", condition = "condition_EVENT_TIME_AXIS_PASS_144002", action = "action_EVENT_TIME_AXIS_PASS_144002", trigger_count = 0 },
	{ config_id = 1144003, name = "ENTER_REGION_144003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_144003", action = "action_EVENT_ENTER_REGION_144003", trigger_count = 0 },
	{ config_id = 1144004, name = "TIME_AXIS_PASS_144004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_144004", action = "", trigger_count = 0 },
	{ config_id = 1144005, name = "GADGET_STATE_CHANGE_144005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144005", action = "action_EVENT_GADGET_STATE_CHANGE_144005", trigger_count = 0 },
	{ config_id = 1144006, name = "GADGET_STATE_CHANGE_144006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144006", action = "action_EVENT_GADGET_STATE_CHANGE_144006", trigger_count = 0 },
	{ config_id = 1144007, name = "TIME_AXIS_PASS_144007", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_144007", action = "action_EVENT_TIME_AXIS_PASS_144007", trigger_count = 0 },
	{ config_id = 1144008, name = "VARIABLE_CHANGE_144008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_144008", action = "action_EVENT_VARIABLE_CHANGE_144008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = false },
	{ config_id = 2, name = "Reminder", value = 0, no_refresh = true }
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
			{ config_id = 144015, state = 201 },
			{ config_id = 144016, state = 201 },
			{ config_id = 144017, state = 201 },
			{ config_id = 144018, state = 201 },
			{ config_id = 144019, state = 201 },
			{ config_id = 144020, state = 201 }
		},
		monsters = {
		},
		regions = { 144003 },
		triggers = { "QUEST_START_144001", "ENTER_REGION_144003" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "active_count", value = 0, no_refresh = true },
			{ config_id = 2, name = "Reminder", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 144009, state = 0 },
			{ config_id = 144010, state = 0 },
			{ config_id = 144011, state = 0 },
			{ config_id = 144012, state = 0 },
			{ config_id = 144013, state = 0 },
			{ config_id = 144014, state = 0 }
		},
		monsters = {
		},
		regions = { 144003 },
		triggers = { "ENTER_REGION_144003", "GADGET_STATE_CHANGE_144006", "TIME_AXIS_PASS_144007", "VARIABLE_CHANGE_144008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "active_count", value = 0, no_refresh = true },
			{ config_id = 2, name = "Reminder", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 144009, state = 201 },
			{ config_id = 144010, state = 201 },
			{ config_id = 144011, state = 201 },
			{ config_id = 144012, state = 201 },
			{ config_id = 144013, state = 201 },
			{ config_id = 144014, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "active_count", value = 6, no_refresh = true },
			{ config_id = 2, name = "Reminder", value = 1, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_144001(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210144, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_144002(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_144002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210144, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_144003(context, evt)
	if evt.param1 ~= 144003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_144003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_144004(context, evt)
	if "1111" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144005(context, evt)
	-- 检测config_id为144009的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 144009 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144005(context, evt)
	-- 创建标识为"defs.gadget1"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "defs.gadget1", {20}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 and defs.gadget_5 ~= evt.param2 and defs.gadget_6 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144006(context, evt)
	if evt.param1 == GadgetState.Default  then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", -1)
	elseif evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", 1)
	ScriptLib.InitTimeAxis(context, tostring(evt.param2), {defs.timer}, false)
	else
	return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_144007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) and evt.source_name ~= tostring(defs.gadget_5) and evt.source_name ~= tostring(defs.gadget_6) then
	return false
	end
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_144007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Default) then
	return -1
	end 
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "Reminder", 133210144) == 0 then
	-- 调用提示id为 32100109 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100109) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	    ScriptLib.ChangeGroupVariableValue(context, "Reminder", 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_144008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 ~= defs.max_gear then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_144008(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_1))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_2))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_3))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_4))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_5))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_6))
	
	-- 触发镜头注目，注目位置为坐标（-4101.45，215.87，-1164），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-4101.45, y=215.87, z=-1164}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	
	
	ScriptLib.AddQuestProgress(context, "7214803")
	ScriptLib.GoToFlowSuite(context, 133210144, 3)
	
	
	return 0
end