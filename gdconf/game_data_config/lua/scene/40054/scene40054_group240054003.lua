-- 基础信息
local base_info = {
	group_id = 240054003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3002, monster_id = 25210301, pos = { x = 246.463, y = 97.092, z = 699.349 }, rot = { x = 0.000, y = 113.277, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3003, monster_id = 25210301, pos = { x = 247.592, y = 96.580, z = 688.529 }, rot = { x = 0.000, y = 51.133, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3004, monster_id = 25210401, pos = { x = 250.908, y = 96.752, z = 704.430 }, rot = { x = 0.000, y = 160.855, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3005, monster_id = 25210401, pos = { x = 256.068, y = 96.867, z = 685.636 }, rot = { x = 0.000, y = 332.510, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3006, monster_id = 25210501, pos = { x = 257.925, y = 96.880, z = 701.559 }, rot = { x = 0.000, y = 225.642, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3007, monster_id = 25310101, pos = { x = 243.156, y = 96.817, z = 695.054 }, rot = { x = 0.000, y = 94.563, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, pose_id = 1 },
	{ config_id = 3008, monster_id = 25210201, pos = { x = 260.223, y = 96.701, z = 704.212 }, rot = { x = 0.000, y = 230.769, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3009, monster_id = 25210201, pos = { x = 258.403, y = 96.648, z = 681.965 }, rot = { x = 0.000, y = 311.468, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3010, monster_id = 25210201, pos = { x = 262.702, y = 96.494, z = 693.083 }, rot = { x = 0.000, y = 276.982, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3011, monster_id = 25310201, pos = { x = 260.976, y = 96.611, z = 693.633 }, rot = { x = 0.000, y = 274.207, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, pose_id = 1 },
	{ config_id = 3012, monster_id = 25210501, pos = { x = 246.762, y = 96.563, z = 687.221 }, rot = { x = 0.000, y = 26.780, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3013, monster_id = 25210501, pos = { x = 248.530, y = 96.801, z = 702.515 }, rot = { x = 0.000, y = 132.186, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3014, monster_id = 25210401, pos = { x = 245.354, y = 96.939, z = 695.058 }, rot = { x = 0.000, y = 94.200, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3015, monster_id = 25310301, pos = { x = 243.156, y = 96.817, z = 695.054 }, rot = { x = 0.000, y = 94.563, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3016, monster_id = 25210201, pos = { x = 253.417, y = 96.608, z = 706.987 }, rot = { x = 0.000, y = 168.696, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3017, monster_id = 25210201, pos = { x = 251.430, y = 96.262, z = 681.667 }, rot = { x = 0.000, y = 11.731, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3018, monster_id = 25210301, pos = { x = 262.722, y = 96.541, z = 694.071 }, rot = { x = 0.000, y = 265.907, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3019, monster_id = 25310301, pos = { x = 257.695, y = 96.840, z = 702.914 }, rot = { x = 0.000, y = 221.755, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 } },
	{ config_id = 3020, monster_id = 25310201, pos = { x = 257.074, y = 96.732, z = 683.957 }, rot = { x = 0.000, y = 334.507, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, pose_id = 1 },
	{ config_id = 3021, monster_id = 25310101, pos = { x = 243.156, y = 96.817, z = 695.054 }, rot = { x = 0.000, y = 94.563, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70950156, pos = { x = 253.024, y = 96.974, z = 694.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3026, gadget_id = 70211021, pos = { x = 253.016, y = 96.981, z = 694.003 }, rot = { x = 0.000, y = 104.181, z = 0.000 }, level = 1, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true },
	{ config_id = 3030, gadget_id = 70900205, pos = { x = 253.041, y = 92.231, z = 695.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3032, gadget_id = 70310148, pos = { x = 253.024, y = 96.974, z = 694.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3033, gadget_id = 70900201, pos = { x = 253.024, y = 99.334, z = 694.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3022, shape = RegionShape.SPHERE, radius = 3, pos = { x = 253.024, y = 96.974, z = 694.074 } }
}

-- 触发器
triggers = {
	{ config_id = 1003022, name = "ENTER_REGION_3022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3022", action = "action_EVENT_ENTER_REGION_3022" },
	{ config_id = 1003023, name = "CHALLENGE_FAIL_3023", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3023" },
	{ config_id = 1003024, name = "DUNGEON_SETTLE_3024", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_3024", action = "action_EVENT_DUNGEON_SETTLE_3024" },
	{ config_id = 1003025, name = "ANY_MONSTER_DIE_3025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3025", action = "action_EVENT_ANY_MONSTER_DIE_3025" },
	{ config_id = 1003027, name = "ANY_MONSTER_DIE_3027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3027", action = "action_EVENT_ANY_MONSTER_DIE_3027" },
	{ config_id = 1003028, name = "ANY_MONSTER_DIE_3028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3028", action = "action_EVENT_ANY_MONSTER_DIE_3028" },
	{ config_id = 1003029, name = "ANY_MONSTER_DIE_3029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3029", action = "action_EVENT_ANY_MONSTER_DIE_3029" },
	{ config_id = 1003031, name = "TIME_AXIS_PASS_3031", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_3031", action = "action_EVENT_TIME_AXIS_PASS_3031", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "MonsterWave", value = 0, no_refresh = false }
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
		gadgets = { 3030 },
		regions = { 3022 },
		triggers = { "ENTER_REGION_3022", "CHALLENGE_FAIL_3023", "DUNGEON_SETTLE_3024", "TIME_AXIS_PASS_3031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3002, 3003, 3004, 3005, 3006 },
		gadgets = { 3001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3007, 3008, 3009, 3010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 3011, 3012, 3013, 3014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3028" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 3015, 3016, 3017, 3018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3029" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 3019, 3020, 3021 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 3026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 3030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 3032, 3033 },
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
function condition_EVENT_ENTER_REGION_3022(context, evt)
	if evt.param1 ~= 3022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3022(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 240054003, 9)
	
	-- 针对当前group内变量名为 "MonsterWave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "MonsterWave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 240054002, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240054003, 2)
	
	-- 创建编号为1（该挑战的识别id),挑战内容为4的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 4, 240054003, 20, 30, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3023(context, evt)
	for i = 2, 6 do
	        ScriptLib.RemoveExtraGroupSuite(context, 240054003, i)
	end
	
	ScriptLib.InitTimeAxis(context, "refresh_challenge", {3}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_3024(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_3024(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240054003, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3025(context, evt)
	-- 判断变量"MonsterWave"为1
	if ScriptLib.GetGroupVariableValue(context, "MonsterWave") ~= 1 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3025(context, evt)
	-- 针对当前group内变量名为 "MonsterWave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "MonsterWave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240054003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3027(context, evt)
	-- 判断变量"MonsterWave"为2
	if ScriptLib.GetGroupVariableValue(context, "MonsterWave") ~= 2 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3027(context, evt)
	-- 针对当前group内变量名为 "MonsterWave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "MonsterWave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240054003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3028(context, evt)
	-- 判断变量"MonsterWave"为3
	if ScriptLib.GetGroupVariableValue(context, "MonsterWave") ~= 3 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3028(context, evt)
	-- 针对当前group内变量名为 "MonsterWave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "MonsterWave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240054003, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3029(context, evt)
	-- 判断变量"MonsterWave"为4
	if ScriptLib.GetGroupVariableValue(context, "MonsterWave") ~= 4 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3029(context, evt)
	-- 针对当前group内变量名为 "MonsterWave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "MonsterWave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240054003, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_3031(context, evt)
	if "refresh_challenge" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3031(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240054003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240054002, 2)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240054003, 9)
	
	return 0
end