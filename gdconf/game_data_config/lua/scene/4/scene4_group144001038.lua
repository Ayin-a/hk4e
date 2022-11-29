-- 基础信息
local base_info = {
	group_id = 144001038
}

-- Trigger变量
local defs = {
	group_id = 144001038,
	gadget_target_1S = 38002,
	gadget_target_1E = 38005,
	gadget_target_2S = 38003,
	gadget_target_2E = 38006,
	gadget_target_3S = 38004,
	gadget_target_3E = 38007
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
	{ config_id = 38001, gadget_id = 70360008, pos = { x = 233.830, y = 196.736, z = 290.338 }, rot = { x = 0.000, y = 359.565, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 38002, gadget_id = 70360011, pos = { x = 240.528, y = 197.107, z = 290.301 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 1, mark_flag = 2, area_id = 102 },
	{ config_id = 38003, gadget_id = 70360011, pos = { x = 236.881, y = 201.302, z = 284.765 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 1, mark_flag = 4, area_id = 102 },
	{ config_id = 38004, gadget_id = 70360011, pos = { x = 233.246, y = 198.610, z = 283.714 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 1, mark_flag = 8, area_id = 102 },
	{ config_id = 38005, gadget_id = 70360014, pos = { x = 240.528, y = 197.107, z = 290.301 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 1, route_id = 400100071, area_id = 102 },
	{ config_id = 38006, gadget_id = 70360014, pos = { x = 236.881, y = 201.302, z = 284.865 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 1, route_id = 400100072, area_id = 102 },
	{ config_id = 38007, gadget_id = 70360014, pos = { x = 233.246, y = 198.610, z = 283.714 }, rot = { x = 0.000, y = 299.100, z = 0.000 }, level = 1, route_id = 400100073, area_id = 102 },
	{ config_id = 38008, gadget_id = 70211101, pos = { x = 230.391, y = 197.792, z = 290.511 }, rot = { x = 8.695, y = 107.726, z = 359.421 }, level = 16, drop_tag = "解谜低级群岛", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1038009, name = "GADGET_STATE_CHANGE_38009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_38009", trigger_count = 0 },
	{ config_id = 1038010, name = "GADGET_STATE_CHANGE_38010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38010", action = "action_EVENT_GADGET_STATE_CHANGE_38010" },
	{ config_id = 1038011, name = "VARIABLE_CHANGE_38011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_38011", action = "action_EVENT_VARIABLE_CHANGE_38011" },
	{ config_id = 1038012, name = "GADGET_STATE_CHANGE_38012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38012", action = "action_EVENT_GADGET_STATE_CHANGE_38012", trigger_count = 0 },
	{ config_id = 1038013, name = "GADGET_CREATE_38013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_38013", action = "action_EVENT_GADGET_CREATE_38013", trigger_count = 0 },
	{ config_id = 1038014, name = "SELECT_OPTION_38014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_38014", action = "action_EVENT_SELECT_OPTION_38014", trigger_count = 0 },
	{ config_id = 1038015, name = "GROUP_REFRESH_38015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_38015" },
	{ config_id = 1038016, name = "ANY_GADGET_DIE_38016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_38016", trigger_count = 0 },
	{ config_id = 1038017, name = "GADGET_CREATE_38017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_38017", action = "action_EVENT_GADGET_CREATE_38017", trigger_count = 0 }
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
		gadgets = { 38001, 38002, 38003, 38004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_38009", "GADGET_STATE_CHANGE_38010", "VARIABLE_CHANGE_38011", "GADGET_STATE_CHANGE_38012", "GADGET_CREATE_38013", "SELECT_OPTION_38014", "GROUP_REFRESH_38015", "ANY_GADGET_DIE_38016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 38001, 38008 },
		regions = { },
		triggers = { "GADGET_CREATE_38017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_38010(context, evt)
	if 38001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_38010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001038, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_38011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_38011(context, evt)
	-- 将configid为 38001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144001038, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_38012(context, evt)
	if 38001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 144001038 ；指定config：38001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144001038, 38001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_38013(context, evt)
	if 38001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_38013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001038, 38001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_38014(context, evt)
	if 38001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_38014(context, evt)
	-- 将configid为 38001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_38015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001038, 38001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_38016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_38017(context, evt)
	if 38001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_38017(context, evt)
	-- 将configid为 38001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end