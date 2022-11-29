-- 基础信息
local base_info = {
	group_id = 133213133
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
	{ config_id = 133001, gadget_id = 70290119, pos = { x = -3487.559, y = 201.328, z = -3219.926 }, rot = { x = 0.000, y = 2.194, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 133002, gadget_id = 70211101, pos = { x = -3486.591, y = 201.211, z = -3215.850 }, rot = { x = 0.000, y = 0.398, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 133003, gadget_id = 70290120, pos = { x = -3473.580, y = 199.221, z = -3203.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 133004, gadget_id = 70290120, pos = { x = -3502.783, y = 201.528, z = -3214.740 }, rot = { x = 2.758, y = 359.560, z = 350.921 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 133005, gadget_id = 70290120, pos = { x = -3491.505, y = 200.660, z = -3241.859 }, rot = { x = 0.000, y = 0.000, z = 356.189 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 133006, gadget_id = 71700288, pos = { x = -3486.532, y = 203.051, z = -3219.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 133011, gadget_id = 70360286, pos = { x = -3486.532, y = 203.051, z = -3219.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 133016, gadget_id = 70710347, pos = { x = -3486.523, y = 203.010, z = -3219.618 }, rot = { x = 309.121, y = 258.431, z = 41.786 }, level = 27, isOneoff = true, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1133007, name = "ANY_GADGET_DIE_133007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_133007", action = "action_EVENT_ANY_GADGET_DIE_133007" },
	{ config_id = 1133008, name = "GADGET_CREATE_133008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_133008", action = "action_EVENT_GADGET_CREATE_133008", trigger_count = 0 },
	{ config_id = 1133009, name = "ANY_GADGET_DIE_133009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_133009", action = "action_EVENT_ANY_GADGET_DIE_133009" },
	{ config_id = 1133010, name = "ANY_GADGET_DIE_133010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_133010", action = "action_EVENT_ANY_GADGET_DIE_133010" },
	{ config_id = 1133012, name = "SELECT_OPTION_133012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_133012", action = "action_EVENT_SELECT_OPTION_133012" },
	-- 剩余=2
	{ config_id = 1133013, name = "GROUP_LOAD_133013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_133013", action = "action_EVENT_GROUP_LOAD_133013", trigger_count = 0 },
	{ config_id = 1133014, name = "ANY_GADGET_DIE_133014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_133014", action = "action_EVENT_ANY_GADGET_DIE_133014" },
	{ config_id = 1133015, name = "ANY_GADGET_DIE_133015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_133015", action = "action_EVENT_ANY_GADGET_DIE_133015" },
	-- 保底判断隐形操作台已死删除调查特效
	{ config_id = 1133017, name = "GROUP_LOAD_133017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_133017", action = "action_EVENT_GROUP_LOAD_133017", trigger_count = 0 }
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
		gadgets = { 133001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 133001, 133003, 133004, 133005, 133016 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_133007", "ANY_GADGET_DIE_133009", "ANY_GADGET_DIE_133010", "GROUP_LOAD_133013", "GROUP_LOAD_133017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 133001, 133002, 133006, 133011 },
		regions = { },
		triggers = { "GADGET_CREATE_133008", "SELECT_OPTION_133012", "ANY_GADGET_DIE_133014", "ANY_GADGET_DIE_133015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_133007(context, evt)
	-- 判断指定group组剩余gadget数量是否是2 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213133}) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_133007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213133, 3)
	
	-- 将configid为 133001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finished3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished3", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "globalfinish1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "globalfinish1", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3490.667，211.8501，-3217.947），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3490.667, y=211.8501, z=-3217.947}
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
function condition_EVENT_GADGET_CREATE_133008(context, evt)
	if 133011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_133008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213133, 133011, {71}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_133009(context, evt)
	-- 判断指定group组剩余gadget数量是否是4 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213133}) ~= 4 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_133009(context, evt)
	-- 将configid为 133001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_133010(context, evt)
	-- 判断指定group组剩余gadget数量是否是3 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213133}) ~= 3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_133010(context, evt)
	-- 将configid为 133001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_133012(context, evt)
	-- 判断是gadgetid 133011 option_id 71
	if 133011 ~= evt.param1 then
		return false	
	end
	
	if 71 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_133012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212309_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 133011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213133, EntityType.GADGET, 133006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213133, EntityType.GADGET, 133016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_133013(context, evt)
	-- 判断指定group组剩余gadget数量是否是2 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213133}) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_133013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213133, 3)
	
	-- 将configid为 133001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finished3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished3", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_133014(context, evt)
	if 133011 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"globalfinish2"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "globalfinish2", 133213180) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_133014(context, evt)
	-- 调用提示id为 1110294 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110294) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "globalfinish2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "globalfinish2", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_133015(context, evt)
	if 133011 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"globalfinish2"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "globalfinish2", 133213180) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_133015(context, evt)
	-- 调用提示id为 1110382 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110382) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_133017(context, evt)
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133213133, 133011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_133017(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213133, EntityType.GADGET, 133006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end