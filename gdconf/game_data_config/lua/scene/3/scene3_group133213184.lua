-- 基础信息
local base_info = {
	group_id = 133213184
}

-- Trigger变量
local defs = {
	group_id = 133213184,
	inner_region = 184016,
	outer_region = 184016,
	related_region = 184016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 184001, monster_id = 26010101, pos = { x = -3154.849, y = 200.278, z = -3551.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 184002, monster_id = 26010101, pos = { x = -3148.307, y = 200.310, z = -3541.390 }, rot = { x = 1.192, y = 214.502, z = 358.267 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 184003, monster_id = 26010201, pos = { x = -3159.622, y = 200.509, z = -3545.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 184004, monster_id = 26010201, pos = { x = -3150.034, y = 200.326, z = -3537.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 184005, monster_id = 26010101, pos = { x = -3141.243, y = 200.093, z = -3544.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 184006, monster_id = 26010101, pos = { x = -3148.216, y = 200.269, z = -3535.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 184007, monster_id = 26010101, pos = { x = -3147.895, y = 200.278, z = -3551.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 184008, gadget_id = 70330064, pos = { x = -3155.700, y = 200.491, z = -3542.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 },
	{ config_id = 184009, gadget_id = 70350082, pos = { x = -3144.029, y = 200.314, z = -3548.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 184010, gadget_id = 70330063, pos = { x = -3149.694, y = 200.298, z = -3545.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 184016, shape = RegionShape.SPHERE, radius = 35, pos = { x = -3148.841, y = 200.687, z = -3545.417 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1184011, name = "GADGET_CREATE_184011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_184011", action = "action_EVENT_GADGET_CREATE_184011", trigger_count = 0 },
	{ config_id = 1184012, name = "SELECT_OPTION_184012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_184012", action = "action_EVENT_SELECT_OPTION_184012", trigger_count = 0 },
	{ config_id = 1184013, name = "CHALLENGE_FAIL_184013", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_184013", trigger_count = 0 },
	{ config_id = 1184014, name = "CHALLENGE_SUCCESS_184014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_184014" },
	{ config_id = 1184015, name = "GROUP_LOAD_184015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_184015" },
	{ config_id = 1184017, name = "GROUP_LOAD_184017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_184017", trigger_count = 0 }
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
		gadgets = { 184008, 184009, 184010 },
		regions = { },
		triggers = { "GADGET_CREATE_184011", "SELECT_OPTION_184012", "CHALLENGE_FAIL_184013", "CHALLENGE_SUCCESS_184014", "GROUP_LOAD_184017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 184016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_184015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_184011(context, evt)
	if 184009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_184011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213184, 184009, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_184012(context, evt)
	-- 判断是gadgetid 184009 option_id 175
	if 184009 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_184012(context, evt)
	-- 删除指定group： 133213184 ；指定config：184009；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133213184, 184009, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111169的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111169, 120, 133213184, 4, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133213184, {184001,184002,184003,184004,184005,184006,184007}, 4, 2, 2) then
		return -1
	end
	
	-- 将configid为 184009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213184, 2)
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133213184, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_184013(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 133213184, EntityType.REGION, 184016)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213184, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_184014(context, evt)
	-- 将configid为 184009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133213184, 3) then
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
function action_EVENT_GROUP_LOAD_184015(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_184017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213184, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_Event_V2.0"
require "V2_0/ExhibitionRoleElectricBomb"