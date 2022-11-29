-- 基础信息
local base_info = {
	group_id = 133304155
}

-- Trigger变量
local defs = {
	duration = 120,
	kill_sum = 6,
	group_id = 133304155,
	gadget_controller_id = 155004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 155001, monster_id = 26120201, pos = { x = -1772.083, y = 225.629, z = 2932.897 }, rot = { x = 0.000, y = 20.295, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isElite = true, pose_id = 201, area_id = 21 },
	{ config_id = 155010, monster_id = 26120101, pos = { x = -1771.963, y = 227.651, z = 2928.209 }, rot = { x = 0.000, y = 44.701, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isElite = true, pose_id = 201, area_id = 21 },
	{ config_id = 155011, monster_id = 26090701, pos = { x = -1774.632, y = 226.675, z = 2930.829 }, rot = { x = 0.000, y = 44.701, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 155012, monster_id = 26090401, pos = { x = -1767.100, y = 225.709, z = 2933.009 }, rot = { x = 0.000, y = 344.093, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 155013, monster_id = 26090401, pos = { x = -1774.069, y = 224.985, z = 2937.872 }, rot = { x = 0.000, y = 116.283, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 155014, monster_id = 26090701, pos = { x = -1768.595, y = 227.371, z = 2928.484 }, rot = { x = 0.000, y = 44.701, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 155002, gadget_id = 70350082, pos = { x = -1767.787, y = 225.023, z = 2940.402 }, rot = { x = 0.000, y = 227.451, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 155004, gadget_id = 70360001, pos = { x = -1767.787, y = 225.023, z = 2940.402 }, rot = { x = 0.000, y = 227.451, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1155003, name = "ANY_MONSTER_DIE_155003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_155003", action = "action_EVENT_ANY_MONSTER_DIE_155003" },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1155005, name = "GROUP_LOAD_155005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_155005", action = "action_EVENT_GROUP_LOAD_155005", trigger_count = 0 },
	{ config_id = 1155006, name = "CHALLENGE_SUCCESS_155006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_155006", trigger_count = 0 },
	{ config_id = 1155007, name = "CHALLENGE_FAIL_155007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_155007", trigger_count = 0 },
	{ config_id = 1155008, name = "GADGET_CREATE_155008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_155008", action = "action_EVENT_GADGET_CREATE_155008", trigger_count = 0 },
	{ config_id = 1155009, name = "SELECT_OPTION_155009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_155009", action = "action_EVENT_SELECT_OPTION_155009", trigger_count = 0 }
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
		gadgets = { 155002, 155004 },
		regions = { },
		triggers = { "GROUP_LOAD_155005", "CHALLENGE_SUCCESS_155006", "CHALLENGE_FAIL_155007", "GADGET_CREATE_155008", "SELECT_OPTION_155009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 155001, 155012, 155013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_155003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 155010, 155011, 155014 },
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
function condition_EVENT_ANY_MONSTER_DIE_155003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_155003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304155, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_155005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_155005(context, evt)
	-- 将configid为 155002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 155002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为155004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 155004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304155, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304155, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_155006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 155002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 155002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_155007(context, evt)
	-- 将configid为 155002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 155002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为155004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 155004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304155, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304155, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_155008(context, evt)
	if 155004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_155008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304155, 155004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_155009(context, evt)
	-- 判断是gadgetid 155004 option_id 177
	if 155004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_155009(context, evt)
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
		
	
	-- 将configid为 155002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 155002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	return 0
	
end