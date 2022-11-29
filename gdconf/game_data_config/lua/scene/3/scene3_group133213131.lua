-- 基础信息
local base_info = {
	group_id = 133213131
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
	{ config_id = 131001, gadget_id = 70290119, pos = { x = -3170.370, y = 200.669, z = -3459.895 }, rot = { x = 0.000, y = 355.785, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 131002, gadget_id = 70211101, pos = { x = -3167.829, y = 200.635, z = -3457.339 }, rot = { x = 2.450, y = 48.460, z = 1.415 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 131003, gadget_id = 70290120, pos = { x = -3154.364, y = 199.924, z = -3458.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 131004, gadget_id = 70290120, pos = { x = -3174.166, y = 201.088, z = -3473.986 }, rot = { x = 2.831, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 131005, gadget_id = 70290120, pos = { x = -3155.173, y = 199.739, z = -3448.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 131007, gadget_id = 71700288, pos = { x = -3169.433, y = 202.461, z = -3459.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 131011, gadget_id = 70360286, pos = { x = -3169.433, y = 202.461, z = -3459.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 131016, gadget_id = 70710347, pos = { x = -3169.365, y = 202.645, z = -3459.700 }, rot = { x = 20.273, y = 82.848, z = 129.514 }, level = 27, isOneoff = true, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1131006, name = "ANY_GADGET_DIE_131006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_131006", action = "action_EVENT_ANY_GADGET_DIE_131006" },
	{ config_id = 1131008, name = "GADGET_CREATE_131008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_131008", action = "action_EVENT_GADGET_CREATE_131008", trigger_count = 0 },
	{ config_id = 1131009, name = "ANY_GADGET_DIE_131009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_131009", action = "action_EVENT_ANY_GADGET_DIE_131009" },
	{ config_id = 1131010, name = "ANY_GADGET_DIE_131010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_131010", action = "action_EVENT_ANY_GADGET_DIE_131010" },
	{ config_id = 1131012, name = "SELECT_OPTION_131012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_131012", action = "action_EVENT_SELECT_OPTION_131012" },
	-- 剩余=2判断
	{ config_id = 1131013, name = "GROUP_LOAD_131013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_131013", action = "action_EVENT_GROUP_LOAD_131013", trigger_count = 0 },
	{ config_id = 1131014, name = "ANY_GADGET_DIE_131014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_131014", action = "action_EVENT_ANY_GADGET_DIE_131014" },
	{ config_id = 1131015, name = "ANY_GADGET_DIE_131015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_131015", action = "action_EVENT_ANY_GADGET_DIE_131015" },
	-- 保底判断隐形操作台已死删除调查特效
	{ config_id = 1131017, name = "GROUP_LOAD_131017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_131017", action = "action_EVENT_GROUP_LOAD_131017", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 131001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 131001, 131003, 131004, 131005, 131016 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_131006", "ANY_GADGET_DIE_131009", "ANY_GADGET_DIE_131010", "GROUP_LOAD_131013", "GROUP_LOAD_131017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 131001, 131002, 131007, 131011 },
		regions = { },
		triggers = { "GADGET_CREATE_131008", "SELECT_OPTION_131012", "ANY_GADGET_DIE_131014", "ANY_GADGET_DIE_131015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_131006(context, evt)
	-- 判断指定group组剩余gadget数量是否是2 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213131}) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_131006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213131, 3)
	
	-- 将configid为 131001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finished1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished1", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "globalfinish1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "globalfinish1", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3173.75，211.1996，-3458.261），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3173.75, y=211.1996, z=-3458.261}
	  local pos_follow = {x=-1, y=1, z=-3}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = true,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_131008(context, evt)
	if 131011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_131008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213131, 131011, {71}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_131009(context, evt)
	-- 判断指定group组剩余gadget数量是否是4 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213131}) ~= 4 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_131009(context, evt)
	-- 将configid为 131001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_131010(context, evt)
	-- 判断指定group组剩余gadget数量是否是3 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213131}) ~= 3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_131010(context, evt)
	-- 将configid为 131001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_131012(context, evt)
	-- 判断是gadgetid 131011 option_id 71
	if 131011 ~= evt.param1 then
		return false	
	end
	
	if 71 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_131012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212307_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 131011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213131, EntityType.GADGET, 131007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213131, EntityType.GADGET, 131016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_131013(context, evt)
	-- 判断指定group组剩余gadget数量是否是2 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213131}) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_131013(context, evt)
	-- 将本组内变量名为 "finished1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished1", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213131, 3)
	
	-- 将configid为 131001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_131014(context, evt)
	if 131011 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"globalfinish2"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "globalfinish2", 133213180) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_131014(context, evt)
	-- 将本组内变量名为 "globalfinish2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "globalfinish2", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 调用提示id为 1110294 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110294) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_131015(context, evt)
	if 131011 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"globalfinish2"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "globalfinish2", 133213180) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_131015(context, evt)
	-- 调用提示id为 1110382 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110382) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_131017(context, evt)
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133213131, 131011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_131017(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213131, EntityType.GADGET, 131007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end