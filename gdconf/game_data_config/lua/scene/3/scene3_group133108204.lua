-- 基础信息
local base_info = {
	group_id = 133108204
}

-- Trigger变量
local defs = {
	group_id = 133108204,
	num_monster = 5,
	id_boss = 204004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 204001, monster_id = 25010201, pos = { x = -454.275, y = 202.351, z = -714.126 }, rot = { x = 0.000, y = 338.015, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9005, area_id = 7 },
	{ config_id = 204002, monster_id = 25010301, pos = { x = -454.170, y = 200.833, z = -706.057 }, rot = { x = 0.000, y = 197.060, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 7 },
	{ config_id = 204003, monster_id = 25010501, pos = { x = -455.452, y = 200.882, z = -708.548 }, rot = { x = 0.000, y = 10.385, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 7 },
	{ config_id = 204004, monster_id = 25010105, pos = { x = -452.589, y = 201.681, z = -707.972 }, rot = { x = 0.000, y = 279.015, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 204005, monster_id = 25030301, pos = { x = -456.045, y = 201.932, z = -714.979 }, rot = { x = 0.000, y = 92.446, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9009, area_id = 7 },
	{ config_id = 204016, monster_id = 25010201, pos = { x = -451.689, y = 202.578, z = -712.170 }, rot = { x = 0.000, y = 269.115, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 204006, gadget_id = 70800056, pos = { x = -453.352, y = 202.662, z = -714.195 }, rot = { x = 14.079, y = 337.031, z = 10.009 }, level = 1, area_id = 7 },
	{ config_id = 204007, gadget_id = 70800056, pos = { x = -451.625, y = 201.471, z = -706.412 }, rot = { x = 0.294, y = 253.551, z = 351.573 }, level = 1, area_id = 7 },
	{ config_id = 204008, gadget_id = 70300104, pos = { x = -453.300, y = 203.086, z = -714.320 }, rot = { x = 347.639, y = 153.421, z = 359.540 }, level = 1, area_id = 7 },
	{ config_id = 204009, gadget_id = 70800060, pos = { x = -451.362, y = 202.076, z = -709.669 }, rot = { x = 16.087, y = 297.895, z = 355.759 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	-- 1 挑战2040开始
	{ config_id = 204010, shape = RegionShape.SPHERE, radius = 30, pos = { x = -453.693, y = 200.150, z = -711.270 }, area_id = 7 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 204011, shape = RegionShape.SPHERE, radius = 30, pos = { x = -453.651, y = 201.454, z = -711.339 }, area_id = 7 },
	-- ## 烟花箱交互
	{ config_id = 204013, shape = RegionShape.SPHERE, radius = 30, pos = { x = -453.539, y = 202.248, z = -711.362 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } }
}

-- 触发器
triggers = {
	-- 1 挑战2040开始
	{ config_id = 1204010, name = "ENTER_REGION_204010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_204010", action = "action_EVENT_ENTER_REGION_204010", trigger_count = 0 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 1204011, name = "LEAVE_REGION_204011", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_204011", action = "action_EVENT_LEAVE_REGION_204011", trigger_count = 0 },
	-- 6 宝箱交互
	{ config_id = 1204014, name = "SELECT_OPTION_204014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_204014", action = "action_EVENT_SELECT_OPTION_204014", trigger_count = 0 },
	-- 7 giveReward为1给奖励，事件结束
	{ config_id = 1204015, name = "VARIABLE_CHANGE_204015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_204015", action = "action_EVENT_VARIABLE_CHANGE_204015", trigger_count = 0 },
	-- 5 挑战成功
	{ config_id = 1204017, name = "CHALLENGE_SUCCESS_204017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2040", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_204017", trigger_count = 0 },
	-- 3 挑战失败
	{ config_id = 1204018, name = "CHALLENGE_FAIL_204018", event = EventType.EVENT_CHALLENGE_FAIL, source = "2040", condition = "", action = "action_EVENT_CHALLENGE_FAIL_204018", trigger_count = 0 },
	-- 4#2 挑战2042计数，盗宝团死亡检查，tag 20492
	{ config_id = 1204019, name = "ANY_MONSTER_DIE_204019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_204019", action = "", trigger_count = 0, tag = "20492" },
	-- 4#1 挑战2041计数，boss死亡检查，tag 20491
	{ config_id = 1204020, name = "ANY_MONSTER_DIE_204020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_204020", action = "", trigger_count = 0, tag = "20491" }
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
		monsters = { 204001, 204002, 204003, 204004, 204005, 204016 },
		gadgets = { 204006, 204007, 204008, 204009 },
		regions = { 204010, 204011, 204013 },
		triggers = { "ENTER_REGION_204010", "LEAVE_REGION_204011", "SELECT_OPTION_204014", "VARIABLE_CHANGE_204015", "CHALLENGE_SUCCESS_204017", "CHALLENGE_FAIL_204018", "ANY_MONSTER_DIE_204019", "ANY_MONSTER_DIE_204020" },
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
function condition_EVENT_ENTER_REGION_204010(context, evt)
	if evt.param1 ~= 204010 then return false end
	
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
function action_EVENT_ENTER_REGION_204010(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 开始父挑战2004001，识别号2040，全灭时失败
	ScriptLib.CreateFatherChallenge(context,2040,2004001,99999999, {success=2, fail=100,fail_on_wipe=true})
	
	-- 开始识别号2040的挑战
	ScriptLib.StartFatherChallenge(context, 2040)
	
	-- #1 boss，子挑战2004002，识别号2041，触发1次，tag20491
	ScriptLib.AttachChildChallenge(context,2040,2041,2004002,{1,20491,1},{context.uid},{success=1, fail=100})
	
	-- #2 小怪，子挑战2004003，识别号2042，小怪，触发defs次，tag20492
	ScriptLib.AttachChildChallenge(context,2040,2042,2004003,{1,20492,defs.num_monster},{context.uid},{success=1, fail=100})
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_204011(context, evt)
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
function action_EVENT_LEAVE_REGION_204011(context, evt)
	-- 终止识别id为2040的挑战，并判定失败
		ScriptLib.StopChallenge(context, 2040, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_204014(context, evt)
	-- 判断是gadgetid 204009 option_id 189
	if 204009 ~= evt.param1 then
		return false	
	end
	
	if 189 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_204014(context, evt)
	-- 删除指定group： 133108204 ；指定config：204009；物件身上指定option：189；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108204, 204009, 189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组133108204中， configid为204009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133108204, 204009, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
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
function condition_EVENT_VARIABLE_CHANGE_204015(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_204015(context, evt)
	-- 将本组内变量名为 "hasReward" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReward", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.FinishGroupLinkBundle(context, defs.group_id)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133108204, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_204017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108204, 204009, {189}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "challengeSuccess" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeSuccess", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_204018(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108204, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_204019(context, evt)
	--判断死亡怪物的configid是否为小怪，不是boss
	if evt.param1 == defs.id_boss then
	    return false
	 end
	  
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_204020(context, evt)
	--判断死亡怪物的configid是否为 204004
	if evt.param1 ~= defs.id_boss then
	    return false
	 end
	  
	
	return true
end

require "V2_4/Firecracker"