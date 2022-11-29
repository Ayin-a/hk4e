-- 基础信息
local base_info = {
	group_id = 133007292
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 3,
	group_id = 133007292,
	gadget_controller_id = 292004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 292001, monster_id = 22010301, pos = { x = 2912.444, y = 208.284, z = 233.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 4 },
	{ config_id = 292009, monster_id = 22010201, pos = { x = 2907.883, y = 208.389, z = 233.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, drop_id = 1000100, area_id = 4 },
	{ config_id = 292010, monster_id = 22010301, pos = { x = 2903.337, y = 208.367, z = 232.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, drop_id = 1000100, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 292002, gadget_id = 70350083, pos = { x = 2907.804, y = 208.249, z = 238.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 4 },
	{ config_id = 292003, gadget_id = 70220042, pos = { x = 2907.598, y = 208.315, z = 240.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 292004, gadget_id = 70360001, pos = { x = 2907.795, y = 209.274, z = 238.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1292005, name = "CHALLENGE_SUCCESS_292005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "874", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_292005" },
	{ config_id = 1292006, name = "CHALLENGE_FAIL_292006", event = EventType.EVENT_CHALLENGE_FAIL, source = "874", condition = "", action = "action_EVENT_CHALLENGE_FAIL_292006", trigger_count = 0 },
	{ config_id = 1292007, name = "GADGET_CREATE_292007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_292007", action = "action_EVENT_GADGET_CREATE_292007", trigger_count = 0 },
	{ config_id = 1292008, name = "SELECT_OPTION_292008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_292008", action = "action_EVENT_SELECT_OPTION_292008", trigger_count = 0 },
	{ config_id = 1292011, name = "GADGET_STATE_CHANGE_292011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_292011", action = "action_EVENT_GADGET_STATE_CHANGE_292011" }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 4,
	end_suite = 3,
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
		gadgets = { 292002, 292004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_292005", "CHALLENGE_FAIL_292006", "GADGET_CREATE_292007", "SELECT_OPTION_292008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 292001, 292009, 292010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 挑战结束,
		monsters = { },
		gadgets = { 292002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_292011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_292005(context, evt)
	-- 将configid为 292002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 292002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_292006(context, evt)
	-- 将configid为 292002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 292002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为292004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 292004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133007292, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_292007(context, evt)
	if 292004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_292007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133007292, 292004, {40}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_292008(context, evt)
	-- 判断是gadgetid 292004 option_id 40
	if 292004 ~= evt.param1 then
		return false	
	end
	
	if 40 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_292008(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 874, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 292002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_292011(context, evt)
	if 292003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_292011(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007292, 1)
	
	return 0
end

require "TreasureMapEvent"