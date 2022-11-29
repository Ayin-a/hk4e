-- 基础信息
local base_info = {
	group_id = 133103189
}

-- Trigger变量
local defs = {
	group_id = 133103189,
	gadget_target_1S = 189002,
	gadget_target_1E = 189005,
	gadget_target_2S = 189003,
	gadget_target_2E = 189006,
	gadget_target_3S = 189004,
	gadget_target_3E = 189007
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
	{ config_id = 189001, gadget_id = 70360008, pos = { x = 1036.256, y = 350.152, z = 1689.600 }, rot = { x = 0.000, y = 315.531, z = 0.000 }, level = 32, area_id = 6 },
	{ config_id = 189002, gadget_id = 70360011, pos = { x = 1033.900, y = 351.209, z = 1694.048 }, rot = { x = 0.000, y = 349.331, z = 0.000 }, level = 32, mark_flag = 2, area_id = 6 },
	{ config_id = 189003, gadget_id = 70360011, pos = { x = 1041.497, y = 351.200, z = 1688.427 }, rot = { x = 0.000, y = 287.431, z = 0.000 }, level = 32, mark_flag = 4, area_id = 6 },
	{ config_id = 189004, gadget_id = 70360011, pos = { x = 1033.076, y = 351.200, z = 1685.302 }, rot = { x = 0.000, y = 183.631, z = 0.000 }, level = 32, mark_flag = 8, area_id = 6 },
	{ config_id = 189005, gadget_id = 70360014, pos = { x = 1033.900, y = 351.209, z = 1694.048 }, rot = { x = 0.000, y = 234.531, z = 0.000 }, level = 32, route_id = 310300058, area_id = 6 },
	{ config_id = 189006, gadget_id = 70360014, pos = { x = 1041.497, y = 351.200, z = 1688.427 }, rot = { x = 0.000, y = 334.431, z = 0.000 }, level = 32, route_id = 310300059, area_id = 6 },
	{ config_id = 189007, gadget_id = 70360014, pos = { x = 1033.076, y = 351.200, z = 1685.302 }, rot = { x = 0.000, y = 345.831, z = 0.000 }, level = 32, route_id = 310300060, area_id = 6 },
	{ config_id = 189008, gadget_id = 70211111, pos = { x = 1049.058, y = 337.991, z = 1630.432 }, rot = { x = 15.800, y = 257.617, z = 356.490 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1189009, name = "GADGET_STATE_CHANGE_189009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_189009", trigger_count = 0 },
	{ config_id = 1189010, name = "GADGET_STATE_CHANGE_189010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_189010", action = "action_EVENT_GADGET_STATE_CHANGE_189010" },
	{ config_id = 1189011, name = "VARIABLE_CHANGE_189011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_189011", action = "action_EVENT_VARIABLE_CHANGE_189011" },
	{ config_id = 1189012, name = "GADGET_STATE_CHANGE_189012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_189012", action = "action_EVENT_GADGET_STATE_CHANGE_189012", trigger_count = 0 },
	{ config_id = 1189013, name = "GADGET_CREATE_189013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_189013", action = "action_EVENT_GADGET_CREATE_189013", trigger_count = 0 },
	{ config_id = 1189014, name = "SELECT_OPTION_189014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_189014", action = "action_EVENT_SELECT_OPTION_189014", trigger_count = 0 },
	{ config_id = 1189015, name = "GROUP_REFRESH_189015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_189015" },
	{ config_id = 1189016, name = "ANY_GADGET_DIE_189016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_189016", trigger_count = 0 },
	{ config_id = 1189017, name = "GADGET_CREATE_189017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_189017", action = "action_EVENT_GADGET_CREATE_189017", trigger_count = 0 }
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
		gadgets = { 189001, 189002, 189003, 189004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_189009", "GADGET_STATE_CHANGE_189010", "VARIABLE_CHANGE_189011", "GADGET_STATE_CHANGE_189012", "GADGET_CREATE_189013", "SELECT_OPTION_189014", "GROUP_REFRESH_189015", "ANY_GADGET_DIE_189016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 189001, 189008 },
		regions = { },
		triggers = { "GADGET_CREATE_189017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_189009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_189010(context, evt)
	if 189001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_189010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103189, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_189011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_189011(context, evt)
	-- 将configid为 189001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 189001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103189, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_189012(context, evt)
	if 189001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_189012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133103189 ；指定config：189001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103189, 189001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_189013(context, evt)
	if 189001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_189013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103189, 189001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_189014(context, evt)
	if 189001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_189014(context, evt)
	-- 将configid为 189001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 189001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_189015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103189, 189001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_189016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_189017(context, evt)
	if 189001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_189017(context, evt)
	-- 将configid为 189001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 189001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end