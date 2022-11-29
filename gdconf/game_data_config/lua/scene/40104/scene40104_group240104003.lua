-- 基础信息
local base_info = {
	group_id = 240104003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 22010102, pos = { x = -0.472, y = 0.002, z = -11.501 }, rot = { x = 0.000, y = 353.493, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 3002, monster_id = 21010501, pos = { x = -11.511, y = 0.002, z = -4.174 }, rot = { x = 0.000, y = 30.208, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 21010501, pos = { x = 10.237, y = 0.002, z = -6.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3004, monster_id = 21010501, pos = { x = 8.218, y = 0.002, z = 11.432 }, rot = { x = 0.000, y = 192.622, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3005, monster_id = 21010501, pos = { x = -10.024, y = 0.002, z = 11.356 }, rot = { x = 0.000, y = 147.414, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3006, monster_id = 22010102, pos = { x = -0.193, y = 0.246, z = -4.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 4, affix = { 1006, 1013 }, isElite = true },
	{ config_id = 3007, monster_id = 22010104, pos = { x = 12.544, y = 0.439, z = 3.197 }, rot = { x = 0.000, y = 279.717, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 3014, monster_id = 20011201, pos = { x = 8.732, y = 0.078, z = 10.332 }, rot = { x = 0.000, y = 199.587, z = 0.000 }, level = 1 },
	{ config_id = 3015, monster_id = 20011201, pos = { x = 10.236, y = 0.078, z = -4.388 }, rot = { x = 0.000, y = 308.726, z = 0.000 }, level = 1 },
	{ config_id = 3016, monster_id = 20011301, pos = { x = -12.035, y = 0.078, z = -5.410 }, rot = { x = 0.000, y = 57.558, z = 0.000 }, level = 1 },
	{ config_id = 3017, monster_id = 20011201, pos = { x = -8.651, y = 0.078, z = 9.894 }, rot = { x = 0.000, y = 139.469, z = 0.000 }, level = 1 },
	{ config_id = 3018, monster_id = 20011301, pos = { x = -0.434, y = 0.078, z = -11.699 }, rot = { x = 0.000, y = 1.969, z = 0.000 }, level = 1 },
	{ config_id = 3019, monster_id = 21010502, pos = { x = -13.369, y = 0.078, z = -5.390 }, rot = { x = 0.000, y = 47.245, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 3020, monster_id = 21010502, pos = { x = 14.201, y = 0.078, z = 7.549 }, rot = { x = 0.000, y = 218.718, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 3021, monster_id = 20011301, pos = { x = 8.623, y = 0.078, z = -5.077 }, rot = { x = 0.000, y = 311.492, z = 0.000 }, level = 1 },
	{ config_id = 3022, monster_id = 20011301, pos = { x = -8.856, y = 0.078, z = 9.265 }, rot = { x = 0.000, y = 147.988, z = 0.000 }, level = 1 },
	{ config_id = 3023, monster_id = 20011301, pos = { x = -1.565, y = 0.002, z = -8.497 }, rot = { x = 0.000, y = 1.969, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3010, gadget_id = 70900205, pos = { x = 2.960, y = -1.311, z = 9.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "ANY_MONSTER_LIVE_3", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3", action = "action_EVENT_ANY_MONSTER_LIVE_3" },
	{ config_id = 1000004, name = "CHALLENGE_FAIL_4", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4" },
	{ config_id = 1000009, name = "ANY_MONSTER_DIE_9", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9", action = "action_EVENT_ANY_MONSTER_DIE_9" },
	{ config_id = 1000010, name = "ANY_MONSTER_DIE_10", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10", action = "action_EVENT_ANY_MONSTER_DIE_10" },
	{ config_id = 1000011, name = "ANY_MONSTER_DIE_11", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11", action = "action_EVENT_ANY_MONSTER_DIE_11" },
	{ config_id = 1000012, name = "ANY_MONSTER_DIE_12", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12", action = "action_EVENT_ANY_MONSTER_DIE_12" },
	{ config_id = 1003011, name = "ANY_MONSTER_DIE_3011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3011", action = "action_EVENT_ANY_MONSTER_DIE_3011" },
	{ config_id = 1003012, name = "ANY_MONSTER_DIE_3012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3012", action = "action_EVENT_ANY_MONSTER_DIE_3012" },
	{ config_id = 1003013, name = "ANY_MONSTER_DIE_3013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3013", action = "action_EVENT_ANY_MONSTER_DIE_3013" }
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
	end_suite = 1,
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
		gadgets = { 3010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3014, 3015, 3016, 3017, 3018 },
		gadgets = { 3010 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3", "CHALLENGE_FAIL_4", "ANY_MONSTER_DIE_9", "ANY_MONSTER_DIE_10", "ANY_MONSTER_DIE_11", "ANY_MONSTER_DIE_12", "ANY_MONSTER_DIE_3011", "ANY_MONSTER_DIE_3012", "ANY_MONSTER_DIE_3013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3(context, evt)
	if 3014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为158的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 158, 240104003, 17, 100, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240104001 ；指定config：1001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240104001, 1001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240104001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240104001, 1001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240104001, 1001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240104001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240104001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240104009, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240104003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9(context, evt)
	if 3014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3019, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10(context, evt)
	if 3015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3020, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11(context, evt)
	if 3016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3021, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12(context, evt)
	if 3017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3022, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3011(context, evt)
	if 3018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3011(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3023, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3012(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240104003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	-- 判断变量"C1"为5
	if ScriptLib.GetGroupVariableValue(context, "C1") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240104003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3013(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3006, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3007, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end