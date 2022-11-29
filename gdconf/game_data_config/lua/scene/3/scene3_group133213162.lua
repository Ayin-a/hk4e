-- 基础信息
local base_info = {
	group_id = 133213162
}

-- DEFS_MISCS
local defs = {
	group_id = 133213162,
	thunder1_id = 162011,
	thunder2_id = 162012,
	thunder3_id = 162013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 162001, monster_id = 20010501, pos = { x = -3630.057, y = 244.804, z = -3244.148 }, rot = { x = 0.000, y = 353.381, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, area_id = 12 },
	{ config_id = 162002, monster_id = 20010501, pos = { x = -3635.061, y = 245.780, z = -3244.444 }, rot = { x = 0.000, y = 18.952, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, climate_area_id = 2, area_id = 12 },
	{ config_id = 162003, monster_id = 26010301, pos = { x = -3606.434, y = 237.387, z = -3227.458 }, rot = { x = 0.000, y = 274.281, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, area_id = 12 },
	{ config_id = 162005, monster_id = 20010601, pos = { x = -3629.015, y = 259.512, z = -3272.389 }, rot = { x = 7.161, y = 65.448, z = 3.658 }, level = 1, drop_id = 1000100, affix = { 1401 }, area_id = 12 },
	{ config_id = 162006, monster_id = 20010701, pos = { x = -3627.517, y = 259.249, z = -3276.899 }, rot = { x = 0.000, y = 39.259, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 162004, gadget_id = 70350085, pos = { x = -3608.231, y = 238.076, z = -3225.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 162007, gadget_id = 70210117, pos = { x = -3608.231, y = 237.817, z = -3225.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 162008, gadget_id = 70210117, pos = { x = -3632.241, y = 246.032, z = -3243.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 162009, gadget_id = 70210117, pos = { x = -3627.606, y = 260.380, z = -3274.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 162011, gadget_id = 70330082, pos = { x = -3608.231, y = 238.896, z = -3225.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 162012, gadget_id = 70330082, pos = { x = -3632.241, y = 247.835, z = -3243.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 162013, gadget_id = 70330082, pos = { x = -3625.821, y = 261.563, z = -3273.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 162021, gadget_id = 70350085, pos = { x = -3632.241, y = 246.286, z = -3243.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 162022, gadget_id = 70350085, pos = { x = -3627.606, y = 260.672, z = -3274.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 162029, gadget_id = 70290196, pos = { x = -3597.684, y = 233.515, z = -3237.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 162014, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3615.718, y = 244.154, z = -3248.378 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1162014, name = "ENTER_REGION_162014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_162014", action = "action_EVENT_ENTER_REGION_162014" },
	{ config_id = 1162015, name = "ANY_GADGET_DIE_162015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_162015", action = "action_EVENT_ANY_GADGET_DIE_162015", trigger_count = 0, tag = "998" },
	{ config_id = 1162016, name = "ANY_GADGET_DIE_162016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_162016", action = "action_EVENT_ANY_GADGET_DIE_162016", trigger_count = 0, tag = "998" },
	{ config_id = 1162017, name = "ANY_GADGET_DIE_162017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_162017", action = "action_EVENT_ANY_GADGET_DIE_162017", trigger_count = 0, tag = "998" },
	{ config_id = 1162018, name = "CHALLENGE_SUCCESS_162018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_162018" },
	{ config_id = 1162019, name = "CHALLENGE_FAIL_162019", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_162019" },
	{ config_id = 1162020, name = "CHALLENGE_SUCCESS_162020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_162020" },
	{ config_id = 1162023, name = "ANY_MONSTER_DIE_162023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162023", action = "", tag = "102" },
	{ config_id = 1162024, name = "ANY_MONSTER_DIE_162024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162024", action = "", tag = "102" },
	{ config_id = 1162025, name = "ANY_MONSTER_DIE_162025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162025", action = "", tag = "101" },
	{ config_id = 1162026, name = "ANY_MONSTER_DIE_162026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162026", action = "", tag = "103" },
	{ config_id = 1162027, name = "ANY_MONSTER_DIE_162027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162027", action = "", tag = "103" },
	{ config_id = 1162028, name = "GROUP_LOAD_162028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_162028", action = "action_EVENT_GROUP_LOAD_162028", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 162010, gadget_id = 70900205, pos = { x = -3597.684, y = 233.515, z = -3237.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 5,
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
		gadgets = { 162011, 162012, 162013, 162029 },
		regions = { 162014 },
		triggers = { "ENTER_REGION_162014", "ANY_GADGET_DIE_162015", "ANY_GADGET_DIE_162016", "ANY_GADGET_DIE_162017", "CHALLENGE_SUCCESS_162018", "CHALLENGE_FAIL_162019", "CHALLENGE_SUCCESS_162020", "ANY_MONSTER_DIE_162023", "ANY_MONSTER_DIE_162024", "ANY_MONSTER_DIE_162025", "ANY_MONSTER_DIE_162026", "ANY_MONSTER_DIE_162027", "GROUP_LOAD_162028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 迷雾一埋伏怪物组,
		monsters = { 162001, 162002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 迷雾二埋伏怪物组,
		monsters = { 162003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 迷雾三埋伏怪物组,
		monsters = { 162005, 162006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 完成挑战存档用,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 雷元素迷雾组,
		monsters = { },
		gadgets = { 162004, 162007, 162008, 162009, 162021, 162022 },
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
function condition_EVENT_ENTER_REGION_162014(context, evt)
	if evt.param1 ~= 162014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasStarted"为0
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_162014(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 67, 99999, {success=400, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 68, {2,998,3}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_162015(context, evt)
	if 162007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_162015(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	--local randomTemp = 1
	
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	        ScriptLib.AttachChildChallenge(context, 100, 1002, 69, {1,101,1}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.thunder1_id, 202)
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 162004 })
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_162016(context, evt)
	if 162008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_162016(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	--local randomTemp = 1
	
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	        ScriptLib.AttachChildChallenge(context, 100, 1003, 69, {1,102,2}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.thunder2_id, 202)
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 162021 })
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_162017(context, evt)
	if 162009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_162017(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	--local randomTemp = 1
	
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	        ScriptLib.AttachChildChallenge(context, 100, 1004, 69, {1,103,2}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.thunder3_id, 202)
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 162022 })
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_162018(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213162, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_162019(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 6)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_162020(context, evt)
	ScriptLib.PrintContextLog(context, "## ChallengeSuccess 1001!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162023(context, evt)
	if 162001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162024(context, evt)
	if 162002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162025(context, evt)
	if 162003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162026(context, evt)
	if 162005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162027(context, evt)
	if 162006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_162028(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_162028(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end