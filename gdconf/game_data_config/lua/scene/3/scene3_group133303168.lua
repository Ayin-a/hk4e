-- 基础信息
local base_info = {
	group_id = 133303168
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 168001, monster_id = 26010101, pos = { x = -1658.056, y = 291.464, z = 3799.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "骗骗花", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 168002, gadget_id = 70510013, pos = { x = -1643.680, y = 285.558, z = 3801.877 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 168003, gadget_id = 70510013, pos = { x = -1651.547, y = 288.853, z = 3803.362 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 168004, gadget_id = 70510013, pos = { x = -1658.231, y = 291.500, z = 3799.557 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 168005, gadget_id = 70211101, pos = { x = -1661.149, y = 290.921, z = 3801.589 }, rot = { x = 31.325, y = 40.391, z = 340.005 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1168006, name = "GADGET_STATE_CHANGE_168006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_168006", action = "action_EVENT_GADGET_STATE_CHANGE_168006", trigger_count = 0 },
	{ config_id = 1168007, name = "ANY_MONSTER_DIE_168007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_168007", action = "action_EVENT_ANY_MONSTER_DIE_168007" },
	{ config_id = 1168008, name = "SELECT_OPTION_168008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_168008", action = "action_EVENT_SELECT_OPTION_168008", trigger_count = 0 },
	{ config_id = 1168009, name = "SELECT_OPTION_168009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_168009", action = "action_EVENT_SELECT_OPTION_168009", trigger_count = 0 },
	{ config_id = 1168010, name = "GADGET_STATE_CHANGE_168010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_168010", action = "action_EVENT_GADGET_STATE_CHANGE_168010", trigger_count = 0 },
	{ config_id = 1168011, name = "GADGET_STATE_CHANGE_168011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_168011", action = "action_EVENT_GADGET_STATE_CHANGE_168011", trigger_count = 0 },
	{ config_id = 1168012, name = "SELECT_OPTION_168012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_168012", action = "action_EVENT_SELECT_OPTION_168012", trigger_count = 0 },
	-- 错suite保底删除假花
	{ config_id = 1168013, name = "GADGET_CREATE_168013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_168013", action = "action_EVENT_GADGET_CREATE_168013", trigger_count = 0 },
	-- 错suite保底删除假花
	{ config_id = 1168014, name = "GADGET_CREATE_168014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_168014", action = "action_EVENT_GADGET_CREATE_168014", trigger_count = 0 },
	-- 错suite保底删除假花
	{ config_id = 1168015, name = "GADGET_CREATE_168015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_168015", action = "action_EVENT_GADGET_CREATE_168015", trigger_count = 0 }
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
		gadgets = { 168002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_168006", "ANY_MONSTER_DIE_168007", "SELECT_OPTION_168009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 168003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_168010", "SELECT_OPTION_168012", "GADGET_CREATE_168013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 168004 },
		regions = { },
		triggers = { "SELECT_OPTION_168008", "GADGET_STATE_CHANGE_168011", "GADGET_CREATE_168014" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 168001 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_168015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_168006(context, evt)
	if 168002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_168006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303168, 2)
	
	-- 删除指定group： 133303168 ；指定config：168002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303168, 168002, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_168007(context, evt)
	if 168001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_168007(context, evt)
	-- 创建id为168005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 168005 }) then
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
function condition_EVENT_SELECT_OPTION_168008(context, evt)
	-- 判断是gadgetid 168004 option_id 173
	if 168004 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_168008(context, evt)
	-- 将configid为 168004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 168004, GadgetState.GearStart) then
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
function condition_EVENT_SELECT_OPTION_168009(context, evt)
	-- 判断是gadgetid 168002 option_id 173
	if 168002 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_168009(context, evt)
	-- 将configid为 168002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 168002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133303168 ；指定config：168002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303168, 168002, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_168010(context, evt)
	if 168003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_168010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303168, 3)
	
	-- 删除指定group： 133303168 ；指定config：168003；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303168, 168003, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_168011(context, evt)
	if 168004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_168011(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303168, 4)
	
	-- 删除指定group： 133303168 ；指定config：168004；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303168, 168004, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_168012(context, evt)
	-- 判断是gadgetid 168003 option_id 173
	if 168003 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_168012(context, evt)
	-- 将configid为 168003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 168003, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_CREATE_168013(context, evt)
	if 168002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_168013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 168002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_168014(context, evt)
	if 168003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_168014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 168003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_168015(context, evt)
	if 168004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_168015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 168004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end