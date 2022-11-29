-- 基础信息
local base_info = {
	group_id = 133210333
}

-- Trigger变量
local defs = {
	duration = 240,
	kill_sum = 4,
	group_id = 133210333,
	gadget_controller_id = 333009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 333001, monster_id = 25080101, pos = { x = -3464.431, y = 200.037, z = -737.130 }, rot = { x = 0.000, y = 47.778, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 17 },
	{ config_id = 333002, monster_id = 25080301, pos = { x = -3458.520, y = 200.075, z = -742.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 17 },
	{ config_id = 333003, monster_id = 25080201, pos = { x = -3465.401, y = 200.000, z = -729.893 }, rot = { x = 0.000, y = 91.184, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 17 },
	{ config_id = 333004, monster_id = 25100201, pos = { x = -3461.807, y = 200.103, z = -724.806 }, rot = { x = 0.000, y = 101.676, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 333006, gadget_id = 70350082, pos = { x = -3458.077, y = 200.149, z = -733.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 17 },
	{ config_id = 333008, gadget_id = 70330082, pos = { x = -3457.982, y = 201.132, z = -733.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 17 },
	{ config_id = 333009, gadget_id = 70360001, pos = { x = -3458.077, y = 201.153, z = -733.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1333005, name = "ANY_MONSTER_DIE_333005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_333005", action = "action_EVENT_ANY_MONSTER_DIE_333005" },
	{ config_id = 1333010, name = "SELECT_OPTION_333010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_333010", action = "action_EVENT_SELECT_OPTION_333010", trigger_count = 0 },
	{ config_id = 1333011, name = "CHALLENGE_SUCCESS_333011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_333011", trigger_count = 0 },
	{ config_id = 1333012, name = "CHALLENGE_FAIL_333012", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_333012", trigger_count = 0 },
	{ config_id = 1333013, name = "GADGET_STATE_CHANGE_333013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_333013", action = "action_EVENT_GADGET_STATE_CHANGE_333013", trigger_count = 0 },
	{ config_id = 1333014, name = "GADGET_CREATE_333014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_333014", action = "action_EVENT_GADGET_CREATE_333014", trigger_count = 0 }
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
		gadgets = { 333006, 333008, 333009 },
		regions = { },
		triggers = { "SELECT_OPTION_333010", "CHALLENGE_SUCCESS_333011", "CHALLENGE_FAIL_333012", "GADGET_STATE_CHANGE_333013", "GADGET_CREATE_333014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 333001, 333002, 333003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_333005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 333004 },
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
function condition_EVENT_ANY_MONSTER_DIE_333005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_333005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210333, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_333010(context, evt)
	-- 判断是gadgetid 333009 option_id 177
	if 333009 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_333010(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 76, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_333011(context, evt)
	-- 将configid为 333006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 333008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333008, GadgetState.Default) then
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
function action_EVENT_CHALLENGE_FAIL_333012(context, evt)
	-- 将configid为 333006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为333009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 333009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 333008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210333, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133210333, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_333013(context, evt)
	if 333006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_333013(context, evt)
	-- 将configid为 333008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_333014(context, evt)
	if 333009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_333014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210333, 333009, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end