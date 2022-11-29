-- 基础信息
local base_info = {
	group_id = 133108126
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 1,
	group_id = 133108126,
	gadget_controller_id = 126012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 126001, monster_id = 21010101, pos = { x = -365.778, y = 200.000, z = -652.917 }, rot = { x = 0.000, y = 258.138, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 7 },
	{ config_id = 126002, monster_id = 21010101, pos = { x = -366.067, y = 200.000, z = -654.821 }, rot = { x = 0.000, y = 258.138, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 7 },
	{ config_id = 126003, monster_id = 21010901, pos = { x = -367.156, y = 200.042, z = -653.516 }, rot = { x = 0.000, y = 258.138, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 7 },
	{ config_id = 126004, monster_id = 20011001, pos = { x = -358.727, y = 200.620, z = -653.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 7 },
	{ config_id = 126005, monster_id = 20011001, pos = { x = -360.748, y = 200.246, z = -654.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 7 },
	{ config_id = 126006, monster_id = 20011001, pos = { x = -358.844, y = 200.000, z = -656.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 7 },
	{ config_id = 126007, monster_id = 20010901, pos = { x = -358.767, y = 200.215, z = -654.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 7 },
	{ config_id = 126008, monster_id = 21010901, pos = { x = -342.159, y = 200.173, z = -656.259 }, rot = { x = 0.000, y = 260.251, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 7 },
	{ config_id = 126009, monster_id = 21010901, pos = { x = -341.464, y = 200.432, z = -653.652 }, rot = { x = 0.000, y = 260.251, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 7 },
	{ config_id = 126010, monster_id = 21020301, pos = { x = -339.408, y = 200.262, z = -654.374 }, rot = { x = 0.206, y = 259.983, z = 359.981 }, level = 32, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
	{ config_id = 126020, npc_id = 20130, pos = { x = -372.312, y = 200.965, z = -654.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7 },
	{ config_id = 126023, npc_id = 20130, pos = { x = -372.424, y = 200.918, z = -654.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7 }
}

-- 装置
gadgets = {
	{ config_id = 126011, gadget_id = 70360092, pos = { x = -372.269, y = 200.058, z = -654.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 126012, gadget_id = 70360001, pos = { x = -372.251, y = 200.943, z = -654.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 126018, gadget_id = 70211011, pos = { x = -322.389, y = 200.067, z = -639.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 126025, gadget_id = 70360001, pos = { x = -372.081, y = 200.804, z = -654.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1126013, name = "ANY_MONSTER_DIE_126013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126013", action = "action_EVENT_ANY_MONSTER_DIE_126013" },
	{ config_id = 1126014, name = "CHALLENGE_SUCCESS_126014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_126014" },
	{ config_id = 1126015, name = "CHALLENGE_FAIL_126015", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_126015", trigger_count = 0 },
	{ config_id = 1126016, name = "GADGET_STATE_CHANGE_126016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_126016", action = "action_EVENT_GADGET_STATE_CHANGE_126016", trigger_count = 0 },
	{ config_id = 1126017, name = "SELECT_OPTION_126017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_126017", action = "action_EVENT_SELECT_OPTION_126017", trigger_count = 0 },
	{ config_id = 1126019, name = "ANY_MONSTER_DIE_126019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126019", action = "action_EVENT_ANY_MONSTER_DIE_126019" },
	{ config_id = 1126021, name = "GADGET_CREATE_126021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_126021", action = "action_EVENT_GADGET_CREATE_126021", trigger_count = 0 },
	{ config_id = 1126022, name = "GADGET_CREATE_126022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_126022", action = "action_EVENT_GADGET_CREATE_126022", trigger_count = 0 },
	{ config_id = 1126024, name = "ANY_MONSTER_DIE_126024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126024", action = "" }
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
	suite = 6,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 126011, 126012 },
		regions = { },
		triggers = { "GADGET_CREATE_126021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 126001, 126002, 126003 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_126014", "CHALLENGE_FAIL_126015", "ANY_MONSTER_DIE_126019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 126004, 126005, 126006, 126007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_126013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 126008, 126009, 126010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_126024" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 126018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 126011 },
		regions = { },
		triggers = { },
		npcs = { 126020, 126023 },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 126011, 126012, 126025 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_126016", "SELECT_OPTION_126017", "GADGET_CREATE_126022" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 126020 },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
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
function condition_EVENT_ANY_MONSTER_DIE_126013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_126013(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108126, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_126014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7101007_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108126, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_126015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108126, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 126011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_126016(context, evt)
	-- 检测config_id为126011的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 126011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_126016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108126, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108126, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108126, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_126017(context, evt)
	-- 判断是gadgetid 126011 option_id 11
	if 126011 ~= evt.param1 then
		return false	
	end
	
	if 11 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_126017(context, evt)
	-- 删除指定group： 133108126 ；指定config：126011；物件身上指定option：11；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108126, 126011, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建编号为666（该挑战的识别id),挑战内容为4的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 4, 133108126, 10, 120, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将configid为 126011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108126, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_126019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_126019(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108126, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_126021(context, evt)
	if 126012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_126021(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为4的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 4, 133108126, 10, 120, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108126, 2)
	
	-- 将configid为 126011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_126022(context, evt)
	if 126011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_126022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108126, 126011, {11}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_126024(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end