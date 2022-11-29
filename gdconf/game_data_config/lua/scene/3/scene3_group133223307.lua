-- 基础信息
local base_info = {
	group_id = 133223307
}

-- DEFS_MISCS
local defs = {
	group_id = 133223307,
	thunder1_id = 307011,
	thunder2_id = 307012,
	thunder3_id = 307013,
	guide_point1_id = 307014,
	guide_point2_id = 307015,
	guide_point3_id = 307016,
	monster1_sum = 1,
	monster2_sum  = 1,
	monster3_sum  = 1
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 307001, monster_id = 22040201, pos = { x = -6451.721, y = 243.900, z = -2557.385 }, rot = { x = 0.000, y = 86.204, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 307003, monster_id = 26010301, pos = { x = -6437.897, y = 244.468, z = -2571.598 }, rot = { x = 0.000, y = 242.304, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, climate_area_id = 7, area_id = 18 },
	{ config_id = 307005, monster_id = 22040101, pos = { x = -6446.377, y = 241.322, z = -2599.145 }, rot = { x = 7.161, y = 22.719, z = 3.658 }, level = 1, drop_id = 1000100, affix = { 1401 }, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 307007, gadget_id = 70210117, pos = { x = -6451.041, y = 244.294, z = -2559.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 18 },
	{ config_id = 307008, gadget_id = 70210117, pos = { x = -6437.711, y = 245.008, z = -2573.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 18 },
	{ config_id = 307009, gadget_id = 70210117, pos = { x = -6444.839, y = 241.688, z = -2599.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 18 },
	{ config_id = 307010, gadget_id = 70290196, pos = { x = -6433.457, y = 242.028, z = -2570.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 307011, gadget_id = 70330082, pos = { x = -6451.041, y = 244.294, z = -2559.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 18 },
	{ config_id = 307012, gadget_id = 70330082, pos = { x = -6437.711, y = 245.008, z = -2573.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 18 },
	{ config_id = 307013, gadget_id = 70330082, pos = { x = -6444.839, y = 241.688, z = -2599.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 18 },
	{ config_id = 307014, gadget_id = 70350085, pos = { x = -6451.041, y = 245.011, z = -2559.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 18 },
	{ config_id = 307015, gadget_id = 70350085, pos = { x = -6437.711, y = 245.919, z = -2573.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 18 },
	{ config_id = 307016, gadget_id = 70350085, pos = { x = -6444.839, y = 242.876, z = -2599.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 307017, shape = RegionShape.SPHERE, radius = 30, pos = { x = -6444.066, y = 242.345, z = -2581.401 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1307017, name = "ENTER_REGION_307017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_307017", action = "action_EVENT_ENTER_REGION_307017" },
	{ config_id = 1307018, name = "ANY_GADGET_DIE_307018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_307018", action = "action_EVENT_ANY_GADGET_DIE_307018", trigger_count = 0, tag = "998" },
	{ config_id = 1307019, name = "ANY_GADGET_DIE_307019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_307019", action = "action_EVENT_ANY_GADGET_DIE_307019", trigger_count = 0, tag = "998" },
	{ config_id = 1307020, name = "ANY_GADGET_DIE_307020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_307020", action = "action_EVENT_ANY_GADGET_DIE_307020", trigger_count = 0, tag = "998" },
	{ config_id = 1307021, name = "CHALLENGE_SUCCESS_307021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_307021" },
	{ config_id = 1307022, name = "CHALLENGE_FAIL_307022", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_307022" },
	{ config_id = 1307023, name = "CHALLENGE_SUCCESS_307023", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_307023" },
	{ config_id = 1307024, name = "GROUP_LOAD_307024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_307024", action = "action_EVENT_GROUP_LOAD_307024" },
	{ config_id = 1307025, name = "ANY_MONSTER_DIE_307025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_307025", action = "", trigger_count = 0, tag = "101" },
	{ config_id = 1307027, name = "ANY_MONSTER_DIE_307027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_307027", action = "", trigger_count = 0, tag = "102" },
	{ config_id = 1307029, name = "ANY_MONSTER_DIE_307029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_307029", action = "", trigger_count = 0, tag = "103" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
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
		gadgets = { 307010, 307011, 307012, 307013 },
		regions = { 307017 },
		triggers = { "ENTER_REGION_307017", "CHALLENGE_SUCCESS_307021", "CHALLENGE_FAIL_307022", "CHALLENGE_SUCCESS_307023", "GROUP_LOAD_307024", "ANY_MONSTER_DIE_307025", "ANY_MONSTER_DIE_307027", "ANY_MONSTER_DIE_307029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 迷雾一埋伏怪物组,
		monsters = { 307001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 迷雾二埋伏怪物组,
		monsters = { 307003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 迷雾三埋伏怪物组,
		monsters = { 307005 },
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
		-- description = 雷迷雾组,
		monsters = { },
		gadgets = { 307007, 307008, 307009, 307014, 307015, 307016 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_307018", "ANY_GADGET_DIE_307019", "ANY_GADGET_DIE_307020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_307017(context, evt)
	if evt.param1 ~= 307017 then return false end
	
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
function action_EVENT_ENTER_REGION_307017(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 6)
	
	ScriptLib.CreateFatherChallenge(context, 100, 67, 99999, {success=400, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 68, {2,998,3}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_307018(context, evt)
	if 307007 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_307018(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	        ScriptLib.AttachChildChallenge(context, 100, 1002, 69, {1,101,defs.monster1_sum}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.thunder1_id, 202)
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.guide_point1_id })
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_307019(context, evt)
	if 307008 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_307019(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	        ScriptLib.AttachChildChallenge(context, 100, 1003, 69, {1,102,defs.monster2_sum}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.thunder2_id, 202)
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.guide_point2_id })
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_307020(context, evt)
	if 307009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_307020(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	        ScriptLib.AttachChildChallenge(context, 100, 1004, 69, {1,103,defs.monster3_sum}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.thunder3_id, 202)
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.guide_point3_id })
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_307021(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133223307, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_307022(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_307023(context, evt)
	ScriptLib.PrintContextLog(context, "## ChallengeSuccess 1001!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_307024(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_307024(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_307025(context, evt)
	if 307001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_307027(context, evt)
	if 307003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_307029(context, evt)
	if 307005 ~= evt.param1 then
		return false
	end
	
	return true
end