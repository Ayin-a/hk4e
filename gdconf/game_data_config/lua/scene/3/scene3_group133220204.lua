-- 基础信息
local base_info = {
	group_id = 133220204
}

-- Trigger变量
local defs = {
	inner_region = 204043,
	outer_region = 204043,
	related_region = 204043,
	group_id = 133220204
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 204001, monster_id = 21010201, pos = { x = -2848.862, y = 200.180, z = -4616.914 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204002, monster_id = 21010201, pos = { x = -2847.000, y = 200.008, z = -4622.006 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204003, monster_id = 21010201, pos = { x = -2846.501, y = 200.058, z = -4618.198 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204004, monster_id = 21010402, pos = { x = -2849.517, y = 200.122, z = -4614.482 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204005, monster_id = 21020701, pos = { x = -2859.219, y = 200.000, z = -4592.791 }, rot = { x = 0.000, y = 259.711, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204006, monster_id = 21010502, pos = { x = -2849.008, y = 200.071, z = -4618.405 }, rot = { x = 0.000, y = 259.711, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204007, monster_id = 21010502, pos = { x = -2863.403, y = 200.115, z = -4594.990 }, rot = { x = 0.000, y = 259.711, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204015, monster_id = 21010402, pos = { x = -2850.611, y = 200.163, z = -4619.153 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204016, monster_id = 21010402, pos = { x = -2846.312, y = 200.041, z = -4616.390 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204021, monster_id = 21010701, pos = { x = -2849.465, y = 200.020, z = -4622.232 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204022, monster_id = 21010701, pos = { x = -2843.555, y = 200.000, z = -4621.009 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204023, monster_id = 21010402, pos = { x = -2858.244, y = 200.000, z = -4596.131 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204024, monster_id = 21010402, pos = { x = -2861.802, y = 200.099, z = -4593.469 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204025, monster_id = 21010701, pos = { x = -2864.520, y = 200.074, z = -4597.703 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 204026, monster_id = 21010402, pos = { x = -2848.072, y = 200.000, z = -4613.924 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 204041, gadget_id = 70330063, pos = { x = -2861.308, y = 200.134, z = -4597.198 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 204042, gadget_id = 70330063, pos = { x = -2852.534, y = 200.109, z = -4616.190 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 204044, gadget_id = 70350083, pos = { x = -2842.755, y = 201.044, z = -4599.410 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 204045, gadget_id = 70330064, pos = { x = -2848.567, y = 199.675, z = -4604.857 }, rot = { x = 0.000, y = 302.918, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 204043, shape = RegionShape.SPHERE, radius = 35, pos = { x = -2847.469, y = 200.000, z = -4601.926 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1204008, name = "GROUP_LOAD_204008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_204008", trigger_count = 0 },
	{ config_id = 1204046, name = "ANY_MONSTER_DIE_204046", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_204046", action = "action_EVENT_ANY_MONSTER_DIE_204046" },
	{ config_id = 1204048, name = "GADGET_CREATE_204048", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_204048", action = "action_EVENT_GADGET_CREATE_204048", trigger_count = 0 },
	{ config_id = 1204049, name = "SELECT_OPTION_204049", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_204049", action = "action_EVENT_SELECT_OPTION_204049", trigger_count = 0 },
	{ config_id = 1204050, name = "CHALLENGE_FAIL_204050", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_204050", trigger_count = 0 },
	{ config_id = 1204051, name = "CHALLENGE_SUCCESS_204051", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_204051" },
	{ config_id = 1204052, name = "ANY_MONSTER_DIE_204052", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_204052", action = "action_EVENT_ANY_MONSTER_DIE_204052" },
	{ config_id = 1204055, name = "GROUP_LOAD_204055", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_204055" }
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
	suite = 10,
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
		gadgets = { 204041, 204042, 204044, 204045 },
		regions = { },
		triggers = { "GROUP_LOAD_204008", "GADGET_CREATE_204048", "SELECT_OPTION_204049", "CHALLENGE_FAIL_204050", "CHALLENGE_SUCCESS_204051" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 204043 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 204001, 204002, 204003, 204004, 204015, 204016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_204046" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 204021, 204022, 204023, 204024, 204025, 204026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_204052" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 204005, 204006, 204007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_204055" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_204008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220204, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_204046(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_204046(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220204, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_204048(context, evt)
	if 204044 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_204048(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220204, 204044, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_204049(context, evt)
	-- 判断是gadgetid 204044 option_id 175
	if 204044 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_204049(context, evt)
	-- 删除指定group： 133220204 ；指定config：204044；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220204, 204044, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 204044 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 204044, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220204, 3)
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111169的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111169, 120, 133220204, 15, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220204, 2)
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133220204, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_204050(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 133220204, EntityType.REGION, 204043)
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220204, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_204051(context, evt)
	-- 将configid为 204044 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 204044, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133220204, 3) then
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
function condition_EVENT_ANY_MONSTER_DIE_204052(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_204052(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220204, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_204055(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_Event_V2.0"
require "V2_0/ExhibitionRoleElectricBomb"