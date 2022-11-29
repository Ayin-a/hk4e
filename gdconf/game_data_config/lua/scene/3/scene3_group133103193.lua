-- 基础信息
local base_info = {
	group_id = 133103193
}

-- Trigger变量
local defs = {
	group_id = 133103193,
	gadget_target_1S = 193002,
	gadget_target_1E = 193005,
	gadget_target_2S = 193003,
	gadget_target_2E = 193006,
	gadget_target_3S = 193004,
	gadget_target_3E = 193007
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
	{ config_id = 193001, gadget_id = 70360008, pos = { x = 1108.563, y = 349.457, z = 1542.613 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 32, area_id = 6 },
	{ config_id = 193002, gadget_id = 70360011, pos = { x = 1104.200, y = 349.100, z = 1545.700 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 32, mark_flag = 2, area_id = 6 },
	{ config_id = 193003, gadget_id = 70360011, pos = { x = 1113.400, y = 349.100, z = 1546.300 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 32, mark_flag = 4, area_id = 6 },
	{ config_id = 193004, gadget_id = 70360011, pos = { x = 1109.900, y = 349.100, z = 1536.800 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 32, mark_flag = 8, area_id = 6 },
	{ config_id = 193005, gadget_id = 70360014, pos = { x = 1104.194, y = 349.100, z = 1545.655 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 32, route_id = 310300063, area_id = 6 },
	{ config_id = 193006, gadget_id = 70360014, pos = { x = 1113.400, y = 349.100, z = 1546.300 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 32, route_id = 310300064, area_id = 6 },
	{ config_id = 193007, gadget_id = 70360014, pos = { x = 1109.939, y = 349.100, z = 1536.773 }, rot = { x = 0.000, y = 299.100, z = 0.000 }, level = 32, route_id = 310300065, area_id = 6 },
	{ config_id = 193008, gadget_id = 70211111, pos = { x = 1109.646, y = 349.435, z = 1542.265 }, rot = { x = 348.527, y = 267.801, z = 8.153 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1193009, name = "GADGET_STATE_CHANGE_193009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_193009", trigger_count = 0 },
	{ config_id = 1193010, name = "GADGET_STATE_CHANGE_193010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_193010", action = "action_EVENT_GADGET_STATE_CHANGE_193010" },
	{ config_id = 1193011, name = "VARIABLE_CHANGE_193011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_193011", action = "action_EVENT_VARIABLE_CHANGE_193011" },
	{ config_id = 1193012, name = "GADGET_STATE_CHANGE_193012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_193012", action = "action_EVENT_GADGET_STATE_CHANGE_193012", trigger_count = 0 },
	{ config_id = 1193013, name = "GADGET_CREATE_193013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_193013", action = "action_EVENT_GADGET_CREATE_193013", trigger_count = 0 },
	{ config_id = 1193014, name = "SELECT_OPTION_193014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_193014", action = "action_EVENT_SELECT_OPTION_193014", trigger_count = 0 },
	{ config_id = 1193015, name = "GROUP_REFRESH_193015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_193015" },
	{ config_id = 1193016, name = "ANY_GADGET_DIE_193016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_193016", trigger_count = 0 },
	{ config_id = 1193017, name = "GADGET_CREATE_193017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_193017", action = "action_EVENT_GADGET_CREATE_193017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 193001, 193002, 193003, 193004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_193009", "GADGET_STATE_CHANGE_193010", "VARIABLE_CHANGE_193011", "GADGET_STATE_CHANGE_193012", "GADGET_CREATE_193013", "SELECT_OPTION_193014", "GROUP_REFRESH_193015", "ANY_GADGET_DIE_193016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 193001, 193008 },
		regions = { },
		triggers = { "GADGET_CREATE_193017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_193009(context, evt)
	if evt.param1 == GadgetState.GearStart and evt.param3 == GadgetState.Default then
		
	if evt.param2 == defs.gadget_target_1S  then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_1E }) 
	
	elseif evt.param2 == defs.gadget_target_2S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_2E }) 
	
	elseif evt.param2 == defs.gadget_target_3S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_3E }) 
	
	end
		
	return 0
	else return -1
		
	end
		
	return false
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_193010(context, evt)
	if 193001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
	return false
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_1S)  then 
	return true
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_2S)  then 
	return true
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_3S)  then 
	return true
	end
		
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_193010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103193, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_193011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_193011(context, evt)
	-- 将configid为 193001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103193, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_193012(context, evt)
	if 193001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_193012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133103193 ；指定config：193001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103193, 193001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_193013(context, evt)
	if 193001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_193013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103193, 193001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_193014(context, evt)
	if 193001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_193014(context, evt)
	-- 将configid为 193001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_193015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103193, 193001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_193016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_193017(context, evt)
	if 193001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_193017(context, evt)
	-- 将configid为 193001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end