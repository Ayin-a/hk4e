-- 基础信息
local base_info = {
	group_id = 133104671
}

-- Trigger变量
local defs = {
	group_id = 133104671,
	gadget_target_1S = 671002,
	gadget_target_1E = 671005,
	gadget_target_2S = 671003,
	gadget_target_2E = 671006,
	gadget_target_3S = 671004,
	gadget_target_3E = 671007
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
	{ config_id = 671001, gadget_id = 70360008, pos = { x = 294.893, y = 232.381, z = 969.512 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 671002, gadget_id = 70360011, pos = { x = 288.124, y = 231.930, z = 963.644 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 19, mark_flag = 2, area_id = 6 },
	{ config_id = 671003, gadget_id = 70360011, pos = { x = 300.142, y = 230.705, z = 967.037 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 19, mark_flag = 4, area_id = 6 },
	{ config_id = 671004, gadget_id = 70360011, pos = { x = 312.625, y = 224.556, z = 966.093 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 19, mark_flag = 8, area_id = 6 },
	{ config_id = 671005, gadget_id = 70360014, pos = { x = 288.028, y = 232.365, z = 963.874 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 19, route_id = 310400271, area_id = 6 },
	{ config_id = 671006, gadget_id = 70360014, pos = { x = 300.142, y = 230.705, z = 967.137 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 19, route_id = 310400272, area_id = 6 },
	{ config_id = 671007, gadget_id = 70360014, pos = { x = 312.625, y = 224.556, z = 966.093 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 19, route_id = 310400273, area_id = 6 },
	{ config_id = 671008, gadget_id = 70211111, pos = { x = 293.077, y = 232.877, z = 969.123 }, rot = { x = 6.524, y = 120.296, z = 17.355 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1671009, name = "GADGET_STATE_CHANGE_671009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_671009", trigger_count = 0 },
	{ config_id = 1671010, name = "GADGET_STATE_CHANGE_671010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_671010", action = "action_EVENT_GADGET_STATE_CHANGE_671010" },
	{ config_id = 1671011, name = "VARIABLE_CHANGE_671011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_671011", action = "action_EVENT_VARIABLE_CHANGE_671011" },
	{ config_id = 1671012, name = "GADGET_STATE_CHANGE_671012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_671012", action = "action_EVENT_GADGET_STATE_CHANGE_671012", trigger_count = 0 },
	{ config_id = 1671013, name = "GADGET_CREATE_671013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_671013", action = "action_EVENT_GADGET_CREATE_671013", trigger_count = 0 },
	{ config_id = 1671014, name = "SELECT_OPTION_671014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_671014", action = "action_EVENT_SELECT_OPTION_671014", trigger_count = 0 },
	{ config_id = 1671015, name = "GROUP_REFRESH_671015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_671015" },
	{ config_id = 1671016, name = "ANY_GADGET_DIE_671016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_671016", trigger_count = 0 },
	{ config_id = 1671017, name = "GADGET_CREATE_671017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_671017", action = "action_EVENT_GADGET_CREATE_671017", trigger_count = 0 }
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
		gadgets = { 671001, 671002, 671003, 671004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_671009", "GADGET_STATE_CHANGE_671010", "VARIABLE_CHANGE_671011", "GADGET_STATE_CHANGE_671012", "GADGET_CREATE_671013", "SELECT_OPTION_671014", "GROUP_REFRESH_671015", "ANY_GADGET_DIE_671016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 671001, 671008 },
		regions = { },
		triggers = { "GADGET_CREATE_671017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_671009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_671010(context, evt)
	if 671001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_671010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104671, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_671011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_671011(context, evt)
	-- 将configid为 671001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 671001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104671, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_671012(context, evt)
	if 671001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_671012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133104671 ；指定config：671001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104671, 671001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_671013(context, evt)
	if 671001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_671013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104671, 671001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_671014(context, evt)
	if 671001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_671014(context, evt)
	-- 将configid为 671001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 671001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_671015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104671, 671001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_671016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_671017(context, evt)
	if 671001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_671017(context, evt)
	-- 将configid为 671001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 671001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end