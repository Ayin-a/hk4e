-- 基础信息
local base_info = {
	group_id = 250016021
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 83, monster_id = 20011201, pos = { x = 1082.282, y = 211.289, z = 364.512 }, rot = { x = 0.000, y = 103.914, z = 0.000 }, level = 1 },
	{ config_id = 84, monster_id = 20011201, pos = { x = 1082.843, y = 211.138, z = 363.002 }, rot = { x = 0.000, y = 62.134, z = 0.000 }, level = 1 },
	{ config_id = 85, monster_id = 20011201, pos = { x = 1083.484, y = 210.977, z = 365.416 }, rot = { x = 0.000, y = 139.307, z = 0.000 }, level = 1 },
	{ config_id = 86, monster_id = 20011201, pos = { x = 1121.627, y = 202.945, z = 351.640 }, rot = { x = 0.000, y = 321.783, z = 0.000 }, level = 1 },
	{ config_id = 87, monster_id = 20011201, pos = { x = 1121.054, y = 202.839, z = 357.308 }, rot = { x = 0.000, y = 217.548, z = 0.000 }, level = 1 },
	{ config_id = 88, monster_id = 20011301, pos = { x = 1116.563, y = 203.306, z = 350.602 }, rot = { x = 0.000, y = 26.362, z = 0.000 }, level = 1 },
	{ config_id = 89, monster_id = 20011201, pos = { x = 1125.571, y = 206.788, z = 379.028 }, rot = { x = 0.000, y = 206.139, z = 0.000 }, level = 1 },
	{ config_id = 90, monster_id = 20011201, pos = { x = 1144.499, y = 208.475, z = 340.616 }, rot = { x = 0.000, y = 281.569, z = 0.000 }, level = 1 },
	{ config_id = 91, monster_id = 20011201, pos = { x = 1113.613, y = 203.743, z = 357.900 }, rot = { x = 0.000, y = 154.408, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 92, gadget_id = 70900049, pos = { x = 1117.200, y = 203.244, z = 355.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000053, name = "GADGET_STATE_CHANGE_53", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53", action = "action_EVENT_GADGET_STATE_CHANGE_53", trigger_count = 0 },
	{ config_id = 1000054, name = "ANY_MONSTER_DIE_54", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "666" },
	{ config_id = 1000056, name = "CHALLENGE_FAIL_56", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_56", trigger_count = 0 },
	{ config_id = 1000057, name = "CHALLENGE_SUCCESS_57", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_57", trigger_count = 0 },
	{ config_id = 1000058, name = "ANY_MONSTER_DIE_58", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58", action = "action_EVENT_ANY_MONSTER_DIE_58", trigger_count = 0 },
	{ config_id = 1000059, name = "ANY_MONSTER_DIE_59", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_59", action = "action_EVENT_ANY_MONSTER_DIE_59", trigger_count = 0 }
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
		gadgets = { 92 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_53", "ANY_MONSTER_DIE_54", "CHALLENGE_FAIL_56", "CHALLENGE_SUCCESS_57" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 83, 84, 85 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 86, 87, 88 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_59" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 89, 90, 91 },
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
function condition_EVENT_GADGET_STATE_CHANGE_53(context, evt)
	if 92 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016021, 2)
	
	-- 创建编号为888（该挑战的识别id),挑战内容为2003的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 2003, 60, 1, 666, 9) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_56(context, evt)
	-- 改变指定group组250016021中， configid为92的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250016021, 92, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_57(context, evt)
	-- 改变指定group组250016021中， configid为92的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250016021, 92, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016021) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016021, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016021, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_59(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016021) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_59(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016021, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016021, 3)
	
	return 0
end