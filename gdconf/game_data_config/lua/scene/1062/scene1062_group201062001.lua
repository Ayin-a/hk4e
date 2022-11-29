-- 基础信息
local base_info = {
	group_id = 201062001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1005, monster_id = 25080101, pos = { x = 5.964, y = -15.667, z = -19.994 }, rot = { x = 0.000, y = 281.512, z = 0.000 }, level = 1, disableWander = true, pose_id = 1004 },
	{ config_id = 1007, monster_id = 25080301, pos = { x = 11.054, y = -15.672, z = -24.398 }, rot = { x = 0.000, y = 282.349, z = 0.000 }, level = 1, disableWander = true, pose_id = 1003 },
	{ config_id = 1008, monster_id = 25080301, pos = { x = 11.019, y = -15.670, z = -15.175 }, rot = { x = 0.000, y = 259.083, z = 0.000 }, level = 1, disableWander = true, pose_id = 1003 },
	{ config_id = 1013, monster_id = 25080301, pos = { x = -12.876, y = -14.910, z = -19.788 }, rot = { x = 0.000, y = 272.050, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 1014, monster_id = 25080101, pos = { x = 3.247, y = -15.667, z = -14.037 }, rot = { x = 0.000, y = 192.294, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 1015, monster_id = 25080201, pos = { x = 3.072, y = -15.670, z = -26.260 }, rot = { x = 0.000, y = 359.522, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 1016, monster_id = 25080201, pos = { x = 10.571, y = -15.672, z = -19.394 }, rot = { x = 0.000, y = 282.349, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70900205, pos = { x = -2.858, y = -24.870, z = -20.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70290137, pos = { x = -9.002, y = -14.816, z = -19.761 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70290137, pos = { x = 19.990, y = -14.821, z = -19.759 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70211001, pos = { x = 5.597, y = -15.037, z = -8.486 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001004, name = "ANY_MONSTER_DIE_1004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1004", action = "action_EVENT_ANY_MONSTER_DIE_1004" },
	{ config_id = 1001006, name = "ANY_MONSTER_DIE_1006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1006", action = "action_EVENT_ANY_MONSTER_DIE_1006" },
	{ config_id = 1001009, name = "CHALLENGE_SUCCESS_1009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1009" },
	{ config_id = 1001010, name = "CHALLENGE_FAIL_1010", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1010", trigger_count = 0 },
	{ config_id = 1001011, name = "ANY_MONSTER_LIVE_1011", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1011", action = "action_EVENT_ANY_MONSTER_LIVE_1011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "key", value = 0, no_refresh = false }
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
		monsters = { 1013 },
		gadgets = { 1001, 1002, 1003, 1012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1004", "CHALLENGE_SUCCESS_1009", "CHALLENGE_FAIL_1010", "ANY_MONSTER_LIVE_1011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1005, 1007, 1008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1014, 1015, 1016 },
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
function condition_EVENT_ANY_MONSTER_DIE_1004(context, evt)
	if 1013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1004(context, evt)
	-- 将configid为 1002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062001, 2)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201062012, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	-- 判断变量"key"为0
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 0 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062001, 3)
	
	-- 调用提示id为 10620101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10620101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1009(context, evt)
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062010, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062002, 2)
	
	-- 将本组内变量名为 "trap" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "trap", 1, 201062007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201062001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062012, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1011(context, evt)
	if 1005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1011(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为252的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 252, 201062001, 6, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201062010, 1)
	
	return 0
end