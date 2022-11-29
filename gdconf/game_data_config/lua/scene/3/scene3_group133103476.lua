-- 基础信息
local base_info = {
	group_id = 133103476
}

-- Trigger变量
local defs = {
	group_id = 133103476,
	gadget_target_1S = 476002,
	gadget_target_1E = 476005,
	gadget_target_2S = 476003,
	gadget_target_2E = 476006,
	gadget_target_3S = 476004,
	gadget_target_3E = 476007
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
	{ config_id = 476001, gadget_id = 70360008, pos = { x = 119.801, y = 194.715, z = 1421.903 }, rot = { x = 359.216, y = 268.164, z = 31.050 }, level = 24, area_id = 6 },
	{ config_id = 476002, gadget_id = 70360011, pos = { x = 116.759, y = 201.406, z = 1414.085 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 24, mark_flag = 2, area_id = 6 },
	{ config_id = 476003, gadget_id = 70360011, pos = { x = 138.672, y = 207.834, z = 1419.113 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 24, mark_flag = 4, area_id = 6 },
	{ config_id = 476004, gadget_id = 70360011, pos = { x = 128.109, y = 194.308, z = 1413.058 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 24, mark_flag = 8, area_id = 6 },
	{ config_id = 476005, gadget_id = 70360014, pos = { x = 116.759, y = 201.406, z = 1414.085 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 24, route_id = 310300172, area_id = 6 },
	{ config_id = 476006, gadget_id = 70360014, pos = { x = 138.672, y = 207.834, z = 1419.213 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 24, route_id = 310300173, area_id = 6 },
	{ config_id = 476007, gadget_id = 70360014, pos = { x = 128.109, y = 194.308, z = 1413.058 }, rot = { x = 0.000, y = 299.100, z = 0.000 }, level = 24, route_id = 310300174, area_id = 6 },
	{ config_id = 476008, gadget_id = 70211111, pos = { x = 120.274, y = 193.545, z = 1417.141 }, rot = { x = 0.000, y = 353.900, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1476009, name = "GADGET_STATE_CHANGE_476009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_476009", trigger_count = 0 },
	{ config_id = 1476010, name = "GADGET_STATE_CHANGE_476010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_476010", action = "action_EVENT_GADGET_STATE_CHANGE_476010" },
	{ config_id = 1476011, name = "VARIABLE_CHANGE_476011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_476011", action = "action_EVENT_VARIABLE_CHANGE_476011" },
	{ config_id = 1476012, name = "GADGET_STATE_CHANGE_476012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_476012", action = "action_EVENT_GADGET_STATE_CHANGE_476012", trigger_count = 0 },
	{ config_id = 1476013, name = "GADGET_CREATE_476013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_476013", action = "action_EVENT_GADGET_CREATE_476013", trigger_count = 0 },
	{ config_id = 1476014, name = "SELECT_OPTION_476014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_476014", action = "action_EVENT_SELECT_OPTION_476014", trigger_count = 0 },
	{ config_id = 1476015, name = "GROUP_REFRESH_476015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_476015" },
	{ config_id = 1476016, name = "ANY_GADGET_DIE_476016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_476016", trigger_count = 0 },
	{ config_id = 1476017, name = "GADGET_CREATE_476017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_476017", action = "action_EVENT_GADGET_CREATE_476017", trigger_count = 0 }
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
		gadgets = { 476001, 476002, 476003, 476004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_476009", "GADGET_STATE_CHANGE_476010", "VARIABLE_CHANGE_476011", "GADGET_STATE_CHANGE_476012", "GADGET_CREATE_476013", "SELECT_OPTION_476014", "GROUP_REFRESH_476015", "ANY_GADGET_DIE_476016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 476001, 476008 },
		regions = { },
		triggers = { "GADGET_CREATE_476017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_476009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_476010(context, evt)
	if 476001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_476010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103476, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_476011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_476011(context, evt)
	-- 将configid为 476001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 476001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103476, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_476012(context, evt)
	if 476001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_476012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133103476 ；指定config：476001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103476, 476001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_476013(context, evt)
	if 476001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_476013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103476, 476001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_476014(context, evt)
	if 476001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_476014(context, evt)
	-- 将configid为 476001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 476001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_476015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103476, 476001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_476016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_476017(context, evt)
	if 476001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_476017(context, evt)
	-- 将configid为 476001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 476001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end