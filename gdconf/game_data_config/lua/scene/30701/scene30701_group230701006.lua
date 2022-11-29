-- 基础信息
local base_info = {
	group_id = 230701006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 21010201, pos = { x = 9.986, y = 0.432, z = 6.966 }, rot = { x = 0.000, y = 228.330, z = 0.000 }, level = 1 },
	{ config_id = 6002, monster_id = 21010201, pos = { x = -9.466, y = 0.432, z = 6.626 }, rot = { x = 0.000, y = 137.300, z = 0.000 }, level = 1 },
	{ config_id = 6003, monster_id = 21010201, pos = { x = -7.620, y = 0.432, z = -7.779 }, rot = { x = 0.000, y = 51.500, z = 0.000 }, level = 1 },
	{ config_id = 6004, monster_id = 21010501, pos = { x = 9.840, y = 0.432, z = 0.100 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 6005, monster_id = 21010301, pos = { x = 7.547, y = 0.432, z = -7.648 }, rot = { x = 0.000, y = 312.400, z = 0.000 }, level = 1 },
	{ config_id = 6006, monster_id = 21010301, pos = { x = 4.108, y = 0.432, z = 11.316 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6007, monster_id = 20011103, pos = { x = 0.039, y = 0.432, z = -9.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6009, monster_id = 21010301, pos = { x = -4.557, y = 0.432, z = 11.480 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6010, monster_id = 20011103, pos = { x = -0.030, y = 0.432, z = 10.314 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6021, monster_id = 21010501, pos = { x = -9.924, y = 0.432, z = 0.076 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6008, gadget_id = 70900205, pos = { x = 6.654, y = -1.027, z = 2.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006016, name = "ANY_MONSTER_LIVE_6016", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6016", action = "action_EVENT_ANY_MONSTER_LIVE_6016" },
	{ config_id = 1006019, name = "CHALLENGE_SUCCESS_6019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6019" },
	{ config_id = 1006020, name = "CHALLENGE_FAIL_6020", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6020" }
}

-- 变量
variables = {
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
		gadgets = { 6008 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6016", "CHALLENGE_SUCCESS_6019", "CHALLENGE_FAIL_6020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6016(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6016(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为197的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 230701006, 30, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6019(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 230701004) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
	      return -1
	    end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 230701004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组230701005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230701005, 5001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 230701005, 5001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组230701004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230701004, 4001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组230701006中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230701006, 8001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组230701006中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230701006, 8002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6020(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230701006, suite = 1 }) then
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