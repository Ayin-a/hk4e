-- 基础信息
local base_info = {
	group_id = 133209038
}

-- Trigger变量
local defs = {
	inner_region = 38016,
	outer_region = 38016,
	related_region = 38016,
	group_id = 133209038
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38001, monster_id = 25100101, pos = { x = -2955.320, y = 200.127, z = -3931.012 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, pose_id = 1, area_id = 11 },
	{ config_id = 38002, monster_id = 25100201, pos = { x = -2953.209, y = 200.035, z = -3921.802 }, rot = { x = 1.192, y = 245.000, z = 358.267 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 38008, gadget_id = 70330064, pos = { x = -2965.038, y = 200.621, z = -3920.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 38009, gadget_id = 70350082, pos = { x = -2963.779, y = 200.768, z = -3929.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 38010, gadget_id = 70330063, pos = { x = -2960.073, y = 200.314, z = -3925.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 38016, shape = RegionShape.SPHERE, radius = 30, pos = { x = -2956.885, y = 200.147, z = -3926.272 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1038011, name = "GADGET_CREATE_38011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_38011", action = "action_EVENT_GADGET_CREATE_38011", trigger_count = 0 },
	{ config_id = 1038012, name = "SELECT_OPTION_38012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_38012", action = "action_EVENT_SELECT_OPTION_38012", trigger_count = 0 },
	{ config_id = 1038013, name = "CHALLENGE_FAIL_38013", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_38013", trigger_count = 0 },
	{ config_id = 1038014, name = "CHALLENGE_SUCCESS_38014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_38014" },
	{ config_id = 1038015, name = "GROUP_LOAD_38015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_38015" },
	{ config_id = 1038017, name = "GROUP_LOAD_38017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_38017", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 38003, monster_id = 25080101, pos = { x = -2967.179, y = 201.811, z = -3926.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 11 },
		{ config_id = 38004, monster_id = 25080301, pos = { x = -2957.592, y = 200.000, z = -3918.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 11 },
		{ config_id = 38005, monster_id = 25080301, pos = { x = -2948.800, y = 200.059, z = -3925.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 11 },
		{ config_id = 38006, monster_id = 25080401, pos = { x = -2955.773, y = 200.000, z = -3916.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "高阶武士", disableWander = true, pose_id = 1, area_id = 11 },
		{ config_id = 38007, monster_id = 25080101, pos = { x = -2955.447, y = 200.052, z = -3932.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 11 }
	}
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
		gadgets = { 38008, 38009, 38010 },
		regions = { },
		triggers = { "GADGET_CREATE_38011", "SELECT_OPTION_38012", "CHALLENGE_FAIL_38013", "CHALLENGE_SUCCESS_38014", "GROUP_LOAD_38017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 38016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_38015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_38011(context, evt)
	if 38009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_38011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133209038, 38009, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_38012(context, evt)
	-- 判断是gadgetid 38009 option_id 175
	if 38009 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_38012(context, evt)
	-- 删除指定group： 133209038 ；指定config：38009；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209038, 38009, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建编号为101（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 2, 180, 133209038, 2, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133209038, {38001,38002}, 2, 2, 2) then
		return -1
	end
	
	-- 将configid为 38009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209038, 2)
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133209038, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_38013(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 133209038, EntityType.REGION, 38016)
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209038, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_38014(context, evt)
	-- 将configid为 38009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133209038, 3) then
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
function action_EVENT_GROUP_LOAD_38015(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209038, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_Event_V2.0"
require "V2_0/ExhibitionRoleElectricBomb"