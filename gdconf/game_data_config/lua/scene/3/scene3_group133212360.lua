-- 基础信息
local base_info = {
	group_id = 133212360
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 2,
	group_id = 133212360,
	gadget_controller_id = 360004,
	frozen_time = 3
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 360001, monster_id = 23050101, pos = { x = -3766.343, y = 236.885, z = -2486.544 }, rot = { x = 0.000, y = 211.691, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 360002, monster_id = 23040101, pos = { x = -3760.682, y = 235.142, z = -2492.337 }, rot = { x = 0.000, y = 259.908, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 360003, gadget_id = 70350082, pos = { x = -3770.634, y = 235.427, z = -2494.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 13 },
	{ config_id = 360004, gadget_id = 70360001, pos = { x = -3770.640, y = 235.422, z = -2494.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 13 },
	{ config_id = 360005, gadget_id = 70220069, pos = { x = -3774.032, y = 235.540, z = -2493.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1360006, name = "CHALLENGE_SUCCESS_360006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "874", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_360006" },
	{ config_id = 1360007, name = "CHALLENGE_FAIL_360007", event = EventType.EVENT_CHALLENGE_FAIL, source = "874", condition = "", action = "action_EVENT_CHALLENGE_FAIL_360007", trigger_count = 0 },
	{ config_id = 1360008, name = "GADGET_CREATE_360008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_360008", action = "action_EVENT_GADGET_CREATE_360008", trigger_count = 0 },
	{ config_id = 1360009, name = "SELECT_OPTION_360009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_360009", action = "action_EVENT_SELECT_OPTION_360009", trigger_count = 0 },
	{ config_id = 1360010, name = "GADGET_STATE_CHANGE_360010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_360010", action = "action_EVENT_GADGET_STATE_CHANGE_360010" },
	{ config_id = 1360011, name = "GROUP_LOAD_360011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_360011", action = "action_EVENT_GROUP_LOAD_360011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "progress", value = 0, no_refresh = true }
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
		gadgets = { 360003, 360004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_360006", "CHALLENGE_FAIL_360007", "GADGET_CREATE_360008", "SELECT_OPTION_360009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 360001, 360002 },
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
		triggers = { "GADGET_STATE_CHANGE_360010", "GROUP_LOAD_360011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_360006(context, evt)
	-- 将configid为 360003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_360007(context, evt)
	-- 将configid为 360003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为360004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 360004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212360, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_360008(context, evt)
	if 360004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_360008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212360, 360004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_360009(context, evt)
	-- 判断是gadgetid 360004 option_id 177
	if 360004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_360009(context, evt)
	-- 6号挑战,被冰冻次数不超过frozen_time次 index 233
	if 0 ~= ScriptLib.ActiveChallenge(context, 874, 6, defs.group_id, defs.kill_sum,  defs.frozen_time, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360003, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_360010(context, evt)
	if 360005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_360010(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212360, 1)
	
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_360011(context, evt)
	-- 判断变量"progress"为1
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_360011(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212360, 1)
	
	return 0
end

require "V2_0/TreasureMapEventV2"