-- 基础信息
local base_info = {
	group_id = 240047001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 25100201, pos = { x = 62.187, y = 77.010, z = -83.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1002 },
	{ config_id = 1003, monster_id = 25100101, pos = { x = 62.039, y = 77.010, z = -78.321 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1002 },
	{ config_id = 1006, monster_id = 25010501, pos = { x = 67.260, y = 76.940, z = -75.606 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, monster_id = 25010401, pos = { x = 66.820, y = 76.940, z = -86.133 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, monster_id = 25080301, pos = { x = 59.937, y = 77.010, z = -86.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1014, monster_id = 25080301, pos = { x = 59.792, y = 77.010, z = -77.623 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1015, monster_id = 25080201, pos = { x = 64.932, y = 77.010, z = -81.263 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1016, monster_id = 25080201, pos = { x = 58.014, y = 77.010, z = -81.185 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1017, monster_id = 25010401, pos = { x = 65.836, y = 77.010, z = -87.905 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, monster_id = 25010401, pos = { x = 64.746, y = 77.010, z = -74.563 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70290140, pos = { x = 25.475, y = 77.056, z = -81.018 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70290137, pos = { x = 46.126, y = 77.212, z = -81.005 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1010, gadget_id = 70360280, pos = { x = 54.888, y = 78.209, z = -95.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70360280, pos = { x = 68.654, y = 78.152, z = -95.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70360291, pos = { x = 54.888, y = 78.209, z = -65.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70360280, pos = { x = 60.553, y = 78.101, z = -66.343 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70360291, pos = { x = 68.654, y = 78.152, z = -65.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70360291, pos = { x = 60.553, y = 78.101, z = -96.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70211021, pos = { x = 56.153, y = 77.010, z = -81.001 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 6, drop_tag = "战斗高级稻妻", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 1012, shape = RegionShape.SPHERE, radius = 5, pos = { x = 36.597, y = 77.957, z = -81.428 } },
	{ config_id = 1021, shape = RegionShape.CUBIC, size = { x = 5.500, y = 4.000, z = 40.000 }, pos = { x = 54.627, y = 77.241, z = -76.116 } },
	{ config_id = 1022, shape = RegionShape.CUBIC, size = { x = 5.500, y = 4.000, z = 40.000 }, pos = { x = 60.337, y = 77.241, z = -76.116 } },
	{ config_id = 1023, shape = RegionShape.CUBIC, size = { x = 5.500, y = 4.000, z = 40.000 }, pos = { x = 68.474, y = 77.241, z = -76.116 } },
	{ config_id = 1024, shape = RegionShape.CUBIC, size = { x = 4.000, y = 10.000, z = 10.000 }, pos = { x = 48.788, y = 81.869, z = -82.728 } },
	{ config_id = 1029, shape = RegionShape.CUBIC, size = { x = 4.000, y = 10.000, z = 10.000 }, pos = { x = 48.788, y = 81.869, z = -82.728 } },
	{ config_id = 1030, shape = RegionShape.CUBIC, size = { x = 4.000, y = 10.000, z = 10.000 }, pos = { x = 48.788, y = 81.869, z = -82.728 } }
}

-- 触发器
triggers = {
	{ config_id = 1001004, name = "MONSTER_BATTLE_1004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_1004", action = "action_EVENT_MONSTER_BATTLE_1004" },
	{ config_id = 1001008, name = "CHALLENGE_FAIL_1008", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1008" },
	{ config_id = 1001009, name = "CHALLENGE_SUCCESS_1009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1009" },
	{ config_id = 1001012, name = "ENTER_REGION_1012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1012", action = "action_EVENT_ENTER_REGION_1012" },
	{ config_id = 1001021, name = "ENTER_REGION_1021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1021", action = "action_EVENT_ENTER_REGION_1021", trigger_count = 0 },
	{ config_id = 1001022, name = "ENTER_REGION_1022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1022", action = "action_EVENT_ENTER_REGION_1022", trigger_count = 0 },
	{ config_id = 1001023, name = "ENTER_REGION_1023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1023", action = "action_EVENT_ENTER_REGION_1023", trigger_count = 0 },
	{ config_id = 1001024, name = "ENTER_REGION_1024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1024", action = "action_EVENT_ENTER_REGION_1024", trigger_count = 0 },
	{ config_id = 1001028, name = "ANY_MONSTER_DIE_1028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1028", action = "action_EVENT_ANY_MONSTER_DIE_1028" },
	{ config_id = 1001029, name = "ENTER_REGION_1029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1029", action = "action_EVENT_ENTER_REGION_1029", trigger_count = 0 },
	{ config_id = 1001030, name = "ENTER_REGION_1030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1030", action = "action_EVENT_ENTER_REGION_1030", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "alive1", value = 0, no_refresh = false },
	{ config_id = 2, name = "battle1", value = 0, no_refresh = false },
	{ config_id = 3, name = "challenge", value = 0, no_refresh = false }
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
		monsters = { 1001, 1003 },
		gadgets = { 1002, 1005, 1010, 1011, 1018, 1020, 1025, 1026 },
		regions = { 1012, 1021, 1022, 1023, 1024, 1029, 1030 },
		triggers = { "MONSTER_BATTLE_1004", "CHALLENGE_FAIL_1008", "CHALLENGE_SUCCESS_1009", "ENTER_REGION_1012", "ENTER_REGION_1021", "ENTER_REGION_1022", "ENTER_REGION_1023", "ENTER_REGION_1024", "ENTER_REGION_1029", "ENTER_REGION_1030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1017, 1019 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_FAIL_1008", "CHALLENGE_SUCCESS_1009", "ANY_MONSTER_DIE_1028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1006, 1007, 1013, 1014, 1015, 1016 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_FAIL_1008", "CHALLENGE_SUCCESS_1009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1027 },
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
function condition_EVENT_MONSTER_BATTLE_1004(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"challenge"为0
	if ScriptLib.GetGroupVariableValue(context, "challenge") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_1004(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1, 240047001, 10, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240047001, 2)
	
	-- 将本组内变量名为 "alive1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "challenge" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240047001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1009(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240047001, 4)
	
	-- 将本组内变量名为 "battle1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battle1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1012(context, evt)
	if evt.param1 ~= 1012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alive1"为1
	if ScriptLib.GetGroupVariableValue(context, "alive1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1012(context, evt)
	-- 改变指定group组240047001中， configid为1005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240047001, 1005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1021(context, evt)
	if evt.param1 ~= 1021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"battle1"为0
	if ScriptLib.GetGroupVariableValue(context, "battle1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1021(context, evt)
	-- 改变指定group组240047001中， configid为1010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240047001, 1010, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1022(context, evt)
	if evt.param1 ~= 1022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"battle1"为0
	if ScriptLib.GetGroupVariableValue(context, "battle1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1022(context, evt)
	-- 改变指定group组240047001中， configid为1020的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240047001, 1020, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1023(context, evt)
	if evt.param1 ~= 1023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"battle1"为0
	if ScriptLib.GetGroupVariableValue(context, "battle1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1023(context, evt)
	-- 改变指定group组240047001中， configid为1011的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240047001, 1011, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1024(context, evt)
	if evt.param1 ~= 1024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alive1"为0
	if ScriptLib.GetGroupVariableValue(context, "alive1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1024(context, evt)
	-- 改变指定group组240047001中， configid为1005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240047001, 1005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240047002, 1)
	
	-- 将本组内变量名为 "alive1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1028(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240047001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1028(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240047001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1029(context, evt)
	if evt.param1 ~= 1029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"challenge"为0
	if ScriptLib.GetGroupVariableValue(context, "challenge") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1029(context, evt)
	-- 将本组内变量名为 "challenge" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建编号为1（该挑战的识别id),挑战内容为1的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1, 240047001, 10, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240047001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1030(context, evt)
	if evt.param1 ~= 1030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1030(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240047002, 1)
	
	return 0
end