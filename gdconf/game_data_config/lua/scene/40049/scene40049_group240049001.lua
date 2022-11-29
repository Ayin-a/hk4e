-- 基础信息
local base_info = {
	group_id = 240049001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 22050201, pos = { x = 66.686, y = 76.940, z = -74.043 }, rot = { x = 0.000, y = 184.550, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1002, monster_id = 22040201, pos = { x = 66.036, y = 76.941, z = -83.174 }, rot = { x = 344.096, y = 14.157, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1003, monster_id = 22040201, pos = { x = 66.984, y = 76.941, z = -84.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1004, monster_id = 22040201, pos = { x = 62.117, y = 76.940, z = -85.905 }, rot = { x = 344.096, y = 49.387, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1005, monster_id = 22040201, pos = { x = 63.003, y = 76.942, z = -84.279 }, rot = { x = 0.000, y = 35.230, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1006, monster_id = 22040101, pos = { x = 63.082, y = 76.941, z = -77.245 }, rot = { x = 0.000, y = 140.652, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1007, monster_id = 22040101, pos = { x = 65.726, y = 76.940, z = -76.831 }, rot = { x = 344.096, y = 215.883, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1008, monster_id = 22040201, pos = { x = 64.537, y = 76.941, z = -76.298 }, rot = { x = 0.000, y = 201.725, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1009, monster_id = 22040101, pos = { x = 65.297, y = 76.943, z = -75.019 }, rot = { x = 344.096, y = 215.883, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1010, monster_id = 22040101, pos = { x = 60.876, y = 76.940, z = -82.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1011, monster_id = 22050101, pos = { x = 66.654, y = 76.953, z = -85.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1012, monster_id = 21020301, pos = { x = 69.940, y = 76.928, z = -77.333 }, rot = { x = 0.000, y = 273.901, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1015, monster_id = 22040201, pos = { x = 58.965, y = 76.940, z = -84.587 }, rot = { x = 344.096, y = 49.387, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1016, monster_id = 22040201, pos = { x = 59.819, y = 76.940, z = -86.518 }, rot = { x = 344.096, y = 49.387, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1017, monster_id = 21020301, pos = { x = 67.924, y = 76.928, z = -84.834 }, rot = { x = 0.000, y = 273.901, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1018, monster_id = 21020201, pos = { x = 67.924, y = 76.928, z = -77.305 }, rot = { x = 0.000, y = 273.901, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1024, monster_id = 21020201, pos = { x = 69.940, y = 76.928, z = -85.311 }, rot = { x = 0.000, y = 273.901, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1025, monster_id = 22040201, pos = { x = 66.984, y = 76.941, z = -86.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1026, monster_id = 22040201, pos = { x = 66.036, y = 76.941, z = -85.272 }, rot = { x = 344.096, y = 14.157, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1027, monster_id = 22040101, pos = { x = 65.297, y = 76.943, z = -77.117 }, rot = { x = 344.096, y = 215.883, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1037, monster_id = 22050101, pos = { x = 69.153, y = 76.940, z = -78.964 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 1038, monster_id = 22050201, pos = { x = 69.277, y = 76.940, z = -83.077 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1013, gadget_id = 70290140, pos = { x = 26.123, y = 77.040, z = -80.961 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70290145, pos = { x = 26.251, y = 83.194, z = -81.019 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70800082, pos = { x = 58.486, y = 76.940, z = -80.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70290137, pos = { x = 46.391, y = 77.344, z = -80.990 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1035, gadget_id = 70211021, pos = { x = 62.039, y = 76.940, z = -80.801 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗高级稻妻", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 1033, shape = RegionShape.SPHERE, radius = 50, pos = { x = 61.223, y = 76.979, z = -80.658 } }
}

-- 触发器
triggers = {
	{ config_id = 1001019, name = "ANY_MONSTER_DIE_1019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1019", action = "action_EVENT_ANY_MONSTER_DIE_1019" },
	{ config_id = 1001021, name = "ANY_MONSTER_DIE_1021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1021", action = "action_EVENT_ANY_MONSTER_DIE_1021" },
	{ config_id = 1001022, name = "ANY_MONSTER_DIE_1022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1022", action = "action_EVENT_ANY_MONSTER_DIE_1022" },
	{ config_id = 1001028, name = "ANY_MONSTER_DIE_1028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1028", action = "action_EVENT_ANY_MONSTER_DIE_1028" },
	{ config_id = 1001029, name = "ANY_MONSTER_DIE_1029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1029", action = "action_EVENT_ANY_MONSTER_DIE_1029" },
	{ config_id = 1001030, name = "ANY_MONSTER_DIE_1030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1030", action = "action_EVENT_ANY_MONSTER_DIE_1030" },
	{ config_id = 1001031, name = "ANY_MONSTER_DIE_1031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1031", action = "action_EVENT_ANY_MONSTER_DIE_1031" },
	{ config_id = 1001032, name = "ANY_MONSTER_LIVE_1032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1032", action = "action_EVENT_ANY_MONSTER_LIVE_1032" },
	{ config_id = 1001033, name = "ENTER_REGION_1033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1033", action = "action_EVENT_ENTER_REGION_1033" },
	{ config_id = 1001034, name = "TIMER_EVENT_1034", event = EventType.EVENT_TIMER_EVENT, source = "timer", condition = "", action = "action_EVENT_TIMER_EVENT_1034" },
	{ config_id = 1001036, name = "CHALLENGE_SUCCESS_1036", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1036" },
	{ config_id = 1001039, name = "CHALLENGE_FAIL_1039", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "condition_EVENT_CHALLENGE_FAIL_1039", action = "action_EVENT_CHALLENGE_FAIL_1039" },
	{ config_id = 1001040, name = "DUNGEON_SETTLE_1040", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_1040" }
}

-- 变量
variables = {
	{ config_id = 1, name = "OneTimeDungeon", value = 0, no_refresh = false }
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
		gadgets = { 1013, 1014, 1023 },
		regions = { 1033 },
		triggers = { "ANY_MONSTER_DIE_1029", "ANY_MONSTER_LIVE_1032", "ENTER_REGION_1033", "CHALLENGE_SUCCESS_1036", "CHALLENGE_FAIL_1039" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1031" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 1012, 1024 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1021", "ANY_MONSTER_DIE_1030" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 1025, 1026, 1027, 1038 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1022" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 1017, 1018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1019" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 1002, 1003, 1009, 1010 },
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
function condition_EVENT_ANY_MONSTER_DIE_1019(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240049001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1019(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240049001, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1021(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240049001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 240049001, {1008,1015,1016,1037}, 4, 3, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1022(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240049001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1028(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1028(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 240049001, {1004,1005,1006,1007}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1029(context, evt)
	-- 判断指定group组剩余怪物数量是否是2 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240049001) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1029(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240049001, 2)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240049001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1030(context, evt)
	-- 判断指定group组剩余怪物数量是否是2 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240049001) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1030(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240049001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1031(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240049001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1031(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240049001, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1032(context, evt)
	if 1002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1032(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1, 240049001, 22, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1033(context, evt)
	if evt.param1 ~= 1033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1033(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240049001, 8)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1034(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240049001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1036(context, evt)
	-- 创建id为1035的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1035 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为1020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "OneTimeDungeon" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OneTimeDungeon", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_1039(context, evt)
	-- 判断变量"Settle"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "Settle", 240049002) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1039(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240049001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_1040(context, evt)
	-- 将本组内变量名为 "challenge" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end