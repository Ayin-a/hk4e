-- 基础信息
local base_info = {
	group_id = 133220161
}

-- Trigger变量
local defs = {
	duration = 240,
	monster_id = 161001,
	group_id = 133220161,
	gadget_controller_id = 161009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 161001, monster_id = 21020801, pos = { x = -2563.299, y = 200.901, z = -4052.958 }, rot = { x = 0.000, y = 206.442, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6110 }, isElite = true, area_id = 11 },
	{ config_id = 161002, monster_id = 21030601, pos = { x = -2553.226, y = 200.680, z = -4052.892 }, rot = { x = 0.000, y = 224.319, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, area_id = 11 },
	{ config_id = 161003, monster_id = 21030601, pos = { x = -2570.837, y = 200.917, z = -4046.446 }, rot = { x = 0.000, y = 166.093, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 161006, gadget_id = 70350082, pos = { x = -2567.128, y = 200.414, z = -4062.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 161009, gadget_id = 70360001, pos = { x = -2567.126, y = 201.386, z = -4062.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1161010, name = "SELECT_OPTION_161010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_161010", action = "action_EVENT_SELECT_OPTION_161010", trigger_count = 0 },
	{ config_id = 1161011, name = "CHALLENGE_SUCCESS_161011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_161011", trigger_count = 0 },
	{ config_id = 1161012, name = "CHALLENGE_FAIL_161012", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_161012", trigger_count = 0 },
	{ config_id = 1161013, name = "GADGET_STATE_CHANGE_161013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_161013", action = "action_EVENT_GADGET_STATE_CHANGE_161013", trigger_count = 0 },
	{ config_id = 1161014, name = "GADGET_CREATE_161014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_161014", action = "action_EVENT_GADGET_CREATE_161014", trigger_count = 0 }
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
		gadgets = { 161006, 161009 },
		regions = { },
		triggers = { "SELECT_OPTION_161010", "CHALLENGE_SUCCESS_161011", "CHALLENGE_FAIL_161012", "GADGET_STATE_CHANGE_161013", "GADGET_CREATE_161014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 161001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 161002, 161003 },
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
function condition_EVENT_SELECT_OPTION_161010(context, evt)
	-- 判断是gadgetid 161009 option_id 177
	if 161009 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_161010(context, evt)
	-- 180号挑战,duration内击杀指定config_id的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 72, defs.duration, defs.group_id, defs.monster_id, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 161006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_161011(context, evt)
	-- 将configid为 161006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 161006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133220161, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_161012(context, evt)
	-- 将configid为 161006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 161006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为161009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 161009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220161, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220161, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_161013(context, evt)
	if 161006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_161013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220161, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_161014(context, evt)
	if 161009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_161014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220161, 161009, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end