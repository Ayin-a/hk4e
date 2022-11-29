-- 基础信息
local base_info = {
	group_id = 240606011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 21010201, pos = { x = 3.322, y = 0.101, z = -16.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11002, monster_id = 21010201, pos = { x = -3.630, y = 0.101, z = -16.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 11003, monster_id = 21010201, pos = { x = 12.133, y = 0.249, z = -8.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11004, monster_id = 21010201, pos = { x = -11.619, y = 0.101, z = 3.455 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 11005, monster_id = 21011001, pos = { x = -9.562, y = 0.249, z = -10.767 }, rot = { x = 0.000, y = 25.522, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 11006, monster_id = 21010701, pos = { x = -16.157, y = 0.038, z = -1.913 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 11007, monster_id = 21010201, pos = { x = 16.362, y = 0.101, z = -3.289 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 11008, monster_id = 21010201, pos = { x = 17.300, y = 0.101, z = -0.025 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 11009, monster_id = 21010201, pos = { x = -17.215, y = 0.101, z = 0.035 }, rot = { x = 0.000, y = 91.100, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 11010, monster_id = 21020201, pos = { x = -0.300, y = 0.101, z = -14.877 }, rot = { x = 0.000, y = 3.804, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 11011, monster_id = 21010201, pos = { x = -0.114, y = 0.101, z = -12.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11012, monster_id = 21010201, pos = { x = -14.765, y = 0.249, z = -8.662 }, rot = { x = 0.000, y = 45.492, z = 0.000 }, level = 1 },
	{ config_id = 11013, monster_id = 21010401, pos = { x = -11.380, y = 0.249, z = 5.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11014, monster_id = 21010401, pos = { x = 16.364, y = 0.101, z = 3.468 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 11015, monster_id = 21011001, pos = { x = 6.414, y = 0.249, z = -10.605 }, rot = { x = 0.000, y = 324.036, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 11016, monster_id = 21010201, pos = { x = 3.322, y = 0.101, z = -16.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11017, monster_id = 21010201, pos = { x = -3.630, y = 0.101, z = -16.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 11018, monster_id = 21010201, pos = { x = 12.133, y = 0.249, z = -8.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11019, monster_id = 21010201, pos = { x = -11.619, y = 0.101, z = 3.455 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 11020, monster_id = 21011001, pos = { x = -9.562, y = 0.249, z = -10.767 }, rot = { x = 0.000, y = 25.522, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 11021, monster_id = 21010701, pos = { x = -16.157, y = 0.038, z = -1.913 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 11022, monster_id = 21010201, pos = { x = 16.362, y = 0.101, z = -3.289 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 11023, monster_id = 21010401, pos = { x = 17.300, y = 0.101, z = -0.025 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 11024, monster_id = 21010401, pos = { x = -17.215, y = 0.101, z = 0.035 }, rot = { x = 0.000, y = 91.100, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 11025, monster_id = 21020201, pos = { x = -0.300, y = 0.101, z = -14.877 }, rot = { x = 0.000, y = 3.804, z = 0.000 }, level = 1 },
	{ config_id = 11026, monster_id = 21010201, pos = { x = -0.114, y = 0.101, z = -12.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11027, monster_id = 21010201, pos = { x = -14.765, y = 0.249, z = -8.662 }, rot = { x = 0.000, y = 45.492, z = 0.000 }, level = 1 },
	{ config_id = 11028, monster_id = 21010401, pos = { x = -11.380, y = 0.249, z = 5.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11029, monster_id = 21010401, pos = { x = 16.364, y = 0.101, z = 3.468 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 11030, monster_id = 21011001, pos = { x = 6.414, y = 0.249, z = -10.605 }, rot = { x = 0.000, y = 324.036, z = 0.000 }, level = 1, affix = { 1031 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11031, gadget_id = 70350035, pos = { x = -0.100, y = 0.000, z = 0.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5 },
	{ config_id = 11032, gadget_id = 70350034, pos = { x = 0.033, y = 0.019, z = -5.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11033, gadget_id = 70900205, pos = { x = 7.286, y = -1.358, z = 2.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011034, name = "ANY_MONSTER_LIVE_11034", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_11034", action = "action_EVENT_ANY_MONSTER_LIVE_11034" },
	{ config_id = 1011035, name = "CHALLENGE_SUCCESS_11035", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_11035" },
	{ config_id = 1011036, name = "CHALLENGE_FAIL_11036", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_11036" }
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
		gadgets = { 11031, 11032, 11033 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_11034", "CHALLENGE_SUCCESS_11035", "CHALLENGE_FAIL_11036" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_7,
		monsters = { },
		gadgets = { 11032, 11033 },
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
function condition_EVENT_ANY_MONSTER_LIVE_11034(context, evt)
	if 11001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_11034(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为187的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 1, 187, {300,240606011,11031,0,15}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_start_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_11035(context, evt)
	-- 停止编号为1的怪物潮，end_type为1则是成功停止，0是失败停止（一般就是1）
	if 0 ~= ScriptLib.EndMonsterTide(context, 240606011, 1, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : end_monster_tide")
		return -1
	end
	
	-- 改变指定group组240606004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240606004, 4002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240606011中， configid为11032的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240606011, 11032, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240606007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240606007, 7001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240606011, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_11036(context, evt)
	-- 改变指定group组240606007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240606007, 7001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240606007, 7001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240606011中， configid为11032的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240606011, 11032, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240606004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240606004, 4001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240606004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240606004, 4002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240606011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end