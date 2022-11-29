-- 基础信息
local base_info = {
	group_id = 133213135
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
	{ config_id = 135001, gadget_id = 70290119, pos = { x = -3873.583, y = 240.400, z = -3002.213 }, rot = { x = 0.000, y = 28.074, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 135002, gadget_id = 70211101, pos = { x = -3871.108, y = 240.664, z = -2999.337 }, rot = { x = 10.024, y = 47.444, z = 348.794 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 135003, gadget_id = 70290120, pos = { x = -3863.114, y = 243.658, z = -3021.307 }, rot = { x = 0.000, y = 0.000, z = 346.647 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 135004, gadget_id = 70290120, pos = { x = -3888.994, y = 244.420, z = -3017.855 }, rot = { x = 354.978, y = 0.462, z = 348.586 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 135005, gadget_id = 70290120, pos = { x = -3874.652, y = 239.677, z = -2979.372 }, rot = { x = 3.234, y = 359.033, z = 342.669 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 135006, gadget_id = 71700288, pos = { x = -3872.761, y = 242.517, z = -3002.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 135011, gadget_id = 70360286, pos = { x = -3872.761, y = 242.517, z = -3002.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 135016, gadget_id = 70710347, pos = { x = -3872.667, y = 242.369, z = -3002.521 }, rot = { x = 358.263, y = 100.076, z = 209.825 }, level = 27, isOneoff = true, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1135007, name = "ANY_GADGET_DIE_135007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_135007", action = "action_EVENT_ANY_GADGET_DIE_135007" },
	{ config_id = 1135008, name = "GADGET_CREATE_135008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_135008", action = "action_EVENT_GADGET_CREATE_135008", trigger_count = 0 },
	{ config_id = 1135009, name = "ANY_GADGET_DIE_135009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_135009", action = "action_EVENT_ANY_GADGET_DIE_135009" },
	{ config_id = 1135010, name = "ANY_GADGET_DIE_135010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_135010", action = "action_EVENT_ANY_GADGET_DIE_135010" },
	{ config_id = 1135012, name = "SELECT_OPTION_135012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_135012", action = "action_EVENT_SELECT_OPTION_135012" },
	-- 剩余=2
	{ config_id = 1135013, name = "GROUP_LOAD_135013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_135013", action = "action_EVENT_GROUP_LOAD_135013", trigger_count = 0 },
	{ config_id = 1135014, name = "ANY_GADGET_DIE_135014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_135014", action = "action_EVENT_ANY_GADGET_DIE_135014" },
	{ config_id = 1135015, name = "ANY_GADGET_DIE_135015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_135015", action = "action_EVENT_ANY_GADGET_DIE_135015" },
	-- 保底判断隐形操作台已死删除调查特效
	{ config_id = 1135017, name = "GROUP_LOAD_135017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_135017", action = "action_EVENT_GROUP_LOAD_135017", trigger_count = 0 }
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
		gadgets = { 135001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 135001, 135003, 135004, 135005, 135016 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_135007", "ANY_GADGET_DIE_135009", "ANY_GADGET_DIE_135010", "GROUP_LOAD_135013", "GROUP_LOAD_135017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 135001, 135002, 135006, 135011 },
		regions = { },
		triggers = { "GADGET_CREATE_135008", "SELECT_OPTION_135012", "ANY_GADGET_DIE_135014", "ANY_GADGET_DIE_135015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_135007(context, evt)
	-- 判断指定group组剩余gadget数量是否是2 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213135}) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_135007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213135, 3)
	
	-- 将configid为 135001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finished5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished5", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "globalfinish1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "globalfinish1", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3875.27，250.7675，-2999.373），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3875.27, y=250.7675, z=-2999.373}
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
function condition_EVENT_GADGET_CREATE_135008(context, evt)
	if 135011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_135008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213135, 135011, {71}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_135009(context, evt)
	-- 判断指定group组剩余gadget数量是否是4 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213135}) ~= 4 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_135009(context, evt)
	-- 将configid为 135001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_135010(context, evt)
	-- 判断指定group组剩余gadget数量是否是3 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213135}) ~= 3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_135010(context, evt)
	-- 将configid为 135001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_135012(context, evt)
	-- 判断是gadgetid 135011 option_id 71
	if 135011 ~= evt.param1 then
		return false	
	end
	
	if 71 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_135012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212311_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 135011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213135, EntityType.GADGET, 135006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213135, EntityType.GADGET, 135016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_135013(context, evt)
	-- 判断指定group组剩余gadget数量是否是2 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213135}) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_135013(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213135, 1)
	
	-- 将configid为 135001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finished5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished5", 1, 133213180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_135014(context, evt)
	if 135011 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"globalfinish2"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "globalfinish2", 133213180) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_135014(context, evt)
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
function condition_EVENT_ANY_GADGET_DIE_135015(context, evt)
	if 135011 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"globalfinish2"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "globalfinish2", 133213180) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_135015(context, evt)
	-- 调用提示id为 1110382 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110382) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_135017(context, evt)
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133213135, 135011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_135017(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213135, EntityType.GADGET, 135006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end