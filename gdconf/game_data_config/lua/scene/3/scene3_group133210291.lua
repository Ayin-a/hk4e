-- 基础信息
local base_info = {
	group_id = 133210291
}

-- DEFS_MISCS
local defs = {
	group_id = 133210291,
	thunder1_id = 291011,
	thunder2_id = 291012,
	thunder3_id = 291013,
	guide_point1_id = 291014,
	guide_point2_id = 291015,
	guide_point3_id = 291016,
	monster1_sum = 2,
	monster2_sum  = 2,
	monster3_sum  = 1
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 291001, monster_id = 20060301, pos = { x = -3768.138, y = 120.680, z = -840.942 }, rot = { x = 0.000, y = 314.259, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, pose_id = 101, area_id = 17 },
	{ config_id = 291002, monster_id = 20060301, pos = { x = -3770.352, y = 119.865, z = -844.812 }, rot = { x = 0.000, y = 328.589, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, pose_id = 101, area_id = 17 },
	{ config_id = 291003, monster_id = 20060101, pos = { x = -3804.464, y = 117.212, z = -842.044 }, rot = { x = 0.000, y = 219.384, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, pose_id = 101, area_id = 17 },
	{ config_id = 291004, monster_id = 20060101, pos = { x = -3805.222, y = 116.086, z = -835.989 }, rot = { x = 0.000, y = 196.430, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, pose_id = 101, area_id = 17 },
	{ config_id = 291005, monster_id = 26010301, pos = { x = -3847.167, y = 103.576, z = -819.805 }, rot = { x = 7.161, y = 45.964, z = 3.658 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 291007, gadget_id = 70210117, pos = { x = -3768.714, y = 121.763, z = -842.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 291008, gadget_id = 70210117, pos = { x = -3805.665, y = 116.814, z = -838.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 291009, gadget_id = 70210117, pos = { x = -3850.823, y = 104.878, z = -817.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 291010, gadget_id = 70290196, pos = { x = -3789.602, y = 114.579, z = -845.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 291011, gadget_id = 70330082, pos = { x = -3768.714, y = 120.571, z = -842.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 291012, gadget_id = 70330082, pos = { x = -3805.665, y = 115.764, z = -838.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 291013, gadget_id = 70330082, pos = { x = -3851.891, y = 101.584, z = -821.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 291014, gadget_id = 70350085, pos = { x = -3768.714, y = 124.014, z = -842.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 291015, gadget_id = 70350085, pos = { x = -3805.665, y = 117.812, z = -838.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 291016, gadget_id = 70350085, pos = { x = -3850.823, y = 106.134, z = -817.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 291017, shape = RegionShape.SPHERE, radius = 60, pos = { x = -3801.138, y = 116.382, z = -847.465 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1291017, name = "ENTER_REGION_291017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_291017", action = "action_EVENT_ENTER_REGION_291017" },
	{ config_id = 1291018, name = "ANY_GADGET_DIE_291018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_291018", action = "action_EVENT_ANY_GADGET_DIE_291018", trigger_count = 0, tag = "998" },
	{ config_id = 1291019, name = "ANY_GADGET_DIE_291019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_291019", action = "action_EVENT_ANY_GADGET_DIE_291019", trigger_count = 0, tag = "998" },
	{ config_id = 1291020, name = "ANY_GADGET_DIE_291020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_291020", action = "action_EVENT_ANY_GADGET_DIE_291020", trigger_count = 0, tag = "998" },
	{ config_id = 1291021, name = "CHALLENGE_SUCCESS_291021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_291021" },
	{ config_id = 1291022, name = "CHALLENGE_FAIL_291022", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_291022" },
	{ config_id = 1291023, name = "CHALLENGE_SUCCESS_291023", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_291023" },
	{ config_id = 1291024, name = "GROUP_LOAD_291024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_291024", action = "action_EVENT_GROUP_LOAD_291024" },
	{ config_id = 1291025, name = "ANY_MONSTER_DIE_291025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_291025", action = "", trigger_count = 0, tag = "101" },
	{ config_id = 1291026, name = "ANY_MONSTER_DIE_291026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_291026", action = "", trigger_count = 0, tag = "101" },
	{ config_id = 1291027, name = "ANY_MONSTER_DIE_291027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_291027", action = "", trigger_count = 0, tag = "102" },
	{ config_id = 1291028, name = "ANY_MONSTER_DIE_291028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_291028", action = "", trigger_count = 0, tag = "102" },
	{ config_id = 1291029, name = "ANY_MONSTER_DIE_291029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_291029", action = "", trigger_count = 0, tag = "103" }
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
		gadgets = { 291010, 291011, 291012, 291013 },
		regions = { 291017 },
		triggers = { "ENTER_REGION_291017", "ANY_GADGET_DIE_291018", "ANY_GADGET_DIE_291019", "ANY_GADGET_DIE_291020", "CHALLENGE_SUCCESS_291021", "CHALLENGE_FAIL_291022", "CHALLENGE_SUCCESS_291023", "GROUP_LOAD_291024", "ANY_MONSTER_DIE_291025", "ANY_MONSTER_DIE_291026", "ANY_MONSTER_DIE_291027", "ANY_MONSTER_DIE_291028", "ANY_MONSTER_DIE_291029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 迷雾一埋伏怪物组,
		monsters = { 291001, 291002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 迷雾二埋伏怪物组,
		monsters = { 291003, 291004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 迷雾三埋伏怪物组,
		monsters = { 291005 },
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
		gadgets = { 291007, 291008, 291009, 291014, 291015, 291016 },
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
function condition_EVENT_ENTER_REGION_291017(context, evt)
	if evt.param1 ~= 291017 then return false end
	
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
function action_EVENT_ENTER_REGION_291017(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 67, 99999, {success=400, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 68, {2,998,3}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_291018(context, evt)
	if 291007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_291018(context, evt)
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
function condition_EVENT_ANY_GADGET_DIE_291019(context, evt)
	if 291008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_291019(context, evt)
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
function condition_EVENT_ANY_GADGET_DIE_291020(context, evt)
	if 291009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_291020(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_291021(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210291, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_291022(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 6)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_291023(context, evt)
	ScriptLib.PrintContextLog(context, "## ChallengeSuccess 1001!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_291024(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_291024(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_291025(context, evt)
	if 291001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_291026(context, evt)
	if 291002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_291027(context, evt)
	if 291003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_291028(context, evt)
	if 291004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_291029(context, evt)
	if 291005 ~= evt.param1 then
		return false
	end
	
	return true
end