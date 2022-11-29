-- 基础信息
local base_info = {
	group_id = 133304150
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 6,
	group_id = 133304150,
	gadget_controller_id = 150004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 150001, monster_id = 25310201, pos = { x = -1446.570, y = 258.164, z = 3057.811 }, rot = { x = 0.000, y = 284.815, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isElite = true, pose_id = 1, area_id = 21 },
	{ config_id = 150003, monster_id = 25210401, pos = { x = -1448.899, y = 260.164, z = 3049.018 }, rot = { x = 0.000, y = 328.234, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 150010, monster_id = 25210401, pos = { x = -1457.591, y = 260.450, z = 3056.916 }, rot = { x = 0.000, y = 58.065, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 150011, monster_id = 25310301, pos = { x = -1454.779, y = 261.840, z = 3049.804 }, rot = { x = 0.000, y = 44.567, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isElite = true, area_id = 21 },
	{ config_id = 150012, monster_id = 25210501, pos = { x = -1454.257, y = 259.616, z = 3060.682 }, rot = { x = 0.000, y = 164.551, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 150013, monster_id = 25210501, pos = { x = -1447.995, y = 259.396, z = 3052.357 }, rot = { x = 0.000, y = 249.291, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 150002, gadget_id = 70350082, pos = { x = -1452.787, y = 259.806, z = 3054.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 150004, gadget_id = 70360001, pos = { x = -1452.796, y = 260.770, z = 3054.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1150005, name = "GROUP_LOAD_150005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_150005", action = "action_EVENT_GROUP_LOAD_150005", trigger_count = 0 },
	{ config_id = 1150006, name = "CHALLENGE_SUCCESS_150006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_150006", trigger_count = 0 },
	{ config_id = 1150007, name = "CHALLENGE_FAIL_150007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_150007", trigger_count = 0 },
	{ config_id = 1150008, name = "GADGET_CREATE_150008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_150008", action = "action_EVENT_GADGET_CREATE_150008", trigger_count = 0 },
	{ config_id = 1150009, name = "SELECT_OPTION_150009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_150009", action = "action_EVENT_SELECT_OPTION_150009", trigger_count = 0 },
	{ config_id = 1150014, name = "ANY_MONSTER_DIE_150014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_150014", action = "action_EVENT_ANY_MONSTER_DIE_150014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
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
		gadgets = { 150002, 150004 },
		regions = { },
		triggers = { "GROUP_LOAD_150005", "CHALLENGE_SUCCESS_150006", "CHALLENGE_FAIL_150007", "GADGET_CREATE_150008", "SELECT_OPTION_150009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 150003, 150010, 150011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_150014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 150001, 150012, 150013 },
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
function condition_EVENT_GROUP_LOAD_150005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_150005(context, evt)
	-- 将configid为 150002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 150002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为150004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 150004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304150, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304150, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_150006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 150002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 150002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_150007(context, evt)
	-- 将configid为 150002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 150002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为150004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 150004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304150, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304150, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_150008(context, evt)
	if 150004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_150008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304150, 150004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_150009(context, evt)
	-- 判断是gadgetid 150004 option_id 177
	if 150004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_150009(context, evt)
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
		
	
	-- 将configid为 150002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 150002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_150014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_150014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304150, 3)
	
	return 0
end