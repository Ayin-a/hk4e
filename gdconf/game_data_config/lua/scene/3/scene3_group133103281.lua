-- 基础信息
local base_info = {
	group_id = 133103281
}

-- Trigger变量
local defs = {
	group_id = 133103281,
	gadget_target_1S = 281002,
	gadget_target_1E = 281005,
	gadget_target_2S = 281003,
	gadget_target_2E = 281006,
	gadget_target_3S = 281004,
	gadget_target_3E = 281007
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
	{ config_id = 281001, gadget_id = 70360008, pos = { x = 910.823, y = 372.771, z = 1452.700 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 32, area_id = 6 },
	{ config_id = 281002, gadget_id = 70360011, pos = { x = 903.699, y = 378.989, z = 1448.252 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 32, mark_flag = 2, area_id = 6 },
	{ config_id = 281003, gadget_id = 70360011, pos = { x = 903.700, y = 379.983, z = 1448.300 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 32, mark_flag = 4, area_id = 6 },
	{ config_id = 281004, gadget_id = 70360011, pos = { x = 903.700, y = 384.497, z = 1448.300 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 32, mark_flag = 8, area_id = 6 },
	{ config_id = 281005, gadget_id = 70360014, pos = { x = 903.699, y = 378.989, z = 1448.252 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 32, route_id = 310300082, area_id = 6 },
	{ config_id = 281006, gadget_id = 70360014, pos = { x = 903.700, y = 379.983, z = 1448.300 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 32, route_id = 310300083, area_id = 6 },
	{ config_id = 281007, gadget_id = 70360014, pos = { x = 903.700, y = 384.497, z = 1448.300 }, rot = { x = 0.000, y = 299.100, z = 0.000 }, level = 32, route_id = 310300084, area_id = 6 },
	{ config_id = 281008, gadget_id = 70211111, pos = { x = 910.788, y = 372.771, z = 1451.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1281009, name = "GADGET_STATE_CHANGE_281009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_281009", trigger_count = 0 },
	{ config_id = 1281010, name = "GADGET_STATE_CHANGE_281010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_281010", action = "action_EVENT_GADGET_STATE_CHANGE_281010" },
	{ config_id = 1281011, name = "VARIABLE_CHANGE_281011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_281011", action = "action_EVENT_VARIABLE_CHANGE_281011" },
	{ config_id = 1281012, name = "GADGET_STATE_CHANGE_281012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_281012", action = "action_EVENT_GADGET_STATE_CHANGE_281012", trigger_count = 0 },
	{ config_id = 1281013, name = "GADGET_CREATE_281013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_281013", action = "action_EVENT_GADGET_CREATE_281013", trigger_count = 0 },
	{ config_id = 1281014, name = "SELECT_OPTION_281014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_281014", action = "action_EVENT_SELECT_OPTION_281014", trigger_count = 0 },
	{ config_id = 1281015, name = "GROUP_REFRESH_281015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_281015" },
	{ config_id = 1281016, name = "ANY_GADGET_DIE_281016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_281016", trigger_count = 0 },
	{ config_id = 1281017, name = "GADGET_CREATE_281017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_281017", action = "action_EVENT_GADGET_CREATE_281017", trigger_count = 0 }
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
		gadgets = { 281001, 281002, 281003, 281004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_281009", "GADGET_STATE_CHANGE_281010", "VARIABLE_CHANGE_281011", "GADGET_STATE_CHANGE_281012", "GADGET_CREATE_281013", "SELECT_OPTION_281014", "GROUP_REFRESH_281015", "ANY_GADGET_DIE_281016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 281001, 281008 },
		regions = { },
		triggers = { "GADGET_CREATE_281017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_281009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_281010(context, evt)
	if 281001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_281010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103281, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_281011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_281011(context, evt)
	-- 将configid为 281001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103281, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_281012(context, evt)
	if 281001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_281012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133103281 ；指定config：281001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103281, 281001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_281013(context, evt)
	if 281001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_281013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103281, 281001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_281014(context, evt)
	if 281001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_281014(context, evt)
	-- 将configid为 281001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_281015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103281, 281001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_281016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_281017(context, evt)
	if 281001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_281017(context, evt)
	-- 将configid为 281001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end