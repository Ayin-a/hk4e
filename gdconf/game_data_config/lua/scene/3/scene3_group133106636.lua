-- 基础信息
local base_info = {
	group_id = 133106636
}

-- Trigger变量
local defs = {
	group_id = 133106636,
	gadget_target_1S = 636002,
	gadget_target_1E = 636005,
	gadget_target_2S = 636003,
	gadget_target_2E = 636006,
	gadget_target_3S = 636004,
	gadget_target_3E = 636007
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
	{ config_id = 636001, gadget_id = 70360008, pos = { x = -850.129, y = 122.078, z = 1735.719 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 636002, gadget_id = 70360011, pos = { x = -850.261, y = 124.010, z = 1738.519 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 36, mark_flag = 2, area_id = 19 },
	{ config_id = 636003, gadget_id = 70360011, pos = { x = -852.832, y = 124.039, z = 1739.747 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 36, mark_flag = 4, area_id = 19 },
	{ config_id = 636004, gadget_id = 70360011, pos = { x = -843.454, y = 124.721, z = 1738.859 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 36, mark_flag = 8, area_id = 19 },
	{ config_id = 636005, gadget_id = 70360014, pos = { x = -850.261, y = 124.010, z = 1738.519 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 36, route_id = 310600178, area_id = 19 },
	{ config_id = 636006, gadget_id = 70360014, pos = { x = -852.832, y = 124.039, z = 1739.847 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 36, route_id = 310600179, area_id = 19 },
	{ config_id = 636007, gadget_id = 70360014, pos = { x = -843.454, y = 124.721, z = 1738.859 }, rot = { x = 0.000, y = 299.100, z = 0.000 }, level = 36, route_id = 310600180, area_id = 19 },
	{ config_id = 636008, gadget_id = 70211101, pos = { x = -849.237, y = 121.525, z = 1728.647 }, rot = { x = 353.639, y = 342.871, z = 354.524 }, level = 26, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1636009, name = "GADGET_STATE_CHANGE_636009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_636009", trigger_count = 0 },
	{ config_id = 1636010, name = "GADGET_STATE_CHANGE_636010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_636010", action = "action_EVENT_GADGET_STATE_CHANGE_636010" },
	{ config_id = 1636011, name = "VARIABLE_CHANGE_636011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_636011", action = "action_EVENT_VARIABLE_CHANGE_636011" },
	{ config_id = 1636012, name = "GADGET_STATE_CHANGE_636012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_636012", action = "action_EVENT_GADGET_STATE_CHANGE_636012", trigger_count = 0 },
	{ config_id = 1636013, name = "GADGET_CREATE_636013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_636013", action = "action_EVENT_GADGET_CREATE_636013", trigger_count = 0 },
	{ config_id = 1636014, name = "SELECT_OPTION_636014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_636014", action = "action_EVENT_SELECT_OPTION_636014", trigger_count = 0 },
	{ config_id = 1636015, name = "GROUP_REFRESH_636015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_636015" },
	{ config_id = 1636016, name = "ANY_GADGET_DIE_636016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_636016", trigger_count = 0 },
	{ config_id = 1636017, name = "GADGET_CREATE_636017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_636017", action = "action_EVENT_GADGET_CREATE_636017", trigger_count = 0 }
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
		gadgets = { 636001, 636002, 636003, 636004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_636009", "GADGET_STATE_CHANGE_636010", "VARIABLE_CHANGE_636011", "GADGET_STATE_CHANGE_636012", "GADGET_CREATE_636013", "SELECT_OPTION_636014", "GROUP_REFRESH_636015", "ANY_GADGET_DIE_636016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 636001, 636008 },
		regions = { },
		triggers = { "GADGET_CREATE_636017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_636009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_636010(context, evt)
	if 636001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_636010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106636, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_636011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_636011(context, evt)
	-- 将configid为 636001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 636001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133106636, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_636012(context, evt)
	if 636001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_636012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133106636 ；指定config：636001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133106636, 636001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_636013(context, evt)
	if 636001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_636013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106636, 636001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_636014(context, evt)
	if 636001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_636014(context, evt)
	-- 将configid为 636001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 636001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_636015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106636, 636001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_636016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_636017(context, evt)
	if 636001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_636017(context, evt)
	-- 将configid为 636001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 636001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end