-- 基础信息
local base_info = {
	group_id = 250008090
}

-- Trigger变量
local defs = {
	group_id = 250008090,
	gadget_target_1S = 90002,
	gadget_target_1E = 90005,
	gadget_target_2S = 90003,
	gadget_target_2E = 90006,
	gadget_target_3S = 90004,
	gadget_target_3E = 90007
}

-- DEFS_MISCS


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
	{ config_id = 90001, gadget_id = 70360008, pos = { x = 221.531, y = 4.000, z = -515.527 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 90002, gadget_id = 70360011, pos = { x = 214.831, y = 9.696, z = -514.527 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 1, mark_flag = 2 },
	{ config_id = 90003, gadget_id = 70360011, pos = { x = 224.931, y = 9.820, z = -515.427 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 1, mark_flag = 4 },
	{ config_id = 90004, gadget_id = 70360011, pos = { x = 226.431, y = 9.778, z = -519.127 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 1, mark_flag = 8 },
	{ config_id = 90005, gadget_id = 70360014, pos = { x = 214.831, y = 9.696, z = -514.527 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 1, route_id = 50008062 },
	{ config_id = 90006, gadget_id = 70360014, pos = { x = 224.931, y = 9.820, z = -515.327 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 1, route_id = 50008063 },
	{ config_id = 90007, gadget_id = 70360014, pos = { x = 226.431, y = 9.778, z = -519.127 }, rot = { x = 0.000, y = 299.100, z = 0.000 }, level = 1, route_id = 50008042 },
	{ config_id = 90008, gadget_id = 70211111, pos = { x = 221.497, y = 4.000, z = -516.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1090009, name = "ANY_GADGET_DIE_90009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_90009", trigger_count = 0 },
	{ config_id = 1090011, name = "VARIABLE_CHANGE_90011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_90011", action = "action_EVENT_VARIABLE_CHANGE_90011" },
	{ config_id = 1090012, name = "GADGET_STATE_CHANGE_90012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90012", action = "action_EVENT_GADGET_STATE_CHANGE_90012", trigger_count = 0 },
	{ config_id = 1090013, name = "GADGET_CREATE_90013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_90013", action = "action_EVENT_GADGET_CREATE_90013", trigger_count = 0 },
	{ config_id = 1090014, name = "SELECT_OPTION_90014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_90014", action = "action_EVENT_SELECT_OPTION_90014", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 90001, 90002, 90003, 90004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_90009", "VARIABLE_CHANGE_90011", "GADGET_STATE_CHANGE_90012", "GADGET_CREATE_90013", "SELECT_OPTION_90014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 90001, 90008 },
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
function action_EVENT_ANY_GADGET_DIE_90009(context, evt)
	if evt.param1 == defs.gadget_target_1S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_1E }) 	
	elseif evt.param1 == defs.gadget_target_2S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_2E }) 
	elseif evt.param1 == defs.gadget_target_3S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_3E }) 
	elseif evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_90011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_90011(context, evt)
	-- 将configid为 90001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250008090, 2) then
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
function condition_EVENT_GADGET_STATE_CHANGE_90012(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 250008090 ；指定config：90001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250008090, 90001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_90013(context, evt)
	if 90001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_90013(context, evt)
	-- 将configid为 90001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250008090, 90001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_90014(context, evt)
	if 90001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_90014(context, evt)
	-- 将configid为 90001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end