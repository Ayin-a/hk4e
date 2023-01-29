-- 基础信息
local base_info = {
	group_id = 133314099
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 7,
	group_id = 133314099,
	gadget_controller_id = 99011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 99001, monster_id = 25210103, pos = { x = -757.397, y = 58.194, z = 4427.144 }, rot = { x = 0.000, y = 65.853, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 99002, monster_id = 25210402, pos = { x = -759.999, y = 58.164, z = 4429.180 }, rot = { x = 0.000, y = 90.808, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 99003, monster_id = 25210202, pos = { x = -758.413, y = 59.062, z = 4424.325 }, rot = { x = 0.000, y = 43.139, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 99004, monster_id = 25210203, pos = { x = -747.795, y = 57.350, z = 4423.706 }, rot = { x = 0.000, y = 305.037, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 99005, monster_id = 25310101, pos = { x = -751.740, y = 56.116, z = 4433.250 }, rot = { x = 0.000, y = 183.793, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 99006, monster_id = 25210302, pos = { x = -752.391, y = 58.285, z = 4422.764 }, rot = { x = 0.000, y = 20.326, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 99007, monster_id = 25210302, pos = { x = -747.568, y = 55.706, z = 4432.990 }, rot = { x = 0.000, y = 238.263, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 99019, monster_id = 25310301, pos = { x = -754.710, y = 56.211, z = 4434.828 }, rot = { x = 0.000, y = 172.213, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 99008, gadget_id = 70330334, pos = { x = -752.237, y = 57.045, z = 4428.593 }, rot = { x = 7.348, y = 87.776, z = 7.589 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 99011, gadget_id = 70360001, pos = { x = -752.135, y = 58.056, z = 4428.585 }, rot = { x = 5.875, y = 359.916, z = 356.784 }, level = 30, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1099012, name = "SELECT_OPTION_99012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_99012", action = "action_EVENT_SELECT_OPTION_99012", trigger_count = 0 },
	{ config_id = 1099013, name = "CHALLENGE_SUCCESS_99013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_99013", trigger_count = 0 },
	{ config_id = 1099014, name = "CHALLENGE_FAIL_99014", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_99014", trigger_count = 0 },
	{ config_id = 1099016, name = "GADGET_CREATE_99016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_99016", action = "action_EVENT_GADGET_CREATE_99016", trigger_count = 0 },
	{ config_id = 1099017, name = "ANY_MONSTER_DIE_99017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_99017", action = "action_EVENT_ANY_MONSTER_DIE_99017", trigger_count = 0 },
	{ config_id = 1099018, name = "ANY_MONSTER_DIE_99018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_99018", action = "action_EVENT_ANY_MONSTER_DIE_99018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 99009, gadget_id = 70300118, pos = { x = -751.984, y = 58.026, z = 4428.792 }, rot = { x = 358.212, y = 0.123, z = -0.004 }, level = 30, area_id = 32 },
		{ config_id = 99010, gadget_id = 70330011, pos = { x = -751.902, y = 58.008, z = 4428.923 }, rot = { x = 358.212, y = 0.123, z = -0.004 }, level = 30, area_id = 32 }
	},
	triggers = {
		{ config_id = 1099015, name = "GADGET_STATE_CHANGE_99015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_99015", action = "action_EVENT_GADGET_STATE_CHANGE_99015", trigger_count = 0 }
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
		gadgets = { 99008, 99011 },
		regions = { },
		triggers = { "SELECT_OPTION_99012", "CHALLENGE_SUCCESS_99013", "CHALLENGE_FAIL_99014", "GADGET_CREATE_99016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 99001, 99002, 99003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_99017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 99004, 99006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_99018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 99005, 99007, 99019 },
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
function condition_EVENT_SELECT_OPTION_99012(context, evt)
	-- 判断是gadgetid 99011 option_id 177
	if 99011 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_99012(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99008, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_99013(context, evt)
	-- 将configid为 99008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99008, GadgetState.GearStop) then
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
function action_EVENT_CHALLENGE_FAIL_99014(context, evt)
	-- 将configid为 99008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为99011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 99011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314099, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133314099, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_99016(context, evt)
	if 99011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_99016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314099, 99011, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_99017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_99017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314099, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314099, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_99018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_99018(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314099, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314099, 3)
	
	return 0
end