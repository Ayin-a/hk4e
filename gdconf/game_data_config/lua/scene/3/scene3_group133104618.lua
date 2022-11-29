-- 基础信息
local base_info = {
	group_id = 133104618
}

-- Trigger变量
local defs = {
	group_id = 133104618,
	gadget_target_1S = 618002,
	gadget_target_1E = 618005,
	gadget_target_2S = 618003,
	gadget_target_2E = 618006,
	gadget_target_3S = 618004,
	gadget_target_3E = 618007
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
	{ config_id = 618001, gadget_id = 70360008, pos = { x = 280.356, y = 218.526, z = 101.128 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 618002, gadget_id = 70360011, pos = { x = 280.530, y = 224.222, z = 111.890 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 19, mark_flag = 2, area_id = 9 },
	{ config_id = 618003, gadget_id = 70360011, pos = { x = 292.570, y = 224.346, z = 112.527 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 19, mark_flag = 4, area_id = 9 },
	{ config_id = 618004, gadget_id = 70360011, pos = { x = 297.944, y = 224.305, z = 103.010 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 19, mark_flag = 8, area_id = 9 },
	{ config_id = 618005, gadget_id = 70360014, pos = { x = 280.530, y = 224.222, z = 111.890 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 19, route_id = 310400259, area_id = 9 },
	{ config_id = 618006, gadget_id = 70360014, pos = { x = 292.570, y = 224.346, z = 112.627 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 19, route_id = 310400260, area_id = 9 },
	{ config_id = 618007, gadget_id = 70360014, pos = { x = 297.944, y = 224.305, z = 103.010 }, rot = { x = 0.000, y = 299.100, z = 0.000 }, level = 19, route_id = 310400261, area_id = 9 },
	{ config_id = 618008, gadget_id = 70211111, pos = { x = 281.276, y = 217.390, z = 104.316 }, rot = { x = 0.000, y = 220.700, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1618009, name = "GADGET_STATE_CHANGE_618009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_618009", trigger_count = 0 },
	{ config_id = 1618010, name = "GADGET_STATE_CHANGE_618010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_618010", action = "action_EVENT_GADGET_STATE_CHANGE_618010" },
	{ config_id = 1618011, name = "VARIABLE_CHANGE_618011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_618011", action = "action_EVENT_VARIABLE_CHANGE_618011" },
	{ config_id = 1618012, name = "GADGET_STATE_CHANGE_618012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_618012", action = "action_EVENT_GADGET_STATE_CHANGE_618012", trigger_count = 0 },
	{ config_id = 1618013, name = "GADGET_CREATE_618013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_618013", action = "action_EVENT_GADGET_CREATE_618013", trigger_count = 0 },
	{ config_id = 1618014, name = "SELECT_OPTION_618014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_618014", action = "action_EVENT_SELECT_OPTION_618014", trigger_count = 0 },
	{ config_id = 1618015, name = "GROUP_REFRESH_618015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_618015" },
	{ config_id = 1618016, name = "ANY_GADGET_DIE_618016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_618016", trigger_count = 0 },
	{ config_id = 1618017, name = "GADGET_CREATE_618017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_618017", action = "action_EVENT_GADGET_CREATE_618017", trigger_count = 0 }
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
		gadgets = { 618001, 618002, 618003, 618004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_618009", "GADGET_STATE_CHANGE_618010", "VARIABLE_CHANGE_618011", "GADGET_STATE_CHANGE_618012", "GADGET_CREATE_618013", "SELECT_OPTION_618014", "GROUP_REFRESH_618015", "ANY_GADGET_DIE_618016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 618001, 618008 },
		regions = { },
		triggers = { "GADGET_CREATE_618017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_618009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_618010(context, evt)
	if 618001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_618010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104618, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_618011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_618011(context, evt)
	-- 将configid为 618001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 618001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104618, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_618012(context, evt)
	if 618001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_618012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133104618 ；指定config：618001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104618, 618001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_618013(context, evt)
	if 618001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_618013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104618, 618001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_618014(context, evt)
	if 618001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_618014(context, evt)
	-- 将configid为 618001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 618001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_618015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104618, 618001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_618016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_618017(context, evt)
	if 618001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_618017(context, evt)
	-- 将configid为 618001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 618001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end