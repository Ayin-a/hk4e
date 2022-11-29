-- 基础信息
local base_info = {
	group_id = 133108198
}

-- Trigger变量
local defs = {
	eyepoint = 198044
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 198001, monster_id = 25040102, pos = { x = -323.270, y = 200.100, z = -632.492 }, rot = { x = 0.000, y = 150.457, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 198002, monster_id = 25030102, pos = { x = -320.612, y = 200.035, z = -636.680 }, rot = { x = 0.000, y = 157.027, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 198003, monster_id = 25070201, pos = { x = -320.480, y = 200.014, z = -633.374 }, rot = { x = 0.000, y = 159.728, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 198004, monster_id = 25010105, pos = { x = -326.629, y = 200.187, z = -636.332 }, rot = { x = 0.000, y = 109.937, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 198012, monster_id = 25010301, pos = { x = -328.490, y = 200.106, z = -646.789 }, rot = { x = 0.000, y = 52.410, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 198013, monster_id = 25010301, pos = { x = -331.077, y = 200.106, z = -643.519 }, rot = { x = 0.000, y = 72.409, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 198014, monster_id = 25010401, pos = { x = -330.707, y = 200.106, z = -634.227 }, rot = { x = 0.000, y = 112.832, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 198015, monster_id = 25010401, pos = { x = -329.465, y = 200.097, z = -632.502 }, rot = { x = 0.000, y = 112.832, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 198016, monster_id = 25010501, pos = { x = -309.754, y = 200.054, z = -634.032 }, rot = { x = 0.000, y = 249.966, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 198017, monster_id = 25010501, pos = { x = -308.676, y = 200.106, z = -635.683 }, rot = { x = 0.000, y = 249.966, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 198018, monster_id = 25010601, pos = { x = -327.322, y = 200.170, z = -629.161 }, rot = { x = 0.000, y = 133.728, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 198019, monster_id = 25010601, pos = { x = -324.761, y = 200.106, z = -627.063 }, rot = { x = 0.000, y = 161.491, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 198005, gadget_id = 70800055, pos = { x = -319.522, y = 200.063, z = -639.198 }, rot = { x = 0.000, y = 164.651, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 198007, gadget_id = 70360001, pos = { x = -319.488, y = 200.988, z = -639.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 198009, gadget_id = 70800056, pos = { x = -314.709, y = 200.025, z = -636.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 198011, gadget_id = 70800056, pos = { x = -323.932, y = 200.106, z = -642.893 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 198021, gadget_id = 70800056, pos = { x = -322.999, y = 200.106, z = -638.906 }, rot = { x = 0.000, y = 113.199, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 198030, gadget_id = 70300105, pos = { x = -325.439, y = 200.068, z = -641.852 }, rot = { x = 0.000, y = 352.162, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 198031, gadget_id = 70300105, pos = { x = -314.556, y = 200.068, z = -634.601 }, rot = { x = 0.000, y = 132.812, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 198032, gadget_id = 70300094, pos = { x = -324.466, y = 200.075, z = -640.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 198033, gadget_id = 70300094, pos = { x = -325.542, y = 200.075, z = -641.750 }, rot = { x = 0.000, y = 61.080, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 198034, gadget_id = 70300094, pos = { x = -314.941, y = 200.099, z = -633.801 }, rot = { x = 0.000, y = 351.604, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 198035, gadget_id = 70220017, pos = { x = -312.726, y = 200.031, z = -634.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 198010, shape = RegionShape.SPHERE, radius = 30.5, pos = { x = -319.311, y = 201.565, z = -639.443 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } },
	-- 靠近触发教程
	{ config_id = 198040, shape = RegionShape.SPHERE, radius = 10, pos = { x = -319.522, y = 200.063, z = -639.198 }, area_id = 7 },
	{ config_id = 198043, shape = RegionShape.SPHERE, radius = 30, pos = { x = -319.561, y = 201.112, z = -639.139 }, area_id = 7 },
	-- 性能优化圈
	{ config_id = 198044, shape = RegionShape.SPHERE, radius = 30.5, pos = { x = -319.311, y = 201.565, z = -639.443 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1198006, name = "GADGET_STATE_CHANGE_198006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_198006", action = "action_EVENT_GADGET_STATE_CHANGE_198006" },
	{ config_id = 1198020, name = "ANY_MONSTER_LIVE_198020", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_198020", action = "action_EVENT_ANY_MONSTER_LIVE_198020" },
	{ config_id = 1198022, name = "GROUP_LOAD_198022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_198022" },
	{ config_id = 1198025, name = "ANY_MONSTER_DIE_198025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_198025", action = "action_EVENT_ANY_MONSTER_DIE_198025", trigger_count = 4, tag = "111" },
	{ config_id = 1198026, name = "CHALLENGE_FAIL_198026", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_198026" },
	{ config_id = 1198027, name = "CHALLENGE_SUCCESS_198027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_198027" },
	{ config_id = 1198029, name = "SELECT_OPTION_198029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_198029", action = "action_EVENT_SELECT_OPTION_198029" },
	-- 靠近触发教程
	{ config_id = 1198040, name = "ENTER_REGION_198040", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_198040", action = "action_EVENT_ENTER_REGION_198040", trigger_count = 0 },
	{ config_id = 1198042, name = "GADGET_CREATE_198042", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_198042", action = "action_EVENT_GADGET_CREATE_198042" },
	{ config_id = 1198043, name = "LEAVE_REGION_198043", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_198043", action = "action_EVENT_LEAVE_REGION_198043", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Boss", value = 0, no_refresh = false },
	{ config_id = 2, name = "challenge", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
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
		gadgets = { 198005, 198007, 198009, 198011, 198021, 198030, 198031, 198032, 198033, 198034, 198035 },
		regions = { 198010, 198040, 198043, 198044 },
		triggers = { "GADGET_STATE_CHANGE_198006", "GROUP_LOAD_198022", "CHALLENGE_FAIL_198026", "CHALLENGE_SUCCESS_198027", "SELECT_OPTION_198029", "ENTER_REGION_198040", "GADGET_CREATE_198042", "LEAVE_REGION_198043" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 198001, 198002, 198003, 198004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_198020", "ANY_MONSTER_DIE_198025", "CHALLENGE_FAIL_198026", "CHALLENGE_SUCCESS_198027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_198006(context, evt)
	-- 检测config_id为198005的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 198005 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_198006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108198, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_198020(context, evt)
	if 198001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_198020(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为2004006的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 2004006, 210, 1, 111, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为8，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133108198, {198018,198019,198012,198013,198014,198015,198016,198017}, 8, 2, 2) then
		return -1
	end
	
	-- 针对当前group内变量名为 "Variable_StartWatcherCountDown" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Variable_StartWatcherCountDown", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_198022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108198, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_198025(context, evt)
	--判断死亡怪物的configid是否为 198002
	if evt.param1 == 198001 or evt.param1 == 198002 or evt.param1 == 198003 or evt.param1 == 198004 then
	    return true
	 end
	  
	
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_198025(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_198026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108198, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133108198, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 变量"Boss"赋值为0
	ScriptLib.SetGroupVariableValue(context, "Boss", 0)
	
	-- 变量"challenge"赋值为0
	ScriptLib.SetGroupVariableValue(context, "challenge", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_198027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108198, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133108198, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_198029(context, evt)
	-- 判断是gadgetid 198007 option_id 175
	if 198007 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	if ScriptLib.GetLanternRiteValue(context) ~= 0 then
			return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_198029(context, evt)
	-- 将configid为 198005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 198005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133108198 ；指定config：198007；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108198, 198007, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "challenge" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_198040(context, evt)
	if evt.param1 ~= 198040 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_198040(context, evt)
	-- 显示id为153的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,153,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_198042(context, evt)
	if 198007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_198042(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108198, 198007, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_198043(context, evt)
	-- 判断变量"challenge"为1
	if ScriptLib.GetGroupVariableValue(context, "challenge") ~= 1 then
			return false
	end
	
	-- 判断是区域198043
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 198043 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_198043(context, evt)
	-- 终止识别id为1的挑战，并判定失败
		ScriptLib.StopChallenge(context, 1, 0)
	
	return 0
end

require "V2_4/Firecracker"
require "V2_4/SeaLamp_Challenge_Manager"