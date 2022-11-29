-- 基础信息
local base_info = {
	group_id = 133303356
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 356001, monster_id = 26010101, pos = { x = -1769.970, y = 146.209, z = 3511.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "骗骗花", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 356002, gadget_id = 70510013, pos = { x = -1770.909, y = 149.216, z = 3534.221 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 356003, gadget_id = 70510013, pos = { x = -1767.396, y = 147.716, z = 3525.041 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 356004, gadget_id = 70510013, pos = { x = -1770.067, y = 146.203, z = 3511.367 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 356005, gadget_id = 70211101, pos = { x = -1770.574, y = 146.030, z = 3507.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1356006, name = "GADGET_STATE_CHANGE_356006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_356006", action = "action_EVENT_GADGET_STATE_CHANGE_356006", trigger_count = 0 },
	{ config_id = 1356007, name = "ANY_MONSTER_DIE_356007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_356007", action = "action_EVENT_ANY_MONSTER_DIE_356007" },
	{ config_id = 1356008, name = "SELECT_OPTION_356008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_356008", action = "action_EVENT_SELECT_OPTION_356008", trigger_count = 0 },
	{ config_id = 1356009, name = "SELECT_OPTION_356009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_356009", action = "action_EVENT_SELECT_OPTION_356009", trigger_count = 0 },
	{ config_id = 1356010, name = "GADGET_STATE_CHANGE_356010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_356010", action = "action_EVENT_GADGET_STATE_CHANGE_356010", trigger_count = 0 },
	{ config_id = 1356011, name = "GADGET_STATE_CHANGE_356011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_356011", action = "action_EVENT_GADGET_STATE_CHANGE_356011", trigger_count = 0 },
	{ config_id = 1356012, name = "SELECT_OPTION_356012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_356012", action = "action_EVENT_SELECT_OPTION_356012", trigger_count = 0 },
	-- 错suite保底删除假花
	{ config_id = 1356013, name = "GADGET_CREATE_356013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_356013", action = "action_EVENT_GADGET_CREATE_356013", trigger_count = 0 },
	-- 错suite保底删除假花
	{ config_id = 1356014, name = "GADGET_CREATE_356014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_356014", action = "action_EVENT_GADGET_CREATE_356014", trigger_count = 0 },
	-- 错suite保底删除假花
	{ config_id = 1356015, name = "GADGET_CREATE_356015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_356015", action = "action_EVENT_GADGET_CREATE_356015", trigger_count = 0 }
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
		gadgets = { 356002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_356006", "ANY_MONSTER_DIE_356007", "SELECT_OPTION_356009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 356003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_356010", "SELECT_OPTION_356012", "GADGET_CREATE_356013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 356004 },
		regions = { },
		triggers = { "SELECT_OPTION_356008", "GADGET_STATE_CHANGE_356011", "GADGET_CREATE_356014" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 356001 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_356015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_356006(context, evt)
	if 356002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_356006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303356, 2)
	
	-- 删除指定group： 133303356 ；指定config：356002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303356, 356002, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_356007(context, evt)
	if 356001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_356007(context, evt)
	-- 创建id为356005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 356005 }) then
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
function condition_EVENT_SELECT_OPTION_356008(context, evt)
	-- 判断是gadgetid 356004 option_id 173
	if 356004 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_356008(context, evt)
	-- 将configid为 356004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 356004, GadgetState.GearStart) then
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
function condition_EVENT_SELECT_OPTION_356009(context, evt)
	-- 判断是gadgetid 356002 option_id 173
	if 356002 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_356009(context, evt)
	-- 将configid为 356002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 356002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133303356 ；指定config：356002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303356, 356002, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_356010(context, evt)
	if 356003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_356010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303356, 3)
	
	-- 删除指定group： 133303356 ；指定config：356003；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303356, 356003, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_356011(context, evt)
	if 356004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_356011(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303356, 4)
	
	-- 删除指定group： 133303356 ；指定config：356004；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303356, 356004, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_356012(context, evt)
	-- 判断是gadgetid 356003 option_id 173
	if 356003 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_356012(context, evt)
	-- 将configid为 356003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 356003, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_CREATE_356013(context, evt)
	if 356002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_356013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 356002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_356014(context, evt)
	if 356003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_356014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 356003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_356015(context, evt)
	if 356004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_356015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 356004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end