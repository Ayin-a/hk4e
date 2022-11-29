-- 基础信息
local base_info = {
	group_id = 133212195
}

-- Trigger变量
local defs = {
	group_id = 133212195,
	inner_region = 195016,
	outer_region = 195016,
	related_region = 195016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 195001, monster_id = 21010201, pos = { x = -3575.053, y = 200.110, z = -2695.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 13 },
	{ config_id = 195002, monster_id = 21011601, pos = { x = -3568.514, y = 200.070, z = -2685.717 }, rot = { x = 1.192, y = 214.502, z = 358.267 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 13 },
	{ config_id = 195003, monster_id = 21011601, pos = { x = -3577.185, y = 200.106, z = -2689.647 }, rot = { x = 0.000, y = 105.266, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 13 },
	{ config_id = 195004, monster_id = 21010201, pos = { x = -3570.242, y = 200.044, z = -2681.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 13 },
	{ config_id = 195005, monster_id = 21010201, pos = { x = -3561.453, y = 200.000, z = -2689.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 13 },
	{ config_id = 195006, monster_id = 21030601, pos = { x = -3565.940, y = 200.094, z = -2683.118 }, rot = { x = 0.000, y = 206.036, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 13 },
	{ config_id = 195007, monster_id = 22010401, pos = { x = -3568.097, y = 200.076, z = -2695.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 195008, gadget_id = 70330064, pos = { x = -3568.401, y = 200.044, z = -2680.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 13 },
	{ config_id = 195009, gadget_id = 70350082, pos = { x = -3565.412, y = 200.066, z = -2694.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 },
	{ config_id = 195010, gadget_id = 70330063, pos = { x = -3569.897, y = 200.076, z = -2689.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 195016, shape = RegionShape.SPHERE, radius = 35, pos = { x = -3568.974, y = 200.091, z = -2689.698 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1195011, name = "GADGET_CREATE_195011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_195011", action = "action_EVENT_GADGET_CREATE_195011", trigger_count = 0 },
	{ config_id = 1195012, name = "SELECT_OPTION_195012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_195012", action = "action_EVENT_SELECT_OPTION_195012", trigger_count = 0 },
	{ config_id = 1195013, name = "CHALLENGE_FAIL_195013", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_195013", trigger_count = 0 },
	{ config_id = 1195014, name = "CHALLENGE_SUCCESS_195014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_195014" },
	{ config_id = 1195015, name = "GROUP_LOAD_195015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_195015" },
	{ config_id = 1195017, name = "GROUP_LOAD_195017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_195017", trigger_count = 0 }
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
		gadgets = { 195008, 195009, 195010 },
		regions = { },
		triggers = { "GADGET_CREATE_195011", "SELECT_OPTION_195012", "CHALLENGE_FAIL_195013", "CHALLENGE_SUCCESS_195014", "GROUP_LOAD_195017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 195016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_195015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_195011(context, evt)
	if 195009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_195011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212195, 195009, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_195012(context, evt)
	-- 判断是gadgetid 195009 option_id 175
	if 195009 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_195012(context, evt)
	-- 删除指定group： 133212195 ；指定config：195009；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133212195, 195009, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111169的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111169, 120, 133212195, 12, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为12，场上怪物最少3只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133212195, {195001,195002,195003,195004,195005,195006,195007}, 12, 3, 5) then
		return -1
	end
	
	-- 将configid为 195009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 195009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212195, 2)
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133212195, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_195013(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 133212195, EntityType.REGION, 195016)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212195, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_195014(context, evt)
	-- 将configid为 195009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 195009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133212195, 3) then
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
function action_EVENT_GROUP_LOAD_195015(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_195017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212195, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_Event_V2.0"
require "V2_0/ExhibitionRoleElectricBomb"