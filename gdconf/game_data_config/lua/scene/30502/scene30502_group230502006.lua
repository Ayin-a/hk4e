-- 基础信息
local base_info = {
	group_id = 230502006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 25010201, pos = { x = 6.318, y = 0.034, z = -5.019 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1 },
	{ config_id = 6002, monster_id = 25010301, pos = { x = -6.957, y = 0.034, z = -5.032 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1 },
	{ config_id = 6003, monster_id = 25010501, pos = { x = -6.538, y = 0.034, z = -9.942 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1 },
	{ config_id = 6004, monster_id = 25030201, pos = { x = -0.004, y = 0.034, z = -11.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6005, monster_id = 25060101, pos = { x = 7.877, y = 0.034, z = -11.737 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1 },
	{ config_id = 6006, monster_id = 25060101, pos = { x = -11.207, y = 0.034, z = -1.136 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1 },
	{ config_id = 6007, monster_id = 25020201, pos = { x = 11.870, y = 0.034, z = -0.838 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1 },
	{ config_id = 6008, monster_id = 25010701, pos = { x = 1.460, y = 0.034, z = 9.847 }, rot = { x = 0.000, y = 182.789, z = 0.000 }, level = 1 },
	{ config_id = 6009, monster_id = 25070101, pos = { x = 4.471, y = 0.034, z = -7.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6010, monster_id = 25070101, pos = { x = -5.793, y = 0.034, z = -7.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6011, monster_id = 25020201, pos = { x = 10.565, y = 0.034, z = 5.770 }, rot = { x = 0.000, y = 234.100, z = 0.000 }, level = 1 },
	{ config_id = 6012, monster_id = 25030301, pos = { x = 11.595, y = 0.034, z = -8.136 }, rot = { x = 0.000, y = 322.134, z = 0.000 }, level = 1 },
	{ config_id = 6013, monster_id = 25010201, pos = { x = -0.439, y = 0.034, z = -10.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6014, monster_id = 25010201, pos = { x = -12.903, y = 0.034, z = -5.201 }, rot = { x = 0.000, y = 50.168, z = 0.000 }, level = 1 },
	{ config_id = 6015, monster_id = 25020201, pos = { x = -9.840, y = 0.034, z = 5.467 }, rot = { x = 0.000, y = 126.700, z = 0.000 }, level = 1 },
	{ config_id = 6016, monster_id = 25030201, pos = { x = -11.460, y = 0.034, z = 1.695 }, rot = { x = 0.000, y = 101.360, z = 0.000 }, level = 1 },
	{ config_id = 6017, monster_id = 25010301, pos = { x = 9.560, y = 0.034, z = -0.811 }, rot = { x = 0.000, y = 274.510, z = 0.000 }, level = 1 },
	{ config_id = 6018, monster_id = 25010501, pos = { x = -8.035, y = 0.034, z = 6.303 }, rot = { x = 0.000, y = 133.400, z = 0.000 }, level = 1 },
	{ config_id = 6019, monster_id = 25010701, pos = { x = 5.074, y = 0.034, z = 9.171 }, rot = { x = 0.000, y = 203.110, z = 0.000 }, level = 1 },
	{ config_id = 6020, monster_id = 25030301, pos = { x = 0.207, y = 0.034, z = -8.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6021, monster_id = 25030201, pos = { x = -7.695, y = 0.034, z = -6.703 }, rot = { x = 0.000, y = 43.800, z = 0.000 }, level = 1 },
	{ config_id = 6022, monster_id = 25010701, pos = { x = 7.267, y = 0.034, z = -6.078 }, rot = { x = 0.000, y = 320.900, z = 0.000 }, level = 1 },
	{ config_id = 6023, monster_id = 25070101, pos = { x = 8.370, y = 0.034, z = 5.896 }, rot = { x = 0.000, y = 230.800, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6024, gadget_id = 70900205, pos = { x = 6.316, y = -1.425, z = 3.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006025, name = "MONSTER_TIDE_OVER_6025", event = EventType.EVENT_MONSTER_TIDE_OVER, source = "1", condition = "", action = "action_EVENT_MONSTER_TIDE_OVER_6025" },
	{ config_id = 1006026, name = "ANY_MONSTER_LIVE_6026", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6026", action = "action_EVENT_ANY_MONSTER_LIVE_6026" },
	{ config_id = 1006027, name = "CHALLENGE_SUCCESS_6027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6027" },
	{ config_id = 1006028, name = "CHALLENGE_FAIL_6028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6028" }
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
		gadgets = { 6024 },
		regions = { },
		triggers = { "MONSTER_TIDE_OVER_6025", "ANY_MONSTER_LIVE_6026", "CHALLENGE_SUCCESS_6027", "CHALLENGE_FAIL_6028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_TIDE_OVER_6025(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6020, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6021, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6022, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6026(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6026(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1042的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1042, 300, 230502006, 23, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
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
function action_EVENT_CHALLENGE_SUCCESS_6027(context, evt)
	-- 改变指定group组230502004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230502004, 4002, GadgetState.GearStart) then
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

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6028(context, evt)
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end