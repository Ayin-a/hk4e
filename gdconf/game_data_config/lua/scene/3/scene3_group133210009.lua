-- 基础信息
local base_info = {
	group_id = 133210009
}

-- DEFS_MISCS
local defs = {
	group_id = 133210009,
	thunder1_id = 9011,
	thunder2_id = 9012,
	thunder3_id = 9013,
	guide_point1_id = 9014,
	guide_point2_id = 9015,
	guide_point3_id = 9016,
	monster1_sum = 2,
	monster2_sum  = 2,
	monster3_sum  = 2
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 20010401, pos = { x = -3917.334, y = 118.976, z = -851.735 }, rot = { x = 0.000, y = 89.927, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, area_id = 17 },
	{ config_id = 9002, monster_id = 20010401, pos = { x = -3914.654, y = 117.791, z = -844.412 }, rot = { x = 0.000, y = 119.013, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, area_id = 17 },
	{ config_id = 9003, monster_id = 20011101, pos = { x = -3898.271, y = 108.079, z = -799.562 }, rot = { x = 0.000, y = 264.062, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, area_id = 17 },
	{ config_id = 9004, monster_id = 20011101, pos = { x = -3900.683, y = 108.721, z = -805.299 }, rot = { x = 0.000, y = 301.426, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, area_id = 17 },
	{ config_id = 9005, monster_id = 20010901, pos = { x = -3910.913, y = 107.882, z = -758.268 }, rot = { x = 7.161, y = 151.478, z = 3.658 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, area_id = 17 },
	{ config_id = 9006, monster_id = 20010901, pos = { x = -3903.837, y = 107.500, z = -756.847 }, rot = { x = 0.000, y = 185.053, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1401 }, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9007, gadget_id = 70210117, pos = { x = -3915.005, y = 119.963, z = -847.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 9008, gadget_id = 70210117, pos = { x = -3900.292, y = 109.601, z = -803.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 9009, gadget_id = 70210117, pos = { x = -3907.620, y = 109.141, z = -756.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 9010, gadget_id = 70290196, pos = { x = -3904.525, y = 105.967, z = -816.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 9011, gadget_id = 70330082, pos = { x = -3915.005, y = 118.585, z = -847.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 9012, gadget_id = 70330082, pos = { x = -3900.292, y = 108.724, z = -803.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 9013, gadget_id = 70330082, pos = { x = -3907.581, y = 107.866, z = -756.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 9014, gadget_id = 70350085, pos = { x = -3915.005, y = 121.101, z = -847.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 9015, gadget_id = 70350085, pos = { x = -3900.292, y = 110.545, z = -803.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 9016, gadget_id = 70350085, pos = { x = -3907.620, y = 110.616, z = -756.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 9017, shape = RegionShape.SPHERE, radius = 60, pos = { x = -3909.917, y = 107.500, z = -820.584 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1009017, name = "ENTER_REGION_9017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9017", action = "action_EVENT_ENTER_REGION_9017" },
	{ config_id = 1009018, name = "ANY_GADGET_DIE_9018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_9018", action = "action_EVENT_ANY_GADGET_DIE_9018", trigger_count = 0, tag = "998" },
	{ config_id = 1009019, name = "ANY_GADGET_DIE_9019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_9019", action = "action_EVENT_ANY_GADGET_DIE_9019", trigger_count = 0, tag = "998" },
	{ config_id = 1009020, name = "ANY_GADGET_DIE_9020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_9020", action = "action_EVENT_ANY_GADGET_DIE_9020", trigger_count = 0, tag = "998" },
	{ config_id = 1009021, name = "CHALLENGE_SUCCESS_9021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_9021" },
	{ config_id = 1009022, name = "CHALLENGE_FAIL_9022", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_9022" },
	{ config_id = 1009023, name = "CHALLENGE_SUCCESS_9023", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_9023" },
	{ config_id = 1009024, name = "GROUP_LOAD_9024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_9024", action = "action_EVENT_GROUP_LOAD_9024" },
	{ config_id = 1009025, name = "ANY_MONSTER_DIE_9025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9025", action = "", trigger_count = 0, tag = "101" },
	{ config_id = 1009026, name = "ANY_MONSTER_DIE_9026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9026", action = "", trigger_count = 0, tag = "101" },
	{ config_id = 1009027, name = "ANY_MONSTER_DIE_9027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9027", action = "", trigger_count = 0, tag = "102" },
	{ config_id = 1009028, name = "ANY_MONSTER_DIE_9028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9028", action = "", trigger_count = 0, tag = "102" },
	{ config_id = 1009029, name = "ANY_MONSTER_DIE_9029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9029", action = "", trigger_count = 0, tag = "103" },
	{ config_id = 1009030, name = "ANY_MONSTER_DIE_9030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9030", action = "", trigger_count = 0, tag = "103" }
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
		gadgets = { 9010, 9011, 9012, 9013 },
		regions = { 9017 },
		triggers = { "ENTER_REGION_9017", "ANY_GADGET_DIE_9018", "ANY_GADGET_DIE_9019", "ANY_GADGET_DIE_9020", "CHALLENGE_SUCCESS_9021", "CHALLENGE_FAIL_9022", "CHALLENGE_SUCCESS_9023", "GROUP_LOAD_9024", "ANY_MONSTER_DIE_9025", "ANY_MONSTER_DIE_9026", "ANY_MONSTER_DIE_9027", "ANY_MONSTER_DIE_9028", "ANY_MONSTER_DIE_9029", "ANY_MONSTER_DIE_9030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 迷雾一埋伏怪物组,
		monsters = { 9001, 9002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 迷雾二埋伏怪物组,
		monsters = { 9003, 9004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 迷雾三埋伏怪物组,
		monsters = { 9005, 9006 },
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
		gadgets = { 9007, 9008, 9009, 9014, 9015, 9016 },
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
function condition_EVENT_ENTER_REGION_9017(context, evt)
	if evt.param1 ~= 9017 then return false end
	
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
function action_EVENT_ENTER_REGION_9017(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 67, 99999, {success=400, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 68, {2,998,3}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_9018(context, evt)
	if 9007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_9018(context, evt)
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
function condition_EVENT_ANY_GADGET_DIE_9019(context, evt)
	if 9008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_9019(context, evt)
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
function condition_EVENT_ANY_GADGET_DIE_9020(context, evt)
	if 9009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_9020(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_9021(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210009, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_9022(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 6)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_9023(context, evt)
	ScriptLib.PrintContextLog(context, "## ChallengeSuccess 1001!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_9024(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_9024(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9025(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9026(context, evt)
	if 9002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9027(context, evt)
	if 9003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9028(context, evt)
	if 9004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9029(context, evt)
	if 9005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9030(context, evt)
	if 9006 ~= evt.param1 then
		return false
	end
	
	return true
end