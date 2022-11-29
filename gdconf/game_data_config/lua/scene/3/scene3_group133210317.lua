-- 基础信息
local base_info = {
	group_id = 133210317
}

-- Trigger变量
local defs = {
	duration = 180,
	kill_sum = 5,
	group_id = 133210317,
	gadget_controller_id = 317011,
	inner_region = 317006,
	outer_region = 317006,
	related_region = 317006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 317001, monster_id = 25080101, pos = { x = -3703.723, y = 200.037, z = -1368.793 }, rot = { x = 0.000, y = 149.465, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 17 },
	{ config_id = 317002, monster_id = 25080101, pos = { x = -3709.278, y = 200.310, z = -1379.877 }, rot = { x = 0.000, y = 84.199, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 17 },
	{ config_id = 317003, monster_id = 25080101, pos = { x = -3695.064, y = 200.116, z = -1374.793 }, rot = { x = 0.000, y = 262.172, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 17 },
	{ config_id = 317004, monster_id = 25080201, pos = { x = -3706.682, y = 200.178, z = -1383.295 }, rot = { x = 0.000, y = 3.237, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 17 },
	{ config_id = 317005, monster_id = 25080301, pos = { x = -3699.792, y = 200.000, z = -1368.108 }, rot = { x = 0.000, y = 155.261, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 1, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 317007, gadget_id = 70330062, pos = { x = -3703.573, y = 200.262, z = -1381.413 }, rot = { x = 0.000, y = 289.675, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 317008, gadget_id = 70330064, pos = { x = -3708.034, y = 200.157, z = -1372.620 }, rot = { x = 0.000, y = 289.675, z = 0.000 }, level = 30, interact_id = 35, area_id = 17 },
	{ config_id = 317009, gadget_id = 70350082, pos = { x = -3701.205, y = 200.166, z = -1376.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 317010, gadget_id = 70330062, pos = { x = -3699.251, y = 200.075, z = -1371.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 317011, gadget_id = 70360001, pos = { x = -3701.205, y = 201.190, z = -1376.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 317012, gadget_id = 70330062, pos = { x = -3695.491, y = 200.357, z = -1379.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 317006, shape = RegionShape.SPHERE, radius = 35, pos = { x = -3701.205, y = 201.190, z = -1376.304 }, area_id = 17, team_ability_group_list = { "RoleElectricPowerSourceBigWorld_Play_TeamBuff" } }
}

-- 触发器
triggers = {
	{ config_id = 1317013, name = "SELECT_OPTION_317013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_317013", action = "action_EVENT_SELECT_OPTION_317013", trigger_count = 0 },
	{ config_id = 1317014, name = "CHALLENGE_SUCCESS_317014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_317014", trigger_count = 0 },
	{ config_id = 1317015, name = "CHALLENGE_FAIL_317015", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_317015", trigger_count = 0 },
	{ config_id = 1317016, name = "GADGET_CREATE_317016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_317016", action = "action_EVENT_GADGET_CREATE_317016", trigger_count = 0 },
	{ config_id = 1317017, name = "ANY_MONSTER_DIE_317017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_317017", action = "action_EVENT_ANY_MONSTER_DIE_317017" },
	{ config_id = 1317018, name = "ANY_MONSTER_LIVE_317018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_317018", action = "action_EVENT_ANY_MONSTER_LIVE_317018" }
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
		gadgets = { 317008, 317009, 317011 },
		regions = { },
		triggers = { "SELECT_OPTION_317013", "CHALLENGE_SUCCESS_317014", "CHALLENGE_FAIL_317015", "GADGET_CREATE_317016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 317001, 317002 },
		gadgets = { 317007, 317010, 317012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_317017", "ANY_MONSTER_LIVE_317018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 317003, 317004, 317005 },
		gadgets = { 317007, 317010, 317012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 317006 },
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
function condition_EVENT_SELECT_OPTION_317013(context, evt)
	-- 判断是gadgetid 317011 option_id 177
	if 317011 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_317013(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 79, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 317009, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_317014(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.REGION, defs.inner_region)
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 317009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 317009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 317008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 317007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 317010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 317012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_317015(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.REGION, defs.inner_region)
	
	-- 将configid为 317009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 317009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为317011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 317011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210317, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210317, 3)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133210317, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_317016(context, evt)
	if 317011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_317016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210317, 317011, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_317017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_317017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210317, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_317018(context, evt)
	if 317001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_317018(context, evt)
	-- 将configid为 317007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 317007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 317010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 317010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 317012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 317012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end