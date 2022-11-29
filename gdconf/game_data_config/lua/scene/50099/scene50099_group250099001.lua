-- 基础信息
local base_info = {
	group_id = 250099001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1003, monster_id = 26120101, pos = { x = 10.132, y = -0.102, z = 0.027 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 201 },
	{ config_id = 1005, monster_id = 26120201, pos = { x = -9.938, y = -0.102, z = 0.062 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 201 },
	{ config_id = 1006, monster_id = 26120301, pos = { x = 0.001, y = -0.102, z = -10.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70360010, pos = { x = 0.018, y = -0.153, z = -0.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 175 } } },
	{ config_id = 1016, gadget_id = 70900205, pos = { x = 0.018, y = -1.221, z = -0.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "SELECT_OPTION_1002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1002", action = "action_EVENT_SELECT_OPTION_1002" },
	{ config_id = 1001010, name = "ANY_MONSTER_LIVE_1010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1010", action = "action_EVENT_ANY_MONSTER_LIVE_1010" },
	{ config_id = 1001013, name = "CHALLENGE_SUCCESS_1013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "" },
	{ config_id = 1001014, name = "CHALLENGE_FAIL_1014", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1014" }
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
		gadgets = { 1001, 1016 },
		regions = { },
		triggers = { "SELECT_OPTION_1002", "CHALLENGE_SUCCESS_1013", "CHALLENGE_FAIL_1014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1003, 1005, 1006 },
		gadgets = { 1016 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_1010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_SELECT_OPTION_1002(context, evt)
	-- 判断是gadgetid 1001 option_id 175
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1002(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 250099001 ；指定config：1001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250099001, 1001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250099001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1010(context, evt)
	if 1003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1010(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为166的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 166, 180, 250099001, 3, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250099001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end