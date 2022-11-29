-- 基础信息
local base_info = {
	group_id = 240610006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 21020201, pos = { x = 11.435, y = 0.019, z = -10.203 }, rot = { x = 0.000, y = 333.309, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 6006, monster_id = 21020201, pos = { x = -12.547, y = 0.019, z = -10.117 }, rot = { x = 0.000, y = 68.847, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 6010, monster_id = 22010101, pos = { x = -12.086, y = 0.101, z = 3.879 }, rot = { x = 0.000, y = 114.764, z = 0.000 }, level = 1, affix = { 1008 } },
	-- 火伤害技能
	{ config_id = 6015, monster_id = 20011304, pos = { x = -7.878, y = 0.101, z = 9.377 }, rot = { x = 0.000, y = 158.954, z = 0.000 }, level = 1, affix = { 1008, 6105 }, isElite = true },
	{ config_id = 6020, monster_id = 20011304, pos = { x = 10.844, y = 0.019, z = -5.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1008 }, isElite = true },
	-- 火伤害技能
	{ config_id = 6034, monster_id = 22010103, pos = { x = 15.506, y = 0.019, z = -5.232 }, rot = { x = 0.000, y = 291.606, z = 0.000 }, level = 1, affix = { 1008, 6105 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6016, gadget_id = 70900205, pos = { x = 6.073, y = -1.358, z = 3.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006013, name = "ANY_MONSTER_LIVE_6013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6013", action = "action_EVENT_ANY_MONSTER_LIVE_6013" },
	{ config_id = 1006026, name = "CHALLENGE_SUCCESS_6026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6026" },
	{ config_id = 1006027, name = "CHALLENGE_FAIL_6027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6027" }
}

-- 变量
variables = {
	{ config_id = 1, name = "suite2_create_count", value = 0, no_refresh = false },
	{ config_id = 2, name = "suite2_status", value = 0, no_refresh = false },
	{ config_id = 3, name = "suite3_create_count", value = 0, no_refresh = false },
	{ config_id = 4, name = "suite3_status", value = 0, no_refresh = false },
	{ config_id = 5, name = "suite4_create_count", value = 0, no_refresh = false },
	{ config_id = 6, name = "suite4_status", value = 0, no_refresh = false }
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
		gadgets = { 6016 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6013", "CHALLENGE_SUCCESS_6026", "CHALLENGE_FAIL_6027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6013(context, evt)
	if 6015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6013(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为195的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 195, 240610006, 6, 60, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6026(context, evt)
	-- 改变指定group组240610004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610004, 4001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240610004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610004, 4002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240610005中， configid为5003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610005, 5003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240610006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6027(context, evt)
	-- 改变指定group组240610005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610005, 5001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240610005, 5001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240610004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610004, 4001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240610004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610004, 4002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240610005中， configid为5003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610005, 5003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240610006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end