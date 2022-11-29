-- 基础信息
local base_info = {
	group_id = 133213186
}

-- Trigger变量
local defs = {
	group_id = 133213186,
	inner_region = 186016,
	outer_region = 186016,
	related_region = 186016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 186001, monster_id = 21020201, pos = { x = -3513.841, y = 201.593, z = -3180.624 }, rot = { x = 0.000, y = 49.075, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 186002, monster_id = 21010601, pos = { x = -3511.526, y = 201.315, z = -3181.255 }, rot = { x = 358.082, y = 65.777, z = 0.863 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 186003, monster_id = 21011601, pos = { x = -3509.705, y = 201.163, z = -3185.555 }, rot = { x = 0.000, y = 50.189, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 186004, monster_id = 21011001, pos = { x = -3508.345, y = 200.554, z = -3169.002 }, rot = { x = 0.000, y = 129.278, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 186005, monster_id = 21030601, pos = { x = -3511.028, y = 200.796, z = -3169.782 }, rot = { x = 0.000, y = 130.323, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 186006, monster_id = 21010301, pos = { x = -3504.923, y = 200.411, z = -3167.975 }, rot = { x = 0.000, y = 163.707, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 186007, monster_id = 21010301, pos = { x = -3506.201, y = 200.658, z = -3183.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 186008, gadget_id = 70330064, pos = { x = -3516.926, y = 202.044, z = -3176.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 },
	{ config_id = 186009, gadget_id = 70350082, pos = { x = -3500.892, y = 200.259, z = -3176.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 186010, gadget_id = 70330063, pos = { x = -3508.001, y = 200.767, z = -3177.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 186016, shape = RegionShape.SPHERE, radius = 35, pos = { x = -3507.062, y = 201.298, z = -3177.339 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1186011, name = "GADGET_CREATE_186011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_186011", action = "action_EVENT_GADGET_CREATE_186011", trigger_count = 0 },
	{ config_id = 1186012, name = "SELECT_OPTION_186012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_186012", action = "action_EVENT_SELECT_OPTION_186012", trigger_count = 0 },
	{ config_id = 1186013, name = "CHALLENGE_FAIL_186013", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_186013", trigger_count = 0 },
	{ config_id = 1186014, name = "CHALLENGE_SUCCESS_186014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_186014" },
	{ config_id = 1186015, name = "GROUP_LOAD_186015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_186015" },
	{ config_id = 1186017, name = "GROUP_LOAD_186017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_186017", trigger_count = 0 }
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
		gadgets = { 186008, 186009, 186010 },
		regions = { },
		triggers = { "GADGET_CREATE_186011", "SELECT_OPTION_186012", "CHALLENGE_FAIL_186013", "CHALLENGE_SUCCESS_186014", "GROUP_LOAD_186017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 186016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_186015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_186011(context, evt)
	if 186009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_186011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213186, 186009, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_186012(context, evt)
	-- 判断是gadgetid 186009 option_id 175
	if 186009 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_186012(context, evt)
	-- 删除指定group： 133213186 ；指定config：186009；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133213186, 186009, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111169的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111169, 120, 133213186, 15, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为15，场上怪物最少4只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133213186, {186001,186002,186003,186004,186005,186006,186007}, 15, 4, 5) then
		return -1
	end
	
	-- 将configid为 186009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 186009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213186, 2)
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133213186, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_186013(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 133213186, EntityType.REGION, 186016)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213186, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_186014(context, evt)
	-- 将configid为 186009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 186009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133213186, 3) then
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
function action_EVENT_GROUP_LOAD_186015(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_186017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213186, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_Event_V2.0"
require "V2_0/ExhibitionRoleElectricBomb"