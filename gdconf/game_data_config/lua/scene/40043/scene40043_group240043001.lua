-- 基础信息
local base_info = {
	group_id = 240043001
}

-- DEFS_MISCS
local defs = {
        monster_boss = 1046,
        summon_region_list = {1041,1042,1043}, --region出怪的list
        summon_interval = 15,                        --自动出怪时间
        gadget_operator_list = {1020,1021,1022,1023,1024,1025,1026,1027,1028} --9个锚点
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[1029] = { config_id = 1029, monster_id = 20050702, pos = { x = 12.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	[1030] = { config_id = 1030, monster_id = 20050702, pos = { x = 0.000, y = 0.000, z = -12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1031] = { config_id = 1031, monster_id = 20050202, pos = { x = -12.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1032] = { config_id = 1032, monster_id = 20050202, pos = { x = 0.000, y = 0.000, z = 12.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	[1033] = { config_id = 1033, monster_id = 20050702, pos = { x = 12.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	[1034] = { config_id = 1034, monster_id = 20050702, pos = { x = 0.000, y = 0.000, z = -12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1035] = { config_id = 1035, monster_id = 20050602, pos = { x = -12.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1036] = { config_id = 1036, monster_id = 20050602, pos = { x = 0.000, y = 0.000, z = 12.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	[1037] = { config_id = 1037, monster_id = 20050702, pos = { x = 12.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	[1038] = { config_id = 1038, monster_id = 20050702, pos = { x = 0.000, y = 0.000, z = -12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1039] = { config_id = 1039, monster_id = 20050901, pos = { x = -12.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1040] = { config_id = 1040, monster_id = 20050901, pos = { x = 0.000, y = 0.000, z = 12.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[1001] = { config_id = 1001, gadget_id = 70350013, pos = { x = 0.000, y = 0.000, z = -24.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1002] = { config_id = 1002, gadget_id = 70350013, pos = { x = 0.000, y = 0.000, z = 24.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1003] = { config_id = 1003, gadget_id = 70380026, pos = { x = 0.000, y = 0.300, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	[1004] = { config_id = 1004, gadget_id = 70360010, pos = { x = 0.000, y = 0.116, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1019] = { config_id = 1019, gadget_id = 44000006, pos = { x = 0.000, y = 0.000, z = 14.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1020] = { config_id = 1020, gadget_id = 70360001, pos = { x = 11.000, y = 0.000, z = -11.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 1 },
	[1021] = { config_id = 1021, gadget_id = 70360001, pos = { x = 0.000, y = 0.000, z = -11.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 2 },
	[1022] = { config_id = 1022, gadget_id = 70360001, pos = { x = -11.000, y = 0.000, z = -11.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 3 },
	[1023] = { config_id = 1023, gadget_id = 70360001, pos = { x = 11.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 4 },
	[1024] = { config_id = 1024, gadget_id = 70360001, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 5 },
	[1025] = { config_id = 1025, gadget_id = 70360001, pos = { x = -11.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 6 },
	[1026] = { config_id = 1026, gadget_id = 70360001, pos = { x = 11.000, y = 0.000, z = 11.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 7 },
	[1027] = { config_id = 1027, gadget_id = 70360001, pos = { x = 0.000, y = 0.000, z = 11.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 8 },
	[1028] = { config_id = 1028, gadget_id = 70360001, pos = { x = -11.000, y = 0.000, z = 11.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 9 },
	[1048] = { config_id = 1048, gadget_id = 42005010, pos = { x = 0.000, y = 0.300, z = -12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1049] = { config_id = 1049, gadget_id = 42005010, pos = { x = -12.000, y = 0.300, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1050] = { config_id = 1050, gadget_id = 42005010, pos = { x = 0.000, y = 0.300, z = 12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[1041] = { config_id = 1041, shape = RegionShape.SPHERE, radius = 5, pos = { x = 0.000, y = 0.300, z = -12.000 } },
	[1042] = { config_id = 1042, shape = RegionShape.SPHERE, radius = 5, pos = { x = -12.000, y = 0.300, z = 0.000 } },
	[1043] = { config_id = 1043, shape = RegionShape.SPHERE, radius = 5, pos = { x = 0.000, y = 0.300, z = 12.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1001008, name = "GADGET_CREATE_1008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1008", action = "action_EVENT_GADGET_CREATE_1008", trigger_count = 0 },
	{ config_id = 1001009, name = "SELECT_OPTION_1009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1009", action = "action_EVENT_SELECT_OPTION_1009", trigger_count = 0 },
	{ config_id = 1001010, name = "GADGET_STATE_CHANGE_1010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1010", action = "action_EVENT_GADGET_STATE_CHANGE_1010", trigger_count = 0 },
	{ config_id = 1001011, name = "DUNGEON_ALL_AVATAR_DIE_1011", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1011", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_1011", trigger_count = 0 },
	{ config_id = 1001012, name = "CHALLENGE_FAIL_1012", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1012", trigger_count = 0 },
	{ config_id = 1001013, name = "CHALLENGE_SUCCESS_1013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "201", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1013", trigger_count = 0 },
	{ config_id = 1001014, name = "CHALLENGE_SUCCESS_1014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "201", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1014", trigger_count = 0 },
	{ config_id = 1001015, name = "CHALLENGE_FAIL_1015", event = EventType.EVENT_CHALLENGE_FAIL, source = "201", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1015", trigger_count = 0 },
	{ config_id = 1001016, name = "CHALLENGE_SUCCESS_1016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "204", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1016", trigger_count = 0 },
	{ config_id = 1001017, name = "ANY_MONSTER_DIE_1017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1017", action = "action_EVENT_ANY_MONSTER_DIE_1017", tag = "12" },
	{ config_id = 1001018, name = "ANY_MONSTER_DIE_1018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1018", action = "action_EVENT_ANY_MONSTER_DIE_1018", tag = "13" },
	{ config_id = 1001044, name = "VARIABLE_CHANGE_1044", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1044", action = "action_EVENT_VARIABLE_CHANGE_1044", trigger_count = 0, tag = "11" },
	-- 傀儡击杀计数
	{ config_id = 1001045, name = "ANY_MONSTER_DIE_1045", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_1045", trigger_count = 0, tag = "14" }
}

-- 点位
points = {
	{ config_id = 1005, pos = { x = 0.136, y = -0.020, z = -12.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 1006, pos = { x = 4.983, y = 0.008, z = -9.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 1007, pos = { x = -4.667, y = 0.001, z = -9.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 1046, pos = { x = 0.000, y = 0.000, z = -12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 16 },
	{ config_id = 1047, pos = { x = 0.000, y = 0.000, z = -12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 32 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IS_IN_LIMIT_TIME", value = 0, no_refresh = false },
	{ config_id = 2, name = "challenge_count", value = 0, no_refresh = false },
	{ config_id = 3, name = "Samurai_Ningyo_count", value = 0, no_refresh = false }
}

-- 视野组
sight_groups = {
	{ 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040 }
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
		gadgets = { 1001, 1002, 1003, 1004, 1019 },
		regions = { },
		triggers = { "GADGET_CREATE_1008", "SELECT_OPTION_1009", "GADGET_STATE_CHANGE_1010", "DUNGEON_ALL_AVATAR_DIE_1011", "CHALLENGE_FAIL_1012", "CHALLENGE_SUCCESS_1013", "CHALLENGE_SUCCESS_1014", "CHALLENGE_FAIL_1015", "ANY_MONSTER_DIE_1017", "ANY_MONSTER_DIE_1018", "VARIABLE_CHANGE_1044" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028 },
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 1029, 1030, 1031, 1032 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 1033, 1034, 1035, 1036 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 1037, 1038, 1039, 1040 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 1048 },
		regions = { 1041 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 1049 },
		regions = { 1042 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 1050 },
		regions = { 1043 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_1016" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1045" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1008(context, evt)
	if 1004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240043001, 1004, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1009(context, evt)
	-- 判断是gadgetid 1004 option_id 175
	if 1004 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1009(context, evt)
	-- 删除指定group： 240043001 ；指定config：1004；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240043001, 1004, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1010(context, evt)
	if 1004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1010(context, evt)
	-- 初始化时间变量
	local challenge_time = 0
	
	if -1 ~= ScriptLib.GetEffigyChallengeLimitTime(context) then
		challenge_time = ScriptLib.GetEffigyChallengeLimitTime(context)
	end
	
	-- 创建编号为110187父挑战，indexID为1
	if 0 ~= ScriptLib.CreateFatherChallenge(context, 1, 110187, 999999, {success = 1, fail = 1, fail_on_wipe=false}) then
		return -1
	end
	
	-- 创建编号为202,203,204的子挑战：杀怪挑战
	if 0 ~= ScriptLib.AttachChildChallenge(context, 1, 202, 110197, {1,12,1},{},{success=0,fail=0})
	 then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : challenge_202")
		return -1
	end
	if 0 ~= ScriptLib.AttachChildChallenge(context, 1, 203, 110198, {1,13,1},{},{success=0,fail=0})
	
	 then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : challenge_203")
		return -1
	end
	if false ~= ScriptLib.IsEffigyChallengeConditionSelected(context, 123) then
		if 0 ~= ScriptLib.AttachChildChallenge(context, 1, 204, 110199, {1,14,3},{},{success=0,fail=0})
	
	 then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : challenge_204")
			return -1
		end
	else
		if 0 ~= ScriptLib.AttachChildChallenge(context, 1, 204, 110199, {1,14,2},{},{success=0,fail=0})
	
	 then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : challenge_204")
			return -1
		end
	end
	
	-- 创建编号为201的子挑战：限时积分.如果没有选择不会开启
	
	if 0 ~= challenge_time then
		if false ~= ScriptLib.IsEffigyChallengeConditionSelected(context, 123) then
			if 0 ~= ScriptLib.AttachChildChallenge(context, 1, 201, 110196, {challenge_time,3,11,5},{},{success=0,fail=0}) then
				return -1
			end
		else
			if 0 ~= ScriptLib.AttachChildChallenge(context, 1, 201, 110196, {challenge_time,3,11,4},{},{success=0,fail=0}) then
				return -1
			end
		end
	else
		ScriptLib.AddExtraGroupSuite(context, 240043001, 11)
	end
	
	-- 开始父挑战
	if 0 ~= ScriptLib.StartFatherChallenge(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : father_challenge")
		return -1
	end
	
	LF_Create_Boss(context)
	
	--  刷纯水精灵
	ScriptLib.CreateEffigyChallengeMonster(context, 240043001, {15012})
	
	-- 卸载回血gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240043001, EntityType.GADGET, 1019 ) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1011(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	
	local ret = 0
	
	for i,v in ipairs(uid_list) do
		local is_all_dead = ScriptLib.IsPlayerAllAvatarDie(context, v)
		if true ~= is_all_dead then
			ret = -1
			break
		end
	end
	
	if ret ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_1011(context, evt)
	-- 终止识别id为1的挑战，并判定失败
		ScriptLib.StopChallenge(context, 1, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240043001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1013(context, evt)
	-- 将本组内变量名为 "IS_IN_LIMIT_TIME" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_IN_LIMIT_TIME", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1014(context, evt)
	-- 终止识别id为1的挑战，并判定成功
		ScriptLib.StopChallenge(context, 1, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1015(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240043001, 11)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1016(context, evt)
	-- 终止识别id为1的挑战，并判定成功
		ScriptLib.StopChallenge(context, 1, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1017(context, evt)
	--判断死亡怪物的configid是否为 1046
	if evt.param1 ~= 1046 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1017(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	--  刷龙蜥
	ScriptLib.CreateEffigyChallengeMonster(context, 240043001, {15011})
	
	-- 针对当前group内变量名为 "challenge_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "challenge_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1018(context, evt)
	if 1047 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1018(context, evt)
	--  刷傀儡
	if false ~= ScriptLib.IsEffigyChallengeConditionSelected(context, 123) then
		ScriptLib.CreateEffigyChallengeMonster(context, 240043001, {15013,15014,15015})
	else
		ScriptLib.CreateEffigyChallengeMonster(context, 240043001, {15013,15014})
	end
	
	-- 针对当前group内变量名为 "challenge_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "challenge_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240043001, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challenge_count"为1
	if ScriptLib.GetGroupVariableValue(context, "challenge_count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1044(context, evt)
	-- 将本组内变量名为 "challenge_count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge_count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1045(context, evt)
	-- 针对当前group内变量名为 "challenge_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "challenge_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

require "V1_6/Oceanid_Boss_1_6"