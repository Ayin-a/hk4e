-- 基础信息
local base_info = {
	group_id = 133303505
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 505001, monster_id = 26010101, pos = { x = -862.243, y = 178.665, z = 3766.220 }, rot = { x = 0.000, y = 61.821, z = 0.000 }, level = 30, drop_tag = "骗骗花", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 505002, gadget_id = 70510013, pos = { x = -835.331, y = 176.999, z = 3764.643 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 505003, gadget_id = 70510013, pos = { x = -849.830, y = 174.741, z = 3762.840 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 505004, gadget_id = 70510013, pos = { x = -862.243, y = 178.665, z = 3766.220 }, rot = { x = 343.146, y = 321.232, z = 350.355 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 505005, gadget_id = 70211101, pos = { x = -866.826, y = 183.768, z = 3772.463 }, rot = { x = 20.062, y = 133.851, z = 4.783 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1505006, name = "GADGET_STATE_CHANGE_505006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_505006", action = "action_EVENT_GADGET_STATE_CHANGE_505006", trigger_count = 0 },
	{ config_id = 1505007, name = "ANY_MONSTER_DIE_505007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_505007", action = "action_EVENT_ANY_MONSTER_DIE_505007" },
	{ config_id = 1505008, name = "SELECT_OPTION_505008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_505008", action = "action_EVENT_SELECT_OPTION_505008", trigger_count = 0 },
	{ config_id = 1505009, name = "SELECT_OPTION_505009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_505009", action = "action_EVENT_SELECT_OPTION_505009", trigger_count = 0 },
	{ config_id = 1505010, name = "GADGET_STATE_CHANGE_505010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_505010", action = "action_EVENT_GADGET_STATE_CHANGE_505010", trigger_count = 0 },
	{ config_id = 1505011, name = "GADGET_STATE_CHANGE_505011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_505011", action = "action_EVENT_GADGET_STATE_CHANGE_505011", trigger_count = 0 },
	{ config_id = 1505012, name = "SELECT_OPTION_505012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_505012", action = "action_EVENT_SELECT_OPTION_505012", trigger_count = 0 },
	-- 错suite保底删除假花
	{ config_id = 1505013, name = "GADGET_CREATE_505013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_505013", action = "action_EVENT_GADGET_CREATE_505013", trigger_count = 0 },
	-- 错suite保底删除假花
	{ config_id = 1505014, name = "GADGET_CREATE_505014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_505014", action = "action_EVENT_GADGET_CREATE_505014", trigger_count = 0 },
	-- 标记到最后阶段final=1
	{ config_id = 1505015, name = "GADGET_CREATE_505015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_505015", action = "action_EVENT_GADGET_CREATE_505015", trigger_count = 0 },
	{ config_id = 1505017, name = "GROUP_LOAD_505017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_505017", action = "action_EVENT_GROUP_LOAD_505017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "final", value = 0, no_refresh = true },
	{ config_id = 2, name = "fin", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1505016, name = "GADGET_CREATE_505016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_505016", action = "action_EVENT_GADGET_CREATE_505016", trigger_count = 0 }
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
	end_suite = 5,
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
		gadgets = { 505002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_505006", "ANY_MONSTER_DIE_505007", "SELECT_OPTION_505009", "GROUP_LOAD_505017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 505003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_505010", "SELECT_OPTION_505012", "GADGET_CREATE_505013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 505004 },
		regions = { },
		triggers = { "SELECT_OPTION_505008", "GADGET_STATE_CHANGE_505011", "GADGET_CREATE_505014" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 505001 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_505015" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 505005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_505006(context, evt)
	if 505002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_505006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303505, 2)
	
	-- 删除指定group： 133303505 ；指定config：505002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303505, 505002, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-849.8297, y=174.7412, z=3762.84}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-849.8297, y=174.7412, z=3762.84}
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
function condition_EVENT_ANY_MONSTER_DIE_505007(context, evt)
	if 505001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_505007(context, evt)
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为505005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 505005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_505008(context, evt)
	-- 判断是gadgetid 505004 option_id 173
	if 505004 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_505008(context, evt)
	-- 将configid为 505004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 505004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_505009(context, evt)
	-- 判断是gadgetid 505002 option_id 173
	if 505002 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_505009(context, evt)
	-- 将configid为 505002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 505002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133303505 ；指定config：505002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303505, 505002, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_505010(context, evt)
	if 505003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_505010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303505, 3)
	
	-- 删除指定group： 133303505 ；指定config：505003；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303505, 505003, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_505011(context, evt)
	if 505004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_505011(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303505, 4)
	
	-- 删除指定group： 133303505 ；指定config：505004；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303505, 505004, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_505012(context, evt)
	-- 判断是gadgetid 505003 option_id 173
	if 505003 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_505012(context, evt)
	-- 将configid为 505003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 505003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_505013(context, evt)
	if 505002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_505013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 505002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_505014(context, evt)
	if 505003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_505014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 505003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_505015(context, evt)
	if 505004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_505015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 505004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_505017(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_505017(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303505, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end