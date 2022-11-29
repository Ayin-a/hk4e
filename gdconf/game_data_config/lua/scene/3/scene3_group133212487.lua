-- 基础信息
local base_info = {
	group_id = 133212487
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 2,
	group_id = 133212487,
	gadget_controller_id = 487004,
	frozen_time = 3
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 487001, monster_id = 23050101, pos = { x = -3919.579, y = 227.067, z = -2099.019 }, rot = { x = 0.000, y = 211.691, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 487002, monster_id = 23040101, pos = { x = -3913.916, y = 225.663, z = -2104.810 }, rot = { x = 0.000, y = 259.908, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 487003, gadget_id = 70350082, pos = { x = -3923.867, y = 227.612, z = -2106.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 13 },
	{ config_id = 487004, gadget_id = 70360001, pos = { x = -3923.873, y = 227.616, z = -2106.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 13 },
	{ config_id = 487005, gadget_id = 70220069, pos = { x = -3927.266, y = 228.127, z = -2106.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1487006, name = "CHALLENGE_SUCCESS_487006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "874", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_487006" },
	{ config_id = 1487007, name = "CHALLENGE_FAIL_487007", event = EventType.EVENT_CHALLENGE_FAIL, source = "874", condition = "", action = "action_EVENT_CHALLENGE_FAIL_487007", trigger_count = 0 },
	{ config_id = 1487008, name = "GADGET_CREATE_487008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_487008", action = "action_EVENT_GADGET_CREATE_487008", trigger_count = 0 },
	{ config_id = 1487009, name = "SELECT_OPTION_487009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_487009", action = "action_EVENT_SELECT_OPTION_487009", trigger_count = 0 },
	{ config_id = 1487010, name = "GADGET_STATE_CHANGE_487010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_487010", action = "action_EVENT_GADGET_STATE_CHANGE_487010" },
	{ config_id = 1487011, name = "GROUP_LOAD_487011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_487011", action = "action_EVENT_GROUP_LOAD_487011", trigger_count = 0 }
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
		gadgets = { 487003, 487004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_487006", "CHALLENGE_FAIL_487007", "GADGET_CREATE_487008", "SELECT_OPTION_487009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 487001, 487002 },
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
		triggers = { "GADGET_STATE_CHANGE_487010", "GROUP_LOAD_487011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_487006(context, evt)
	-- 将configid为 487003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 487003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_487007(context, evt)
	-- 将configid为 487003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 487003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为487004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 487004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212487, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_487008(context, evt)
	if 487004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_487008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212487, 487004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_487009(context, evt)
	-- 判断是gadgetid 487004 option_id 177
	if 487004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_487009(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 487003, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_487010(context, evt)
	if 487005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_487010(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212487, 1)
	
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_487011(context, evt)
	-- 判断变量"progress"为1
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_487011(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212487, 1)
	
	return 0
end

require "V2_0/TreasureMapEventV2"