-- 基础信息
local base_info = {
	group_id = 144004095
}

-- Trigger变量
local defs = {
	group_id = 144004095,
	gadget_target_1S = 95002,
	gadget_target_1E = 95005,
	gadget_target_2S = 95003,
	gadget_target_2E = 95006,
	gadget_target_3S = 95004,
	gadget_target_3E = 95007
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
	{ config_id = 95001, gadget_id = 70360008, pos = { x = -265.244, y = 188.982, z = -822.011 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 95002, gadget_id = 70360011, pos = { x = -268.843, y = 189.784, z = -797.178 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 1, mark_flag = 2, area_id = 100 },
	{ config_id = 95003, gadget_id = 70360011, pos = { x = -260.653, y = 189.227, z = -799.846 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 1, mark_flag = 4, area_id = 100 },
	{ config_id = 95004, gadget_id = 70360011, pos = { x = -255.597, y = 189.227, z = -802.213 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 1, mark_flag = 8, area_id = 100 },
	{ config_id = 95005, gadget_id = 70360014, pos = { x = -268.843, y = 189.784, z = -797.178 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 1, route_id = 400400037, area_id = 100 },
	{ config_id = 95006, gadget_id = 70360014, pos = { x = -260.653, y = 189.227, z = -799.846 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 1, route_id = 400400038, area_id = 100 },
	{ config_id = 95007, gadget_id = 70360014, pos = { x = -255.597, y = 189.227, z = -802.213 }, rot = { x = 0.000, y = 299.100, z = 0.000 }, level = 1, route_id = 400400039, area_id = 100 },
	-- 原中级解谜宝箱
	{ config_id = 95008, gadget_id = 70360001, pos = { x = -268.656, y = 188.860, z = -825.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, showcutscene = true, isOneoff = true, persistent = true, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1095009, name = "GADGET_STATE_CHANGE_95009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_95009", trigger_count = 0 },
	{ config_id = 1095010, name = "GADGET_STATE_CHANGE_95010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95010", action = "action_EVENT_GADGET_STATE_CHANGE_95010" },
	{ config_id = 1095011, name = "VARIABLE_CHANGE_95011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_95011", action = "action_EVENT_VARIABLE_CHANGE_95011" },
	{ config_id = 1095012, name = "GADGET_STATE_CHANGE_95012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95012", action = "action_EVENT_GADGET_STATE_CHANGE_95012", trigger_count = 0 },
	{ config_id = 1095013, name = "GADGET_CREATE_95013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_95013", action = "action_EVENT_GADGET_CREATE_95013", trigger_count = 0 },
	{ config_id = 1095014, name = "SELECT_OPTION_95014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_95014", action = "action_EVENT_SELECT_OPTION_95014", trigger_count = 0 },
	{ config_id = 1095015, name = "GROUP_REFRESH_95015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_95015" },
	{ config_id = 1095016, name = "ANY_GADGET_DIE_95016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_95016", trigger_count = 0 },
	{ config_id = 1095017, name = "GADGET_CREATE_95017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_95017", action = "action_EVENT_GADGET_CREATE_95017", trigger_count = 0 }
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
	suite = 3,
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
		gadgets = { 95001, 95002, 95003, 95004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_95009", "GADGET_STATE_CHANGE_95010", "VARIABLE_CHANGE_95011", "GADGET_STATE_CHANGE_95012", "GADGET_CREATE_95013", "SELECT_OPTION_95014", "GROUP_REFRESH_95015", "ANY_GADGET_DIE_95016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 95001, 95008 },
		regions = { },
		triggers = { "GADGET_CREATE_95017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_95010(context, evt)
	if 95001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_95010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144004095, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_95011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_95011(context, evt)
	-- 将configid为 95001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004095, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_95012(context, evt)
	if 95001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 144004095 ；指定config：95001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004095, 95001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_95013(context, evt)
	if 95001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_95013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004095, 95001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_95014(context, evt)
	if 95001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_95014(context, evt)
	-- 将configid为 95001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_95015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004095, 95001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_95017(context, evt)
	if 95001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_95017(context, evt)
	-- 将configid为 95001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end