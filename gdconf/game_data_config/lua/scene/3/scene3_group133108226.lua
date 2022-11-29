-- 基础信息
local base_info = {
	group_id = 133108226
}

-- Trigger变量
local defs = {
	group_id = 133108226,
	num_monster = 5,
	monster_id_boss = 226004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 226001, monster_id = 25010201, pos = { x = -340.303, y = 200.299, z = -781.673 }, rot = { x = 358.787, y = 79.258, z = 358.408 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 7 },
	{ config_id = 226002, monster_id = 25010301, pos = { x = -340.799, y = 200.275, z = -783.202 }, rot = { x = 359.503, y = 56.244, z = 359.256 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 7 },
	{ config_id = 226003, monster_id = 25010601, pos = { x = -341.113, y = 200.338, z = -779.822 }, rot = { x = 359.350, y = 101.841, z = 354.393 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 7 },
	{ config_id = 226004, monster_id = 25030102, pos = { x = -341.959, y = 200.275, z = -781.294 }, rot = { x = 358.065, y = 78.153, z = 359.492 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 226005, monster_id = 25030301, pos = { x = -337.681, y = 200.530, z = -781.019 }, rot = { x = 8.922, y = 248.800, z = 358.451 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 7 },
	{ config_id = 226006, monster_id = 25010201, pos = { x = -341.067, y = 200.531, z = -777.586 }, rot = { x = 5.133, y = 142.851, z = 350.608 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 226007, gadget_id = 70800056, pos = { x = -348.738, y = 200.231, z = -783.377 }, rot = { x = 0.000, y = 194.177, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 226008, gadget_id = 70800056, pos = { x = -332.618, y = 201.283, z = -780.191 }, rot = { x = 349.957, y = 61.381, z = 356.418 }, level = 1, area_id = 7 },
	{ config_id = 226009, gadget_id = 70300104, pos = { x = -333.623, y = 200.606, z = -786.409 }, rot = { x = 0.000, y = 11.399, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 226010, gadget_id = 70800102, pos = { x = -344.220, y = 200.262, z = -783.132 }, rot = { x = 0.000, y = 105.235, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	-- 1 挑战2040开始
	{ config_id = 226011, shape = RegionShape.SPHERE, radius = 30, pos = { x = -341.068, y = 200.321, z = -780.129 }, area_id = 7 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 226012, shape = RegionShape.SPHERE, radius = 50, pos = { x = -341.124, y = 200.320, z = -780.072 }, area_id = 7 },
	-- ## 烟花箱交互
	{ config_id = 226013, shape = RegionShape.SPHERE, radius = 50, pos = { x = -341.124, y = 200.320, z = -780.072 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } },
	-- 确认玩家还在区域内并弹出reminder
	{ config_id = 226022, shape = RegionShape.SPHERE, radius = 50, pos = { x = -341.124, y = 200.320, z = -780.072 }, area_id = 7 }
}

-- 触发器
triggers = {
	-- 1 挑战2040开始
	{ config_id = 1226011, name = "ENTER_REGION_226011", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_226011", action = "action_EVENT_ENTER_REGION_226011", trigger_count = 0 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 1226012, name = "LEAVE_REGION_226012", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_226012", action = "action_EVENT_LEAVE_REGION_226012", trigger_count = 0 },
	-- 6 宝箱交互
	{ config_id = 1226014, name = "SELECT_OPTION_226014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_226014", action = "action_EVENT_SELECT_OPTION_226014", trigger_count = 0 },
	-- 7 giveReward为1给奖励，事件结束
	{ config_id = 1226015, name = "VARIABLE_CHANGE_226015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_226015", action = "action_EVENT_VARIABLE_CHANGE_226015", trigger_count = 0 },
	-- 5 挑战成功
	{ config_id = 1226016, name = "CHALLENGE_SUCCESS_226016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2040", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_226016", trigger_count = 0 },
	-- 3 挑战失败
	{ config_id = 1226017, name = "CHALLENGE_FAIL_226017", event = EventType.EVENT_CHALLENGE_FAIL, source = "2040", condition = "", action = "action_EVENT_CHALLENGE_FAIL_226017", trigger_count = 0 },
	-- 4#2 挑战2042计数，盗宝团死亡检查，tag 20492
	{ config_id = 1226018, name = "ANY_MONSTER_DIE_226018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_226018", action = "", trigger_count = 0, tag = "20492" },
	-- 4#1 挑战2041计数，boss死亡检查，tag 20491
	{ config_id = 1226019, name = "ANY_MONSTER_DIE_226019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_226019", action = "", trigger_count = 0, tag = "20491" },
	-- 保底 - 挑战完成解锁宝箱
	{ config_id = 1226020, name = "GROUP_LOAD_226020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_226020", action = "action_EVENT_GROUP_LOAD_226020", trigger_count = 0 },
	-- 挑战横幅计时
	{ config_id = 1226021, name = "TIME_AXIS_PASS_226021", event = EventType.EVENT_TIME_AXIS_PASS, source = "started", condition = "condition_EVENT_TIME_AXIS_PASS_226021", action = "action_EVENT_TIME_AXIS_PASS_226021", trigger_count = 0 },
	-- 确认玩家还在区域内并弹出reminder
	{ config_id = 1226022, name = "ENTER_REGION_226022", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_226022", action = "action_EVENT_ENTER_REGION_226022", trigger_count = 0 },
	-- 重置challengestart
	{ config_id = 1226023, name = "GROUP_LOAD_226023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_226023", action = "action_EVENT_GROUP_LOAD_226023", trigger_count = 0 }
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
		gadgets = { 226007, 226008, 226009, 226010 },
		regions = { 226011, 226012, 226013 },
		triggers = { "ENTER_REGION_226011", "LEAVE_REGION_226012", "VARIABLE_CHANGE_226015", "CHALLENGE_SUCCESS_226016", "CHALLENGE_FAIL_226017", "ANY_MONSTER_DIE_226018", "ANY_MONSTER_DIE_226019", "GROUP_LOAD_226020", "TIME_AXIS_PASS_226021", "GROUP_LOAD_226023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 226001, 226002, 226003, 226004, 226005, 226006 },
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
		triggers = { "SELECT_OPTION_226014" },
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
		regions = { 226022 },
		triggers = { "ENTER_REGION_226022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_226011(context, evt)
	if evt.param1 ~= 226011 then return false end
	
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
function action_EVENT_ENTER_REGION_226011(context, evt)
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
	ScriptLib.AddExtraGroupSuite(context, 133108226, 2)
	
	-- 创建标识为"started"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "started", {5}, false)
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_226012(context, evt)
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	-- 判断变量"challengeSuccess"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 0 then
			return false
	end
	
	-- 判断是区域226012
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 226012 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_226012(context, evt)
	-- 终止识别id为2040的挑战，并判定失败
		ScriptLib.StopChallenge(context, 2040, 0)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108226, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_226014(context, evt)
	-- 判断是gadgetid 226010 option_id 68
	if 226010 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_226014(context, evt)
	-- 删除指定group： 133108226 ；指定config：226010；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108226, 226010, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组133108226中， configid为226010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133108226, 226010, GadgetState.GearStop) then
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
function condition_EVENT_VARIABLE_CHANGE_226015(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_226015(context, evt)
	-- 将本组内变量名为 "hasReward" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReward", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.FinishGroupLinkBundle(context, defs.group_id)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133108226, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_226016(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133108226, 3)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108226, 226010, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 226010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_226017(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108226, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_226018(context, evt)
	--判断死亡怪物的configid是否为小怪，不是boss
	if evt.param1 == defs.monster_id_boss then
	    return false
	 end
	  
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_226019(context, evt)
	--判断死亡怪物的configid是否为 204004
	if evt.param1 ~= defs.monster_id_boss then
	    return false
	 end
	  
	
	return true
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_226020(context, evt)
	-- 判断变量"challengeSuccess"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_226020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108226, 3)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108226, 226010, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 226010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_226021(context, evt)
	if "started" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_226021(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108226, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_226022(context, evt)
	if evt.param1 ~= 226022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_226022(context, evt)
	-- 显示id为160的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,160,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_226023(context, evt)
	-- 判断变量"challengeSuccess"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_226023(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/Firecracker"
require "V2_4/SeaLamp_Challenge_Manager"