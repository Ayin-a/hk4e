-- 基础信息
local base_info = {
	group_id = 240509007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 25010201, pos = { x = -4.284, y = 0.222, z = -11.158 }, rot = { x = 0.000, y = 359.074, z = 0.000 }, level = 1 },
	{ config_id = 7002, monster_id = 25010201, pos = { x = -11.820, y = 0.222, z = -5.066 }, rot = { x = 0.000, y = 62.293, z = 0.000 }, level = 1 },
	{ config_id = 7003, monster_id = 25010701, pos = { x = -5.884, y = 0.222, z = -6.450 }, rot = { x = 0.000, y = 21.126, z = 0.000 }, level = 1 },
	{ config_id = 7004, monster_id = 25010301, pos = { x = 6.659, y = 0.222, z = -8.253 }, rot = { x = 0.000, y = 282.468, z = 0.000 }, level = 1 },
	{ config_id = 7005, monster_id = 25010401, pos = { x = 9.757, y = 0.222, z = -1.816 }, rot = { x = 0.000, y = 278.040, z = 0.000 }, level = 1 },
	{ config_id = 7006, monster_id = 25010201, pos = { x = 6.374, y = 0.222, z = 0.013 }, rot = { x = 0.000, y = 76.759, z = 0.000 }, level = 1 },
	{ config_id = 7007, monster_id = 25010201, pos = { x = 4.912, y = 0.222, z = -12.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7008, monster_id = 25070101, pos = { x = 5.425, y = 0.222, z = -5.191 }, rot = { x = 0.000, y = 304.077, z = 0.000 }, level = 1 },
	{ config_id = 7009, monster_id = 25010401, pos = { x = 7.014, y = 0.222, z = 7.487 }, rot = { x = 0.000, y = 250.070, z = 0.000 }, level = 1 },
	{ config_id = 7010, monster_id = 25010301, pos = { x = -1.729, y = 0.222, z = 9.376 }, rot = { x = 0.000, y = 115.476, z = 0.000 }, level = 1 },
	{ config_id = 7011, monster_id = 25010401, pos = { x = -5.331, y = 0.222, z = 4.575 }, rot = { x = 0.000, y = 92.841, z = 0.000 }, level = 1 },
	{ config_id = 7012, monster_id = 25010301, pos = { x = 7.355, y = 0.222, z = 11.635 }, rot = { x = 0.000, y = 213.051, z = 0.000 }, level = 1 },
	{ config_id = 7013, monster_id = 25060101, pos = { x = 3.613, y = 0.038, z = 9.824 }, rot = { x = 0.000, y = 192.744, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 7014, monster_id = 25010401, pos = { x = -6.232, y = 0.222, z = -11.328 }, rot = { x = 0.000, y = 45.215, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 7015, monster_id = 25010401, pos = { x = 6.248, y = 0.222, z = -11.280 }, rot = { x = 0.000, y = 337.254, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 7023, monster_id = 23020101, pos = { x = -0.024, y = 0.222, z = -9.719 }, rot = { x = 0.000, y = 1.401, z = 0.000 }, level = 1, affix = { 6105 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7016, gadget_id = 70900205, pos = { x = 7.056, y = -1.237, z = 2.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007019, name = "ANY_MONSTER_LIVE_7019", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7019", action = "action_EVENT_ANY_MONSTER_LIVE_7019" },
	{ config_id = 1007020, name = "MONSTER_TIDE_DIE_7020", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_7020", action = "action_EVENT_MONSTER_TIDE_DIE_7020" },
	{ config_id = 1007021, name = "CHALLENGE_SUCCESS_7021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7021" },
	{ config_id = 1007022, name = "CHALLENGE_FAIL_7022", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7022" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false }
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
		gadgets = { 7016 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_7019", "MONSTER_TIDE_DIE_7020", "CHALLENGE_SUCCESS_7021", "CHALLENGE_FAIL_7022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 7016 },
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
function condition_EVENT_ANY_MONSTER_LIVE_7019(context, evt)
	if 7001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7019(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 300, 240509007, 16, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_7020(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_7020(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7023, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7014, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7015, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7021(context, evt)
	-- 改变指定group组240509001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240509001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240509001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240509001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7022(context, evt)
	-- 改变指定group组240509002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240509002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240509002, 2001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240509001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240509001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240509001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240509001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240509007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end