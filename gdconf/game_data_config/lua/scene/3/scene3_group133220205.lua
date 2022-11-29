-- 基础信息
local base_info = {
	group_id = 133220205
}

-- Trigger变量
local defs = {
	inner_region = 205047,
	outer_region = 205047,
	related_region = 205047,
	group_id = 133220205
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 205001, monster_id = 24010301, pos = { x = -2222.673, y = 227.099, z = -4260.094 }, rot = { x = 0.000, y = 45.316, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, pose_id = 100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 205041, gadget_id = 70330062, pos = { x = -2204.430, y = 228.575, z = -4266.761 }, rot = { x = 0.000, y = 70.777, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 205042, gadget_id = 70330062, pos = { x = -2213.957, y = 227.199, z = -4257.499 }, rot = { x = 0.000, y = 70.777, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 205043, gadget_id = 70330062, pos = { x = -2218.785, y = 227.815, z = -4270.660 }, rot = { x = 0.000, y = 70.777, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 205044, gadget_id = 70350083, pos = { x = -2209.513, y = 228.611, z = -4277.468 }, rot = { x = 0.000, y = 45.316, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 205045, gadget_id = 70330064, pos = { x = -2210.681, y = 228.257, z = -4272.878 }, rot = { x = 0.000, y = 45.316, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 205047, shape = RegionShape.SPHERE, radius = 35, pos = { x = -2210.005, y = 228.461, z = -4270.954 }, area_id = 11, team_ability_group_list = { "RoleElectricPowerSource_Play_TeamBuff" } }
}

-- 触发器
triggers = {
	{ config_id = 1205046, name = "GROUP_LOAD_205046", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_205046" },
	{ config_id = 1205048, name = "GROUP_LOAD_205048", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_205048", trigger_count = 0 },
	{ config_id = 1205051, name = "GADGET_CREATE_205051", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_205051", action = "action_EVENT_GADGET_CREATE_205051", trigger_count = 0 },
	{ config_id = 1205052, name = "SELECT_OPTION_205052", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_205052", action = "action_EVENT_SELECT_OPTION_205052", trigger_count = 0 },
	{ config_id = 1205053, name = "CHALLENGE_FAIL_205053", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_205053", trigger_count = 0 },
	{ config_id = 1205054, name = "CHALLENGE_SUCCESS_205054", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_205054" }
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
		gadgets = { 205041, 205042, 205043, 205044, 205045 },
		regions = { },
		triggers = { "GROUP_LOAD_205048", "GADGET_CREATE_205051", "SELECT_OPTION_205052", "CHALLENGE_FAIL_205053", "CHALLENGE_SUCCESS_205054" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 205001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
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
		regions = { 205047 },
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
		triggers = { "GROUP_LOAD_205046" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_205046(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_205048(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220205, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_205051(context, evt)
	if 205044 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_205051(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220205, 205044, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_205052(context, evt)
	-- 判断是gadgetid 205044 option_id 175
	if 205044 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_205052(context, evt)
	-- 删除指定group： 133220205 ；指定config：205044；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220205, 205044, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 205044 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 205044, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220205, 2)
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111170的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111170, 120, 133220205, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将configid为 205041 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 205041, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 205042 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 205042, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 205043 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 205043, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220205, 8)
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133220205, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_205053(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 133220205, EntityType.REGION, 205047)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220205, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_205054(context, evt)
	-- 将configid为 205044 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 205044, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 205041 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 205041, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 205042 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 205042, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 205043 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 205043, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133220205, 3) then
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

require "V2_0/SetPerformanceOptimizationWithRegion_Event_V2.0"
require "V2_0/ExhibitionRoleElectricPowerSource"