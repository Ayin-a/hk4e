-- 基础信息
local base_info = {
	group_id = 166001354
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
	{ config_id = 354001, gadget_id = 70290326, pos = { x = 384.160, y = 681.670, z = 380.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 354004, gadget_id = 70500000, pos = { x = 420.666, y = 654.031, z = 385.175 }, rot = { x = 354.049, y = 332.409, z = 82.293 }, level = 36, point_type = 9302, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 354005, gadget_id = 70300203, pos = { x = 420.363, y = 653.994, z = 385.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 354007, gadget_id = 70290391, pos = { x = 384.160, y = 681.670, z = 380.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 354009, shape = RegionShape.POLYGON, pos = { x = 419.757, y = 655.865, z = 386.381 }, height = 48.079, point_array = { { x = 406.156, y = 389.641 }, { x = 410.138, y = 381.775 }, { x = 420.872, y = 377.896 }, { x = 426.584, y = 378.128 }, { x = 433.358, y = 385.715 }, { x = 428.466, y = 392.473 }, { x = 420.313, y = 394.867 } }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1354002, name = "VARIABLE_CHANGE_354002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_354002", action = "action_EVENT_VARIABLE_CHANGE_354002" },
	{ config_id = 1354003, name = "VARIABLE_CHANGE_354003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_354003", action = "action_EVENT_VARIABLE_CHANGE_354003" },
	{ config_id = 1354006, name = "GATHER_354006", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_354006" },
	{ config_id = 1354008, name = "QUEST_START_354008", event = EventType.EVENT_QUEST_START, source = "", condition = "condition_EVENT_QUEST_START_354008", action = "action_EVENT_QUEST_START_354008", trigger_count = 0 },
	{ config_id = 1354009, name = "ENTER_REGION_354009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_354009", action = "action_EVENT_ENTER_REGION_354009" },
	{ config_id = 1354010, name = "GROUP_LOAD_354010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_354010", action = "action_EVENT_GROUP_LOAD_354010", trigger_count = 0 },
	{ config_id = 1354011, name = "VARIABLE_CHANGE_354011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_354011", action = "action_EVENT_VARIABLE_CHANGE_354011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "lineA", value = 0, no_refresh = true },
	{ config_id = 2, name = "lineB", value = 0, no_refresh = true },
	{ config_id = 3, name = "kill", value = 0, no_refresh = true }
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
		gadgets = { 354001, 354007 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_354002", "VARIABLE_CHANGE_354003", "QUEST_START_354008", "GROUP_LOAD_354010", "VARIABLE_CHANGE_354011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 354004, 354005 },
		regions = { 354009 },
		triggers = { "GATHER_354006", "ENTER_REGION_354009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_VARIABLE_CHANGE_354002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"lineA"为3
	if ScriptLib.GetGroupVariableValue(context, "lineA") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_354002(context, evt)
	-- 将configid为 354001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 354001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_354003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"lineB"为3
	if ScriptLib.GetGroupVariableValue(context, "lineB") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_354003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 354001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001354, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_354006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001354, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 60010360 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010360) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_354008(context, evt)
	-- 判断变量"lineA"为3
	if ScriptLib.GetGroupVariableValue(context, "lineA") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_354008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001354") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_354009(context, evt)
	if evt.param1 ~= 354009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_354009(context, evt)
	-- 触发镜头注目，注目位置为坐标（420.6662，654.0311，385.1748），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=420.6662, y=654.0311, z=385.1748}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 60010359 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010359) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_354010(context, evt)
	-- 判断变量"lineA"为3
	if ScriptLib.GetGroupVariableValue(context, "lineA") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_354010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001354") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_354011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"kill"为1
	if ScriptLib.GetGroupVariableValue(context, "kill") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_354011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 354001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end