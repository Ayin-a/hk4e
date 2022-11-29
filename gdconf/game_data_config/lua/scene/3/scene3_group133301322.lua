-- 基础信息
local base_info = {
	group_id = 133301322
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 1,
	group_id = 133301322,
	gadget_controller_id = 322009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 322001, monster_id = 24030201, pos = { x = -321.554, y = 239.813, z = 3718.551 }, rot = { x = 0.000, y = 121.686, z = 0.000 }, level = 1, drop_id = 1000100, isElite = true, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 322006, gadget_id = 70350082, pos = { x = -311.536, y = 242.453, z = 3714.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 22 },
	{ config_id = 322009, gadget_id = 70360001, pos = { x = -311.460, y = 243.458, z = 3714.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1322010, name = "SELECT_OPTION_322010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_322010", action = "action_EVENT_SELECT_OPTION_322010", trigger_count = 0 },
	{ config_id = 1322011, name = "CHALLENGE_SUCCESS_322011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_322011", trigger_count = 0 },
	{ config_id = 1322012, name = "CHALLENGE_FAIL_322012", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_322012", trigger_count = 0 },
	{ config_id = 1322014, name = "GADGET_CREATE_322014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_322014", action = "action_EVENT_GADGET_CREATE_322014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 322002, monster_id = 21010101, pos = { x = -311.460, y = 243.458, z = 3714.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 },
		{ config_id = 322003, monster_id = 21011001, pos = { x = -311.460, y = 243.458, z = 3714.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 },
		{ config_id = 322004, monster_id = 21010101, pos = { x = -311.460, y = 243.458, z = 3714.009 }, rot = { x = 0.000, y = 228.217, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 },
		{ config_id = 322005, monster_id = 21010101, pos = { x = -311.460, y = 243.458, z = 3714.009 }, rot = { x = 0.000, y = 228.217, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 }
	},
	gadgets = {
		{ config_id = 322007, gadget_id = 70300118, pos = { x = -311.460, y = 243.458, z = 3714.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
		{ config_id = 322008, gadget_id = 70330011, pos = { x = -311.460, y = 243.458, z = 3714.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 }
	},
	triggers = {
		{ config_id = 1322013, name = "GADGET_STATE_CHANGE_322013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_322013", action = "action_EVENT_GADGET_STATE_CHANGE_322013", trigger_count = 0 }
	}
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
		-- description = ,
		monsters = { },
		gadgets = { 322006, 322009 },
		regions = { },
		triggers = { "SELECT_OPTION_322010", "CHALLENGE_SUCCESS_322011", "CHALLENGE_FAIL_322012", "GADGET_CREATE_322014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 322001 },
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
function condition_EVENT_SELECT_OPTION_322010(context, evt)
	-- 判断是gadgetid 322009 option_id 177
	if 322009 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_322010(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 322006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_322011(context, evt)
	-- 将configid为 322006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 322006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_322012(context, evt)
	-- 将configid为 322006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 322006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为322009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 322009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301322, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301322, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_322014(context, evt)
	if 322009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_322014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301322, 322009, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end