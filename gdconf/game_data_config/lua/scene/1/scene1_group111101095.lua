-- 基础信息
local base_info = {
	group_id = 111101095
}

-- DEFS_MISCS
local defs = {
	group_id = 111101095,
	thunder1_id = 95019,
	thunder2_id = 95020,
	thunder3_id = 95021
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 95008, monster_id = 21010201, pos = { x = 2219.908, y = 234.748, z = -1321.063 }, rot = { x = 0.000, y = 224.506, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 95009, monster_id = 21010201, pos = { x = 2209.978, y = 236.673, z = -1319.127 }, rot = { x = 0.000, y = 196.430, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 95010, monster_id = 21010301, pos = { x = 2208.706, y = 236.661, z = -1312.891 }, rot = { x = 0.000, y = 219.384, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 95011, monster_id = 21010301, pos = { x = 2200.676, y = 235.094, z = -1307.245 }, rot = { x = 0.000, y = 196.430, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 95012, monster_id = 20010501, pos = { x = 2188.128, y = 235.734, z = -1313.011 }, rot = { x = 7.161, y = 207.150, z = 3.658 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 95013, monster_id = 20010501, pos = { x = 2183.861, y = 236.880, z = -1321.220 }, rot = { x = 0.000, y = 131.889, z = 0.000 }, level = 1, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 95001, gadget_id = 70210112, pos = { x = 2213.260, y = 237.008, z = -1320.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 95002, gadget_id = 70210112, pos = { x = 2203.261, y = 237.008, z = -1313.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 95003, gadget_id = 70210112, pos = { x = 2187.672, y = 237.387, z = -1319.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 95018, gadget_id = 70900205, pos = { x = 2203.261, y = 234.694, z = -1313.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 95019, gadget_id = 70710291, pos = { x = 2213.260, y = 237.008, z = -1320.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 95020, gadget_id = 70710291, pos = { x = 2203.261, y = 237.008, z = -1313.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 95021, gadget_id = 70710291, pos = { x = 2187.672, y = 237.387, z = -1319.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	{ config_id = 95004, shape = RegionShape.SPHERE, radius = 30, pos = { x = 2191.725, y = 236.227, z = -1315.411 } }
}

-- 触发器
triggers = {
	{ config_id = 1095004, name = "ENTER_REGION_95004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_95004", action = "action_EVENT_ENTER_REGION_95004" },
	{ config_id = 1095005, name = "ANY_GADGET_DIE_95005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95005", action = "action_EVENT_ANY_GADGET_DIE_95005", trigger_count = 0, tag = "998" },
	{ config_id = 1095006, name = "ANY_GADGET_DIE_95006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95006", action = "action_EVENT_ANY_GADGET_DIE_95006", trigger_count = 0, tag = "998" },
	{ config_id = 1095007, name = "ANY_GADGET_DIE_95007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95007", action = "action_EVENT_ANY_GADGET_DIE_95007", trigger_count = 0, tag = "998" },
	{ config_id = 1095014, name = "CHALLENGE_SUCCESS_95014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "" },
	{ config_id = 1095015, name = "CHALLENGE_FAIL_95015", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_95015" },
	{ config_id = 1095017, name = "CHALLENGE_SUCCESS_95017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_95017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = true }
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
		gadgets = { 95001, 95002, 95003, 95018, 95019, 95020, 95021 },
		regions = { 95004 },
		triggers = { "ENTER_REGION_95004", "ANY_GADGET_DIE_95005", "ANY_GADGET_DIE_95006", "ANY_GADGET_DIE_95007", "CHALLENGE_SUCCESS_95014", "CHALLENGE_FAIL_95015", "CHALLENGE_SUCCESS_95017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 迷雾一埋伏怪物组,
		monsters = { 95008, 95009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 迷雾二埋伏怪物组,
		monsters = { 95010, 95011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 迷雾三埋伏怪物组,
		monsters = { 95012, 95013 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_95004(context, evt)
	if evt.param1 ~= 95004 then return false end
	
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
function action_EVENT_ENTER_REGION_95004(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 67, 99999, {success=400, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 68, {2,998,3}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95005(context, evt)
	if 95001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95005(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	        ScriptLib.AttachChildChallenge(context, 100, 1002, 69, {defs.group_id,2}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.tunder1_id, 201)
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95006(context, evt)
	if 95002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95006(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	        ScriptLib.AttachChildChallenge(context, 100, 1002, 69, {defs.group_id,2}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.tunder2_id, 201)
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95007(context, evt)
	if 95003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95007(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	        ScriptLib.AttachChildChallenge(context, 100, 1002, 69, {defs.group_id,2}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.tunder3_id, 201)
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_95015(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_95017(context, evt)
	ScriptLib.PrintContextLog(context, "## ChallengeSuccess 1001!!!")
	
	return 0
end