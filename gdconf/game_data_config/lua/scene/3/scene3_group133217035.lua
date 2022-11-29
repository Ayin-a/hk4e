-- 基础信息
local base_info = {
	group_id = 133217035
}

-- Trigger变量
local defs = {
	duration = 180,
	kill_sum = 10,
	group_id = 133217035,
	gadget_controller_id = 35011,
	inner_region = 35023,
	outer_region = 35023,
	related_region = 35023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 21020201, pos = { x = -4278.712, y = 200.350, z = -3645.952 }, rot = { x = 0.000, y = 78.298, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
	{ config_id = 35002, monster_id = 20060301, pos = { x = -4267.545, y = 202.013, z = -3642.188 }, rot = { x = 0.000, y = 196.310, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 101, area_id = 14 },
	{ config_id = 35003, monster_id = 21020701, pos = { x = -4271.229, y = 200.277, z = -3657.475 }, rot = { x = 0.000, y = 349.861, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
	{ config_id = 35004, monster_id = 21010501, pos = { x = -4265.862, y = 200.000, z = -3656.420 }, rot = { x = 0.000, y = 346.633, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
	{ config_id = 35005, monster_id = 21010901, pos = { x = -4280.409, y = 200.053, z = -3639.870 }, rot = { x = 0.000, y = 101.759, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
	{ config_id = 35006, monster_id = 21030601, pos = { x = -4270.396, y = 200.229, z = -3654.125 }, rot = { x = 0.000, y = 351.453, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
	{ config_id = 35018, monster_id = 20060101, pos = { x = -4265.837, y = 202.295, z = -3643.641 }, rot = { x = 0.000, y = 237.254, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 101, area_id = 14 },
	{ config_id = 35020, monster_id = 22010401, pos = { x = -4273.453, y = 200.518, z = -3652.439 }, rot = { x = 0.000, y = 32.682, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, area_id = 14 },
	{ config_id = 35021, monster_id = 20060201, pos = { x = -4267.793, y = 200.083, z = -3656.211 }, rot = { x = 0.000, y = 327.211, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 101, area_id = 14 },
	{ config_id = 35022, monster_id = 20060201, pos = { x = -4279.817, y = 200.114, z = -3642.578 }, rot = { x = 0.000, y = 112.607, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, isElite = true, pose_id = 101, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35007, gadget_id = 70330062, pos = { x = -4265.978, y = 200.064, z = -3651.291 }, rot = { x = 0.000, y = 289.675, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 35008, gadget_id = 70330064, pos = { x = -4277.094, y = 200.518, z = -3650.265 }, rot = { x = 0.000, y = 289.675, z = 0.000 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 35009, gadget_id = 70350082, pos = { x = -4270.793, y = 200.437, z = -3647.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 35010, gadget_id = 70330062, pos = { x = -4273.981, y = 200.167, z = -3642.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 35011, gadget_id = 70360001, pos = { x = -4270.793, y = 200.437, z = -3647.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 35012, gadget_id = 70330062, pos = { x = -4273.632, y = 200.543, z = -3649.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 35023, shape = RegionShape.SPHERE, radius = 35, pos = { x = -4270.220, y = 200.401, z = -3647.797 }, area_id = 14, team_ability_group_list = { "RoleElectricPowerSourceBigWorld_Play_TeamBuff" } }
}

-- 触发器
triggers = {
	{ config_id = 1035013, name = "SELECT_OPTION_35013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_35013", action = "action_EVENT_SELECT_OPTION_35013", trigger_count = 0 },
	{ config_id = 1035014, name = "CHALLENGE_SUCCESS_35014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_35014", trigger_count = 0 },
	{ config_id = 1035015, name = "CHALLENGE_FAIL_35015", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_35015", trigger_count = 0 },
	{ config_id = 1035016, name = "GADGET_CREATE_35016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_35016", action = "action_EVENT_GADGET_CREATE_35016", trigger_count = 0 },
	{ config_id = 1035017, name = "ANY_MONSTER_DIE_35017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35017", action = "action_EVENT_ANY_MONSTER_DIE_35017" },
	{ config_id = 1035019, name = "ANY_MONSTER_DIE_35019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35019", action = "action_EVENT_ANY_MONSTER_DIE_35019" },
	{ config_id = 1035024, name = "ANY_MONSTER_LIVE_35024", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_35024", action = "action_EVENT_ANY_MONSTER_LIVE_35024" }
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
		gadgets = { 35008, 35009, 35011 },
		regions = { },
		triggers = { "SELECT_OPTION_35013", "CHALLENGE_SUCCESS_35014", "CHALLENGE_FAIL_35015", "GADGET_CREATE_35016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 35001, 35002, 35006 },
		gadgets = { 35007, 35010, 35012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_35017", "ANY_MONSTER_LIVE_35024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 35003, 35004, 35005, 35018 },
		gadgets = { 35007, 35010, 35012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_35019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 35020, 35021, 35022 },
		gadgets = { 35007, 35010, 35012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 35023 },
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
function condition_EVENT_SELECT_OPTION_35013(context, evt)
	-- 判断是gadgetid 35011 option_id 177
	if 35011 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_35013(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 79, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 5)
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35009, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_35014(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.REGION, defs.inner_region)
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 35009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_35015(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.REGION, defs.inner_region)
	
	-- 将configid为 35009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为35011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 35011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217035, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217035, 3)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217035, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_35016(context, evt)
	if 35011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_35016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217035, 35011, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_35017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217035, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_35019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35019(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217035, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_35024(context, evt)
	if 35001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_35024(context, evt)
	-- 将configid为 35007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 35010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 35012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end