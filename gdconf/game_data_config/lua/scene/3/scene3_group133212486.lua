-- 基础信息
local base_info = {
	group_id = 133212486
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 2,
	group_id = 133212486,
	gadget_controller_id = 486005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 486001, monster_id = 25100101, pos = { x = -3447.550, y = 204.891, z = -2186.702 }, rot = { x = 0.000, y = 300.098, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 486002, monster_id = 25100101, pos = { x = -3458.951, y = 206.254, z = -2187.516 }, rot = { x = 0.000, y = 45.519, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 486003, gadget_id = 70350083, pos = { x = -3453.908, y = 205.868, z = -2181.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, persistent = true, area_id = 13 },
	{ config_id = 486004, gadget_id = 70220069, pos = { x = -3451.940, y = 205.554, z = -2178.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, area_id = 13 },
	{ config_id = 486005, gadget_id = 70360001, pos = { x = -3453.917, y = 206.861, z = -2181.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1486006, name = "CHALLENGE_SUCCESS_486006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "874", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_486006" },
	{ config_id = 1486007, name = "CHALLENGE_FAIL_486007", event = EventType.EVENT_CHALLENGE_FAIL, source = "874", condition = "", action = "action_EVENT_CHALLENGE_FAIL_486007", trigger_count = 0 },
	{ config_id = 1486008, name = "GADGET_CREATE_486008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_486008", action = "action_EVENT_GADGET_CREATE_486008", trigger_count = 0 },
	{ config_id = 1486009, name = "SELECT_OPTION_486009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_486009", action = "action_EVENT_SELECT_OPTION_486009", trigger_count = 0 },
	{ config_id = 1486010, name = "GADGET_STATE_CHANGE_486010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_486010", action = "action_EVENT_GADGET_STATE_CHANGE_486010" },
	{ config_id = 1486011, name = "GROUP_LOAD_486011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_486011", action = "action_EVENT_GROUP_LOAD_486011", trigger_count = 0 }
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
		gadgets = { 486003, 486005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_486006", "CHALLENGE_FAIL_486007", "GADGET_CREATE_486008", "SELECT_OPTION_486009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 486001, 486002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 挑战结束,
		monsters = { },
		gadgets = { 486003 },
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
		triggers = { "GADGET_STATE_CHANGE_486010", "GROUP_LOAD_486011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_486006(context, evt)
	-- 将configid为 486003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 486003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_486007(context, evt)
	-- 将configid为 486003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 486003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为486005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 486005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212486, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_486008(context, evt)
	if 486005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_486008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212486, 486005, {67}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_486009(context, evt)
	-- 判断是gadgetid 486005 option_id 67
	if 486005 ~= evt.param1 then
		return false	
	end
	
	if 67 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_486009(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 486003, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_486010(context, evt)
	if 486004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_486010(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212486, 1)
	
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_486011(context, evt)
	-- 判断变量"progress"为1
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_486011(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212486, 1)
	
	return 0
end

require "V2_0/TreasureMapEventV2"