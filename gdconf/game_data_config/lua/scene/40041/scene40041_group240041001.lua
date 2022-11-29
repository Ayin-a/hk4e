-- 基础信息
local base_info = {
	group_id = 240041001
}

-- DEFS_MISCS
local defs = {
        monster_boss = 1007,
        summon_region_list = {1016,1017,1018}, --region出怪的list
        summon_interval = 15,                        --自动出怪时间
        gadget_operator_list = {1031,1032,1033,1034,1035,1036,1037,1038,1039} --9个锚点
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[1019] = { config_id = 1019, monster_id = 20050702, pos = { x = 12.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	[1020] = { config_id = 1020, monster_id = 20050702, pos = { x = 0.000, y = 0.000, z = -12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1021] = { config_id = 1021, monster_id = 20050202, pos = { x = -12.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1022] = { config_id = 1022, monster_id = 20050202, pos = { x = 0.000, y = 0.000, z = 12.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	[1023] = { config_id = 1023, monster_id = 20050702, pos = { x = 12.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	[1024] = { config_id = 1024, monster_id = 20050702, pos = { x = 0.000, y = 0.000, z = -12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1025] = { config_id = 1025, monster_id = 20050602, pos = { x = -12.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1026] = { config_id = 1026, monster_id = 20050602, pos = { x = 0.000, y = 0.000, z = 12.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	[1027] = { config_id = 1027, monster_id = 20050702, pos = { x = 12.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	[1028] = { config_id = 1028, monster_id = 20050702, pos = { x = 0.000, y = 0.000, z = -12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1029] = { config_id = 1029, monster_id = 20050901, pos = { x = -12.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1030] = { config_id = 1030, monster_id = 20050901, pos = { x = 0.000, y = 0.000, z = 12.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[1001] = { config_id = 1001, gadget_id = 70350013, pos = { x = 0.000, y = 0.000, z = -24.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1002] = { config_id = 1002, gadget_id = 70350013, pos = { x = 0.000, y = 0.000, z = 24.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1003] = { config_id = 1003, gadget_id = 70360010, pos = { x = 0.140, y = 0.129, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1006] = { config_id = 1006, gadget_id = 70380026, pos = { x = 0.000, y = 0.300, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1015] = { config_id = 1015, gadget_id = 44000006, pos = { x = 0.180, y = 0.000, z = 14.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1031] = { config_id = 1031, gadget_id = 70360001, pos = { x = 11.000, y = 0.000, z = -11.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 1 },
	[1032] = { config_id = 1032, gadget_id = 70360001, pos = { x = 0.000, y = 0.000, z = -11.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 2 },
	[1033] = { config_id = 1033, gadget_id = 70360001, pos = { x = -11.000, y = 0.000, z = -11.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 3 },
	[1034] = { config_id = 1034, gadget_id = 70360001, pos = { x = 11.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 4 },
	[1035] = { config_id = 1035, gadget_id = 70360001, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 5 },
	[1036] = { config_id = 1036, gadget_id = 70360001, pos = { x = -11.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 6 },
	[1037] = { config_id = 1037, gadget_id = 70360001, pos = { x = 11.000, y = 0.000, z = 11.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 7 },
	[1038] = { config_id = 1038, gadget_id = 70360001, pos = { x = 0.000, y = 0.000, z = 11.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 8 },
	[1039] = { config_id = 1039, gadget_id = 70360001, pos = { x = -11.000, y = 0.000, z = 11.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 9 },
	[1041] = { config_id = 1041, gadget_id = 42005010, pos = { x = 0.000, y = 0.300, z = -12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1042] = { config_id = 1042, gadget_id = 42005010, pos = { x = -12.000, y = 0.300, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1043] = { config_id = 1043, gadget_id = 42005010, pos = { x = 0.000, y = 0.300, z = 12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[1016] = { config_id = 1016, shape = RegionShape.SPHERE, radius = 5, pos = { x = 0.000, y = 0.300, z = -12.000 } },
	[1017] = { config_id = 1017, shape = RegionShape.SPHERE, radius = 5, pos = { x = -12.000, y = 0.300, z = 0.000 } },
	[1018] = { config_id = 1018, shape = RegionShape.SPHERE, radius = 5, pos = { x = 0.000, y = 0.300, z = 12.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1001004, name = "GADGET_CREATE_1004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1004", action = "action_EVENT_GADGET_CREATE_1004", trigger_count = 0 },
	{ config_id = 1001005, name = "SELECT_OPTION_1005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1005", action = "action_EVENT_SELECT_OPTION_1005", trigger_count = 0 },
	{ config_id = 1001008, name = "CHALLENGE_SUCCESS_1008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "201", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1008", trigger_count = 0 },
	{ config_id = 1001009, name = "GADGET_STATE_CHANGE_1009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1009", action = "", trigger_count = 0 },
	{ config_id = 1001010, name = "DUNGEON_ALL_AVATAR_DIE_1010", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1010", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_1010", trigger_count = 0 },
	{ config_id = 1001011, name = "CHALLENGE_FAIL_1011", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1011", trigger_count = 0 },
	{ config_id = 1001012, name = "CHALLENGE_SUCCESS_1012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "202", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1012", trigger_count = 0 },
	{ config_id = 1001013, name = "CHALLENGE_SUCCESS_1013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "202", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1013", trigger_count = 0 },
	{ config_id = 1001014, name = "CHALLENGE_FAIL_1014", event = EventType.EVENT_CHALLENGE_FAIL, source = "202", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1014", trigger_count = 0 },
	{ config_id = 1001040, name = "ANY_MONSTER_DIE_1040", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1040", action = "", tag = "10" }
}

-- 点位
points = {
	{ config_id = 1007, pos = { x = 0.133, y = 0.010, z = -12.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IS_IN_LIMIT_TIME", value = 0, no_refresh = false }
}

-- 视野组
sight_groups = {
	{ 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030 }
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
		gadgets = { 1001, 1002, 1003, 1006, 1015 },
		regions = { },
		triggers = { "GADGET_CREATE_1004", "SELECT_OPTION_1005", "DUNGEON_ALL_AVATAR_DIE_1010", "CHALLENGE_FAIL_1011", "CHALLENGE_SUCCESS_1012", "CHALLENGE_SUCCESS_1013", "CHALLENGE_FAIL_1014", "ANY_MONSTER_DIE_1040" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039 },
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
		monsters = { 1019, 1020, 1021, 1022 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 1023, 1024, 1025, 1026 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 1027, 1028, 1029, 1030 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 1041 },
		regions = { 1016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 1042 },
		regions = { 1017 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 1043 },
		regions = { 1018 },
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
		triggers = { "CHALLENGE_SUCCESS_1008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1004(context, evt)
	if 1003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240041001, 1003, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1005(context, evt)
	-- 判断是gadgetid 1003 option_id 175
	if 1003 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1005(context, evt)
	-- 删除指定group： 240041001 ；指定config：1003；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240041001, 1003, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- 初始化时间变量
	local challenge_time = 0
	
	if -1 ~= ScriptLib.GetEffigyChallengeLimitTime(context) then
		challenge_time = ScriptLib.GetEffigyChallengeLimitTime(context)
	end
	
	-- 创建编号为110187父挑战，indexID为1
	if 0 ~= ScriptLib.CreateFatherChallenge(context, 1, 110187, 999999, {success = 1, fail = 1, fail_on_wipe=false}) then
		return -1
	end
	
	-- 创建编号为201的子挑战：杀怪挑战
	if 0 ~= ScriptLib.AttachChildChallenge(context, 1, 201, 110192, {1,10,1},{},{success=0,fail=0}) then
		return -1
	end
	
	-- 创建编号为202的子挑战：限时积分.如果没有选择不会开启
	
	if 0 ~= challenge_time then
		ScriptLib.AttachChildChallenge(context, 1, 202, 110193, {challenge_time,1,10,1},{},{success=0,fail=0})
	else
		ScriptLib.AddExtraGroupSuite(context, 240041001, 11)
	end
	
	-- 开始父挑战
	if 0 ~= ScriptLib.StartFatherChallenge(context, 1) then
		return -1
	end
	
	
	LF_Create_Boss(context)
	
	--  刷怪
	ScriptLib.CreateEffigyChallengeMonster(context, 240041001, {15009})
	
	-- 卸载回血gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240041001, EntityType.GADGET, 1015 ) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1008(context, evt)
	-- 终止识别id为1的挑战，并判定成功
		ScriptLib.StopChallenge(context, 1, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1009(context, evt)
	if 1003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1010(context, evt)
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
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_1010(context, evt)
	-- 终止识别id为1的挑战，并判定失败
		ScriptLib.StopChallenge(context, 1, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240041001, suite = 1 }) then
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
function action_EVENT_CHALLENGE_SUCCESS_1012(context, evt)
	-- 将本组内变量名为 "IS_IN_LIMIT_TIME" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_IN_LIMIT_TIME", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1013(context, evt)
	-- 终止识别id为1的挑战，并判定成功
		ScriptLib.StopChallenge(context, 1, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1014(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240041001, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1040(context, evt)
	if 1007 ~= evt.param1 then
		return false
	end
	
	return true
end

require "V1_6/Oceanid_Boss_1_6"