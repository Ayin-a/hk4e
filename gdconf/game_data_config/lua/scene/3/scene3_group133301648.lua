-- 基础信息
local base_info = {
	group_id = 133301648
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 40,
	group_id = 133301648,
	gadget_1 = 648001,
	gadget_2 = 648002,
	gadget_3 = 648003,
	gadget_4 = 648005,
	gadget_chest = 648004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 648004, monster_id = 20010301, pos = { x = -931.713, y = 391.578, z = 3197.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 23 },
	{ config_id = 648009, monster_id = 20010301, pos = { x = -946.475, y = 395.171, z = 3201.508 }, rot = { x = 0.000, y = 125.714, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 23 },
	{ config_id = 648011, monster_id = 20010301, pos = { x = -954.090, y = 398.267, z = 3195.011 }, rot = { x = 0.000, y = 27.993, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 648001, gadget_id = 70900050, pos = { x = -929.778, y = 391.494, z = 3196.554 }, rot = { x = 0.000, y = 278.836, z = 0.000 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 23 },
	{ config_id = 648002, gadget_id = 70900050, pos = { x = -946.944, y = 394.713, z = 3203.258 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 23 },
	{ config_id = 648003, gadget_id = 70900050, pos = { x = -956.935, y = 399.008, z = 3190.755 }, rot = { x = 0.000, y = 81.015, z = 0.000 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 23 },
	{ config_id = 648005, gadget_id = 70900050, pos = { x = -938.510, y = 395.960, z = 3180.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1648006, name = "GADGET_STATE_CHANGE_648006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_648006", action = "action_EVENT_GADGET_STATE_CHANGE_648006", trigger_count = 0 },
	{ config_id = 1648007, name = "TIMER_EVENT_648007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_648007", action = "action_EVENT_TIMER_EVENT_648007", trigger_count = 0 },
	-- 删除宝箱逻辑
	{ config_id = 1648008, name = "VARIABLE_CHANGE_648008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_648008", action = "action_EVENT_VARIABLE_CHANGE_648008", trigger_count = 0 },
	-- 新增开门
	{ config_id = 1648010, name = "VARIABLE_CHANGE_648010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_648010", action = "action_EVENT_VARIABLE_CHANGE_648010", trigger_count = 0 },
	-- 02-09
	{ config_id = 1648012, name = "GADGET_STATE_CHANGE_648012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_648012", action = "action_EVENT_GADGET_STATE_CHANGE_648012" },
	-- 03-11
	{ config_id = 1648013, name = "GADGET_STATE_CHANGE_648013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_648013", action = "action_EVENT_GADGET_STATE_CHANGE_648013" },
	-- 01-04
	{ config_id = 1648014, name = "GADGET_STATE_CHANGE_648014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_648014", action = "action_EVENT_GADGET_STATE_CHANGE_648014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = false }
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
		gadgets = { 648001, 648002, 648003, 648005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_648006", "TIMER_EVENT_648007", "VARIABLE_CHANGE_648008", "VARIABLE_CHANGE_648010", "GADGET_STATE_CHANGE_648012", "GADGET_STATE_CHANGE_648013", "GADGET_STATE_CHANGE_648014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_648006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_648006(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "active_count") then
	ScriptLib.MarkPlayerAction(context, 1001, 1, 1)
	end
	if evt.param1 == GadgetState.Action01  then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", -1)
	elseif evt.param1 == GadgetState.Action02 then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", 1)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, tostring(evt.param2), defs.timer)
	else
	return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_648007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_648007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_648008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == -1 then
	ScriptLib.MarkPlayerAction(context, 1001, 4, 1)
	end
	if evt.param1 ~= defs.max_gear then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_648008(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_1))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_2))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_3))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_4))
	
	if defs.gadget_1 ~= 0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStart)
	end
	
	if defs.gadget_2 ~= 0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_2, GadgetState.GearStart)
	end
	
	if defs.gadget_3 ~=0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_3, GadgetState.GearStart)
	end
	
	if defs.gadget_4 ~=0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_4, GadgetState.GearStart)
	end
	
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_648010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == -1 then
	ScriptLib.MarkPlayerAction(context, 1001, 4, 1)
	end
	if evt.param1 ~= defs.max_gear then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_648010(context, evt)
	-- 改变指定group组133301649中， configid为649004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133301649, 649004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-949.4774, y=397.815, z=3187.362}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-949.4774, y=397.815, z=3187.362}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_648012(context, evt)
	if 648002 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_648012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 648009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_648013(context, evt)
	if 648003 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_648013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 648011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_648014(context, evt)
	if 648001 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_648014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 648004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end