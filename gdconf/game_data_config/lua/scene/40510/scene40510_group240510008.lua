-- 基础信息
local base_info = {
	group_id = 240510008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 25010701, pos = { x = 9.856, y = 0.101, z = -8.269 }, rot = { x = 0.000, y = 312.855, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8002, monster_id = 25010701, pos = { x = -11.836, y = 0.101, z = -7.785 }, rot = { x = 0.000, y = 52.206, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8003, monster_id = 25010201, pos = { x = -5.786, y = 0.101, z = -8.696 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8004, monster_id = 25010201, pos = { x = 5.155, y = 0.101, z = -9.110 }, rot = { x = 0.000, y = 339.539, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8005, monster_id = 25070101, pos = { x = -0.093, y = 0.101, z = -11.301 }, rot = { x = 0.000, y = 358.677, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 8006, monster_id = 25010301, pos = { x = -11.123, y = 0.101, z = -6.941 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8007, monster_id = 25010301, pos = { x = 11.954, y = 0.101, z = -6.643 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8008, monster_id = 23020101, pos = { x = 1.032, y = 0.101, z = 8.759 }, rot = { x = 0.000, y = 182.789, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 8009, monster_id = 25010501, pos = { x = 4.555, y = 0.101, z = -13.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8010, monster_id = 25010501, pos = { x = -5.709, y = 0.101, z = -13.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8011, monster_id = 25060101, pos = { x = 12.857, y = 0.101, z = 2.838 }, rot = { x = 0.000, y = 254.800, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8012, monster_id = 25060101, pos = { x = 12.444, y = -0.097, z = -1.861 }, rot = { x = 0.000, y = 280.700, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8013, monster_id = 25010501, pos = { x = -13.728, y = 0.101, z = 1.299 }, rot = { x = 0.000, y = 115.632, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8014, monster_id = 25010501, pos = { x = -12.152, y = 0.101, z = -3.956 }, rot = { x = 0.000, y = 50.168, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8015, monster_id = 25030201, pos = { x = 0.029, y = 0.101, z = 13.758 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8016, monster_id = 25010701, pos = { x = -6.799, y = 0.101, z = 6.378 }, rot = { x = 0.000, y = 126.363, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8017, monster_id = 25010701, pos = { x = 9.903, y = -0.020, z = 10.140 }, rot = { x = 0.000, y = 211.932, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8018, monster_id = 25010301, pos = { x = -10.954, y = -0.020, z = -10.055 }, rot = { x = 0.000, y = 29.419, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8019, monster_id = 25010301, pos = { x = 6.171, y = -0.020, z = -16.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 8030, monster_id = 23030102, pos = { x = -0.251, y = -0.020, z = -9.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006, 9002 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8032, gadget_id = 70900205, pos = { x = 7.067, y = -1.358, z = 4.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008033, name = "ANY_MONSTER_LIVE_8033", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_8033", action = "action_EVENT_ANY_MONSTER_LIVE_8033" },
	{ config_id = 1008034, name = "CHALLENGE_SUCCESS_8034", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8034" },
	{ config_id = 1008035, name = "CHALLENGE_FAIL_8035", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8035" }
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
		gadgets = { 8032 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_8033", "CHALLENGE_SUCCESS_8034", "CHALLENGE_FAIL_8035" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 8032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 8032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 8032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 8032 },
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
function condition_EVENT_ANY_MONSTER_LIVE_8033(context, evt)
	if 8001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_8033(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为4的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 4, 240510008, 20, 60, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8034(context, evt)
	-- 改变指定group组240510011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240510011, 11001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240510011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240510011, 11001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 8031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组240510010中， configid为10001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240510010, 10001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240510010中， configid为10002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240510010, 10002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8035(context, evt)
	-- 改变指定group组240510011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240510011, 11001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240510011, 11001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240510010中， configid为10001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240510010, 10001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240510010中， configid为10002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240510010, 10002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240510008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end