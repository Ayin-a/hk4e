-- 基础信息
local base_info = {
	group_id = 133108225
}

-- Trigger变量
local defs = {
	group_id = 133108225,
	num_monster = 5,
	monster_id_boss = 225004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 225001, monster_id = 25010201, pos = { x = -397.611, y = 202.597, z = -688.245 }, rot = { x = 21.354, y = 288.693, z = 353.009 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9005, area_id = 7 },
	{ config_id = 225002, monster_id = 25010301, pos = { x = -397.203, y = 201.790, z = -682.255 }, rot = { x = 0.000, y = 65.130, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9009, area_id = 7 },
	{ config_id = 225003, monster_id = 25010501, pos = { x = -397.275, y = 202.065, z = -684.012 }, rot = { x = 0.000, y = 31.487, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9009, area_id = 7 },
	{ config_id = 225004, monster_id = 25030102, pos = { x = -395.149, y = 201.724, z = -682.380 }, rot = { x = 0.000, y = 258.588, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 225005, monster_id = 25020201, pos = { x = -398.498, y = 201.919, z = -683.202 }, rot = { x = 0.000, y = 61.142, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9009, area_id = 7 },
	{ config_id = 225006, monster_id = 25010201, pos = { x = -398.171, y = 201.656, z = -681.300 }, rot = { x = 0.000, y = 90.666, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9009, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 225007, gadget_id = 70800056, pos = { x = -398.961, y = 202.301, z = -686.216 }, rot = { x = 4.283, y = 12.346, z = 5.489 }, level = 1, area_id = 7 },
	{ config_id = 225008, gadget_id = 70800056, pos = { x = -394.144, y = 200.841, z = -677.787 }, rot = { x = 350.821, y = 254.806, z = 353.354 }, level = 1, area_id = 7 },
	{ config_id = 225009, gadget_id = 70300104, pos = { x = -396.664, y = 202.721, z = -689.873 }, rot = { x = 357.272, y = 297.212, z = 353.597 }, level = 1, area_id = 7 },
	{ config_id = 225010, gadget_id = 70800102, pos = { x = -393.881, y = 201.379, z = -681.044 }, rot = { x = 358.530, y = 300.585, z = 346.889 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	-- 1 挑战2040开始
	{ config_id = 225011, shape = RegionShape.SPHERE, radius = 30, pos = { x = -396.212, y = 201.835, z = -682.645 }, area_id = 7 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 225012, shape = RegionShape.SPHERE, radius = 50, pos = { x = -396.058, y = 201.847, z = -682.737 }, area_id = 7 },
	-- ## 烟花箱交互
	{ config_id = 225013, shape = RegionShape.SPHERE, radius = 50, pos = { x = -396.058, y = 201.847, z = -682.737 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } },
	-- 确认玩家还在区域内并弹出reminder
	{ config_id = 225022, shape = RegionShape.SPHERE, radius = 50, pos = { x = -396.058, y = 201.847, z = -682.737 }, area_id = 7 }
}

-- 触发器
triggers = {
	-- 1 挑战2040开始
	{ config_id = 1225011, name = "ENTER_REGION_225011", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_225011", action = "action_EVENT_ENTER_REGION_225011", trigger_count = 0 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 1225012, name = "LEAVE_REGION_225012", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_225012", action = "action_EVENT_LEAVE_REGION_225012", trigger_count = 0 },
	-- 6 宝箱交互
	{ config_id = 1225014, name = "SELECT_OPTION_225014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_225014", action = "action_EVENT_SELECT_OPTION_225014", trigger_count = 0 },
	-- 7 giveReward为1给奖励，事件结束
	{ config_id = 1225015, name = "VARIABLE_CHANGE_225015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_225015", action = "action_EVENT_VARIABLE_CHANGE_225015", trigger_count = 0 },
	-- 5 挑战成功
	{ config_id = 1225016, name = "CHALLENGE_SUCCESS_225016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2040", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_225016", trigger_count = 0 },
	-- 3 挑战失败
	{ config_id = 1225017, name = "CHALLENGE_FAIL_225017", event = EventType.EVENT_CHALLENGE_FAIL, source = "2040", condition = "", action = "action_EVENT_CHALLENGE_FAIL_225017", trigger_count = 0 },
	-- 4#2 挑战2042计数，盗宝团死亡检查，tag 20492
	{ config_id = 1225018, name = "ANY_MONSTER_DIE_225018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_225018", action = "", trigger_count = 0, tag = "20492" },
	-- 4#1 挑战2041计数，boss死亡检查，tag 20491
	{ config_id = 1225019, name = "ANY_MONSTER_DIE_225019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_225019", action = "", trigger_count = 0, tag = "20491" },
	-- 保底 - 挑战完成解锁宝箱
	{ config_id = 1225020, name = "GROUP_LOAD_225020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_225020", action = "action_EVENT_GROUP_LOAD_225020", trigger_count = 0 },
	-- 挑战横幅计时
	{ config_id = 1225021, name = "TIME_AXIS_PASS_225021", event = EventType.EVENT_TIME_AXIS_PASS, source = "started", condition = "condition_EVENT_TIME_AXIS_PASS_225021", action = "action_EVENT_TIME_AXIS_PASS_225021", trigger_count = 0 },
	-- 确认玩家还在区域内并弹出reminder
	{ config_id = 1225022, name = "ENTER_REGION_225022", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_225022", action = "action_EVENT_ENTER_REGION_225022", trigger_count = 0 },
	-- 重置challengestart
	{ config_id = 1225023, name = "GROUP_LOAD_225023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_225023", action = "action_EVENT_GROUP_LOAD_225023", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 225007, 225008, 225009, 225010 },
		regions = { 225011, 225012, 225013 },
		triggers = { "ENTER_REGION_225011", "LEAVE_REGION_225012", "VARIABLE_CHANGE_225015", "CHALLENGE_SUCCESS_225016", "CHALLENGE_FAIL_225017", "ANY_MONSTER_DIE_225018", "ANY_MONSTER_DIE_225019", "GROUP_LOAD_225020", "TIME_AXIS_PASS_225021", "GROUP_LOAD_225023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 225001, 225002, 225003, 225004, 225005, 225006 },
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
		triggers = { "SELECT_OPTION_225014" },
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
		regions = { 225022 },
		triggers = { "ENTER_REGION_225022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_225011(context, evt)
	if evt.param1 ~= 225011 then return false end
	
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
	
	if ScriptLib.GetLanternRiteValue(context) ~=0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_225011(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 开启时将本组内变量名为 "Variable_StartWatcherCountDown" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_StartWatcherCountDown", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 开始父挑战2004001，识别号2040，全灭时失败
	ScriptLib.CreateFatherChallenge(context,2040,2004001,99999999, {success=2, fail=100,fail_on_wipe=true})
	
	local uid = ScriptLib.GetSceneUidList(context)
	
	-- #1 boss，子挑战2004002，识别号2041，触发1次，tag20491
	ScriptLib.AttachChildChallenge(context,2040,2041,2004002,{1,20491,1},{uid[1]},{success=1, fail=100})
	
	-- #2 小怪，子挑战2004003，识别号2042，小怪，触发defs次，tag20492
	ScriptLib.AttachChildChallenge(context,2040,2042,2004003,{1,20492,defs.num_monster},{uid[1]},{success=1, fail=100})
	
	-- 开始识别号2040的挑战
	ScriptLib.StartFatherChallenge(context, 2040)
	
	-- 刷出suite2怪物
	ScriptLib.AddExtraGroupSuite(context, 133108225, 2)
	
	-- 创建标识为"started"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "started", {5}, false)
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_225012(context, evt)
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	-- 判断变量"challengeSuccess"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 0 then
			return false
	end
	
	-- 判断是区域225012
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 225012 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_225012(context, evt)
	-- 终止识别id为2040的挑战，并判定失败
		ScriptLib.StopChallenge(context, 2040, 0)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108225, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_225014(context, evt)
	-- 判断是gadgetid 225010 option_id 68
	if 225010 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_225014(context, evt)
	-- 删除指定group： 133108225 ；指定config：225010；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108225, 225010, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组133108225中， configid为225010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133108225, 225010, GadgetState.GearStop) then
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
function condition_EVENT_VARIABLE_CHANGE_225015(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_225015(context, evt)
	-- 将本组内变量名为 "hasReward" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReward", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.FinishGroupLinkBundle(context, defs.group_id)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133108225, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_225016(context, evt)
	-- 将本组内变量名为 "challengeSuccess" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeSuccess", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Variable_EndGame" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_EndGame", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108225, 3)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108225, 225010, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 225010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 225010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_225017(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108225, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_225018(context, evt)
	--判断死亡怪物的configid是否为小怪，不是boss
	if evt.param1 == defs.monster_id_boss then
	    return false
	 end
	  
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_225019(context, evt)
	--判断死亡怪物的configid是否为 204004
	if evt.param1 ~= defs.monster_id_boss then
	    return false
	 end
	  
	
	return true
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_225020(context, evt)
	-- 判断变量"challengeSuccess"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_225020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108225, 3)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108225, 225010, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 225010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 225010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_225021(context, evt)
	if "started" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_225021(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108225, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_225022(context, evt)
	if evt.param1 ~= 225022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_225022(context, evt)
	-- 显示id为160的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,160,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_225023(context, evt)
	-- 判断变量"challengeSuccess"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_225023(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/Firecracker"
require "V2_4/SeaLamp_Challenge_Manager"