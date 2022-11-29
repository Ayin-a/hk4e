-- 基础信息
local base_info = {
	group_id = 240602005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 20010801, pos = { x = 9.921, y = 0.140, z = -8.276 }, rot = { x = 0.000, y = 312.855, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5002, monster_id = 20010801, pos = { x = -11.771, y = 0.140, z = -7.791 }, rot = { x = 0.000, y = 52.206, z = 0.000 }, level = 1 },
	{ config_id = 5003, monster_id = 20010801, pos = { x = -5.721, y = 0.140, z = -8.703 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5004, monster_id = 20010801, pos = { x = 5.220, y = 0.140, z = -9.117 }, rot = { x = 0.000, y = 339.539, z = 0.000 }, level = 1 },
	{ config_id = 5008, monster_id = 20010901, pos = { x = 1.097, y = 0.140, z = 8.753 }, rot = { x = 0.000, y = 182.789, z = 0.000 }, level = 1 },
	{ config_id = 5009, monster_id = 20010801, pos = { x = 5.288, y = 0.140, z = -6.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5010, monster_id = 20010801, pos = { x = -4.976, y = 0.140, z = -6.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5011, monster_id = 20010801, pos = { x = 12.922, y = 0.140, z = 2.831 }, rot = { x = 0.000, y = 254.800, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5012, monster_id = 20010801, pos = { x = 12.509, y = -0.058, z = -1.868 }, rot = { x = 0.000, y = 280.700, z = 0.000 }, level = 1 },
	{ config_id = 5013, monster_id = 20010901, pos = { x = -13.663, y = 0.140, z = 1.292 }, rot = { x = 0.000, y = 115.632, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5014, monster_id = 20010801, pos = { x = -12.087, y = 0.140, z = -3.962 }, rot = { x = 0.000, y = 50.168, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5015, monster_id = 20010801, pos = { x = 0.094, y = 0.140, z = 13.752 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5016, monster_id = 20010801, pos = { x = -0.481, y = 0.140, z = -13.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5018, monster_id = 20010901, pos = { x = 14.527, y = 0.019, z = -5.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5019, monster_id = 20010901, pos = { x = 8.213, y = 0.019, z = -3.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5034, monster_id = 20010801, pos = { x = 11.444, y = 0.140, z = 6.180 }, rot = { x = 0.000, y = 246.300, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5035, monster_id = 20010801, pos = { x = -15.664, y = 0.019, z = -6.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5036, monster_id = 22010202, pos = { x = -6.953, y = 0.019, z = -1.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5037, monster_id = 20010801, pos = { x = 9.865, y = 0.019, z = -10.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5038, monster_id = 20010801, pos = { x = -9.064, y = 0.019, z = -9.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5017, gadget_id = 70350035, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5023, gadget_id = 70900205, pos = { x = 7.132, y = -1.319, z = 4.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005025, name = "ANY_MONSTER_LIVE_5025", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5025", action = "action_EVENT_ANY_MONSTER_LIVE_5025" },
	{ config_id = 1005029, name = "CHALLENGE_SUCCESS_5029", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5029" },
	{ config_id = 1005030, name = "CHALLENGE_FAIL_5030", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5030" }
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
		gadgets = { 5017, 5023 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5025", "CHALLENGE_SUCCESS_5029", "CHALLENGE_FAIL_5030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 5017, 5023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 5017, 5023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 5017, 5023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 5017, 5023 },
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
function condition_EVENT_ANY_MONSTER_LIVE_5025(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5025(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 188, 240602005, 20, 5017, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5029(context, evt)
	-- 改变指定group组240602007中， configid为7002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602007, 7002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240602007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602007, 7001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组240602008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602008, 8001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5030(context, evt)
	-- 改变指定group组240602008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602008, 8001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240602005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240602008, 8001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240602007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602007, 7001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240602007中， configid为7002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602007, 7002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end