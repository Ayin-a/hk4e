-- 基础信息
local base_info = {
	group_id = 133106569
}

-- Trigger变量
local defs = {
	group_id = 133106569,
	gadget_target_1S = 569002,
	gadget_target_1E = 569005,
	gadget_target_2S = 569003,
	gadget_target_2E = 569006,
	gadget_target_3S = 569004,
	gadget_target_3E = 569007
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
	{ config_id = 569001, gadget_id = 70360008, pos = { x = -975.936, y = 249.183, z = 1685.024 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 569002, gadget_id = 70360011, pos = { x = -982.234, y = 254.879, z = 1695.784 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 36, mark_flag = 2, area_id = 19 },
	{ config_id = 569003, gadget_id = 70360011, pos = { x = -973.253, y = 252.270, z = 1689.879 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 36, mark_flag = 4, area_id = 19 },
	{ config_id = 569004, gadget_id = 70360011, pos = { x = -977.483, y = 249.925, z = 1679.730 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 36, mark_flag = 8, area_id = 19 },
	{ config_id = 569005, gadget_id = 70360014, pos = { x = -982.234, y = 254.879, z = 1695.784 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 36, route_id = 310600159, area_id = 19 },
	{ config_id = 569006, gadget_id = 70360014, pos = { x = -973.253, y = 252.270, z = 1689.979 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 36, route_id = 310600160, area_id = 19 },
	{ config_id = 569007, gadget_id = 70360014, pos = { x = -977.483, y = 249.925, z = 1679.730 }, rot = { x = 0.000, y = 299.100, z = 0.000 }, level = 36, route_id = 310600161, area_id = 19 },
	{ config_id = 569008, gadget_id = 70211101, pos = { x = -976.341, y = 249.119, z = 1682.519 }, rot = { x = 358.494, y = 0.037, z = 357.187 }, level = 26, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1569009, name = "GADGET_STATE_CHANGE_569009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_569009", trigger_count = 0 },
	{ config_id = 1569010, name = "GADGET_STATE_CHANGE_569010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_569010", action = "action_EVENT_GADGET_STATE_CHANGE_569010" },
	{ config_id = 1569011, name = "VARIABLE_CHANGE_569011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_569011", action = "action_EVENT_VARIABLE_CHANGE_569011" },
	{ config_id = 1569012, name = "GADGET_STATE_CHANGE_569012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_569012", action = "action_EVENT_GADGET_STATE_CHANGE_569012", trigger_count = 0 },
	{ config_id = 1569013, name = "GADGET_CREATE_569013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_569013", action = "action_EVENT_GADGET_CREATE_569013", trigger_count = 0 },
	{ config_id = 1569014, name = "SELECT_OPTION_569014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_569014", action = "action_EVENT_SELECT_OPTION_569014", trigger_count = 0 },
	{ config_id = 1569015, name = "GROUP_REFRESH_569015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_569015" },
	{ config_id = 1569016, name = "ANY_GADGET_DIE_569016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_569016", trigger_count = 0 },
	{ config_id = 1569017, name = "GADGET_CREATE_569017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_569017", action = "action_EVENT_GADGET_CREATE_569017", trigger_count = 0 }
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
		gadgets = { 569001, 569002, 569003, 569004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_569009", "GADGET_STATE_CHANGE_569010", "VARIABLE_CHANGE_569011", "GADGET_STATE_CHANGE_569012", "GADGET_CREATE_569013", "SELECT_OPTION_569014", "GROUP_REFRESH_569015", "ANY_GADGET_DIE_569016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 569001, 569008 },
		regions = { },
		triggers = { "GADGET_CREATE_569017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_569009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_569010(context, evt)
	if 569001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_569010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106569, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_569011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_569011(context, evt)
	-- 将configid为 569001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 569001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133106569, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_569012(context, evt)
	if 569001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_569012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133106569 ；指定config：569001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133106569, 569001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_569013(context, evt)
	if 569001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_569013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106569, 569001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_569014(context, evt)
	if 569001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_569014(context, evt)
	-- 将configid为 569001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 569001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_569015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106569, 569001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_569016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_569017(context, evt)
	if 569001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_569017(context, evt)
	-- 将configid为 569001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 569001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end