-- 基础信息
local base_info = {
	group_id = 133108231
}

-- Trigger变量
local defs = {
	group_id = 133108231,
	num_monster = 5,
	monster_id_boss = 231004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 231001, monster_id = 25010201, pos = { x = -225.439, y = 200.128, z = -973.444 }, rot = { x = 0.000, y = 155.715, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 7 },
	{ config_id = 231002, monster_id = 25010601, pos = { x = -226.228, y = 200.566, z = -967.816 }, rot = { x = 0.000, y = 274.799, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 7 },
	{ config_id = 231003, monster_id = 25010501, pos = { x = -227.755, y = 200.535, z = -966.863 }, rot = { x = 0.000, y = 88.124, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9009, area_id = 7 },
	{ config_id = 231004, monster_id = 25040102, pos = { x = -233.730, y = 200.449, z = -966.991 }, rot = { x = 0.000, y = 215.552, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 231005, monster_id = 25010701, pos = { x = -230.362, y = 200.137, z = -974.043 }, rot = { x = 0.000, y = 151.374, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 7 },
	{ config_id = 231006, monster_id = 25020201, pos = { x = -230.963, y = 200.151, z = -975.831 }, rot = { x = 0.000, y = 45.373, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 231007, gadget_id = 70800056, pos = { x = -234.357, y = 200.198, z = -972.607 }, rot = { x = 0.183, y = 36.947, z = 356.781 }, level = 1, area_id = 7 },
	{ config_id = 231008, gadget_id = 70800056, pos = { x = -229.762, y = 200.160, z = -975.199 }, rot = { x = 1.216, y = 331.225, z = 0.354 }, level = 1, area_id = 7 },
	{ config_id = 231009, gadget_id = 70300104, pos = { x = -234.468, y = 200.200, z = -972.684 }, rot = { x = 359.017, y = 231.421, z = 3.071 }, level = 1, area_id = 7 },
	{ config_id = 231010, gadget_id = 70800102, pos = { x = -234.648, y = 200.418, z = -968.232 }, rot = { x = 0.790, y = 17.099, z = 357.435 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	-- 1 挑战2040开始
	{ config_id = 231011, shape = RegionShape.SPHERE, radius = 30, pos = { x = -231.572, y = 200.235, z = -971.652 }, area_id = 7 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 231012, shape = RegionShape.SPHERE, radius = 50, pos = { x = -231.629, y = 200.230, z = -971.707 }, area_id = 7 },
	-- ## 烟花箱交互
	{ config_id = 231013, shape = RegionShape.SPHERE, radius = 50, pos = { x = -231.629, y = 200.230, z = -971.707 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } },
	-- 确认玩家还在区域内并弹出reminder
	{ config_id = 231022, shape = RegionShape.SPHERE, radius = 50, pos = { x = -231.629, y = 200.230, z = -971.707 }, area_id = 7 }
}

-- 触发器
triggers = {
	-- 1 挑战2040开始
	{ config_id = 1231011, name = "ENTER_REGION_231011", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_231011", action = "action_EVENT_ENTER_REGION_231011", trigger_count = 0 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 1231012, name = "LEAVE_REGION_231012", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_231012", action = "action_EVENT_LEAVE_REGION_231012", trigger_count = 0 },
	-- 6 宝箱交互
	{ config_id = 1231014, name = "SELECT_OPTION_231014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_231014", action = "action_EVENT_SELECT_OPTION_231014", trigger_count = 0 },
	-- 7 giveReward为1给奖励，事件结束
	{ config_id = 1231015, name = "VARIABLE_CHANGE_231015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_231015", action = "action_EVENT_VARIABLE_CHANGE_231015", trigger_count = 0 },
	-- 5 挑战成功
	{ config_id = 1231016, name = "CHALLENGE_SUCCESS_231016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2040", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_231016", trigger_count = 0 },
	-- 3 挑战失败
	{ config_id = 1231017, name = "CHALLENGE_FAIL_231017", event = EventType.EVENT_CHALLENGE_FAIL, source = "2040", condition = "", action = "action_EVENT_CHALLENGE_FAIL_231017", trigger_count = 0 },
	-- 4#2 挑战2042计数，盗宝团死亡检查，tag 20492
	{ config_id = 1231018, name = "ANY_MONSTER_DIE_231018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_231018", action = "", trigger_count = 0, tag = "20492" },
	-- 4#1 挑战2041计数，boss死亡检查，tag 20491
	{ config_id = 1231019, name = "ANY_MONSTER_DIE_231019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_231019", action = "", trigger_count = 0, tag = "20491" },
	-- 保底 - 挑战完成解锁宝箱
	{ config_id = 1231020, name = "GROUP_LOAD_231020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_231020", action = "action_EVENT_GROUP_LOAD_231020", trigger_count = 0 },
	-- 挑战横幅计时
	{ config_id = 1231021, name = "TIME_AXIS_PASS_231021", event = EventType.EVENT_TIME_AXIS_PASS, source = "started", condition = "condition_EVENT_TIME_AXIS_PASS_231021", action = "action_EVENT_TIME_AXIS_PASS_231021", trigger_count = 0 },
	-- 确认玩家还在区域内并弹出reminder
	{ config_id = 1231022, name = "ENTER_REGION_231022", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_231022", action = "action_EVENT_ENTER_REGION_231022", trigger_count = 0 },
	-- 重置challengestart
	{ config_id = 1231023, name = "GROUP_LOAD_231023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_231023", action = "action_EVENT_GROUP_LOAD_231023", trigger_count = 0 }
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
		gadgets = { 231007, 231008, 231009, 231010 },
		regions = { 231011, 231012, 231013 },
		triggers = { "ENTER_REGION_231011", "LEAVE_REGION_231012", "VARIABLE_CHANGE_231015", "CHALLENGE_SUCCESS_231016", "CHALLENGE_FAIL_231017", "ANY_MONSTER_DIE_231018", "ANY_MONSTER_DIE_231019", "GROUP_LOAD_231020", "TIME_AXIS_PASS_231021", "GROUP_LOAD_231023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 231001, 231002, 231003, 231004, 231005, 231006 },
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
		triggers = { "SELECT_OPTION_231014" },
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
		regions = { 231022 },
		triggers = { "ENTER_REGION_231022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_231011(context, evt)
	if evt.param1 ~= 231011 then return false end
	
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
function action_EVENT_ENTER_REGION_231011(context, evt)
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
	ScriptLib.AddExtraGroupSuite(context, 133108231, 2)
	
	-- 创建标识为"started"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "started", {5}, false)
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_231012(context, evt)
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	-- 判断变量"challengeSuccess"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 0 then
			return false
	end
	
	-- 判断是区域231012
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 231012 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_231012(context, evt)
	-- 终止识别id为2040的挑战，并判定失败
		ScriptLib.StopChallenge(context, 2040, 0)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108231, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_231014(context, evt)
	-- 判断是gadgetid 231010 option_id 68
	if 231010 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_231014(context, evt)
	-- 删除指定group： 133108231 ；指定config：231010；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108231, 231010, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组133108231中， configid为231010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133108231, 231010, GadgetState.GearStop) then
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
function condition_EVENT_VARIABLE_CHANGE_231015(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_231015(context, evt)
	-- 将本组内变量名为 "hasReward" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReward", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.FinishGroupLinkBundle(context, defs.group_id)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133108231, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_231016(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133108231, 3)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108231, 231010, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 231010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 231010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_231017(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108231, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_231018(context, evt)
	--判断死亡怪物的configid是否为小怪，不是boss
	if evt.param1 == defs.monster_id_boss then
	    return false
	 end
	  
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_231019(context, evt)
	--判断死亡怪物的configid是否为 204004
	if evt.param1 ~= defs.monster_id_boss then
	    return false
	 end
	  
	
	return true
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_231020(context, evt)
	-- 判断变量"challengeSuccess"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_231020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108231, 3)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108231, 231010, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 231010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 231010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_231021(context, evt)
	if "started" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_231021(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108231, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_231022(context, evt)
	if evt.param1 ~= 231022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_231022(context, evt)
	-- 显示id为160的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,160,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_231023(context, evt)
	-- 判断变量"challengeSuccess"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_231023(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/Firecracker"
require "V2_4/SeaLamp_Challenge_Manager"