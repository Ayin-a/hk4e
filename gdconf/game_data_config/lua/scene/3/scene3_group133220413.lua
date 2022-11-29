-- 基础信息
local base_info = {
	group_id = 133220413
}

-- Trigger变量
local defs = {
	inner_region = 413010,
	outer_region = 413010,
	related_region = 413010,
	group_id = 133220413
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 413001, monster_id = 21010201, pos = { x = -2923.643, y = 200.016, z = -3980.501 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413002, monster_id = 21010201, pos = { x = -2923.592, y = 200.035, z = -3977.476 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413003, monster_id = 21010201, pos = { x = -2926.838, y = 200.097, z = -3984.282 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413005, monster_id = 21020701, pos = { x = -2923.509, y = 200.029, z = -3977.858 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413006, monster_id = 21010501, pos = { x = -2924.404, y = 200.056, z = -3974.538 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413007, monster_id = 21010501, pos = { x = -2924.143, y = 200.048, z = -3981.431 }, rot = { x = 0.000, y = 275.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413008, monster_id = 21010201, pos = { x = -2925.692, y = 200.073, z = -3972.478 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413009, monster_id = 21010201, pos = { x = -2925.713, y = 200.093, z = -3983.990 }, rot = { x = 0.000, y = 295.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413015, monster_id = 21011601, pos = { x = -2928.036, y = 200.091, z = -3971.015 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413016, monster_id = 21011601, pos = { x = -2924.823, y = 200.066, z = -3973.766 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413021, monster_id = 21030601, pos = { x = -2923.948, y = 200.056, z = -3978.864 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413022, monster_id = 21011001, pos = { x = -2926.406, y = 200.081, z = -3972.012 }, rot = { x = 0.000, y = 235.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413023, monster_id = 21011001, pos = { x = -2926.394, y = 200.100, z = -3983.695 }, rot = { x = 0.000, y = 305.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413024, monster_id = 21010201, pos = { x = -2924.282, y = 200.052, z = -3975.088 }, rot = { x = 0.000, y = 255.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 413025, monster_id = 21010201, pos = { x = -2924.798, y = 200.068, z = -3981.812 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 413041, gadget_id = 70330063, pos = { x = -2932.326, y = 200.142, z = -3979.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 413044, gadget_id = 70350083, pos = { x = -2938.190, y = 200.268, z = -3983.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 413045, gadget_id = 70330064, pos = { x = -2938.000, y = 200.379, z = -3978.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 413010, shape = RegionShape.SPHERE, radius = 30, pos = { x = -2930.988, y = 200.121, z = -3975.516 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1413004, name = "GROUP_LOAD_413004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_413004" },
	{ config_id = 1413011, name = "GROUP_LOAD_413011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_413011", trigger_count = 0 },
	{ config_id = 1413046, name = "ANY_MONSTER_DIE_413046", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_413046", action = "action_EVENT_ANY_MONSTER_DIE_413046" },
	{ config_id = 1413048, name = "GADGET_CREATE_413048", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_413048", action = "action_EVENT_GADGET_CREATE_413048", trigger_count = 0 },
	{ config_id = 1413049, name = "SELECT_OPTION_413049", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_413049", action = "action_EVENT_SELECT_OPTION_413049", trigger_count = 0 },
	{ config_id = 1413050, name = "CHALLENGE_FAIL_413050", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_413050", trigger_count = 0 },
	{ config_id = 1413051, name = "CHALLENGE_SUCCESS_413051", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_413051" },
	{ config_id = 1413052, name = "ANY_MONSTER_DIE_413052", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_413052", action = "action_EVENT_ANY_MONSTER_DIE_413052" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 413026, monster_id = 21010201, pos = { x = -2923.015, y = 200.000, z = -3976.838 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 6,
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
		gadgets = { 413041, 413044, 413045 },
		regions = { },
		triggers = { "GROUP_LOAD_413011", "GADGET_CREATE_413048", "SELECT_OPTION_413049", "CHALLENGE_FAIL_413050", "CHALLENGE_SUCCESS_413051" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 413001, 413002, 413003, 413015, 413016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_413046" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 413021, 413022, 413023, 413024, 413025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_413052" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 413005, 413006, 413007, 413008, 413009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 413010 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_413004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_413004(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_413011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220413, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_413046(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_413046(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220413, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_413048(context, evt)
	if 413044 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_413048(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220413, 413044, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_413049(context, evt)
	-- 判断是gadgetid 413044 option_id 175
	if 413044 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_413049(context, evt)
	-- 删除指定group： 133220413 ；指定config：413044；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220413, 413044, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 413044 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 413044, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111169的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111169, 180, 133220413, 15, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220413, 2)
	
	-- 将configid为 413044 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 413044, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220413, 5)
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133220413, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_413050(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 133220413, EntityType.REGION, 413010)
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220413, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_413051(context, evt)
	-- 将configid为 413044 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 413044, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133220413, 3) then
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_413052(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_413052(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220413, 4)
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_Event_V2.0"
require "V2_0/ExhibitionRoleElectricBomb"