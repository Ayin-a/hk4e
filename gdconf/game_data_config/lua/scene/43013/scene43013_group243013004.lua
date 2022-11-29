-- 基础信息
local base_info = {
	group_id = 243013004
}

-- Trigger变量
local defs = {
	gadget_1 = 4001,
	group_1 = 243013004,
	group_core = 243013005,
	challenge_father = 999,
	challenge1 = 120,
	PoolList = 21009,
	MonsterCount = 25,
	challenge_kill = 233,
	total_count = 5,
	min_count = 3,
	max_count = 3,
	tag = 0,
	Region1 = 4042
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4009, monster_id = 21010301, pos = { x = 25.986, y = -19.559, z = -48.107 }, rot = { x = 0.000, y = 154.975, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4016, monster_id = 21010301, pos = { x = 32.397, y = -19.559, z = -46.539 }, rot = { x = 0.000, y = 177.984, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4017, monster_id = 21010301, pos = { x = 38.816, y = -19.557, z = -48.353 }, rot = { x = 0.000, y = 234.713, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4018, monster_id = 20011201, pos = { x = 27.622, y = -19.498, z = -44.391 }, rot = { x = 0.000, y = 165.135, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4019, monster_id = 20011201, pos = { x = 37.412, y = -19.498, z = -44.409 }, rot = { x = 0.000, y = 204.028, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4020, monster_id = 21010201, pos = { x = 33.428, y = -19.498, z = -62.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4021, monster_id = 21010201, pos = { x = 26.727, y = -19.498, z = -59.669 }, rot = { x = 0.000, y = 33.495, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4022, monster_id = 21010201, pos = { x = 22.959, y = -19.498, z = -52.735 }, rot = { x = 0.000, y = 84.871, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4023, monster_id = 20010601, pos = { x = 30.024, y = -19.554, z = -63.619 }, rot = { x = 0.000, y = 4.355, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4024, monster_id = 20010701, pos = { x = 23.206, y = -19.498, z = -57.131 }, rot = { x = 0.000, y = 68.598, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4025, monster_id = 21010701, pos = { x = 39.416, y = -19.498, z = -58.002 }, rot = { x = 0.000, y = 302.374, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4026, monster_id = 21010701, pos = { x = 41.900, y = -19.498, z = -45.046 }, rot = { x = 0.000, y = 228.608, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4027, monster_id = 21010701, pos = { x = 24.165, y = -19.498, z = -60.724 }, rot = { x = 0.000, y = 47.284, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4028, monster_id = 21010901, pos = { x = 38.196, y = -19.543, z = -62.599 }, rot = { x = 0.000, y = 327.905, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4029, monster_id = 21010901, pos = { x = 42.905, y = -19.559, z = -52.821 }, rot = { x = 0.000, y = 267.277, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4030, monster_id = 21010501, pos = { x = 32.406, y = -19.498, z = -43.523 }, rot = { x = 0.000, y = 190.611, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4031, monster_id = 21010501, pos = { x = 22.653, y = -19.498, z = -47.708 }, rot = { x = 0.000, y = 107.204, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4032, monster_id = 22010101, pos = { x = 27.878, y = -19.498, z = -42.025 }, rot = { x = 0.000, y = 149.374, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4033, monster_id = 22010301, pos = { x = 35.916, y = -19.498, z = -42.422 }, rot = { x = 0.000, y = 223.409, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4035, monster_id = 21020701, pos = { x = 39.949, y = -19.498, z = -60.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4036, monster_id = 21020201, pos = { x = 32.714, y = -19.557, z = -63.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4037, monster_id = 21020701, pos = { x = 26.448, y = -19.498, z = -60.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4038, monster_id = 21030501, pos = { x = 40.879, y = -19.559, z = -40.384 }, rot = { x = 0.000, y = 180.064, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4039, monster_id = 21030501, pos = { x = 23.418, y = -19.559, z = -40.558 }, rot = { x = 0.000, y = 180.064, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } },
	{ config_id = 4040, monster_id = 21020801, pos = { x = 32.578, y = -19.498, z = -42.851 }, rot = { x = 0.000, y = 180.064, z = 0.000 }, level = 11, disableWander = true, affix = { 4155 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70360010, pos = { x = 31.059, y = -19.662, z = -52.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 4042, shape = RegionShape.CUBIC, size = { x = 80.000, y = 50.000, z = 80.000 }, pos = { x = 31.059, y = -19.662, z = -52.312 } }
}

-- 触发器
triggers = {
	{ config_id = 1004002, name = "GADGET_CREATE_4002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4002", action = "action_EVENT_GADGET_CREATE_4002" },
	{ config_id = 1004003, name = "SELECT_OPTION_4003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4003", action = "action_EVENT_SELECT_OPTION_4003", trigger_count = 0 },
	{ config_id = 1004004, name = "VARIABLE_CHANGE_4004", event = EventType.EVENT_VARIABLE_CHANGE, source = "success", condition = "condition_EVENT_VARIABLE_CHANGE_4004", action = "action_EVENT_VARIABLE_CHANGE_4004", trigger_count = 0 },
	--  
	{ config_id = 1004005, name = "CHALLENGE_SUCCESS_4005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "120", condition = "", action = "" },
	{ config_id = 1004006, name = "CHALLENGE_FAIL_4006", event = EventType.EVENT_CHALLENGE_FAIL, source = "120", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4006" },
	{ config_id = 1004008, name = "ANY_MONSTER_DIE_4008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4008", action = "action_EVENT_ANY_MONSTER_DIE_4008", trigger_count = 0 },
	{ config_id = 1004014, name = "ANY_MONSTER_LIVE_4014", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4014", action = "action_EVENT_ANY_MONSTER_LIVE_4014", trigger_count = 0 },
	{ config_id = 1004015, name = "ANY_MONSTER_DIE_4015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_4015", trigger_count = 0 },
	{ config_id = 1004034, name = "MONSTER_TIDE_DIE_4034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_4034", action = "action_EVENT_MONSTER_TIDE_DIE_4034" },
	{ config_id = 1004041, name = "ANY_MONSTER_DIE_4041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4041", action = "action_EVENT_ANY_MONSTER_DIE_4041" },
	{ config_id = 1004042, name = "LEAVE_REGION_4042", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_4042", action = "action_EVENT_LEAVE_REGION_4042", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 4007, pos = { x = 22.265, y = -19.498, z = -49.994 }, rot = { x = 0.000, y = 184.777, z = 0.000 } },
	{ config_id = 4010, pos = { x = 25.594, y = -19.498, z = -43.814 }, rot = { x = 0.000, y = 184.777, z = 0.000 } },
	{ config_id = 4011, pos = { x = 32.178, y = -19.559, z = -40.248 }, rot = { x = 0.000, y = 184.777, z = 0.000 } },
	{ config_id = 4012, pos = { x = 40.846, y = -19.498, z = -43.500 }, rot = { x = 0.000, y = 184.777, z = 0.000 } },
	{ config_id = 4013, pos = { x = 43.309, y = -19.558, z = -49.692 }, rot = { x = 0.000, y = 184.777, z = 0.000 } }
}

-- 变量
variables = {
	{ config_id = 1, name = "success", value = 0, no_refresh = false }
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
		gadgets = { 4001 },
		regions = { 4042 },
		triggers = { "GADGET_CREATE_4002", "SELECT_OPTION_4003", "VARIABLE_CHANGE_4004", "CHALLENGE_SUCCESS_4005", "CHALLENGE_FAIL_4006", "ANY_MONSTER_DIE_4015", "MONSTER_TIDE_DIE_4034", "LEAVE_REGION_4042" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4035, 4036, 4037 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4041" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4038, 4039, 4040 },
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
function condition_EVENT_GADGET_CREATE_4002(context, evt)
	if defs.gadget_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4003(context, evt)
	-- 判断是gadgetid 4001 option_id 7
	if 4001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4003(context, evt)
	--向编号999的父挑战挂接子挑战
	
	ScriptLib.ExecuteGroupLua(context,defs.group_core,"SetKillMonsterTarget" ,{defs.group_1, defs.MonsterCount})
	ScriptLib.ExecuteGroupLua(context,defs.group_core,"StartSubChallengeKillMonster" ,{defs.challenge1, defs.challenge_kill})
	
	--开启怪物潮
	
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, defs.group_1, {4009,4016,4017,4018,4019,4020,4021,4022,4023,4024,4025,4026,4027,4028,4029,4030,4031,4032,4033}, 19, 5, 5) then
		return -1
	end
	
	
	-- 删除指定group： 243013004 ；指定config：4001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_1, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	  return -1
	end
	
	-- 将configid为 4001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	    return -1
	end 
	
	-- 卸载指定gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, defs.group_core, EntityType.GADGET, 5009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	    return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "success", 243013005) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4004(context, evt)
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "success", 1, defs.group_core) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4006(context, evt)
	-- 改变指定group组243013013中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_1, defs.gadget_1, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_1, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4008(context, evt)
	--检查configeID是否大于0
	if 0 >= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4008(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key1", 1) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	    return -1
	end
	  
	--通知父挑战积分+1
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddChildChallengeScore", {1})
	  
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4014(context, evt)
	if defs.monster_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4014(context, evt)
	--向编号999的父挑战挂接子挑战
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "DefineFatherIndex",{defs.challenge_father})
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "DefineChildChallengeScore",{ 1, 1})
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AttachChildChallengeFromDiffGroup",{defs.challenge1, 233, 2})
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4015(context, evt)
	--发送怪物死亡通知
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddMistTrialChildChallengeScore", {1})
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_4034(context, evt)
	if 19 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_4034(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 243013004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4041(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4041(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 243013004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_4042(context, evt)
	-- 判断是区域8011
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= defs.Region1 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_4042(context, evt)
	--离开区域 挑战失败
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "StopMistTrialChildChallenge", {defs.challenge1,0})
	
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_1, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	        return -1
	end
	
	return 0
end