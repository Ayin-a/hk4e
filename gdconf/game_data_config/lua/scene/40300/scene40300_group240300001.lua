-- 基础信息
local base_info = {
	group_id = 240300001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011001, pos = { x = 3.138, y = 0.002, z = 6.677 }, rot = { x = 0.000, y = 198.019, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 20011001, pos = { x = 7.410, y = 0.002, z = -1.763 }, rot = { x = 0.000, y = 293.196, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 20011001, pos = { x = 7.489, y = 0.002, z = -5.427 }, rot = { x = 0.000, y = 322.768, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 20011001, pos = { x = -7.094, y = 0.002, z = 2.952 }, rot = { x = 0.000, y = 198.019, z = 0.000 }, level = 1 },
	{ config_id = 1005, monster_id = 20011001, pos = { x = -2.823, y = 0.002, z = -5.489 }, rot = { x = 0.000, y = 293.196, z = 0.000 }, level = 1 },
	{ config_id = 1006, monster_id = 20011001, pos = { x = -2.744, y = 0.002, z = -9.152 }, rot = { x = 0.000, y = 322.768, z = 0.000 }, level = 1 },
	{ config_id = 1007, monster_id = 20011001, pos = { x = -8.665, y = 0.217, z = -9.411 }, rot = { x = 0.000, y = 349.757, z = 0.000 }, level = 1 },
	{ config_id = 1008, monster_id = 20011001, pos = { x = -8.665, y = 0.217, z = -9.411 }, rot = { x = 0.000, y = 349.757, z = 0.000 }, level = 1 },
	{ config_id = 1009, monster_id = 20011001, pos = { x = 1.568, y = 0.217, z = -5.686 }, rot = { x = 0.000, y = 349.757, z = 0.000 }, level = 1 },
	{ config_id = 1010, monster_id = 20011001, pos = { x = -2.646, y = 0.209, z = -2.370 }, rot = { x = 0.000, y = 61.628, z = 0.000 }, level = 1 },
	{ config_id = 1012, monster_id = 20011001, pos = { x = -10.696, y = 0.209, z = -2.662 }, rot = { x = 0.000, y = 61.628, z = 0.000 }, level = 1 },
	{ config_id = 1013, monster_id = 20011001, pos = { x = -6.200, y = 0.133, z = -10.837 }, rot = { x = 0.000, y = 344.552, z = 0.000 }, level = 1 },
	{ config_id = 1015, monster_id = 20011001, pos = { x = 4.033, y = 0.133, z = -7.111 }, rot = { x = 0.000, y = 344.552, z = 0.000 }, level = 1 },
	{ config_id = 1016, monster_id = 20011001, pos = { x = -3.056, y = 0.133, z = 9.379 }, rot = { x = 0.000, y = 155.540, z = 0.000 }, level = 1 },
	{ config_id = 1017, monster_id = 20011001, pos = { x = -5.984, y = 0.133, z = -3.746 }, rot = { x = 0.000, y = 70.375, z = 0.000 }, level = 1 },
	{ config_id = 1018, monster_id = 20011001, pos = { x = 5.283, y = 0.133, z = 7.038 }, rot = { x = 0.000, y = 215.565, z = 0.000 }, level = 1 },
	{ config_id = 1019, monster_id = 20011001, pos = { x = -7.698, y = 0.133, z = 2.152 }, rot = { x = 0.000, y = 96.428, z = 0.000 }, level = 1 },
	{ config_id = 1020, monster_id = 20011001, pos = { x = 6.429, y = 0.133, z = 3.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, monster_id = 20011001, pos = { x = -1.171, y = 0.133, z = -6.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, monster_id = 20011101, pos = { x = -6.164, y = 0.337, z = 6.524 }, rot = { x = 0.000, y = 145.388, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1011, gadget_id = 70900205, pos = { x = 8.445, y = -1.547, z = 0.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ANY_MONSTER_LIVE_1", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1", action = "action_EVENT_ANY_MONSTER_LIVE_1" },
	{ config_id = 1000017, name = "CHALLENGE_FAIL_17", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_17" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false },
	{ config_id = 2, name = "C1", value = 0, no_refresh = false }
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
		gadgets = { 1011 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_1", "CHALLENGE_FAIL_17" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为5的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 5, 20, 240300001, 20, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240300002 ；指定config：1；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240300002, 1, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240300002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240300002, 1, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_17(context, evt)
	-- 改变指定group组240300002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240300002, 1, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240300002, 1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240300001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240300007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240300008中， configid为8的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240300008, 8, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end