-- 基础信息
local base_info = {
	group_id = 133213178
}

-- Trigger变量
local defs = {
	group_id = 133213178,
	inner_region = 178016,
	outer_region = 178016,
	related_region = 178016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 178006, monster_id = 25080101, pos = { x = -3337.254, y = 200.269, z = -3682.464 }, rot = { x = 0.000, y = 32.669, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, pose_id = 1, area_id = 12 },
	{ config_id = 178007, monster_id = 25080201, pos = { x = -3329.876, y = 200.165, z = -3671.537 }, rot = { x = 1.192, y = 214.502, z = 358.267 }, level = 1, drop_id = 1000100, affix = { 1007 }, pose_id = 1, area_id = 12 },
	{ config_id = 178008, monster_id = 25080101, pos = { x = -3341.191, y = 200.065, z = -3675.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, pose_id = 1, area_id = 12 },
	{ config_id = 178009, monster_id = 25080301, pos = { x = -3331.604, y = 200.081, z = -3667.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, pose_id = 1, area_id = 12 },
	{ config_id = 178010, monster_id = 25080301, pos = { x = -3322.812, y = 200.130, z = -3674.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, pose_id = 1, area_id = 12 },
	{ config_id = 178011, monster_id = 25080101, pos = { x = -3329.785, y = 200.109, z = -3665.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, pose_id = 1, area_id = 12 },
	{ config_id = 178012, monster_id = 25080101, pos = { x = -3329.459, y = 200.235, z = -3681.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 178001, gadget_id = 70330064, pos = { x = -3336.673, y = 200.042, z = -3669.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 },
	{ config_id = 178002, gadget_id = 70350082, pos = { x = -3327.365, y = 200.111, z = -3679.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 178003, gadget_id = 70330063, pos = { x = -3331.259, y = 200.145, z = -3675.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 178015, shape = RegionShape.SPHERE, radius = 12, pos = { x = -3326.876, y = 200.087, z = -3680.787 }, area_id = 12 },
	{ config_id = 178016, shape = RegionShape.SPHERE, radius = 35, pos = { x = -3330.380, y = 200.779, z = -3675.433 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1178004, name = "GADGET_CREATE_178004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_178004", action = "action_EVENT_GADGET_CREATE_178004", trigger_count = 0 },
	{ config_id = 1178005, name = "SELECT_OPTION_178005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_178005", action = "action_EVENT_SELECT_OPTION_178005", trigger_count = 0 },
	{ config_id = 1178013, name = "CHALLENGE_FAIL_178013", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_178013", trigger_count = 0 },
	{ config_id = 1178014, name = "CHALLENGE_SUCCESS_178014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_178014" },
	{ config_id = 1178015, name = "ENTER_REGION_178015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_178015" },
	{ config_id = 1178017, name = "GROUP_LOAD_178017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_178017" }
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
		gadgets = { 178001, 178002, 178003 },
		regions = { 178015 },
		triggers = { "GADGET_CREATE_178004", "SELECT_OPTION_178005", "CHALLENGE_FAIL_178013", "CHALLENGE_SUCCESS_178014", "ENTER_REGION_178015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 178016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_178017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_178004(context, evt)
	if 178002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_178004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213178, 178002, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_178005(context, evt)
	-- 判断是gadgetid 178002 option_id 175
	if 178002 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_178005(context, evt)
	-- 删除指定group： 133213178 ；指定config：178002；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133213178, 178002, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111169的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111169, 120, 133213178, 6, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133213178, {178006,178007,178008,178009,178010,178011,178012}, 6, 3, 3) then
		return -1
	end
	
	-- 将configid为 178002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 178002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213178, 2)
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133213178, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_178013(context, evt)
	
	ScriptLib.RemoveEntityByConfigId(context, 133213178, EntityType.REGION, 178016)
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213178, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_178014(context, evt)
	-- 将configid为 178002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 178002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133213178") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133213178, 3) then
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
function action_EVENT_ENTER_REGION_178015(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,140,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
	
end

-- 触发操作
function action_EVENT_GROUP_LOAD_178017(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_Event_V2.0"
require "V2_0/ExhibitionRoleElectricBomb"