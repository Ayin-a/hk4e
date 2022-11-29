-- 基础信息
local base_info = {
	group_id = 133102173
}

-- Trigger变量
local defs = {
	group_id = 133102173,
	gadget_target_1S = 173002,
	gadget_target_1E = 173005,
	gadget_target_2S = 173003,
	gadget_target_2E = 173006,
	gadget_target_3S = 173004,
	gadget_target_3E = 173007
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
	{ config_id = 173001, gadget_id = 70360008, pos = { x = 1047.530, y = 209.654, z = 266.024 }, rot = { x = 0.000, y = 212.345, z = 0.000 }, level = 32, area_id = 5 },
	{ config_id = 173002, gadget_id = 70360011, pos = { x = 1042.994, y = 212.284, z = 260.992 }, rot = { x = 0.000, y = 246.145, z = 0.000 }, level = 32, mark_flag = 2, area_id = 5 },
	{ config_id = 173003, gadget_id = 70360011, pos = { x = 1043.931, y = 211.584, z = 270.876 }, rot = { x = 0.000, y = 184.245, z = 0.000 }, level = 32, mark_flag = 4, area_id = 5 },
	{ config_id = 173004, gadget_id = 70360011, pos = { x = 1053.163, y = 210.984, z = 264.793 }, rot = { x = 0.000, y = 80.445, z = 0.000 }, level = 32, mark_flag = 8, area_id = 5 },
	{ config_id = 173005, gadget_id = 70360014, pos = { x = 1042.999, y = 212.286, z = 261.021 }, rot = { x = 0.000, y = 131.345, z = 0.000 }, level = 32, route_id = 310200070, area_id = 5 },
	{ config_id = 173006, gadget_id = 70360014, pos = { x = 1043.889, y = 211.586, z = 270.869 }, rot = { x = 0.000, y = 231.245, z = 0.000 }, level = 32, route_id = 310200071, area_id = 5 },
	{ config_id = 173007, gadget_id = 70360014, pos = { x = 1053.196, y = 210.986, z = 264.819 }, rot = { x = 0.000, y = 242.645, z = 0.000 }, level = 32, route_id = 310200072, area_id = 5 },
	{ config_id = 173008, gadget_id = 70211111, pos = { x = 1047.586, y = 209.647, z = 264.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1173009, name = "GADGET_STATE_CHANGE_173009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_173009", trigger_count = 0 },
	{ config_id = 1173010, name = "GADGET_STATE_CHANGE_173010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_173010", action = "action_EVENT_GADGET_STATE_CHANGE_173010" },
	{ config_id = 1173011, name = "VARIABLE_CHANGE_173011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_173011", action = "action_EVENT_VARIABLE_CHANGE_173011" },
	{ config_id = 1173012, name = "GADGET_STATE_CHANGE_173012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_173012", action = "action_EVENT_GADGET_STATE_CHANGE_173012", trigger_count = 0 },
	{ config_id = 1173013, name = "GADGET_CREATE_173013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_173013", action = "action_EVENT_GADGET_CREATE_173013", trigger_count = 0 },
	{ config_id = 1173014, name = "SELECT_OPTION_173014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_173014", action = "action_EVENT_SELECT_OPTION_173014", trigger_count = 0 },
	{ config_id = 1173015, name = "GROUP_REFRESH_173015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_173015" },
	{ config_id = 1173016, name = "ANY_GADGET_DIE_173016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_173016", trigger_count = 0 },
	{ config_id = 1173017, name = "GADGET_CREATE_173017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_173017", action = "action_EVENT_GADGET_CREATE_173017", trigger_count = 0 }
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
		gadgets = { 173001, 173002, 173003, 173004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_173009", "GADGET_STATE_CHANGE_173010", "VARIABLE_CHANGE_173011", "GADGET_STATE_CHANGE_173012", "GADGET_CREATE_173013", "SELECT_OPTION_173014", "GROUP_REFRESH_173015", "ANY_GADGET_DIE_173016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 173001, 173008 },
		regions = { },
		triggers = { "GADGET_CREATE_173017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_173009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_173010(context, evt)
	if 173001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_173010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102173, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_173011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_173011(context, evt)
	-- 将configid为 173001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102173, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_173012(context, evt)
	if 173001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_173012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133102173 ；指定config：173001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102173, 173001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_173013(context, evt)
	if 173001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_173013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102173, 173001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_173014(context, evt)
	if 173001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_173014(context, evt)
	-- 将configid为 173001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_173015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102173, 173001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_173016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_173017(context, evt)
	if 173001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_173017(context, evt)
	-- 将configid为 173001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end