-- 基础信息
local base_info = {
	group_id = 133004441
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 2,
	group_id = 133004441,
	gadget_controller_id = 441004,
	frozen_time = 3
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 441001, monster_id = 22010303, pos = { x = 2566.460, y = 263.118, z = -265.682 }, rot = { x = 0.000, y = 211.691, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 4 },
	{ config_id = 441003, monster_id = 22010202, pos = { x = 2572.122, y = 262.705, z = -271.473 }, rot = { x = 0.000, y = 259.908, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 441002, gadget_id = 70350082, pos = { x = 2562.171, y = 263.170, z = -273.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 4 },
	{ config_id = 441004, gadget_id = 70360001, pos = { x = 2562.164, y = 264.192, z = -273.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 4 },
	{ config_id = 441011, gadget_id = 70220042, pos = { x = 2558.772, y = 263.123, z = -272.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1441005, name = "CHALLENGE_SUCCESS_441005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "233", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_441005" },
	{ config_id = 1441006, name = "CHALLENGE_FAIL_441006", event = EventType.EVENT_CHALLENGE_FAIL, source = "233", condition = "", action = "action_EVENT_CHALLENGE_FAIL_441006", trigger_count = 0 },
	{ config_id = 1441007, name = "GADGET_CREATE_441007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_441007", action = "action_EVENT_GADGET_CREATE_441007", trigger_count = 0 },
	{ config_id = 1441008, name = "SELECT_OPTION_441008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_441008", action = "action_EVENT_SELECT_OPTION_441008", trigger_count = 0 },
	{ config_id = 1441009, name = "GADGET_STATE_CHANGE_441009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_441009", action = "action_EVENT_GADGET_STATE_CHANGE_441009" }
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
	suite = 3,
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
		gadgets = { 441002, 441004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_441005", "CHALLENGE_FAIL_441006", "GADGET_CREATE_441007", "SELECT_OPTION_441008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 441001, 441003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_441009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_441005(context, evt)
	-- 将configid为 441002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 441002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_441006(context, evt)
	-- 将configid为 441002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 441002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为441004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 441004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133004441, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_441007(context, evt)
	if 441004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_441007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133004441, 441004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_441008(context, evt)
	-- 判断是gadgetid 441004 option_id 177
	if 441004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_441008(context, evt)
	-- 6号挑战,被冰冻次数不超过frozen_time次 index 233
	if 0 ~= ScriptLib.ActiveChallenge(context, 233, 6, defs.group_id, defs.kill_sum,  defs.frozen_time, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 441002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_441009(context, evt)
	if 441011 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_441009(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004441, 1)
	
	return 0
end

require "TreasureMapEvent"