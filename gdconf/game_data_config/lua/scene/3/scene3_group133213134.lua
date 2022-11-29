-- 基础信息
local base_info = {
	group_id = 133213134
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
	{ config_id = 134001, gadget_id = 70290119, pos = { x = -3666.276, y = 279.236, z = -3037.515 }, rot = { x = 0.000, y = 11.477, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 134002, gadget_id = 70211101, pos = { x = -3662.554, y = 278.544, z = -3034.667 }, rot = { x = 24.498, y = 49.549, z = 5.153 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 134003, gadget_id = 70290120, pos = { x = -3648.942, y = 283.444, z = -3043.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 134004, gadget_id = 70290120, pos = { x = -3650.997, y = 275.194, z = -3033.372 }, rot = { x = 12.764, y = 0.000, z = 353.455 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 134005, gadget_id = 70290120, pos = { x = -3678.383, y = 277.561, z = -3026.908 }, rot = { x = 16.892, y = 356.546, z = 348.265 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 134006, gadget_id = 71700288, pos = { x = -3665.287, y = 281.301, z = -3037.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 134011, gadget_id = 70360286, pos = { x = -3665.287, y = 281.301, z = -3037.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 134016, gadget_id = 70710347, pos = { x = -3665.329, y = 281.438, z = -3037.621 }, rot = { x = 320.661, y = 180.000, z = 180.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1134007, name = "ANY_GADGET_DIE_134007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_134007", action = "action_EVENT_ANY_GADGET_DIE_134007" },
	{ config_id = 1134008, name = "GADGET_CREATE_134008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_134008", action = "action_EVENT_GADGET_CREATE_134008", trigger_count = 0 },
	{ config_id = 1134009, name = "ANY_GADGET_DIE_134009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_134009", action = "action_EVENT_ANY_GADGET_DIE_134009" },
	{ config_id = 1134010, name = "ANY_GADGET_DIE_134010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_134010", action = "action_EVENT_ANY_GADGET_DIE_134010" },
	{ config_id = 1134012, name = "SELECT_OPTION_134012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_134012", action = "action_EVENT_SELECT_OPTION_134012" },
	-- 剩余=2
	{ config_id = 1134013, name = "GROUP_LOAD_134013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_134013", action = "action_EVENT_GROUP_LOAD_134013", trigger_count = 0 },
	{ config_id = 1134014, name = "ANY_GADGET_DIE_134014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_134014", action = "action_EVENT_ANY_GADGET_DIE_134014" },
	{ config_id = 1134015, name = "ANY_GADGET_DIE_134015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_134015", action = "action_EVENT_ANY_GADGET_DIE_134015" },
	-- 保底判断隐形操作台已死删除调查特效
	{ config_id = 1134017, name = "GROUP_LOAD_134017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_134017", action = "action_EVENT_GROUP_LOAD_134017", trigger_count = 0 }
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
		gadgets = { 134001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 134001, 134003, 134004, 134005, 134016 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_134007", "ANY_GADGET_DIE_134009", "ANY_GADGET_DIE_134010", "GROUP_LOAD_134013", "GROUP_LOAD_134017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 134001, 134002, 134006, 134011 },
		regions = { },
		triggers = { "GADGET_CREATE_134008", "SELECT_OPTION_134012", "ANY_GADGET_DIE_134014", "ANY_GADGET_DIE_134015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_134007(context, evt)
	-- 判断指定group组剩余gadget数量是否是2 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213134}) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_134007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213134, 3)
	
	-- 将configid为 134001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finished4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished4", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "globalfinish1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "globalfinish1", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3669.028，289.7566，-3035.066），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3669.028, y=289.7566, z=-3035.066}
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
function condition_EVENT_GADGET_CREATE_134008(context, evt)
	if 134011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_134008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213134, 134011, {71}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_134009(context, evt)
	-- 判断指定group组剩余gadget数量是否是4 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213134}) ~= 4 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_134009(context, evt)
	-- 将configid为 134001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_134010(context, evt)
	-- 判断指定group组剩余gadget数量是否是3 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213134}) ~= 3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_134010(context, evt)
	-- 将configid为 134001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_134012(context, evt)
	-- 判断是gadgetid 134011 option_id 71
	if 134011 ~= evt.param1 then
		return false	
	end
	
	if 71 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_134012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212310_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 134011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213134, EntityType.GADGET, 134006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213134, EntityType.GADGET, 134016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_134013(context, evt)
	-- 判断指定group组剩余gadget数量是否是2 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213134}) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_134013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213134, 3)
	
	-- 将configid为 134001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finished4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished4", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_134014(context, evt)
	if 134011 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"globalfinish2"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "globalfinish2", 133213180) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_134014(context, evt)
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
function condition_EVENT_ANY_GADGET_DIE_134015(context, evt)
	if 134011 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"globalfinish2"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "globalfinish2", 133213180) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_134015(context, evt)
	-- 调用提示id为 1110382 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110382) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_134017(context, evt)
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133213134, 134011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_134017(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213134, EntityType.GADGET, 134006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end