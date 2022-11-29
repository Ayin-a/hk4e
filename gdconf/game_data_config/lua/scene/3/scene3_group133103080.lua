-- 基础信息
local base_info = {
	group_id = 133103080
}

-- Trigger变量
local defs = {
	group_id = 133103080,
	gadget_target_1S = 80002,
	gadget_target_1E = 80005,
	gadget_target_2S = 80003,
	gadget_target_2E = 80006,
	gadget_target_3S = 80004,
	gadget_target_3E = 80007
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
	{ config_id = 80001, gadget_id = 70360008, pos = { x = 744.766, y = 390.114, z = 1876.511 }, rot = { x = 0.000, y = 359.828, z = 0.000 }, level = 32, area_id = 6 },
	{ config_id = 80002, gadget_id = 70360011, pos = { x = 755.557, y = 382.469, z = 1879.877 }, rot = { x = 0.000, y = 33.628, z = 0.000 }, level = 32, mark_flag = 2, area_id = 6 },
	{ config_id = 80003, gadget_id = 70360011, pos = { x = 754.476, y = 390.611, z = 1869.795 }, rot = { x = 0.000, y = 331.728, z = 0.000 }, level = 32, mark_flag = 4, area_id = 6 },
	{ config_id = 80004, gadget_id = 70360011, pos = { x = 750.749, y = 392.656, z = 1868.362 }, rot = { x = 0.000, y = 227.929, z = 0.000 }, level = 32, mark_flag = 8, area_id = 6 },
	{ config_id = 80005, gadget_id = 70360014, pos = { x = 755.557, y = 382.999, z = 1879.877 }, rot = { x = 0.000, y = 278.828, z = 0.000 }, level = 32, route_id = 310300022, area_id = 6 },
	{ config_id = 80006, gadget_id = 70360014, pos = { x = 754.576, y = 390.470, z = 1869.793 }, rot = { x = 0.000, y = 18.728, z = 0.000 }, level = 32, route_id = 310300023, area_id = 6 },
	{ config_id = 80007, gadget_id = 70360014, pos = { x = 750.749, y = 392.546, z = 1868.362 }, rot = { x = 0.000, y = 30.128, z = 0.000 }, level = 32, route_id = 310300024, area_id = 6 },
	{ config_id = 80008, gadget_id = 70211111, pos = { x = 744.923, y = 389.660, z = 1878.510 }, rot = { x = 14.884, y = 6.689, z = 348.653 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1080009, name = "GADGET_STATE_CHANGE_80009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_80009", trigger_count = 0 },
	{ config_id = 1080010, name = "GADGET_STATE_CHANGE_80010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80010", action = "action_EVENT_GADGET_STATE_CHANGE_80010" },
	{ config_id = 1080011, name = "VARIABLE_CHANGE_80011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_80011", action = "action_EVENT_VARIABLE_CHANGE_80011" },
	{ config_id = 1080012, name = "GADGET_STATE_CHANGE_80012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80012", action = "action_EVENT_GADGET_STATE_CHANGE_80012", trigger_count = 0 },
	{ config_id = 1080013, name = "GADGET_CREATE_80013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80013", action = "action_EVENT_GADGET_CREATE_80013", trigger_count = 0 },
	{ config_id = 1080014, name = "SELECT_OPTION_80014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80014", action = "action_EVENT_SELECT_OPTION_80014", trigger_count = 0 },
	{ config_id = 1080015, name = "GROUP_REFRESH_80015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_80015" },
	{ config_id = 1080016, name = "ANY_GADGET_DIE_80016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_80016", trigger_count = 0 },
	{ config_id = 1080017, name = "GADGET_CREATE_80017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80017", action = "action_EVENT_GADGET_CREATE_80017", trigger_count = 0 }
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
		gadgets = { 80001, 80002, 80003, 80004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_80009", "GADGET_STATE_CHANGE_80010", "VARIABLE_CHANGE_80011", "GADGET_STATE_CHANGE_80012", "GADGET_CREATE_80013", "SELECT_OPTION_80014", "GROUP_REFRESH_80015", "ANY_GADGET_DIE_80016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 80001, 80008 },
		regions = { },
		triggers = { "GADGET_CREATE_80017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_80010(context, evt)
	if 80001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_80010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103080, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_80011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_80011(context, evt)
	-- 将configid为 80001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103080, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_80012(context, evt)
	if 80001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133103080 ；指定config：80001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103080, 80001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_80013(context, evt)
	if 80001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_80013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103080, 80001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80014(context, evt)
	if 80001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80014(context, evt)
	-- 将configid为 80001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_80015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103080, 80001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_80016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_80017(context, evt)
	if 80001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_80017(context, evt)
	-- 将configid为 80001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end