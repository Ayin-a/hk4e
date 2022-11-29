-- 基础信息
local base_info = {
	group_id = 144004027
}

-- Trigger变量
local defs = {
	group_id = 144004027,
	gadget_target_1S = 27002,
	gadget_target_1E = 27005,
	gadget_target_2S = 27003,
	gadget_target_2E = 27006,
	gadget_target_3S = 27004,
	gadget_target_3E = 27007
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
	{ config_id = 27001, gadget_id = 70360008, pos = { x = -356.091, y = 174.574, z = -637.694 }, rot = { x = 5.606, y = 234.321, z = 17.883 }, level = 20, area_id = 100 },
	{ config_id = 27002, gadget_id = 70360011, pos = { x = -341.415, y = 176.082, z = -629.513 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 20, mark_flag = 2, area_id = 100 },
	{ config_id = 27003, gadget_id = 70360011, pos = { x = -346.872, y = 180.543, z = -637.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, mark_flag = 4, area_id = 100 },
	{ config_id = 27004, gadget_id = 70360011, pos = { x = -343.664, y = 172.398, z = -630.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, mark_flag = 8, area_id = 100 },
	{ config_id = 27005, gadget_id = 70360014, pos = { x = -341.415, y = 176.082, z = -629.513 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 20, route_id = 400400041, area_id = 100 },
	{ config_id = 27006, gadget_id = 70360014, pos = { x = -346.872, y = 180.543, z = -637.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 400400042, area_id = 100 },
	{ config_id = 27007, gadget_id = 70360014, pos = { x = -343.664, y = 172.398, z = -630.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 400400043, area_id = 100 },
	{ config_id = 27008, gadget_id = 70211101, pos = { x = -357.061, y = 174.667, z = -637.344 }, rot = { x = 355.450, y = 85.398, z = 341.645 }, level = 26, drop_tag = "解谜低级群岛", showcutscene = true, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1027009, name = "GADGET_STATE_CHANGE_27009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_27009", trigger_count = 0 },
	{ config_id = 1027010, name = "GADGET_STATE_CHANGE_27010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_27010", action = "action_EVENT_GADGET_STATE_CHANGE_27010" },
	{ config_id = 1027011, name = "VARIABLE_CHANGE_27011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_27011", action = "action_EVENT_VARIABLE_CHANGE_27011" },
	{ config_id = 1027012, name = "GADGET_STATE_CHANGE_27012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_27012", action = "action_EVENT_GADGET_STATE_CHANGE_27012", trigger_count = 0 },
	{ config_id = 1027013, name = "GADGET_CREATE_27013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_27013", action = "action_EVENT_GADGET_CREATE_27013", trigger_count = 0 },
	{ config_id = 1027014, name = "SELECT_OPTION_27014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_27014", action = "action_EVENT_SELECT_OPTION_27014", trigger_count = 0 },
	{ config_id = 1027015, name = "GROUP_REFRESH_27015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_27015" },
	{ config_id = 1027016, name = "ANY_GADGET_DIE_27016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_27016", trigger_count = 0 },
	{ config_id = 1027017, name = "GADGET_CREATE_27017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_27017", action = "action_EVENT_GADGET_CREATE_27017", trigger_count = 0 }
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
		gadgets = { 27001, 27002, 27003, 27004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_27009", "GADGET_STATE_CHANGE_27010", "VARIABLE_CHANGE_27011", "GADGET_STATE_CHANGE_27012", "GADGET_CREATE_27013", "SELECT_OPTION_27014", "GROUP_REFRESH_27015", "ANY_GADGET_DIE_27016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 27001, 27008 },
		regions = { },
		triggers = { "GADGET_CREATE_27017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_27009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_27010(context, evt)
	if 27001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_27010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144004027, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_27011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_27011(context, evt)
	-- 将configid为 27001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004027, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_27012(context, evt)
	if 27001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_27012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 144004027 ；指定config：27001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004027, 27001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_27013(context, evt)
	if 27001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_27013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004027, 27001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_27014(context, evt)
	if 27001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_27014(context, evt)
	-- 将configid为 27001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_27015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004027, 27001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_27016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_27017(context, evt)
	if 27001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_27017(context, evt)
	-- 将configid为 27001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end