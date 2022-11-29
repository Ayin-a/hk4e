-- 基础信息
local base_info = {
	group_id = 250016023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 103, monster_id = 20010101, pos = { x = 1496.637, y = 220.229, z = 579.864 }, rot = { x = 0.000, y = 276.142, z = 0.000 }, level = 1, pose_id = 201 },
	{ config_id = 104, monster_id = 20010101, pos = { x = 1497.639, y = 220.276, z = 578.119 }, rot = { x = 0.000, y = 288.318, z = 0.000 }, level = 1, pose_id = 201 },
	{ config_id = 105, monster_id = 20010101, pos = { x = 1497.299, y = 220.273, z = 581.187 }, rot = { x = 0.000, y = 266.057, z = 0.000 }, level = 1, pose_id = 201 },
	{ config_id = 106, monster_id = 20011501, pos = { x = 1502.023, y = 220.396, z = 576.724 }, rot = { x = 0.000, y = 321.783, z = 0.000 }, level = 1 },
	{ config_id = 107, monster_id = 20011501, pos = { x = 1501.451, y = 220.366, z = 582.392 }, rot = { x = 0.000, y = 217.548, z = 0.000 }, level = 1 },
	{ config_id = 108, monster_id = 20011501, pos = { x = 1496.959, y = 220.197, z = 575.686 }, rot = { x = 0.000, y = 26.362, z = 0.000 }, level = 1 },
	{ config_id = 109, monster_id = 21011001, pos = { x = 1507.798, y = 226.813, z = 566.308 }, rot = { x = 0.000, y = 308.297, z = 0.000 }, level = 1 },
	{ config_id = 110, monster_id = 21011001, pos = { x = 1509.519, y = 225.702, z = 587.825 }, rot = { x = 0.000, y = 209.064, z = 0.000 }, level = 1 },
	{ config_id = 111, monster_id = 21011001, pos = { x = 1486.251, y = 224.132, z = 589.975 }, rot = { x = 0.000, y = 160.027, z = 0.000 }, level = 1 },
	{ config_id = 112, monster_id = 21011001, pos = { x = 1488.192, y = 225.327, z = 568.528 }, rot = { x = 0.000, y = 36.326, z = 0.000 }, level = 1 },
	{ config_id = 113, monster_id = 23030101, pos = { x = 1496.806, y = 220.245, z = 579.483 }, rot = { x = 0.000, y = 320.518, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 94, gadget_id = 70900007, pos = { x = 1498.619, y = 220.335, z = 579.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 95, gadget_id = 70300090, pos = { x = 1510.164, y = 220.208, z = 588.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 96, gadget_id = 70300090, pos = { x = 1508.428, y = 221.318, z = 565.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 97, gadget_id = 70300090, pos = { x = 1485.844, y = 218.637, z = 590.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 98, gadget_id = 70300090, pos = { x = 1487.865, y = 219.833, z = 568.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000066, name = "GADGET_STATE_CHANGE_66", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66", action = "action_EVENT_GADGET_STATE_CHANGE_66", trigger_count = 0 },
	{ config_id = 1000067, name = "ANY_MONSTER_DIE_67", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "666" },
	{ config_id = 1000068, name = "CHALLENGE_FAIL_68", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_68", trigger_count = 0 },
	{ config_id = 1000069, name = "CHALLENGE_SUCCESS_69", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_69", trigger_count = 0 },
	{ config_id = 1000070, name = "ANY_MONSTER_DIE_70", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70", action = "action_EVENT_ANY_MONSTER_DIE_70", trigger_count = 0 },
	{ config_id = 1000071, name = "ANY_MONSTER_DIE_71", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_71", action = "action_EVENT_ANY_MONSTER_DIE_71", trigger_count = 0 }
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
		gadgets = { 94, 95, 96, 97, 98 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_66", "ANY_MONSTER_DIE_67", "CHALLENGE_FAIL_68", "CHALLENGE_SUCCESS_69" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 103, 104, 105 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_70" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 106, 107, 108 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_71" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 109, 110, 111, 112, 113 },
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
function condition_EVENT_GADGET_STATE_CHANGE_66(context, evt)
	if 94 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016023, 2)
	
	-- 创建编号为888（该挑战的识别id),挑战内容为2003的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 2003, 90, 1, 666, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_68(context, evt)
	-- 改变指定group组250016023中， configid为92的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250016023, 92, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_69(context, evt)
	-- 改变指定group组250016023中， configid为92的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250016023, 92, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016023) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016023, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016023, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_71(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016023) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_71(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016023, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016023, 3)
	
	return 0
end