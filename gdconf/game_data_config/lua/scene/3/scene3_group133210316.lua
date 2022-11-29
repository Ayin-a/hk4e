-- 基础信息
local base_info = {
	group_id = 133210316
}

-- Trigger变量
local defs = {
	duration = 180,
	kill_sum = 10,
	group_id = 133210316,
	gadget_controller_id = 316010,
	inner_region = 316018,
	outer_region = 316018,
	related_region = 316018
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 316001, monster_id = 21010301, pos = { x = -4026.347, y = 200.290, z = -990.885 }, rot = { x = 0.000, y = 192.696, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 316002, monster_id = 20060101, pos = { x = -4024.089, y = 200.592, z = -995.308 }, rot = { x = 0.000, y = 247.002, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 101, area_id = 17 },
	{ config_id = 316003, monster_id = 21010601, pos = { x = -4032.991, y = 200.741, z = -1002.891 }, rot = { x = 0.000, y = 63.842, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 316004, monster_id = 21010701, pos = { x = -4023.527, y = 200.115, z = -1002.812 }, rot = { x = 0.000, y = 314.557, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 316005, monster_id = 21010701, pos = { x = -4029.242, y = 200.041, z = -990.755 }, rot = { x = 0.000, y = 189.523, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 316017, monster_id = 21010301, pos = { x = -4022.878, y = 200.510, z = -999.001 }, rot = { x = 0.000, y = 257.593, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 316020, monster_id = 21010301, pos = { x = -4029.349, y = 200.276, z = -1002.647 }, rot = { x = 0.000, y = 16.078, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 316021, monster_id = 21011601, pos = { x = -4035.655, y = 200.471, z = -996.691 }, rot = { x = 0.000, y = 63.842, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 316022, monster_id = 21010301, pos = { x = -4033.912, y = 200.077, z = -994.398 }, rot = { x = 0.000, y = 98.517, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 17 },
	{ config_id = 316023, monster_id = 20060301, pos = { x = -4034.949, y = 200.692, z = -1000.420 }, rot = { x = 0.000, y = 57.686, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 316006, gadget_id = 70330062, pos = { x = -4026.328, y = 200.197, z = -1002.400 }, rot = { x = 0.000, y = 289.675, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 316007, gadget_id = 70330064, pos = { x = -4024.233, y = 200.526, z = -992.786 }, rot = { x = 0.000, y = 289.675, z = 0.000 }, level = 30, interact_id = 35, area_id = 17 },
	{ config_id = 316008, gadget_id = 70350082, pos = { x = -4027.987, y = 200.450, z = -997.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 316009, gadget_id = 70330062, pos = { x = -4030.511, y = 200.094, z = -992.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 316010, gadget_id = 70360001, pos = { x = -4027.987, y = 200.450, z = -997.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 316016, gadget_id = 70330062, pos = { x = -4031.734, y = 200.353, z = -999.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 316018, shape = RegionShape.SPHERE, radius = 35, pos = { x = -4027.987, y = 200.450, z = -997.138 }, area_id = 17, team_ability_group_list = { "RoleElectricPowerSourceBigWorld_Play_TeamBuff" } }
}

-- 触发器
triggers = {
	{ config_id = 1316011, name = "SELECT_OPTION_316011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_316011", action = "action_EVENT_SELECT_OPTION_316011", trigger_count = 0 },
	{ config_id = 1316012, name = "CHALLENGE_SUCCESS_316012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_316012", trigger_count = 0 },
	{ config_id = 1316013, name = "CHALLENGE_FAIL_316013", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_316013", trigger_count = 0 },
	{ config_id = 1316014, name = "GADGET_CREATE_316014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_316014", action = "action_EVENT_GADGET_CREATE_316014", trigger_count = 0 },
	{ config_id = 1316015, name = "ANY_MONSTER_DIE_316015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_316015", action = "action_EVENT_ANY_MONSTER_DIE_316015" },
	{ config_id = 1316019, name = "ANY_MONSTER_LIVE_316019", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_316019", action = "action_EVENT_ANY_MONSTER_LIVE_316019" }
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
		gadgets = { 316007, 316008, 316010 },
		regions = { },
		triggers = { "SELECT_OPTION_316011", "CHALLENGE_SUCCESS_316012", "CHALLENGE_FAIL_316013", "GADGET_CREATE_316014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 316001, 316002, 316017, 316020, 316022 },
		gadgets = { 316006, 316009, 316016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_316015", "ANY_MONSTER_LIVE_316019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 316003, 316004, 316005, 316021, 316023 },
		gadgets = { 316006, 316009, 316016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 316018 },
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
function condition_EVENT_SELECT_OPTION_316011(context, evt)
	-- 判断是gadgetid 316010 option_id 177
	if 316010 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_316011(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316008, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_316012(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.REGION, defs.inner_region)
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 316008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316008, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 316007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 316006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 316009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 316016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_316013(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.REGION, defs.inner_region)
	
	-- 将configid为 316008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为316010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 316010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210316, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210316, 3)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133210316, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_316014(context, evt)
	if 316010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_316014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210316, 316010, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_316015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_316015(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210316, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_316019(context, evt)
	if 316001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_316019(context, evt)
	-- 将configid为 316006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 316009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 316016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end