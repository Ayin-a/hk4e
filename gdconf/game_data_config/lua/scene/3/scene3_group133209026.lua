-- 基础信息
local base_info = {
	group_id = 133209026
}

-- Trigger变量
local defs = {
	inner_region = 26010,
	outer_region = 26010,
	related_region = 26010,
	group_id = 133209026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26001, monster_id = 20011101, pos = { x = -2825.300, y = 200.121, z = -4019.256 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26002, monster_id = 20011001, pos = { x = -2830.722, y = 200.232, z = -4019.360 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26003, monster_id = 20010801, pos = { x = -2827.299, y = 200.126, z = -4021.091 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26004, monster_id = 20010801, pos = { x = -2822.779, y = 200.000, z = -4019.419 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26005, monster_id = 20010901, pos = { x = -2826.785, y = 200.121, z = -4020.995 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26006, monster_id = 20011101, pos = { x = -2828.255, y = 200.000, z = -4015.062 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26007, monster_id = 20011201, pos = { x = -2821.366, y = 200.782, z = -4021.164 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26008, monster_id = 20011201, pos = { x = -2825.166, y = 200.284, z = -4023.007 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26009, monster_id = 20011001, pos = { x = -2829.441, y = 200.147, z = -4021.552 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26012, monster_id = 20010501, pos = { x = -2822.854, y = 200.038, z = -4020.406 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26015, monster_id = 20011001, pos = { x = -2827.765, y = 200.733, z = -4025.637 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26016, monster_id = 20011001, pos = { x = -2830.087, y = 200.261, z = -4022.606 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26021, monster_id = 20010901, pos = { x = -2825.844, y = 200.000, z = -4017.111 }, rot = { x = 0.000, y = 120.541, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26022, monster_id = 20010801, pos = { x = -2831.713, y = 200.378, z = -4018.588 }, rot = { x = 0.000, y = 120.541, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26023, monster_id = 20010801, pos = { x = -2828.866, y = 200.000, z = -4015.479 }, rot = { x = 0.000, y = 120.541, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26024, monster_id = 20011201, pos = { x = -2826.258, y = 200.117, z = -4019.494 }, rot = { x = 0.000, y = 120.541, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26025, monster_id = 20011201, pos = { x = -2823.393, y = 200.105, z = -4019.454 }, rot = { x = 0.000, y = 120.541, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 26026, monster_id = 20011201, pos = { x = -2824.245, y = 200.363, z = -4023.771 }, rot = { x = 0.000, y = 120.541, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 26041, gadget_id = 70330063, pos = { x = -2833.903, y = 200.161, z = -4022.177 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 26044, gadget_id = 70350083, pos = { x = -2836.036, y = 200.803, z = -4028.942 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 26045, gadget_id = 70330064, pos = { x = -2842.044, y = 200.025, z = -4024.835 }, rot = { x = 0.000, y = 52.069, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 26010, shape = RegionShape.SPHERE, radius = 30, pos = { x = -2835.590, y = 200.203, z = -4023.232 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1026011, name = "GROUP_LOAD_26011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_26011", trigger_count = 0 },
	{ config_id = 1026046, name = "ANY_MONSTER_DIE_26046", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26046", action = "action_EVENT_ANY_MONSTER_DIE_26046" },
	{ config_id = 1026047, name = "ANY_MONSTER_DIE_26047", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26047", action = "action_EVENT_ANY_MONSTER_DIE_26047" },
	{ config_id = 1026048, name = "GADGET_CREATE_26048", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_26048", action = "action_EVENT_GADGET_CREATE_26048", trigger_count = 0 },
	{ config_id = 1026049, name = "SELECT_OPTION_26049", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_26049", action = "action_EVENT_SELECT_OPTION_26049", trigger_count = 0 },
	{ config_id = 1026050, name = "CHALLENGE_FAIL_26050", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_26050", trigger_count = 0 },
	{ config_id = 1026051, name = "CHALLENGE_SUCCESS_26051", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_26051" },
	{ config_id = 1026052, name = "ANY_MONSTER_DIE_26052", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26052", action = "action_EVENT_ANY_MONSTER_DIE_26052" },
	{ config_id = 1026053, name = "ANY_MONSTER_DIE_26053", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26053", action = "action_EVENT_ANY_MONSTER_DIE_26053" },
	{ config_id = 1026054, name = "ANY_MONSTER_DIE_26054", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26054", action = "action_EVENT_ANY_MONSTER_DIE_26054" },
	{ config_id = 1026055, name = "GROUP_LOAD_26055", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_26055" }
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
		gadgets = { 26041, 26044, 26045 },
		regions = { },
		triggers = { "GROUP_LOAD_26011", "GADGET_CREATE_26048", "SELECT_OPTION_26049", "CHALLENGE_FAIL_26050", "CHALLENGE_SUCCESS_26051" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 26010 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 26001, 26002, 26003, 26004, 26012, 26015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_26046" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 26021, 26022, 26023, 26024, 26025, 26026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_26052" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 26005, 26006, 26007, 26008, 26009, 26016 },
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
		triggers = { "GROUP_LOAD_26055" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_26011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209026, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26046(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26046(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209026, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26047(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26047(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209026, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_26048(context, evt)
	if 26044 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_26048(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133209026, 26044, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_26049(context, evt)
	-- 判断是gadgetid 26044 option_id 175
	if 26044 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_26049(context, evt)
	-- 删除指定group： 133209026 ；指定config：26044；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209026, 26044, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 26044 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26044, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209026, 3)
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111169的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111169, 120, 133209026, 18, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209026, 2)
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133209026, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_26050(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 133209026, EntityType.REGION, 26010)
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209026, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_26051(context, evt)
	-- 将configid为 26044 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26044, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133209026, 3) then
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
function condition_EVENT_ANY_MONSTER_DIE_26052(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26052(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209026, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26053(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26053(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209026, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26054(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26054(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209026, 8)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_26055(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_Event_V2.0"
require "V2_0/ExhibitionRoleElectricBomb"