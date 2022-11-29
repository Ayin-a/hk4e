-- 基础信息
local base_info = {
	group_id = 144001072
}

-- Trigger变量
local defs = {
	group_id = 144001072,
	gadget_target_1S = 72002,
	gadget_target_1E = 72005,
	gadget_target_2S = 72003,
	gadget_target_2E = 72006,
	gadget_target_3S = 72004,
	gadget_target_3E = 72007
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
	{ config_id = 72001, gadget_id = 70360008, pos = { x = 338.336, y = 158.361, z = 427.835 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 72002, gadget_id = 70360011, pos = { x = 333.037, y = 162.503, z = 428.188 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 1, mark_flag = 2, area_id = 102 },
	{ config_id = 72003, gadget_id = 70360011, pos = { x = 331.851, y = 160.797, z = 430.265 }, rot = { x = 0.000, y = 293.515, z = 0.000 }, level = 1, mark_flag = 4, area_id = 102 },
	{ config_id = 72004, gadget_id = 70360011, pos = { x = 334.750, y = 161.558, z = 423.470 }, rot = { x = 0.000, y = 354.534, z = 0.000 }, level = 1, mark_flag = 8, area_id = 102 },
	{ config_id = 72005, gadget_id = 70360014, pos = { x = 332.258, y = 162.503, z = 427.667 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 1, route_id = 400100074, area_id = 102 },
	{ config_id = 72006, gadget_id = 70360014, pos = { x = 331.851, y = 160.797, z = 430.365 }, rot = { x = 0.000, y = 340.515, z = 0.000 }, level = 1, route_id = 400100075, area_id = 102 },
	{ config_id = 72007, gadget_id = 70360014, pos = { x = 334.750, y = 161.558, z = 423.470 }, rot = { x = 0.000, y = 156.734, z = 0.000 }, level = 1, route_id = 400100076, area_id = 102 },
	{ config_id = 72008, gadget_id = 70211101, pos = { x = 344.691, y = 158.361, z = 426.092 }, rot = { x = 0.000, y = 288.630, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 72018, gadget_id = 70230042, pos = { x = 324.115, y = 121.455, z = 307.267 }, rot = { x = 0.000, y = 300.947, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1072009, name = "GADGET_STATE_CHANGE_72009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_72009", trigger_count = 0 },
	{ config_id = 1072010, name = "GADGET_STATE_CHANGE_72010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_72010", action = "action_EVENT_GADGET_STATE_CHANGE_72010" },
	{ config_id = 1072011, name = "VARIABLE_CHANGE_72011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_72011", action = "action_EVENT_VARIABLE_CHANGE_72011" },
	{ config_id = 1072012, name = "GADGET_STATE_CHANGE_72012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_72012", action = "action_EVENT_GADGET_STATE_CHANGE_72012", trigger_count = 0 },
	{ config_id = 1072013, name = "GADGET_CREATE_72013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_72013", action = "action_EVENT_GADGET_CREATE_72013", trigger_count = 0 },
	{ config_id = 1072014, name = "SELECT_OPTION_72014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_72014", action = "action_EVENT_SELECT_OPTION_72014", trigger_count = 0 },
	{ config_id = 1072015, name = "GROUP_REFRESH_72015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_72015" },
	{ config_id = 1072016, name = "ANY_GADGET_DIE_72016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_72016", trigger_count = 0 },
	{ config_id = 1072017, name = "GADGET_CREATE_72017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_72017", action = "action_EVENT_GADGET_CREATE_72017", trigger_count = 0 }
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
		gadgets = { 72001, 72002, 72003, 72004, 72018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_72009", "GADGET_STATE_CHANGE_72010", "VARIABLE_CHANGE_72011", "GADGET_STATE_CHANGE_72012", "GADGET_CREATE_72013", "SELECT_OPTION_72014", "GROUP_REFRESH_72015", "ANY_GADGET_DIE_72016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 72001, 72008 },
		regions = { },
		triggers = { "GADGET_CREATE_72017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_72009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_72010(context, evt)
	if 72001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_72010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001072, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_72011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_72011(context, evt)
	-- 将configid为 72001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 72001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144001072, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_72012(context, evt)
	if 72001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_72012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 144001072 ；指定config：72001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144001072, 72001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_72013(context, evt)
	if 72001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_72013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001072, 72001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_72014(context, evt)
	if 72001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_72014(context, evt)
	-- 将configid为 72001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 72001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_72015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001072, 72001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_72016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_72017(context, evt)
	if 72001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_72017(context, evt)
	-- 将configid为 72001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 72001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end