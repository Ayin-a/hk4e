-- 基础信息
local base_info = {
	group_id = 133213183
}

-- Trigger变量
local defs = {
	inner_region = 183020,
	outer_region = 183020,
	related_region = 183020,
	group_id = 133213183
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 183001, monster_id = 25100201, pos = { x = -3392.145, y = 201.327, z = -3450.711 }, rot = { x = 0.000, y = 172.248, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, pose_id = 1, area_id = 12 },
	{ config_id = 183002, monster_id = 25100101, pos = { x = -3387.329, y = 201.183, z = -3453.929 }, rot = { x = 0.000, y = 227.268, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, pose_id = 1, area_id = 12 },
	{ config_id = 183003, monster_id = 23010601, pos = { x = -3382.976, y = 201.546, z = -3457.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 183004, monster_id = 23010601, pos = { x = -3382.941, y = 201.466, z = -3458.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 183005, monster_id = 23010301, pos = { x = -3390.292, y = 200.919, z = -3468.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 183006, monster_id = 23010501, pos = { x = -3396.909, y = 200.739, z = -3456.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 183007, monster_id = 23010101, pos = { x = -3382.961, y = 201.424, z = -3459.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 183008, monster_id = 23010501, pos = { x = -3397.419, y = 200.700, z = -3457.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 },
	{ config_id = 183009, monster_id = 23010301, pos = { x = -3388.492, y = 200.942, z = -3468.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 183010, gadget_id = 70330062, pos = { x = -3393.289, y = 200.412, z = -3471.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 183011, gadget_id = 70330062, pos = { x = -3384.111, y = 201.374, z = -3457.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 183012, gadget_id = 70330062, pos = { x = -3398.503, y = 201.031, z = -3452.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 183013, gadget_id = 70350082, pos = { x = -3392.853, y = 200.863, z = -3460.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 183014, gadget_id = 70330064, pos = { x = -3396.844, y = 200.369, z = -3466.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 183019, shape = RegionShape.SPHERE, radius = 8, pos = { x = -3392.889, y = 201.862, z = -3460.836 }, area_id = 12 },
	{ config_id = 183020, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3390.958, y = 200.942, z = -3460.213 }, area_id = 12, team_ability_group_list = { "RoleElectricPowerSource_Play_TeamBuff" } }
}

-- 触发器
triggers = {
	{ config_id = 1183015, name = "SELECT_OPTION_183015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_183015", action = "action_EVENT_SELECT_OPTION_183015", trigger_count = 0 },
	{ config_id = 1183016, name = "GADGET_CREATE_183016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_183016", action = "action_EVENT_GADGET_CREATE_183016", trigger_count = 0 },
	{ config_id = 1183017, name = "CHALLENGE_FAIL_183017", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_183017", trigger_count = 0 },
	{ config_id = 1183018, name = "CHALLENGE_SUCCESS_183018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_183018" },
	{ config_id = 1183019, name = "ENTER_REGION_183019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_183019" },
	{ config_id = 1183021, name = "GROUP_LOAD_183021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_183021", trigger_count = 0 },
	{ config_id = 1183022, name = "GROUP_LOAD_183022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_183022" }
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
		gadgets = { 183010, 183011, 183012, 183013, 183014 },
		regions = { 183019 },
		triggers = { "SELECT_OPTION_183015", "GADGET_CREATE_183016", "CHALLENGE_FAIL_183017", "CHALLENGE_SUCCESS_183018", "ENTER_REGION_183019", "GROUP_LOAD_183021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 183020 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_183022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_183015(context, evt)
	-- 判断是gadgetid 183013 option_id 175
	if 183013 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_183015(context, evt)
	-- 删除指定group： 133213183 ；指定config：183013；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133213183, 183013, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111170的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111170, 150, 133213183, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133213183, {183001}, 1, 1, 1) then
		return -1
	end
	
	-- 将configid为 183010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 183010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 183011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 183011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 183012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 183012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 183013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 183013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213183, 2)
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133213183, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_183016(context, evt)
	if 183013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_183016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213183, 183013, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_183017(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 133213183, EntityType.REGION, 183020)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213183, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_183018(context, evt)
	-- 将configid为 183013 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 183013, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 183010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 183010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 183011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 183011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 183012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 183012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133213183") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133213183, 3) then
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
function action_EVENT_ENTER_REGION_183019(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,141,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
	
end

-- 触发操作
function action_EVENT_GROUP_LOAD_183021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213183, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_183022(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_Event_V2.0"
require "V2_0/ExhibitionRoleElectricPowerSource"