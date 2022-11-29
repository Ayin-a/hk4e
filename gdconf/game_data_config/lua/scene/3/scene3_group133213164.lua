-- 基础信息
local base_info = {
	group_id = 133213164
}

-- DEFS_MISCS
local defs = {
	group_id = 133213164,
	thunder1_id = 164012,
	thunder2_id = 164013,
	thunder3_id = 164014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 21020701, pos = { x = -3862.355, y = 253.252, z = -3190.622 }, rot = { x = 0.000, y = 122.442, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, area_id = 12 },
	{ config_id = 164003, monster_id = 22010401, pos = { x = -3800.995, y = 202.645, z = -3120.407 }, rot = { x = 0.000, y = 113.702, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, climate_area_id = 2, area_id = 12 },
	{ config_id = 164004, monster_id = 20010501, pos = { x = -3824.046, y = 247.336, z = -3100.241 }, rot = { x = 0.000, y = 112.470, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, climate_area_id = 2, area_id = 12 },
	{ config_id = 164005, monster_id = 20010501, pos = { x = -3825.207, y = 248.303, z = -3097.833 }, rot = { x = 0.000, y = 103.796, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 164002, gadget_id = 70350085, pos = { x = -3824.067, y = 249.856, z = -3099.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 164006, gadget_id = 70350085, pos = { x = -3802.939, y = 203.961, z = -3121.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 164007, gadget_id = 70350085, pos = { x = -3862.179, y = 254.296, z = -3193.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 164008, gadget_id = 70210117, pos = { x = -3824.067, y = 249.298, z = -3099.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 164009, gadget_id = 70210117, pos = { x = -3802.939, y = 203.791, z = -3121.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 164010, gadget_id = 70210117, pos = { x = -3862.179, y = 253.973, z = -3193.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 164012, gadget_id = 70330082, pos = { x = -3822.810, y = 247.529, z = -3099.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 164013, gadget_id = 70330082, pos = { x = -3802.939, y = 204.531, z = -3121.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 164014, gadget_id = 70330082, pos = { x = -3860.197, y = 255.294, z = -3193.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 164027, gadget_id = 70290196, pos = { x = -3833.101, y = 224.181, z = -3175.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 164015, shape = RegionShape.SPHERE, radius = 80, pos = { x = -3813.637, y = 230.202, z = -3166.459 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1164015, name = "ENTER_REGION_164015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_164015", action = "action_EVENT_ENTER_REGION_164015" },
	{ config_id = 1164016, name = "ANY_GADGET_DIE_164016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_164016", action = "action_EVENT_ANY_GADGET_DIE_164016", trigger_count = 0, tag = "998" },
	{ config_id = 1164017, name = "ANY_GADGET_DIE_164017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_164017", action = "action_EVENT_ANY_GADGET_DIE_164017", trigger_count = 0, tag = "998" },
	{ config_id = 1164018, name = "ANY_GADGET_DIE_164018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_164018", action = "action_EVENT_ANY_GADGET_DIE_164018", trigger_count = 0, tag = "998" },
	{ config_id = 1164019, name = "CHALLENGE_SUCCESS_164019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_164019" },
	{ config_id = 1164020, name = "CHALLENGE_FAIL_164020", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_164020" },
	{ config_id = 1164021, name = "CHALLENGE_SUCCESS_164021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_164021" },
	{ config_id = 1164022, name = "ANY_MONSTER_DIE_164022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164022", action = "", tag = "101" },
	{ config_id = 1164023, name = "ANY_MONSTER_DIE_164023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164023", action = "", tag = "101" },
	{ config_id = 1164024, name = "ANY_MONSTER_DIE_164024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164024", action = "", tag = "102" },
	{ config_id = 1164025, name = "ANY_MONSTER_DIE_164025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164025", action = "", tag = "103" },
	{ config_id = 1164026, name = "GROUP_LOAD_164026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_164026", action = "action_EVENT_GROUP_LOAD_164026", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 164011, gadget_id = 70900205, pos = { x = -3833.101, y = 224.181, z = -3175.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 }
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
		gadgets = { 164012, 164013, 164014, 164027 },
		regions = { 164015 },
		triggers = { "ENTER_REGION_164015", "ANY_GADGET_DIE_164016", "ANY_GADGET_DIE_164017", "ANY_GADGET_DIE_164018", "CHALLENGE_SUCCESS_164019", "CHALLENGE_FAIL_164020", "CHALLENGE_SUCCESS_164021", "ANY_MONSTER_DIE_164022", "ANY_MONSTER_DIE_164023", "ANY_MONSTER_DIE_164024", "ANY_MONSTER_DIE_164025", "GROUP_LOAD_164026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 迷雾一埋伏怪物组,
		monsters = { 164004, 164005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 迷雾二埋伏怪物组,
		monsters = { 164003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 迷雾三埋伏怪物组,
		monsters = { 164001 },
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
		gadgets = { 164002, 164006, 164007, 164008, 164009, 164010 },
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
function condition_EVENT_ENTER_REGION_164015(context, evt)
	if evt.param1 ~= 164015 then return false end
	
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
function action_EVENT_ENTER_REGION_164015(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 67, 99999, {success=400, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 68, {2,998,3}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_164016(context, evt)
	if 164008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_164016(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	        ScriptLib.AttachChildChallenge(context, 100, 1002, 69, {1,101,2}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.thunder1_id, 202)
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 164002 })
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_164017(context, evt)
	if 164009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_164017(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	        ScriptLib.AttachChildChallenge(context, 100, 1003, 69, {1,102,1}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.thunder2_id, 202)
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 164006 })
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_164018(context, evt)
	if 164010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_164018(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	        ScriptLib.AttachChildChallenge(context, 100, 1004, 69, {1,103,1}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.thunder3_id, 202)
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 164007 })
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_164019(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213164, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_164020(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_164021(context, evt)
	ScriptLib.PrintContextLog(context, "## ChallengeSuccess 1001!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_164022(context, evt)
	if 164004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_164023(context, evt)
	if 164005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_164024(context, evt)
	if 164003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_164025(context, evt)
	if 164001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_164026(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_164026(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end