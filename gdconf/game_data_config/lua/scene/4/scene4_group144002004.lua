-- 基础信息
local base_info = {
	group_id = 144002004
}

-- Trigger变量
local defs = {
	group_id = 144002004,
	gadget_target_1S = 4002,
	gadget_target_1E = 4005,
	gadget_target_2S = 4003,
	gadget_target_2E = 4006,
	gadget_target_3S = 4004,
	gadget_target_3E = 4007
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
	{ config_id = 4001, gadget_id = 70360008, pos = { x = 560.452, y = 243.834, z = -510.614 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 4002, gadget_id = 70360011, pos = { x = 547.678, y = 250.600, z = -509.411 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 1, mark_flag = 2, area_id = 101 },
	{ config_id = 4003, gadget_id = 70360011, pos = { x = 558.734, y = 253.792, z = -494.946 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 1, mark_flag = 4, area_id = 101 },
	{ config_id = 4004, gadget_id = 70360011, pos = { x = 562.895, y = 253.879, z = -525.677 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 1, mark_flag = 8, area_id = 101 },
	{ config_id = 4005, gadget_id = 70360014, pos = { x = 547.566, y = 250.600, z = -509.411 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 1, route_id = 400200008, area_id = 101 },
	{ config_id = 4006, gadget_id = 70360014, pos = { x = 558.731, y = 253.792, z = -494.761 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 1, route_id = 400200009, area_id = 101 },
	{ config_id = 4007, gadget_id = 70360014, pos = { x = 562.835, y = 253.913, z = -525.675 }, rot = { x = 0.000, y = 299.100, z = 0.000 }, level = 1, route_id = 400200010, area_id = 101 },
	{ config_id = 4008, gadget_id = 70211101, pos = { x = 565.203, y = 244.278, z = -512.302 }, rot = { x = 0.000, y = 104.134, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004009, name = "GADGET_STATE_CHANGE_4009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4009", trigger_count = 0 },
	{ config_id = 1004010, name = "GADGET_STATE_CHANGE_4010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4010", action = "action_EVENT_GADGET_STATE_CHANGE_4010" },
	{ config_id = 1004011, name = "VARIABLE_CHANGE_4011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4011", action = "action_EVENT_VARIABLE_CHANGE_4011" },
	{ config_id = 1004012, name = "GADGET_STATE_CHANGE_4012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4012", action = "action_EVENT_GADGET_STATE_CHANGE_4012", trigger_count = 0 },
	{ config_id = 1004013, name = "GADGET_CREATE_4013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4013", action = "action_EVENT_GADGET_CREATE_4013", trigger_count = 0 },
	{ config_id = 1004014, name = "SELECT_OPTION_4014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4014", action = "action_EVENT_SELECT_OPTION_4014", trigger_count = 0 },
	{ config_id = 1004015, name = "GROUP_REFRESH_4015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_4015" },
	{ config_id = 1004016, name = "ANY_GADGET_DIE_4016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_4016", trigger_count = 0 },
	{ config_id = 1004017, name = "GADGET_CREATE_4017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4017", action = "action_EVENT_GADGET_CREATE_4017", trigger_count = 0 }
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
		gadgets = { 4001, 4002, 4003, 4004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4009", "GADGET_STATE_CHANGE_4010", "VARIABLE_CHANGE_4011", "GADGET_STATE_CHANGE_4012", "GADGET_CREATE_4013", "SELECT_OPTION_4014", "GROUP_REFRESH_4015", "ANY_GADGET_DIE_4016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 4001, 4008 },
		regions = { },
		triggers = { "GADGET_CREATE_4017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_4010(context, evt)
	if 4001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_4010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144002004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4011(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002004, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_4012(context, evt)
	if 4001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 144002004 ；指定config：4001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144002004, 4001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4013(context, evt)
	if 4001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002004, 4001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4014(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4014(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_4015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002004, 4001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4017(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4017(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end