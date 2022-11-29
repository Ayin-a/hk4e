-- 基础信息
local base_info = {
	group_id = 250075007
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
	{ config_id = 7001, gadget_id = 70290527, pos = { x = 480.570, y = 22.890, z = 484.080 }, rot = { x = 0.000, y = 288.803, z = 0.000 }, level = 1 },
	{ config_id = 7002, gadget_id = 70290528, pos = { x = 422.590, y = 85.760, z = 484.240 }, rot = { x = 0.000, y = 92.586, z = 0.000 }, level = 1 },
	{ config_id = 7003, gadget_id = 70290526, pos = { x = 477.158, y = 17.101, z = 487.510 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1 },
	{ config_id = 7004, gadget_id = 70290526, pos = { x = 427.781, y = 80.618, z = 481.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007005, name = "GADGET_CREATE_7005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7005", action = "action_EVENT_GADGET_CREATE_7005" },
	{ config_id = 1007006, name = "SELECT_OPTION_7006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7006", action = "action_EVENT_SELECT_OPTION_7006" },
	{ config_id = 1007007, name = "SELECT_OPTION_7007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7007", action = "action_EVENT_SELECT_OPTION_7007" },
	{ config_id = 1007008, name = "GADGET_CREATE_7008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7008", action = "action_EVENT_GADGET_CREATE_7008" },
	{ config_id = 1007009, name = "SELECT_OPTION_7009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7009", action = "action_EVENT_SELECT_OPTION_7009" },
	{ config_id = 1007010, name = "SELECT_OPTION_7010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7010", action = "action_EVENT_SELECT_OPTION_7010" }
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
		gadgets = { 7001, 7002, 7003, 7004 },
		regions = { },
		triggers = { "GADGET_CREATE_7005", "SELECT_OPTION_7006", "SELECT_OPTION_7007", "GADGET_CREATE_7008", "SELECT_OPTION_7009", "SELECT_OPTION_7010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_7005(context, evt)
	if 7003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250075007, 7003, {1,4}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7006(context, evt)
	-- 判断是gadgetid 7003 option_id 1
	if 7003 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7006(context, evt)
	-- 将configid为 7003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 250075007 ；指定config：7003；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250075007, 7003, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组250075007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250075007, 7001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7007(context, evt)
	-- 判断是gadgetid 7003 option_id 4
	if 7003 ~= evt.param1 then
		return false	
	end
	
	if 4 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7007(context, evt)
	-- 将configid为 7003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 250075007 ；指定config：7003；物件身上指定option：4；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250075007, 7003, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组250075007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250075007, 7001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_7008(context, evt)
	if 7004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250075007, 7004, {1,4}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7009(context, evt)
	-- 判断是gadgetid 7004 option_id 1
	if 7004 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7009(context, evt)
	-- 将configid为 7004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 250075007 ；指定config：7004；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250075007, 7004, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组250075007中， configid为7002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250075007, 7002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7010(context, evt)
	-- 判断是gadgetid 7004 option_id 4
	if 7004 ~= evt.param1 then
		return false	
	end
	
	if 4 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7010(context, evt)
	-- 将configid为 7004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 250075007 ；指定config：7004；物件身上指定option：4；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250075007, 7004, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组250075007中， configid为7002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250075007, 7002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end