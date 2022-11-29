-- 基础信息
local base_info = {
	group_id = 133101107
}

-- Trigger变量
local defs = {
	duration = 200,
	kill_sum = 6,
	group_id = 133101107,
	gadget_controller_id = 107002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 107001, monster_id = 20011201, pos = { x = 1597.637, y = 225.297, z = 1256.238 }, rot = { x = 0.000, y = 151.514, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 107003, monster_id = 20011201, pos = { x = 1597.334, y = 225.163, z = 1246.470 }, rot = { x = 0.000, y = 22.961, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 107012, monster_id = 20011301, pos = { x = 1594.587, y = 225.199, z = 1252.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 107013, monster_id = 20011301, pos = { x = 1604.309, y = 225.633, z = 1251.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 107014, monster_id = 21010701, pos = { x = 1599.933, y = 225.408, z = 1246.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1411 }, area_id = 5 },
	{ config_id = 107016, monster_id = 21010701, pos = { x = 1595.785, y = 225.197, z = 1249.022 }, rot = { x = 0.000, y = 35.171, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1411 }, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 107002, gadget_id = 70360001, pos = { x = 1600.413, y = 225.364, z = 1251.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 107006, gadget_id = 70350082, pos = { x = 1600.413, y = 225.364, z = 1251.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 107007, gadget_id = 70330012, pos = { x = 1600.535, y = 226.010, z = 1251.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 107015, gadget_id = 70300118, pos = { x = 1600.404, y = 227.946, z = 1251.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1107004, name = "SELECT_OPTION_107004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_107004", action = "action_EVENT_SELECT_OPTION_107004", trigger_count = 0 },
	{ config_id = 1107005, name = "GADGET_CREATE_107005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_107005", action = "action_EVENT_GADGET_CREATE_107005", trigger_count = 0 },
	{ config_id = 1107008, name = "GADGET_STATE_CHANGE_107008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_107008", action = "action_EVENT_GADGET_STATE_CHANGE_107008", trigger_count = 0 },
	{ config_id = 1107009, name = "CHALLENGE_SUCCESS_107009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_107009", trigger_count = 0 },
	{ config_id = 1107010, name = "CHALLENGE_FAIL_107010", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_107010", trigger_count = 0 },
	{ config_id = 1107011, name = "GADGET_STATE_CHANGE_107011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_107011", action = "action_EVENT_GADGET_STATE_CHANGE_107011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		gadgets = { 107002, 107006, 107007 },
		regions = { },
		triggers = { "SELECT_OPTION_107004", "GADGET_CREATE_107005", "CHALLENGE_SUCCESS_107009", "CHALLENGE_FAIL_107010", "GADGET_STATE_CHANGE_107011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 107001, 107003, 107012, 107013, 107014, 107016 },
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

-- 触发条件
function condition_EVENT_SELECT_OPTION_107004(context, evt)
	-- 判断是gadgetid 107002 option_id 177
	if 107002 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_107004(context, evt)
	-- 180号挑��?,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid��? 2002 的物件更改为状��? GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_107005(context, evt)
	if 107002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_107005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101107, 107002, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_107008(context, evt)
	if 107006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_107008(context, evt)
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, 133101107, 2)
	
	-- 180号挑��?,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_107009(context, evt)
	-- 将configid为 107006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 107007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_107010(context, evt)
	-- 将configid为 107006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 107007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为107002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 107002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101107, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133101107, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_107011(context, evt)
	if 107006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_107011(context, evt)
	-- 将configid为 107007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end