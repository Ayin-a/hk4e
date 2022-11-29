-- 基础信息
local base_info = {
	group_id = 133213084
}

-- Trigger变量
local defs = {
	inner_region = 84020,
	outer_region = 84020,
	related_region = 84020,
	group_id = 133213084
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 84001, monster_id = 25060101, pos = { x = -3305.788, y = 200.402, z = -3234.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 12 },
	{ config_id = 84002, monster_id = 25010601, pos = { x = -3302.982, y = 200.281, z = -3234.109 }, rot = { x = 0.000, y = 335.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 12 },
	{ config_id = 84003, monster_id = 25010201, pos = { x = -3300.093, y = 200.180, z = -3232.886 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 12 },
	{ config_id = 84004, monster_id = 25010701, pos = { x = -3315.216, y = 200.610, z = -3232.226 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 12 },
	{ config_id = 84005, monster_id = 25010201, pos = { x = -3317.813, y = 200.500, z = -3230.672 }, rot = { x = 0.000, y = 65.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 12 },
	{ config_id = 84006, monster_id = 25010401, pos = { x = -3319.811, y = 200.219, z = -3228.433 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 12 },
	{ config_id = 84007, monster_id = 25010201, pos = { x = -3297.416, y = 200.062, z = -3231.128 }, rot = { x = 0.000, y = 295.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 12 },
	{ config_id = 84008, monster_id = 25070101, pos = { x = -3319.540, y = 200.015, z = -3225.410 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 12 },
	{ config_id = 84009, monster_id = 25010201, pos = { x = -3296.050, y = 200.013, z = -3227.934 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 84010, gadget_id = 70330062, pos = { x = -3314.813, y = 200.077, z = -3226.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 84011, gadget_id = 70330062, pos = { x = -3299.973, y = 200.044, z = -3225.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 84012, gadget_id = 70330062, pos = { x = -3307.491, y = 200.081, z = -3219.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 84013, gadget_id = 70350082, pos = { x = -3307.600, y = 200.050, z = -3224.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 84014, gadget_id = 70330064, pos = { x = -3310.729, y = 200.520, z = -3233.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 84020, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3307.810, y = 200.070, z = -3225.689 }, area_id = 12, team_ability_group_list = { "RoleElectricPowerSource_Play_TeamBuff" } }
}

-- 触发器
triggers = {
	{ config_id = 1084015, name = "SELECT_OPTION_84015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_84015", action = "action_EVENT_SELECT_OPTION_84015", trigger_count = 0 },
	{ config_id = 1084016, name = "GADGET_CREATE_84016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_84016", action = "action_EVENT_GADGET_CREATE_84016", trigger_count = 0 },
	{ config_id = 1084017, name = "CHALLENGE_FAIL_84017", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_84017", trigger_count = 0 },
	{ config_id = 1084018, name = "CHALLENGE_SUCCESS_84018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_84018" },
	{ config_id = 1084019, name = "GROUP_LOAD_84019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_84019" },
	{ config_id = 1084021, name = "GROUP_LOAD_84021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_84021", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		gadgets = { 84010, 84011, 84012, 84013, 84014 },
		regions = { },
		triggers = { "SELECT_OPTION_84015", "GADGET_CREATE_84016", "CHALLENGE_FAIL_84017", "CHALLENGE_SUCCESS_84018", "GROUP_LOAD_84021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 84020 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_84019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_84015(context, evt)
	-- 判断是gadgetid 84013 option_id 175
	if 84013 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_84015(context, evt)
	-- 删除指定group： 133213084 ；指定config：84013；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133213084, 84013, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111170的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111170, 180, 133213084, 15, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为15，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133213084, {84001,84002,84003,84004,84005,84006,84007,84008,84009}, 15, 5, 5) then
		return -1
	end
	
	-- 将configid为 84010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 84011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 84012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 84013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213084, 2)
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133213084, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_84016(context, evt)
	if 84013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_84016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213084, 84013, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_84017(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 133213084, EntityType.REGION, 84020)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213084, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_84018(context, evt)
	-- 将configid为 84010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 84011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 84012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133213084, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	-- 将configid为 84013 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84013, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_84019(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_84021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213084, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_Event_V2.0"
require "V2_0/ExhibitionRoleElectricPowerSource"