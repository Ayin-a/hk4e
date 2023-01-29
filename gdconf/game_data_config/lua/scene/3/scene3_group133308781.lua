-- 基础信息
local base_info = {
	group_id = 133308781
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 7,
	group_id = 133308781,
	gadget_controller_id = 781011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 781001, monster_id = 25210101, pos = { x = -944.682, y = 49.645, z = 4623.252 }, rot = { x = 0.000, y = 135.723, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 781002, monster_id = 25210101, pos = { x = -944.499, y = 50.292, z = 4620.320 }, rot = { x = 0.000, y = 72.025, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 781003, monster_id = 25210201, pos = { x = -943.052, y = 50.966, z = 4617.352 }, rot = { x = 0.000, y = 30.849, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 781004, monster_id = 25210201, pos = { x = -935.518, y = 49.234, z = 4626.511 }, rot = { x = 0.000, y = 229.814, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 781005, monster_id = 25310101, pos = { x = -939.062, y = 51.040, z = 4617.291 }, rot = { x = 0.000, y = 337.641, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 781006, monster_id = 25210302, pos = { x = -934.712, y = 49.936, z = 4623.143 }, rot = { x = 0.000, y = 276.417, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 781007, monster_id = 25210302, pos = { x = -939.199, y = 48.635, z = 4628.857 }, rot = { x = 0.000, y = 181.003, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 781008, gadget_id = 70330334, pos = { x = -940.166, y = 49.910, z = 4622.400 }, rot = { x = 12.372, y = 358.855, z = 1.504 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 781011, gadget_id = 70360001, pos = { x = -940.170, y = 49.914, z = 4622.527 }, rot = { x = 5.875, y = 359.916, z = 356.784 }, level = 30, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1781012, name = "SELECT_OPTION_781012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_781012", action = "action_EVENT_SELECT_OPTION_781012", trigger_count = 0 },
	{ config_id = 1781013, name = "CHALLENGE_SUCCESS_781013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_781013", trigger_count = 0 },
	{ config_id = 1781014, name = "CHALLENGE_FAIL_781014", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_781014", trigger_count = 0 },
	{ config_id = 1781016, name = "GADGET_CREATE_781016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_781016", action = "action_EVENT_GADGET_CREATE_781016", trigger_count = 0 },
	{ config_id = 1781017, name = "ANY_MONSTER_DIE_781017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_781017", action = "action_EVENT_ANY_MONSTER_DIE_781017", trigger_count = 0 },
	{ config_id = 1781018, name = "ANY_MONSTER_DIE_781018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_781018", action = "action_EVENT_ANY_MONSTER_DIE_781018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 781009, gadget_id = 70300118, pos = { x = -940.026, y = 49.874, z = 4622.727 }, rot = { x = 358.212, y = 0.123, z = -0.004 }, level = 30, area_id = 32 },
		{ config_id = 781010, gadget_id = 70330011, pos = { x = -939.937, y = 49.850, z = 4622.853 }, rot = { x = 358.212, y = 0.123, z = -0.004 }, level = 30, area_id = 32 }
	},
	triggers = {
		{ config_id = 1781015, name = "GADGET_STATE_CHANGE_781015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_781015", action = "action_EVENT_GADGET_STATE_CHANGE_781015", trigger_count = 0 }
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
		gadgets = { 781008, 781011 },
		regions = { },
		triggers = { "SELECT_OPTION_781012", "CHALLENGE_SUCCESS_781013", "CHALLENGE_FAIL_781014", "GADGET_CREATE_781016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 781001, 781002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_781017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 781004, 781006, 781007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_781018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 781003, 781005 },
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
function condition_EVENT_SELECT_OPTION_781012(context, evt)
	-- 判断是gadgetid 781011 option_id 177
	if 781011 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_781012(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 781008, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_781013(context, evt)
	-- 将configid为 781008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 781008, GadgetState.GearStop) then
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
function action_EVENT_CHALLENGE_FAIL_781014(context, evt)
	-- 将configid为 781008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 781008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为781011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 781011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308781, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308781, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_781016(context, evt)
	if 781011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_781016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308781, 781011, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_781017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_781017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308781, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308781, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_781018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_781018(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308781, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308781, 3)
	
	return 0
end