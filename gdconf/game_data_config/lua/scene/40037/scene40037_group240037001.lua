-- 基础信息
local base_info = {
	group_id = 240037001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70950042, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 44000006, pos = { x = 0.000, y = 0.000, z = 14.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70360010, pos = { x = 0.000, y = 0.125, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001003, name = "GADGET_STATE_CHANGE_1003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1003", action = "action_EVENT_GADGET_STATE_CHANGE_1003", trigger_count = 0 },
	{ config_id = 1001004, name = "DUNGEON_ALL_AVATAR_DIE_1004", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1004", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_1004", trigger_count = 0 },
	{ config_id = 1001005, name = "CHALLENGE_FAIL_1005", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1005", trigger_count = 0 },
	{ config_id = 1001006, name = "CHALLENGE_SUCCESS_1006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "202", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1006", trigger_count = 0 },
	{ config_id = 1001007, name = "CHALLENGE_SUCCESS_1007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "202", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1007", trigger_count = 0 },
	{ config_id = 1001008, name = "CHALLENGE_FAIL_1008", event = EventType.EVENT_CHALLENGE_FAIL, source = "202", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1008", trigger_count = 0 },
	{ config_id = 1001009, name = "CHALLENGE_SUCCESS_1009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "201", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1009", trigger_count = 0 },
	{ config_id = 1001013, name = "GADGET_CREATE_1013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1013", action = "action_EVENT_GADGET_CREATE_1013", trigger_count = 0 },
	{ config_id = 1001014, name = "SELECT_OPTION_1014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1014", action = "action_EVENT_SELECT_OPTION_1014", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 1002, pos = { x = -0.011, y = -0.102, z = -10.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IS_IN_LIMIT_TIME", value = 0, no_refresh = false }
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
		gadgets = { 1001, 1010, 1012 },
		regions = { },
		triggers = { "GADGET_CREATE_1013", "SELECT_OPTION_1014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1003", "DUNGEON_ALL_AVATAR_DIE_1004", "CHALLENGE_FAIL_1005", "CHALLENGE_SUCCESS_1006", "CHALLENGE_SUCCESS_1007", "CHALLENGE_FAIL_1008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_1009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1003(context, evt)
	if 1012 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1003(context, evt)
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
	if 0 ~= ScriptLib.AttachChildChallenge(context, 1, 201, 110190, {240037001,1},{},{success=0,fail=0}) then
		return -1
	end
	
	-- 创建编号为202的子挑战：限时积分.如果没有选择不会开启
	
	if 0 ~= challenge_time then
		ScriptLib.AttachChildChallenge(context, 1, 202, 110191, {challenge_time,240037001,1},{},{success=0,fail=0})
	else
		ScriptLib.AddExtraGroupSuite(context, 240037001, 3)
	end
	
	-- 开始父挑战
	if 0 ~= ScriptLib.StartFatherChallenge(context, 1) then
		return -1
	end
	
	--  刷怪
	ScriptLib.CreateEffigyChallengeMonster(context, 240037001, {15007})
	
	-- 卸载回血gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240037001, EntityType.GADGET, 1010 ) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1004(context, evt)
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
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_1004(context, evt)
	-- 终止识别id为1的挑战，并判定失败
		ScriptLib.StopChallenge(context, 1, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240037001, suite = 1 }) then
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
function action_EVENT_CHALLENGE_SUCCESS_1006(context, evt)
	-- 将本组内变量名为 "IS_IN_LIMIT_TIME" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_IN_LIMIT_TIME", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1007(context, evt)
	-- 终止识别id为1的挑战，并判定成功
		ScriptLib.StopChallenge(context, 1, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240037001, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1009(context, evt)
	-- 终止识别id为1的挑战，并判定成功
		ScriptLib.StopChallenge(context, 1, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1013(context, evt)
	if 1012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1014(context, evt)
	-- 判断是gadgetid 1012 option_id 175
	if 1012 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240037001, 2)
	
	-- 删除指定group： 240037001 ；指定config：1012；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240037001, 1012, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end