-- 基础信息
local base_info = {
	group_id = 133108220
}

-- Trigger变量
local defs = {
	group_id = 133108220,
	num_monster = 2
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 220001, monster_id = 25010201, pos = { x = -443.991, y = 200.279, z = -751.386 }, rot = { x = 0.000, y = 338.015, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9005, area_id = 7 },
	{ config_id = 220002, monster_id = 25030301, pos = { x = -445.762, y = 200.193, z = -752.240 }, rot = { x = 0.000, y = 92.446, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9009, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 220003, gadget_id = 70800056, pos = { x = -443.313, y = 200.224, z = -753.989 }, rot = { x = 14.079, y = 337.031, z = 10.009 }, level = 1, area_id = 7 },
	{ config_id = 220004, gadget_id = 70800060, pos = { x = -446.256, y = 200.245, z = -749.189 }, rot = { x = 16.087, y = 297.895, z = 355.759 }, level = 1, area_id = 7 },
	{ config_id = 220005, gadget_id = 70800089, pos = { x = -443.331, y = 200.093, z = -752.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 220006, gadget_id = 70800089, pos = { x = -446.233, y = 200.093, z = -751.693 }, rot = { x = 0.000, y = 357.220, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	-- 1 挑战开始, 2200
	{ config_id = 220007, shape = RegionShape.SPHERE, radius = 30, pos = { x = -444.800, y = 200.093, z = -752.171 }, area_id = 7 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 220008, shape = RegionShape.SPHERE, radius = 30, pos = { x = -444.759, y = 200.093, z = -752.239 }, area_id = 7 },
	-- ex 烟花箱交互
	{ config_id = 220010, shape = RegionShape.SPHERE, radius = 30, pos = { x = -444.646, y = 200.093, z = -752.263 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } }
}

-- 触发器
triggers = {
	-- 1 挑战开始, 2200
	{ config_id = 1220007, name = "ENTER_REGION_220007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_220007", action = "action_EVENT_ENTER_REGION_220007", trigger_count = 0 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 1220008, name = "LEAVE_REGION_220008", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_220008", action = "action_EVENT_LEAVE_REGION_220008", trigger_count = 0 },
	-- 5 宝箱交互，临时
	{ config_id = 1220011, name = "SELECT_OPTION_220011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_220011", action = "action_EVENT_SELECT_OPTION_220011", trigger_count = 0 },
	-- 6 giveReward变1，事件结束
	{ config_id = 1220012, name = "VARIABLE_CHANGE_220012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_220012", action = "action_EVENT_VARIABLE_CHANGE_220012", trigger_count = 0 },
	-- 4 挑战失败，刷回
	{ config_id = 1220013, name = "CHALLENGE_FAIL_220013", event = EventType.EVENT_CHALLENGE_FAIL, source = "2200", condition = "", action = "action_EVENT_CHALLENGE_FAIL_220013", trigger_count = 0 },
	-- 3 挑战成功，加交互
	{ config_id = 1220014, name = "CHALLENGE_SUCCESS_220014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2200", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_220014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeStart", value = 0, no_refresh = false },
	{ config_id = 2, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 3, name = "hasReward", value = 0, no_refresh = true },
	{ config_id = 4, name = "giveReward", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		monsters = { 220001, 220002 },
		gadgets = { 220003, 220004, 220005, 220006 },
		regions = { 220007, 220008, 220010 },
		triggers = { "ENTER_REGION_220007", "LEAVE_REGION_220008", "SELECT_OPTION_220011", "VARIABLE_CHANGE_220012", "CHALLENGE_FAIL_220013", "CHALLENGE_SUCCESS_220014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_220007(context, evt)
	if evt.param1 ~= 220007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"challengeStart"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 0 then
			return false
	end
	
	-- 判断变量"challengeSuccess"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_220007(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建编号为2200（该挑战的识别id),挑战内容为2004004的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2200, 2004004, defs.group_id, defs.num_monster, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_220008(context, evt)
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	-- 判断变量"challengeSuccess"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_220008(context, evt)
	-- 终止识别id为2200的挑战，并判定失败
		ScriptLib.StopChallenge(context, 2200, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_220011(context, evt)
	-- 判断是gadgetid 220004 option_id 189
	if 220004 ~= evt.param1 then
		return false	
	end
	
	if 189 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_220011(context, evt)
	-- 改变指定group组133108220中， configid为220004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133108220, 220004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 133108220 ；指定config：220004；物件身上指定option：189；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108220, 220004, 189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "giveReward" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "giveReward", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_220012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"giveReward"为1
	if ScriptLib.GetGroupVariableValue(context, "giveReward") ~= 1 then
			return false
	end
	
	-- 判断变量"hasReward"为0
	if ScriptLib.GetGroupVariableValue(context, "hasReward") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_220012(context, evt)
	-- 将本组内变量名为 "hasReward" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReward", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.FinishGroupLinkBundle(context, defs.group_id)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133108220, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_220013(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108220, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_220014(context, evt)
	-- 将本组内变量名为 "challengeSuccess" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeSuccess", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108220, 220004, {189}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V2_4/Firecracker"