-- 基础信息
local base_info = {
	group_id = 240605010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 24010201, pos = { x = -0.340, y = 0.263, z = -10.133 }, rot = { x = 0.000, y = 3.755, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true, pose_id = 100 },
	{ config_id = 10002, monster_id = 21010201, pos = { x = -9.080, y = 0.263, z = -7.961 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 10003, monster_id = 21010201, pos = { x = 9.841, y = 0.263, z = -8.310 }, rot = { x = 0.000, y = 334.006, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 10008, monster_id = 22010204, pos = { x = 5.245, y = 0.350, z = -8.147 }, rot = { x = 0.000, y = 358.244, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 10009, monster_id = 22010202, pos = { x = -6.947, y = 0.350, z = -8.461 }, rot = { x = 0.000, y = 13.429, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10004, gadget_id = 70900205, pos = { x = 6.081, y = -1.196, z = 3.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010005, name = "ANY_MONSTER_LIVE_10005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_10005", action = "action_EVENT_ANY_MONSTER_LIVE_10005" },
	{ config_id = 1010006, name = "CHALLENGE_SUCCESS_10006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10006" },
	{ config_id = 1010007, name = "CHALLENGE_FAIL_10007", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10007" },
	{ config_id = 1010010, name = "ANY_MONSTER_DIE_10010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10010", action = "action_EVENT_ANY_MONSTER_DIE_10010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 10004 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_10005", "CHALLENGE_SUCCESS_10006", "CHALLENGE_FAIL_10007", "ANY_MONSTER_DIE_10010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_10005(context, evt)
	if 10001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_10005(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1000的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1000, 420, 240605010, 5, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10006(context, evt)
	-- 改变指定group组240605008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240605008, 8002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240605008中， configid为8003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240605008, 8003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240605008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240605008, 8001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10007(context, evt)
	-- 改变指定group组240605009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240605009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240605009, 9001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240605008中， configid为8003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240605008, 8003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240605010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10010(context, evt)
	if 10001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10010(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10008, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10009, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end