-- 基础信息
local base_info = {
	group_id = 133103549
}

-- Trigger变量
local defs = {
	group_id = 133103549,
	gadget_target_1S = 549002,
	gadget_target_1E = 549005,
	gadget_target_2S = 549003,
	gadget_target_2E = 549006,
	gadget_target_3S = 549004,
	gadget_target_3E = 549007
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
	{ config_id = 549001, gadget_id = 70360008, pos = { x = 89.342, y = 225.658, z = 1136.514 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 549002, gadget_id = 70360011, pos = { x = 85.529, y = 231.432, z = 1151.482 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 24, mark_flag = 2, area_id = 6 },
	{ config_id = 549003, gadget_id = 70360011, pos = { x = 95.601, y = 231.556, z = 1144.812 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 24, mark_flag = 4, area_id = 6 },
	{ config_id = 549004, gadget_id = 70360011, pos = { x = 90.193, y = 231.515, z = 1128.969 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 24, mark_flag = 8, area_id = 6 },
	{ config_id = 549005, gadget_id = 70360014, pos = { x = 85.529, y = 231.432, z = 1151.482 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 24, route_id = 310300179, area_id = 6 },
	{ config_id = 549006, gadget_id = 70360014, pos = { x = 95.601, y = 231.556, z = 1144.912 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 24, route_id = 310300180, area_id = 6 },
	{ config_id = 549007, gadget_id = 70360014, pos = { x = 90.193, y = 231.515, z = 1128.969 }, rot = { x = 0.000, y = 299.100, z = 0.000 }, level = 24, route_id = 310300181, area_id = 6 },
	{ config_id = 549008, gadget_id = 70211111, pos = { x = 89.161, y = 225.664, z = 1134.197 }, rot = { x = 358.236, y = 0.151, z = 350.247 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1549009, name = "GADGET_STATE_CHANGE_549009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_549009", trigger_count = 0 },
	{ config_id = 1549010, name = "GADGET_STATE_CHANGE_549010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_549010", action = "action_EVENT_GADGET_STATE_CHANGE_549010" },
	{ config_id = 1549011, name = "VARIABLE_CHANGE_549011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_549011", action = "action_EVENT_VARIABLE_CHANGE_549011" },
	{ config_id = 1549012, name = "GADGET_STATE_CHANGE_549012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_549012", action = "action_EVENT_GADGET_STATE_CHANGE_549012", trigger_count = 0 },
	{ config_id = 1549013, name = "GADGET_CREATE_549013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_549013", action = "action_EVENT_GADGET_CREATE_549013", trigger_count = 0 },
	{ config_id = 1549014, name = "SELECT_OPTION_549014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_549014", action = "action_EVENT_SELECT_OPTION_549014", trigger_count = 0 },
	{ config_id = 1549015, name = "GROUP_REFRESH_549015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_549015" },
	{ config_id = 1549016, name = "ANY_GADGET_DIE_549016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_549016", trigger_count = 0 },
	{ config_id = 1549017, name = "GADGET_CREATE_549017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_549017", action = "action_EVENT_GADGET_CREATE_549017", trigger_count = 0 }
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
		gadgets = { 549001, 549002, 549003, 549004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_549009", "GADGET_STATE_CHANGE_549010", "VARIABLE_CHANGE_549011", "GADGET_STATE_CHANGE_549012", "GADGET_CREATE_549013", "SELECT_OPTION_549014", "GROUP_REFRESH_549015", "ANY_GADGET_DIE_549016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 549001, 549008 },
		regions = { },
		triggers = { "GADGET_CREATE_549017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_549009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_549010(context, evt)
	if 549001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_549010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103549, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_549011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_549011(context, evt)
	-- 将configid为 549001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 549001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103549, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_549012(context, evt)
	if 549001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_549012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133103549 ；指定config：549001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103549, 549001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_549013(context, evt)
	if 549001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_549013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103549, 549001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_549014(context, evt)
	if 549001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_549014(context, evt)
	-- 将configid为 549001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 549001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_549015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103549, 549001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_549016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_549017(context, evt)
	if 549001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_549017(context, evt)
	-- 将configid为 549001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 549001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end