-- 基础信息
local base_info = {
	group_id = 234100003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010201, pos = { x = 6.044, y = 0.013, z = -5.001 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1 },
	{ config_id = 3002, monster_id = 21010201, pos = { x = -7.231, y = 0.013, z = -5.014 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 21010301, pos = { x = -4.697, y = 0.013, z = -6.519 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1 },
	{ config_id = 3004, monster_id = 21010301, pos = { x = 0.073, y = 0.013, z = -6.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 21010301, pos = { x = 3.869, y = 0.013, z = -4.873 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 21010401, pos = { x = 7.789, y = 0.013, z = 10.278 }, rot = { x = 0.000, y = 226.620, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 21010401, pos = { x = 11.861, y = 0.013, z = -10.088 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1 },
	{ config_id = 3008, monster_id = 21010201, pos = { x = 1.910, y = 0.013, z = 7.384 }, rot = { x = 0.000, y = 182.789, z = 0.000 }, level = 1 },
	{ config_id = 3009, monster_id = 21010201, pos = { x = -2.595, y = 0.013, z = 5.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, monster_id = 21010301, pos = { x = -5.636, y = 0.013, z = 2.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, monster_id = 21010301, pos = { x = 5.681, y = 0.013, z = 2.675 }, rot = { x = 0.000, y = 234.100, z = 0.000 }, level = 1 },
	{ config_id = 3012, monster_id = 21010301, pos = { x = 5.609, y = 0.013, z = -2.350 }, rot = { x = 0.000, y = 322.134, z = 0.000 }, level = 1 },
	{ config_id = 3013, monster_id = 21010301, pos = { x = -2.791, y = 0.127, z = -3.739 }, rot = { x = 0.000, y = 20.514, z = 0.000 }, level = 1 },
	{ config_id = 3014, monster_id = 21010601, pos = { x = -4.483, y = 0.013, z = 4.320 }, rot = { x = 0.000, y = 50.168, z = 0.000 }, level = 1 },
	{ config_id = 3015, monster_id = 21010601, pos = { x = -0.945, y = 0.013, z = 6.951 }, rot = { x = 0.000, y = 126.700, z = 0.000 }, level = 1 },
	{ config_id = 3016, monster_id = 21010201, pos = { x = -4.078, y = 0.013, z = 5.680 }, rot = { x = 0.000, y = 101.360, z = 0.000 }, level = 1 },
	{ config_id = 3017, monster_id = 21010201, pos = { x = 4.944, y = 0.013, z = 5.399 }, rot = { x = 0.000, y = 274.510, z = 0.000 }, level = 1 },
	{ config_id = 3018, monster_id = 21010301, pos = { x = -8.624, y = 0.013, z = 1.538 }, rot = { x = 0.000, y = 133.400, z = 0.000 }, level = 1 },
	{ config_id = 3019, monster_id = 21010301, pos = { x = -3.234, y = 0.013, z = 8.398 }, rot = { x = 0.000, y = 203.110, z = 0.000 }, level = 1 },
	{ config_id = 3021, monster_id = 21020201, pos = { x = -3.233, y = 0.013, z = -14.822 }, rot = { x = 0.000, y = 20.730, z = 0.000 }, level = 1 },
	{ config_id = 3022, monster_id = 21020101, pos = { x = 5.799, y = 0.013, z = -14.160 }, rot = { x = 0.000, y = 343.882, z = 0.000 }, level = 1 },
	{ config_id = 3023, monster_id = 21010301, pos = { x = 4.361, y = 0.013, z = 7.671 }, rot = { x = 0.000, y = 230.800, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3024, gadget_id = 70900205, pos = { x = 6.041, y = -1.446, z = 3.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003025, name = "MONSTER_TIDE_DIE_3025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_3025", action = "action_EVENT_MONSTER_TIDE_DIE_3025" },
	{ config_id = 1003026, name = "CHALLENGE_FAIL_3026", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3026" },
	{ config_id = 1003027, name = "ANY_MONSTER_LIVE_3027", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3027", action = "action_EVENT_ANY_MONSTER_LIVE_3027" },
	{ config_id = 1003028, name = "CHALLENGE_SUCCESS_3028", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3028" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1003029, name = "CHALLENGE_FAIL_3029", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3029" }
	}
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
		gadgets = { 3024 },
		regions = { },
		triggers = { "MONSTER_TIDE_DIE_3025", "CHALLENGE_FAIL_3026", "ANY_MONSTER_LIVE_3027", "CHALLENGE_SUCCESS_3028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_3025(context, evt)
	if 20 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_3025(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3021, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3022, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234100003, suite = 1 }) then
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3027(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3027(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1000的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1000, 300, 234100003, 22, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 爬塔三星计时（is_stop:  0:开始计时、1:暂停计时）
	if 0 ~= ScriptLib.TowerCountTimeStatus(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_time_status")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3028(context, evt)
	-- 改变指定group组234100001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234100001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 爬塔三星计时（is_stop:  0:开始计时、1:暂停计时）
	if 0 ~= ScriptLib.TowerCountTimeStatus(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_time_status")
		return -1
	end
	
	return 0
end