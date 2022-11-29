-- 基础信息
local base_info = {
	group_id = 133303199
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 199001, monster_id = 26010101, pos = { x = -1964.189, y = 375.726, z = 3490.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "骗骗花", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 199002, gadget_id = 70510013, pos = { x = -1956.416, y = 374.951, z = 3493.646 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 199003, gadget_id = 70510013, pos = { x = -1962.501, y = 375.620, z = 3500.543 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 199004, gadget_id = 70510013, pos = { x = -1964.284, y = 375.733, z = 3490.672 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 199005, gadget_id = 70211101, pos = { x = -1967.167, y = 375.760, z = 3490.143 }, rot = { x = 0.000, y = 74.018, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 199013, gadget_id = 70510013, pos = { x = -1961.915, y = 375.579, z = 3496.977 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 199014, gadget_id = 70510013, pos = { x = -1965.341, y = 375.717, z = 3495.699 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 199015, gadget_id = 70510013, pos = { x = -1965.986, y = 375.627, z = 3499.239 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 },
	{ config_id = 199016, gadget_id = 70510013, pos = { x = -1960.373, y = 375.302, z = 3492.148 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 173 } }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1199006, name = "GADGET_STATE_CHANGE_199006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_199006", action = "action_EVENT_GADGET_STATE_CHANGE_199006", trigger_count = 0 },
	{ config_id = 1199007, name = "ANY_MONSTER_DIE_199007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_199007", action = "action_EVENT_ANY_MONSTER_DIE_199007" },
	{ config_id = 1199008, name = "SELECT_OPTION_199008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_199008", action = "action_EVENT_SELECT_OPTION_199008", trigger_count = 0 },
	{ config_id = 1199009, name = "SELECT_OPTION_199009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_199009", action = "action_EVENT_SELECT_OPTION_199009", trigger_count = 0 },
	{ config_id = 1199010, name = "GADGET_STATE_CHANGE_199010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_199010", action = "action_EVENT_GADGET_STATE_CHANGE_199010", trigger_count = 0 },
	{ config_id = 1199011, name = "GADGET_STATE_CHANGE_199011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_199011", action = "action_EVENT_GADGET_STATE_CHANGE_199011", trigger_count = 0 },
	{ config_id = 1199012, name = "SELECT_OPTION_199012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_199012", action = "action_EVENT_SELECT_OPTION_199012", trigger_count = 0 },
	{ config_id = 1199017, name = "SELECT_OPTION_199017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_199017", action = "action_EVENT_SELECT_OPTION_199017", trigger_count = 0 },
	{ config_id = 1199018, name = "SELECT_OPTION_199018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_199018", action = "action_EVENT_SELECT_OPTION_199018", trigger_count = 0 },
	{ config_id = 1199019, name = "SELECT_OPTION_199019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_199019", action = "action_EVENT_SELECT_OPTION_199019", trigger_count = 0 },
	{ config_id = 1199020, name = "SELECT_OPTION_199020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_199020", action = "action_EVENT_SELECT_OPTION_199020", trigger_count = 0 },
	-- 错suite保底删除假花
	{ config_id = 1199021, name = "GADGET_CREATE_199021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199021", action = "action_EVENT_GADGET_CREATE_199021", trigger_count = 0 },
	-- 错suite保底删除假花
	{ config_id = 1199022, name = "GADGET_CREATE_199022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199022", action = "action_EVENT_GADGET_CREATE_199022", trigger_count = 0 },
	-- 错suite保底删除假花
	{ config_id = 1199023, name = "GADGET_CREATE_199023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199023", action = "action_EVENT_GADGET_CREATE_199023", trigger_count = 0 },
	-- 上一阶段假花删除保底13
	{ config_id = 1199024, name = "GADGET_CREATE_199024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199024", action = "action_EVENT_GADGET_CREATE_199024", trigger_count = 0 },
	-- 上一阶段假花删除保底16
	{ config_id = 1199025, name = "GADGET_CREATE_199025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199025", action = "action_EVENT_GADGET_CREATE_199025", trigger_count = 0 },
	-- 上一阶段假花删除保底13
	{ config_id = 1199026, name = "GADGET_CREATE_199026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199026", action = "action_EVENT_GADGET_CREATE_199026", trigger_count = 0 },
	-- 上一阶段假花删除保底13
	{ config_id = 1199027, name = "GADGET_CREATE_199027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199027", action = "action_EVENT_GADGET_CREATE_199027", trigger_count = 0 },
	-- 状态判断保底13
	{ config_id = 1199028, name = "GADGET_CREATE_199028", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199028", action = "action_EVENT_GADGET_CREATE_199028", trigger_count = 0 },
	-- 状态判断保底16
	{ config_id = 1199029, name = "GADGET_CREATE_199029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199029", action = "action_EVENT_GADGET_CREATE_199029", trigger_count = 0 },
	-- 状态判断保底14
	{ config_id = 1199030, name = "GADGET_CREATE_199030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199030", action = "action_EVENT_GADGET_CREATE_199030", trigger_count = 0 },
	-- 状态判断保底15
	{ config_id = 1199031, name = "GADGET_CREATE_199031", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199031", action = "action_EVENT_GADGET_CREATE_199031", trigger_count = 0 }
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
		gadgets = { 199002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_199006", "ANY_MONSTER_DIE_199007", "SELECT_OPTION_199009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 199003, 199013, 199016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_199010", "SELECT_OPTION_199012", "SELECT_OPTION_199017", "SELECT_OPTION_199018", "GADGET_CREATE_199021", "GADGET_CREATE_199028", "GADGET_CREATE_199029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 199004, 199014, 199015 },
		regions = { },
		triggers = { "SELECT_OPTION_199008", "GADGET_STATE_CHANGE_199011", "SELECT_OPTION_199019", "SELECT_OPTION_199020", "GADGET_CREATE_199022", "GADGET_CREATE_199024", "GADGET_CREATE_199025", "GADGET_CREATE_199030", "GADGET_CREATE_199031" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 199001 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_199023", "GADGET_CREATE_199026", "GADGET_CREATE_199027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
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
function condition_EVENT_GADGET_STATE_CHANGE_199006(context, evt)
	if 199002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_199006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303199, 2)
	
	-- 删除指定group： 133303199 ；指定config：199002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303199, 199002, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_199007(context, evt)
	if 199001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_199007(context, evt)
	-- 创建id为199005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199005 }) then
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
function condition_EVENT_SELECT_OPTION_199008(context, evt)
	-- 判断是gadgetid 199004 option_id 173
	if 199004 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_199008(context, evt)
	-- 将configid为 199004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199004, GadgetState.GearStart) then
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
function condition_EVENT_SELECT_OPTION_199009(context, evt)
	-- 判断是gadgetid 199002 option_id 173
	if 199002 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_199009(context, evt)
	-- 将configid为 199002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133303199 ；指定config：199002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303199, 199002, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_199010(context, evt)
	if 199003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_199010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303199, 3)
	
	-- 删除指定group： 133303199 ；指定config：199003；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303199, 199003, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_199011(context, evt)
	if 199004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_199011(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303199, 4)
	
	-- 删除指定group： 133303199 ；指定config：199004；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303199, 199004, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_199012(context, evt)
	-- 判断是gadgetid 199003 option_id 173
	if 199003 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_199012(context, evt)
	-- 将configid为 199003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199003, GadgetState.GearStart) then
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
function condition_EVENT_SELECT_OPTION_199017(context, evt)
	-- 判断是gadgetid 199013 option_id 173
	if 199013 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_199017(context, evt)
	-- 将configid为 199013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133303199 ；指定config：199013；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303199, 199013, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_199018(context, evt)
	-- 判断是gadgetid 199016 option_id 173
	if 199016 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_199018(context, evt)
	-- 将configid为 199016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133303199 ；指定config：199016；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303199, 199016, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_199019(context, evt)
	-- 判断是gadgetid 199014 option_id 173
	if 199014 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_199019(context, evt)
	-- 将configid为 199014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133303199 ；指定config：199014；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303199, 199014, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_199020(context, evt)
	-- 判断是gadgetid 199015 option_id 173
	if 199015 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_199020(context, evt)
	-- 将configid为 199015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133303199 ；指定config：199015；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303199, 199015, 173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_199021(context, evt)
	if 199002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_199021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_199022(context, evt)
	if 199003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_199022(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_199023(context, evt)
	if 199004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_199023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_199024(context, evt)
	if 199013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_199024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_199025(context, evt)
	if 199016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_199025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_199026(context, evt)
	if 199014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_199026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_199027(context, evt)
	if 199015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_199027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_199028(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303199, 199013) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_199028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_199029(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303199, 199016) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_199029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_199030(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303199, 199014) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_199030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_199031(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303199, 199015) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_199031(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end