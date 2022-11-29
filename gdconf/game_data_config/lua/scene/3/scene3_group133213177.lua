-- 基础信息
local base_info = {
	group_id = 133213177
}

-- Trigger变量
local defs = {
	group_id = 133213177,
	inner_region = 177021,
	outer_region = 177021,
	related_region = 177021
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 177006, monster_id = 21030601, pos = { x = -3130.571, y = 200.789, z = -3246.577 }, rot = { x = 0.000, y = 62.007, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1031 }, area_id = 12 },
	{ config_id = 177007, monster_id = 21020701, pos = { x = -3110.094, y = 200.298, z = -3239.486 }, rot = { x = 0.000, y = 244.705, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1031 }, area_id = 12 },
	{ config_id = 177008, monster_id = 21010701, pos = { x = -3110.432, y = 200.437, z = -3242.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 177009, monster_id = 21010701, pos = { x = -3112.563, y = 200.231, z = -3238.052 }, rot = { x = 0.000, y = 250.478, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 177010, monster_id = 21011201, pos = { x = -3126.962, y = 200.698, z = -3247.490 }, rot = { x = 0.000, y = 45.110, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 177011, monster_id = 21011201, pos = { x = -3128.963, y = 200.706, z = -3243.742 }, rot = { x = 0.000, y = 74.807, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 177012, monster_id = 21010701, pos = { x = -3128.076, y = 200.672, z = -3245.676 }, rot = { x = 0.000, y = 60.283, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 177013, monster_id = 21011601, pos = { x = -3127.895, y = 200.816, z = -3249.812 }, rot = { x = 0.000, y = 39.347, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1031 }, area_id = 12 },
	{ config_id = 177014, monster_id = 22010401, pos = { x = -3131.649, y = 200.798, z = -3243.329 }, rot = { x = 0.000, y = 90.432, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1031 }, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 177001, gadget_id = 70330062, pos = { x = -3122.048, y = 200.672, z = -3251.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 177002, gadget_id = 70330062, pos = { x = -3111.033, y = 200.564, z = -3245.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 177003, gadget_id = 70330062, pos = { x = -3126.963, y = 200.324, z = -3236.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 177004, gadget_id = 70350023, pos = { x = -3119.955, y = 200.302, z = -3242.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 177017, gadget_id = 70330064, pos = { x = -3118.341, y = 200.139, z = -3232.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 },
	{ config_id = 177019, gadget_id = 70350035, pos = { x = -3119.955, y = 200.302, z = -3242.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 177021, shape = RegionShape.SPHERE, radius = 35, pos = { x = -3117.733, y = 200.231, z = -3238.201 }, area_id = 12, team_ability_group_list = { "RoleElectricPowerSource_Play_TeamBuff" } }
}

-- 触发器
triggers = {
	{ config_id = 1177005, name = "SELECT_OPTION_177005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_177005", action = "action_EVENT_SELECT_OPTION_177005", trigger_count = 0 },
	{ config_id = 1177015, name = "GADGET_CREATE_177015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_177015", action = "action_EVENT_GADGET_CREATE_177015", trigger_count = 0 },
	{ config_id = 1177016, name = "CHALLENGE_FAIL_177016", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_177016", trigger_count = 0 },
	{ config_id = 1177018, name = "CHALLENGE_SUCCESS_177018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_177018" },
	{ config_id = 1177020, name = "GROUP_LOAD_177020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_177020" },
	{ config_id = 1177022, name = "GROUP_LOAD_177022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_177022", trigger_count = 0 }
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
		gadgets = { 177001, 177002, 177003, 177004, 177017 },
		regions = { },
		triggers = { "SELECT_OPTION_177005", "GADGET_CREATE_177015", "CHALLENGE_FAIL_177016", "CHALLENGE_SUCCESS_177018", "GROUP_LOAD_177022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 177021 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_177020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_177005(context, evt)
	-- 判断是gadgetid 177004 option_id 175
	if 177004 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_177005(context, evt)
	-- 删除指定group： 133213177 ；指定config：177004；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133213177, 177004, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建id为177019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 177019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为12，场上怪物最少4只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133213177, {177006,177007,177008,177009,177010,177011,177012,177013,177014}, 12, 4, 5) then
		return -1
	end
	
	-- 将configid为 177001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 177002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213177, 2)
	
	-- 将configid为 177003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 177004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111171的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111171, 133213177, 12, 177019, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133213177, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_177015(context, evt)
	if 177004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_177015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213177, 177004, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_177016(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 133213177, EntityType.REGION, 177021)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213177, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_177018(context, evt)
	-- 将configid为 177004 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177004, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213177, EntityType.GADGET, 177019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 177001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 177002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 177003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133213177, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_177020(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_177022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213177, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_Event_V2.0"
require "V2_0/ExhibitionRoleElectricPowerSource"