-- 基础信息
local base_info = {
	group_id = 234103003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010201, pos = { x = 6.095, y = 0.325, z = -5.001 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1 },
	{ config_id = 3002, monster_id = 21010201, pos = { x = -7.180, y = 0.325, z = -5.014 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3003, monster_id = 20011001, pos = { x = -4.646, y = 0.325, z = -6.518 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1 },
	{ config_id = 3004, monster_id = 20011001, pos = { x = 0.124, y = 0.325, z = -6.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 20011001, pos = { x = 3.920, y = 0.325, z = -4.873 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3006, monster_id = 21010701, pos = { x = -12.293, y = 0.325, z = -3.802 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3007, monster_id = 21010701, pos = { x = 10.326, y = 0.325, z = -4.016 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3008, monster_id = 20011001, pos = { x = 1.961, y = 0.325, z = 7.384 }, rot = { x = 0.000, y = 182.789, z = 0.000 }, level = 1 },
	{ config_id = 3009, monster_id = 20011001, pos = { x = -2.544, y = 0.325, z = 5.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, monster_id = 20011001, pos = { x = -5.585, y = 0.325, z = 2.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3011, monster_id = 21010901, pos = { x = 10.065, y = 0.325, z = 3.900 }, rot = { x = 0.000, y = 234.100, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3012, monster_id = 20011001, pos = { x = 5.660, y = 0.325, z = -2.349 }, rot = { x = 0.000, y = 322.134, z = 0.000 }, level = 1 },
	{ config_id = 3013, monster_id = 20011001, pos = { x = -2.741, y = 0.438, z = -3.738 }, rot = { x = 0.000, y = 20.514, z = 0.000 }, level = 1 },
	{ config_id = 3014, monster_id = 20011001, pos = { x = -4.432, y = 0.325, z = 4.320 }, rot = { x = 0.000, y = 50.168, z = 0.000 }, level = 1 },
	{ config_id = 3015, monster_id = 20011001, pos = { x = -0.894, y = 0.325, z = 6.952 }, rot = { x = 0.000, y = 126.700, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3016, monster_id = 21010201, pos = { x = -4.027, y = 0.325, z = 5.680 }, rot = { x = 0.000, y = 101.360, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3017, monster_id = 21010201, pos = { x = 4.995, y = 0.325, z = 5.400 }, rot = { x = 0.000, y = 274.510, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3018, monster_id = 21010901, pos = { x = -11.700, y = 0.262, z = 3.627 }, rot = { x = 0.000, y = 133.400, z = 0.000 }, level = 1 },
	{ config_id = 3019, monster_id = 20011001, pos = { x = -3.183, y = 0.325, z = 8.399 }, rot = { x = 0.000, y = 203.110, z = 0.000 }, level = 1, affix = { 1031 } },
	-- 泡泡
	{ config_id = 3020, monster_id = 22010301, pos = { x = 5.423, y = 0.325, z = -9.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 6106 } },
	{ config_id = 3021, monster_id = 21020202, pos = { x = -4.617, y = 0.325, z = -10.205 }, rot = { x = 0.000, y = 16.907, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3023, monster_id = 20011001, pos = { x = 4.412, y = 0.325, z = 7.671 }, rot = { x = 0.000, y = 230.800, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3022, gadget_id = 70900205, pos = { x = 6.092, y = -1.135, z = 3.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70350035, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003025, name = "MONSTER_TIDE_DIE_3025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_3025", action = "action_EVENT_MONSTER_TIDE_DIE_3025" },
	{ config_id = 1003026, name = "CHALLENGE_FAIL_3026", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3026" },
	{ config_id = 1003027, name = "ANY_MONSTER_LIVE_3027", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3027", action = "action_EVENT_ANY_MONSTER_LIVE_3027" },
	{ config_id = 1003028, name = "CHALLENGE_SUCCESS_3028", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3028" },
	{ config_id = 1003030, name = "DUNGEON_SETTLE_3030", event = EventType.EVENT_DUNGEON_SETTLE, source = "1", condition = "", action = "action_EVENT_DUNGEON_SETTLE_3030" }
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
		gadgets = { 3022, 3024 },
		regions = { },
		triggers = { "MONSTER_TIDE_DIE_3025", "CHALLENGE_FAIL_3026", "ANY_MONSTER_LIVE_3027", "CHALLENGE_SUCCESS_3028", "DUNGEON_SETTLE_3030" },
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
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3020, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3021, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234103003, suite = 1 }) then
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
	-- 创建编号为1（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 188, 234103003, 22, 3024, 0) then
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
	-- 改变指定group组234103001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234103001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 爬塔三星计时（is_stop:  0:开始计时、1:暂停计时）
	if 0 ~= ScriptLib.TowerCountTimeStatus(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_time_status")
		return -1
	end
	
	-- 改变指定group组234103001中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234103001, 2001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_3030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3024 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end