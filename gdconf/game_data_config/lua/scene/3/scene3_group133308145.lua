-- 基础信息
local base_info = {
	group_id = 133308145
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
	{ config_id = 145001, gadget_id = 70330416, pos = { x = -2606.000, y = 177.524, z = 5436.708 }, rot = { x = 0.000, y = 269.350, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 145002, gadget_id = 70330333, pos = { x = -2600.992, y = 178.292, z = 5436.496 }, rot = { x = 0.000, y = 91.653, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 145003, gadget_id = 70360286, pos = { x = -2601.009, y = 179.920, z = 5436.384 }, rot = { x = 0.000, y = 88.879, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1145004, name = "GADGET_CREATE_145004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_145004", action = "action_EVENT_GADGET_CREATE_145004", trigger_count = 0 },
	{ config_id = 1145005, name = "SELECT_OPTION_145005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_145005", action = "action_EVENT_SELECT_OPTION_145005", trigger_count = 0 },
	{ config_id = 1145006, name = "GROUP_LOAD_145006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_145006", action = "action_EVENT_GROUP_LOAD_145006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "end", value = 0, no_refresh = true }
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
		gadgets = { 145001, 145002, 145003 },
		regions = { },
		triggers = { "GADGET_CREATE_145004", "SELECT_OPTION_145005", "GROUP_LOAD_145006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_145004(context, evt)
	if 145002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"end"为0
	if ScriptLib.GetGroupVariableValue(context, "end") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_145004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308145, 145003, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_145005(context, evt)
	-- 判断是gadgetid 145003 option_id 7
	if 145003 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_145005(context, evt)
	-- 将本组内变量名为 "end" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "end", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 145001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 145002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308145 ；指定config：145003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308145, 145003, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_145006(context, evt)
	-- 判断变量"end"为1
	if ScriptLib.GetGroupVariableValue(context, "end") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_145006(context, evt)
	-- 将configid为 145001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 145002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308145 ；指定config：145003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308145, 145003, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end