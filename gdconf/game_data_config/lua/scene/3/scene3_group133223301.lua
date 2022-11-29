-- 基础信息
local base_info = {
	group_id = 133223301
}

-- Trigger变量
local defs = {
	duration = 300,
	kill_sum = 4,
	group_id = 133223301,
	gadget_controller_id = 301011,
	inner_region = 383018,
	outer_region = 383018,
	related_region = 383018
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 301001, monster_id = 24020301, pos = { x = -5998.681, y = 203.546, z = -2632.944 }, rot = { x = 0.000, y = 334.991, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 301002, monster_id = 24020301, pos = { x = -6018.338, y = 203.070, z = -2619.845 }, rot = { x = 0.000, y = 115.603, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 301003, monster_id = 24020101, pos = { x = -6018.025, y = 202.986, z = -2627.862 }, rot = { x = 0.000, y = 63.739, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 301004, monster_id = 24020101, pos = { x = -5997.210, y = 203.570, z = -2622.542 }, rot = { x = 0.000, y = 263.243, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, pose_id = 100, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 301007, gadget_id = 70330062, pos = { x = -6002.813, y = 203.369, z = -2627.768 }, rot = { x = 0.000, y = 289.675, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 301008, gadget_id = 70330064, pos = { x = -6002.768, y = 203.393, z = -2619.338 }, rot = { x = 0.000, y = 289.675, z = 0.000 }, level = 30, interact_id = 35, area_id = 18 },
	{ config_id = 301009, gadget_id = 70350082, pos = { x = -6007.217, y = 203.368, z = -2623.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 18 },
	{ config_id = 301010, gadget_id = 70330062, pos = { x = -6011.595, y = 203.356, z = -2620.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 301011, gadget_id = 70360001, pos = { x = -6007.206, y = 204.390, z = -2623.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 18 },
	{ config_id = 301012, gadget_id = 70330062, pos = { x = -6010.262, y = 203.442, z = -2627.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 301018, shape = RegionShape.SPHERE, radius = 35, pos = { x = -6007.476, y = 204.348, z = -2623.741 }, area_id = 18, team_ability_group_list = { "RoleElectricPowerSourceBigWorld_Play_TeamBuff" } }
}

-- 触发器
triggers = {
	{ config_id = 1301013, name = "SELECT_OPTION_301013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_301013", action = "action_EVENT_SELECT_OPTION_301013", trigger_count = 0 },
	{ config_id = 1301014, name = "CHALLENGE_SUCCESS_301014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_301014", trigger_count = 0 },
	{ config_id = 1301015, name = "CHALLENGE_FAIL_301015", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_301015", trigger_count = 0 },
	{ config_id = 1301016, name = "GADGET_CREATE_301016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_301016", action = "action_EVENT_GADGET_CREATE_301016", trigger_count = 0 },
	{ config_id = 1301017, name = "ANY_MONSTER_DIE_301017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_301017", action = "action_EVENT_ANY_MONSTER_DIE_301017" },
	{ config_id = 1301020, name = "ANY_MONSTER_LIVE_301020", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_301020", action = "action_EVENT_ANY_MONSTER_LIVE_301020" }
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
		gadgets = { 301008, 301009, 301011 },
		regions = { },
		triggers = { "SELECT_OPTION_301013", "CHALLENGE_SUCCESS_301014", "CHALLENGE_FAIL_301015", "GADGET_CREATE_301016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 301001, 301002 },
		gadgets = { 301007, 301010, 301012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_301017", "ANY_MONSTER_LIVE_301020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 301003, 301004 },
		gadgets = { 301007, 301010, 301012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 301018 },
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
function condition_EVENT_SELECT_OPTION_301013(context, evt)
	-- 判断是gadgetid 301011 option_id 177
	if 301011 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_301013(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301009, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_301014(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.REGION, defs.inner_region)
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 383009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 301008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 301007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 301010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 301012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_301015(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.REGION, defs.inner_region)
	
	-- 将configid为 383009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为383011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 301011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223301, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223301, 3)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223301, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_301016(context, evt)
	if 301011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_301016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223301, 301011, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_301017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_301017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223301, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_301020(context, evt)
	if 301001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_301020(context, evt)
	-- 将configid为 301007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 301010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 301012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end