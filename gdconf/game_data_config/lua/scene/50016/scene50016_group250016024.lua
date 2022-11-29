-- 基础信息
local base_info = {
	group_id = 250016024
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 114, monster_id = 20010101, pos = { x = 1138.780, y = 200.169, z = 440.779 }, rot = { x = 0.000, y = 276.142, z = 0.000 }, level = 1, pose_id = 201 },
	{ config_id = 115, monster_id = 20010101, pos = { x = 1139.781, y = 200.169, z = 439.034 }, rot = { x = 0.000, y = 288.318, z = 0.000 }, level = 1, pose_id = 201 },
	{ config_id = 116, monster_id = 20010201, pos = { x = 1139.442, y = 200.167, z = 442.101 }, rot = { x = 0.000, y = 266.057, z = 0.000 }, level = 1, pose_id = 201 },
	{ config_id = 117, monster_id = 21010401, pos = { x = 1141.976, y = 206.051, z = 459.591 }, rot = { x = 0.000, y = 201.970, z = 0.000 }, level = 1 },
	{ config_id = 118, monster_id = 21010401, pos = { x = 1157.772, y = 206.051, z = 444.362 }, rot = { x = 0.000, y = 252.161, z = 0.000 }, level = 1 },
	{ config_id = 119, monster_id = 21010401, pos = { x = 1158.215, y = 206.051, z = 446.106 }, rot = { x = 0.000, y = 287.598, z = 0.000 }, level = 1 },
	{ config_id = 120, monster_id = 20010601, pos = { x = 1151.336, y = 200.507, z = 451.183 }, rot = { x = 0.000, y = 220.378, z = 0.000 }, level = 1 },
	{ config_id = 121, monster_id = 20011501, pos = { x = 1147.530, y = 200.295, z = 448.166 }, rot = { x = 0.000, y = 46.103, z = 0.000 }, level = 1 },
	{ config_id = 125, monster_id = 21010401, pos = { x = 1140.639, y = 206.051, z = 459.803 }, rot = { x = 0.000, y = 205.597, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 99, gadget_id = 70900007, pos = { x = 1140.762, y = 200.169, z = 440.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100, gadget_id = 70220019, pos = { x = 1157.700, y = 199.531, z = 446.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 101, gadget_id = 70220019, pos = { x = 1157.670, y = 199.531, z = 444.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 102, gadget_id = 70220019, pos = { x = 1159.827, y = 199.531, z = 446.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 103, gadget_id = 70220019, pos = { x = 1159.767, y = 199.531, z = 444.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 104, gadget_id = 70220019, pos = { x = 1142.954, y = 199.531, z = 461.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 105, gadget_id = 70220019, pos = { x = 1143.042, y = 199.531, z = 459.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 106, gadget_id = 70220019, pos = { x = 1140.827, y = 199.531, z = 459.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 107, gadget_id = 70220019, pos = { x = 1140.771, y = 199.531, z = 461.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000072, name = "GADGET_STATE_CHANGE_72", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_72", action = "action_EVENT_GADGET_STATE_CHANGE_72", trigger_count = 0 },
	{ config_id = 1000073, name = "ANY_MONSTER_DIE_73", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "666" },
	{ config_id = 1000074, name = "CHALLENGE_FAIL_74", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_74", trigger_count = 0 },
	{ config_id = 1000075, name = "CHALLENGE_SUCCESS_75", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_75", trigger_count = 0 },
	{ config_id = 1000076, name = "ANY_MONSTER_DIE_76", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_76", action = "action_EVENT_ANY_MONSTER_DIE_76", trigger_count = 0 },
	{ config_id = 1000077, name = "ANY_MONSTER_DIE_77", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_77", action = "action_EVENT_ANY_MONSTER_DIE_77", trigger_count = 0 }
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
		gadgets = { 99, 100, 101, 102, 103, 104, 105, 106, 107 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_72", "ANY_MONSTER_DIE_73", "CHALLENGE_FAIL_74", "CHALLENGE_SUCCESS_75" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 114, 115, 116 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_76" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 117, 118, 119, 125 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_77" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 120, 121 },
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
function condition_EVENT_GADGET_STATE_CHANGE_72(context, evt)
	if 99 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_72(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016024, 2)
	
	-- 创建编号为888（该挑战的识别id),挑战内容为2003的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 2003, 90, 1, 666, 9) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_74(context, evt)
	-- 改变指定group组250016024中， configid为99的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250016024, 99, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_75(context, evt)
	-- 改变指定group组250016024中， configid为99的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250016024, 99, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_76(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016024) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_76(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016024, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016024, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_77(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016024) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_77(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016024, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016024, 3)
	
	return 0
end