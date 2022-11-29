-- 基础信息
local base_info = {
	group_id = 133222060
}

-- DEFS_MISCS
local defs = {
	group_id = 133222060,
	thunder1_id = 60011,
	thunder2_id = 60012,
	thunder3_id = 60013,
	guide_point1_id = 60014,
	guide_point2_id = 60015,
	guide_point3_id = 60016,
	monster1_sum = 2,
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
	{ config_id = 60001, monster_id = 21010701, pos = { x = -4296.256, y = 204.355, z = -4195.624 }, rot = { x = 0.000, y = 261.561, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, area_id = 14 },
	{ config_id = 60002, monster_id = 21010701, pos = { x = -4298.218, y = 204.762, z = -4191.490 }, rot = { x = 0.000, y = 228.028, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, area_id = 14 },
	{ config_id = 60004, monster_id = 20010601, pos = { x = -4326.536, y = 204.072, z = -4208.798 }, rot = { x = 0.000, y = 72.317, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, area_id = 14 },
	{ config_id = 60005, monster_id = 21030601, pos = { x = -4305.085, y = 203.977, z = -4221.090 }, rot = { x = 7.161, y = 285.217, z = 3.658 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 60007, gadget_id = 70210117, pos = { x = -4296.878, y = 205.066, z = -4193.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 60008, gadget_id = 70210117, pos = { x = -4328.528, y = 204.306, z = -4205.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 60009, gadget_id = 70210117, pos = { x = -4306.696, y = 204.252, z = -4221.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 60010, gadget_id = 70290196, pos = { x = -4316.828, y = 199.647, z = -4197.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 60011, gadget_id = 70330082, pos = { x = -4296.878, y = 205.066, z = -4193.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 60012, gadget_id = 70330082, pos = { x = -4328.528, y = 204.306, z = -4205.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 60013, gadget_id = 70330082, pos = { x = -4306.696, y = 204.252, z = -4221.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 60014, gadget_id = 70350085, pos = { x = -4296.876, y = 205.961, z = -4193.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 60015, gadget_id = 70350085, pos = { x = -4328.528, y = 205.852, z = -4205.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 60016, gadget_id = 70350085, pos = { x = -4306.696, y = 205.805, z = -4221.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 60017, shape = RegionShape.SPHERE, radius = 30, pos = { x = -4314.473, y = 185.151, z = -4208.528 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1060017, name = "ENTER_REGION_60017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_60017", action = "action_EVENT_ENTER_REGION_60017" },
	{ config_id = 1060018, name = "ANY_GADGET_DIE_60018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_60018", action = "action_EVENT_ANY_GADGET_DIE_60018", trigger_count = 0, tag = "998" },
	{ config_id = 1060019, name = "ANY_GADGET_DIE_60019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_60019", action = "action_EVENT_ANY_GADGET_DIE_60019", trigger_count = 0, tag = "998" },
	{ config_id = 1060020, name = "ANY_GADGET_DIE_60020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_60020", action = "action_EVENT_ANY_GADGET_DIE_60020", trigger_count = 0, tag = "998" },
	{ config_id = 1060021, name = "CHALLENGE_SUCCESS_60021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_60021" },
	{ config_id = 1060022, name = "CHALLENGE_FAIL_60022", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_60022" },
	{ config_id = 1060023, name = "CHALLENGE_SUCCESS_60023", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_60023" },
	{ config_id = 1060024, name = "GROUP_LOAD_60024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_60024", action = "action_EVENT_GROUP_LOAD_60024" },
	{ config_id = 1060025, name = "ANY_MONSTER_DIE_60025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60025", action = "", trigger_count = 0, tag = "101" },
	{ config_id = 1060026, name = "ANY_MONSTER_DIE_60026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60026", action = "", trigger_count = 0, tag = "101" },
	{ config_id = 1060027, name = "ANY_MONSTER_DIE_60027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60027", action = "", trigger_count = 0, tag = "102" },
	{ config_id = 1060029, name = "ANY_MONSTER_DIE_60029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60029", action = "", trigger_count = 0, tag = "103" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 60003, monster_id = 21020201, pos = { x = -4326.536, y = 204.072, z = -4208.798 }, rot = { x = 0.000, y = 72.317, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, area_id = 14 }
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
		gadgets = { 60010, 60011, 60012, 60013 },
		regions = { 60017 },
		triggers = { "ENTER_REGION_60017", "ANY_GADGET_DIE_60018", "ANY_GADGET_DIE_60019", "ANY_GADGET_DIE_60020", "CHALLENGE_SUCCESS_60021", "CHALLENGE_FAIL_60022", "CHALLENGE_SUCCESS_60023", "GROUP_LOAD_60024", "ANY_MONSTER_DIE_60025", "ANY_MONSTER_DIE_60026", "ANY_MONSTER_DIE_60027", "ANY_MONSTER_DIE_60029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 迷雾一埋伏怪物组,
		monsters = { 60001, 60002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 迷雾二埋伏怪物组,
		monsters = { 60004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 迷雾三埋伏怪物组,
		monsters = { 60005 },
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
		gadgets = { 60007, 60008, 60009, 60014, 60015, 60016 },
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
function condition_EVENT_ENTER_REGION_60017(context, evt)
	if evt.param1 ~= 60017 then return false end
	
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
function action_EVENT_ENTER_REGION_60017(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 67, 99999, {success=400, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 68, {2,998,3}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_60018(context, evt)
	if 60007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_60018(context, evt)
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
function condition_EVENT_ANY_GADGET_DIE_60019(context, evt)
	if 60008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_60019(context, evt)
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
function condition_EVENT_ANY_GADGET_DIE_60020(context, evt)
	if 60009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_60020(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_60021(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133222060, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_60022(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 6)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_60023(context, evt)
	ScriptLib.PrintContextLog(context, "## ChallengeSuccess 1001!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_60024(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_60024(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60025(context, evt)
	if 60001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60026(context, evt)
	if 60002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60027(context, evt)
	if 60004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60029(context, evt)
	if 60005 ~= evt.param1 then
		return false
	end
	
	return true
end