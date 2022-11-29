-- 基础信息
local base_info = {
	group_id = 133104680
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 680012, monster_id = 24010201, pos = { x = 359.248, y = 154.561, z = 955.044 }, rot = { x = 0.000, y = 328.841, z = 0.000 }, level = 50, drop_tag = "遗迹守卫", pose_id = 100, area_id = 6 },
	{ config_id = 680020, monster_id = 26030101, pos = { x = 380.153, y = 152.840, z = 973.950 }, rot = { x = 0.000, y = 241.947, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 6 },
	{ config_id = 680021, monster_id = 26030101, pos = { x = 333.206, y = 152.840, z = 950.574 }, rot = { x = 0.000, y = 58.563, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 680009, gadget_id = 70360073, pos = { x = 373.214, y = 153.042, z = 928.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 680010, gadget_id = 70320002, pos = { x = 368.933, y = 153.040, z = 929.122 }, rot = { x = 0.000, y = 61.056, z = 0.000 }, level = 40, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 680011, gadget_id = 70320002, pos = { x = 378.031, y = 152.890, z = 928.612 }, rot = { x = 0.000, y = 241.189, z = 0.000 }, level = 40, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 680014, gadget_id = 70620003, pos = { x = 319.939, y = 152.556, z = 943.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 680015, gadget_id = 70360021, pos = { x = 391.578, y = 154.500, z = 985.958 }, rot = { x = 0.000, y = 152.324, z = 0.000 }, level = 40, state = GadgetState.GearStart, route_id = 310400264, area_id = 6 },
	{ config_id = 680016, gadget_id = 70360021, pos = { x = 390.185, y = 154.500, z = 973.825 }, rot = { x = 0.000, y = 332.324, z = 0.000 }, level = 40, state = GadgetState.GearStart, route_id = 310400263, area_id = 6 },
	{ config_id = 680017, gadget_id = 70360073, pos = { x = 389.863, y = 152.933, z = 979.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 680018, gadget_id = 70360073, pos = { x = 320.276, y = 152.890, z = 943.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1680001, name = "ANY_MONSTER_DIE_680001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_680001", action = "action_EVENT_ANY_MONSTER_DIE_680001" },
	{ config_id = 1680002, name = "SPECIFIC_MONSTER_HP_CHANGE_680002", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "680012", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_680002", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_680002" },
	{ config_id = 1680003, name = "SPECIFIC_MONSTER_HP_CHANGE_680003", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "680012", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_680003", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_680003" },
	{ config_id = 1680004, name = "GADGET_STATE_CHANGE_680004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_680004", action = "action_EVENT_GADGET_STATE_CHANGE_680004" },
	{ config_id = 1680005, name = "GADGET_STATE_CHANGE_680005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_680005", action = "action_EVENT_GADGET_STATE_CHANGE_680005" },
	{ config_id = 1680006, name = "GADGET_STATE_CHANGE_680006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_680006", action = "action_EVENT_GADGET_STATE_CHANGE_680006" },
	{ config_id = 1680007, name = "GROUP_LOAD_680007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_680007", action = "action_EVENT_GROUP_LOAD_680007", trigger_count = 0 },
	{ config_id = 1680008, name = "GADGET_CREATE_680008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_680008", action = "action_EVENT_GADGET_CREATE_680008", trigger_count = 0 },
	{ config_id = 1680019, name = "MONSTER_BATTLE_680019", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_680019", action = "action_EVENT_MONSTER_BATTLE_680019" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_680007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 680012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_680001", "SPECIFIC_MONSTER_HP_CHANGE_680002", "SPECIFIC_MONSTER_HP_CHANGE_680003", "GADGET_STATE_CHANGE_680004", "GADGET_STATE_CHANGE_680005", "GADGET_STATE_CHANGE_680006", "GADGET_CREATE_680008", "MONSTER_BATTLE_680019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 680020 },
		gadgets = { 680015, 680016, 680017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 680021 },
		gadgets = { 680014, 680018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 680009, 680010, 680011 },
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
function condition_EVENT_ANY_MONSTER_DIE_680001(context, evt)
	--判断死亡怪物的configid是否为 680012
	if evt.param1 ~= 680012 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_680001(context, evt)
	-- 将本组内变量名为 "wave3" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "wave3", 2, 133104622) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（336，154，997），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=336, y=154, z=997}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 2,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104680, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_680002(context, evt)
	--[[判断指定configid的怪物的血量小于%60时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 60 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_680002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104680, 3)
	
	-- 调用提示id为 400005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_680003(context, evt)
	--[[判断指定configid的怪物的血量小于%20时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 20 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_680003(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104680, 4)
	
	-- 调用提示id为 400005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_680004(context, evt)
	if 680009 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_680004(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104680, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_680005(context, evt)
	if 680017 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_680005(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104680, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_680006(context, evt)
	if 680018 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_680006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 680014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104680, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_680007(context, evt)
	-- 判断变量"wave3"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "wave3", 133104622) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_680007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104680, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104680, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104680, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104680, 5)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104680, 2)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104678, 2)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104679, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_680008(context, evt)
	if 680009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_680008(context, evt)
	-- 调用提示id为 400005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_680019(context, evt)
	if 680012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_680019(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104680, 5)
	
	return 0
end