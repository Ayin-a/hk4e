-- 基础信息
local base_info = {
	group_id = 133005027
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 2,
	group_id = 133005027,
	gadget_controller_id = 27006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27001, monster_id = 23020101, pos = { x = 1419.424, y = 330.585, z = -2050.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 2 },
	{ config_id = 27003, monster_id = 23020101, pos = { x = 1410.318, y = 330.660, z = -2052.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, drop_id = 1000100, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 27004, gadget_id = 70350083, pos = { x = 1414.784, y = 329.993, z = -2045.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 2 },
	{ config_id = 27005, gadget_id = 70220042, pos = { x = 1414.578, y = 329.673, z = -2043.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 27006, gadget_id = 70360001, pos = { x = 1414.775, y = 329.994, z = -2046.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1027007, name = "CHALLENGE_SUCCESS_27007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "874", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_27007" },
	{ config_id = 1027008, name = "CHALLENGE_FAIL_27008", event = EventType.EVENT_CHALLENGE_FAIL, source = "874", condition = "", action = "action_EVENT_CHALLENGE_FAIL_27008", trigger_count = 0 },
	{ config_id = 1027009, name = "GADGET_CREATE_27009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_27009", action = "action_EVENT_GADGET_CREATE_27009", trigger_count = 0 },
	{ config_id = 1027010, name = "SELECT_OPTION_27010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_27010", action = "action_EVENT_SELECT_OPTION_27010", trigger_count = 0 },
	{ config_id = 1027011, name = "GADGET_STATE_CHANGE_27011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_27011", action = "action_EVENT_GADGET_STATE_CHANGE_27011" }
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
		gadgets = { 27004, 27006 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_27007", "CHALLENGE_FAIL_27008", "GADGET_CREATE_27009", "SELECT_OPTION_27010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 27001, 27003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 挑战结束,
		monsters = { },
		gadgets = { 27004 },
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
		triggers = { "GADGET_STATE_CHANGE_27011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_27007(context, evt)
	-- 将configid为 27004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_27008(context, evt)
	-- 将configid为 27004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为27006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 27006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133005027, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_27009(context, evt)
	if 27006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_27009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133005027, 27006, {40}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_27010(context, evt)
	-- 判断是gadgetid 27006 option_id 40
	if 27006 ~= evt.param1 then
		return false	
	end
	
	if 40 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_27010(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27004, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_27011(context, evt)
	if 27005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_27011(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133005027, 1)
	
	return 0
end

require "TreasureMapEvent"