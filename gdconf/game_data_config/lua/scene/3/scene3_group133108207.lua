-- 基础信息
local base_info = {
	group_id = 133108207
}

-- Trigger变量
local defs = {
	group_id = 133108207
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 207001, monster_id = 25010201, pos = { x = -414.477, y = 200.186, z = -651.899 }, rot = { x = 0.000, y = 338.015, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9005, area_id = 7 },
	{ config_id = 207005, monster_id = 25030301, pos = { x = -416.247, y = 200.100, z = -652.752 }, rot = { x = 0.000, y = 92.446, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9009, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 207006, gadget_id = 70800056, pos = { x = -413.798, y = 200.131, z = -654.501 }, rot = { x = 14.079, y = 337.031, z = 10.009 }, level = 1, area_id = 7 },
	{ config_id = 207009, gadget_id = 70800060, pos = { x = -416.741, y = 200.152, z = -649.702 }, rot = { x = 16.087, y = 297.895, z = 355.759 }, level = 1, area_id = 7 },
	{ config_id = 207016, gadget_id = 70800089, pos = { x = -413.816, y = 200.000, z = -652.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 207017, gadget_id = 70800089, pos = { x = -416.719, y = 200.000, z = -652.205 }, rot = { x = 0.000, y = 357.220, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	-- 1 挑战开始, start flag，15m
	{ config_id = 207010, shape = RegionShape.SPHERE, radius = 15, pos = { x = -415.286, y = 203.939, z = -652.683 }, area_id = 7 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 207011, shape = RegionShape.SPHERE, radius = 30, pos = { x = -415.244, y = 205.243, z = -652.752 }, area_id = 7 },
	-- ex 烟花箱交互
	{ config_id = 207013, shape = RegionShape.SPHERE, radius = 30, pos = { x = -415.131, y = 206.037, z = -652.775 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } }
}

-- 触发器
triggers = {
	-- 1 挑战开始, start flag，15m
	{ config_id = 1207010, name = "ENTER_REGION_207010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_207010", action = "action_EVENT_ENTER_REGION_207010", trigger_count = 0 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 1207011, name = "LEAVE_REGION_207011", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_207011", action = "action_EVENT_LEAVE_REGION_207011", trigger_count = 0 },
	-- 4 怪物杀灭，宝箱加交互
	{ config_id = 1207012, name = "ANY_MONSTER_DIE_207012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_207012", action = "action_EVENT_ANY_MONSTER_DIE_207012", trigger_count = 0 },
	-- 5 宝箱交互，临时
	{ config_id = 1207014, name = "SELECT_OPTION_207014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_207014", action = "action_EVENT_SELECT_OPTION_207014", trigger_count = 0 },
	-- 7 success变1，事件结束
	{ config_id = 1207015, name = "VARIABLE_CHANGE_207015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_207015", action = "action_EVENT_VARIABLE_CHANGE_207015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeStart", value = 0, no_refresh = false },
	{ config_id = 2, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 3, name = "hasReward", value = 0, no_refresh = true }
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
		monsters = { 207001, 207005 },
		gadgets = { 207006, 207009, 207016, 207017 },
		regions = { 207010, 207011, 207013 },
		triggers = { "ENTER_REGION_207010", "LEAVE_REGION_207011", "ANY_MONSTER_DIE_207012", "SELECT_OPTION_207014", "VARIABLE_CHANGE_207015" },
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
function condition_EVENT_ENTER_REGION_207010(context, evt)
	if evt.param1 ~= 207010 then return false end
	
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
function action_EVENT_ENTER_REGION_207010(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_207011(context, evt)
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
function action_EVENT_LEAVE_REGION_207011(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108207, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_207012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_207012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108207, 207009, {189}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_207014(context, evt)
	-- 判断是gadgetid 207009 option_id 189
	if 207009 ~= evt.param1 then
		return false	
	end
	
	if 189 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_207014(context, evt)
	-- 改变指定group组133108207中， configid为207009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133108207, 207009, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 133108207 ；指定config：207009；物件身上指定option：189；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108207, 207009, 189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "challengeSuccess" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeSuccess", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_207015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challengeSuccess"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 1 then
			return false
	end
	
	-- 判断变量"hasReward"为0
	if ScriptLib.GetGroupVariableValue(context, "hasReward") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_207015(context, evt)
	-- 将本组内变量名为 "hasReward" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReward", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.FinishGroupLinkBundle(context, defs.group_id)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133108207, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V2_4/Firecracker"