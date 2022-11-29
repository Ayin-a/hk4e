-- 基础信息
local base_info = {
	group_id = 133308143
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
	{ config_id = 143001, gadget_id = 70330333, pos = { x = -2021.152, y = 160.411, z = 5590.764 }, rot = { x = 0.000, y = 135.686, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 143002, gadget_id = 70360286, pos = { x = -2021.113, y = 162.074, z = 5590.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, worktop_config = { is_persistent = true, init_options = { } }, area_id = 27 },
	{ config_id = 143003, gadget_id = 70330416, pos = { x = -2021.187, y = 160.837, z = 5595.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1143004, name = "GADGET_CREATE_143004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_143004", action = "action_EVENT_GADGET_CREATE_143004", trigger_count = 0 },
	{ config_id = 1143005, name = "SELECT_OPTION_143005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_143005", action = "action_EVENT_SELECT_OPTION_143005", trigger_count = 0 },
	{ config_id = 1143006, name = "GROUP_LOAD_143006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_143006", action = "action_EVENT_GROUP_LOAD_143006", trigger_count = 0 }
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
		gadgets = { 143001, 143002, 143003 },
		regions = { },
		triggers = { "GADGET_CREATE_143004", "SELECT_OPTION_143005", "GROUP_LOAD_143006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_143004(context, evt)
	if 143001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"end"为0
	if ScriptLib.GetGroupVariableValue(context, "end") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_143004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308143, 143002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_143005(context, evt)
	-- 判断是gadgetid 143002 option_id 7
	if 143002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_143005(context, evt)
	-- 将本组内变量名为 "end" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "end", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 143003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 143001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308143 ；指定config：143002；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308143, 143002, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_143006(context, evt)
	-- 判断变量"end"为1
	if ScriptLib.GetGroupVariableValue(context, "end") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_143006(context, evt)
	-- 将configid为 143003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 143001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end