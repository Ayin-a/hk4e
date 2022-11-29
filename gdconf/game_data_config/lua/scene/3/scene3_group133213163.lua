-- 基础信息
local base_info = {
	group_id = 133213163
}

-- DEFS_MISCS
local defs = {
	group_id = 133213163,
	thunder1_id = 163010,
	thunder2_id = 163011,
	thunder3_id = 163012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 163001, monster_id = 21030601, pos = { x = -3684.648, y = 205.289, z = -3195.052 }, rot = { x = 0.000, y = 5.097, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, climate_area_id = 2, area_id = 12 },
	{ config_id = 163002, monster_id = 21011001, pos = { x = -3681.943, y = 206.138, z = -3198.735 }, rot = { x = 0.000, y = 354.919, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, climate_area_id = 2, area_id = 12 },
	{ config_id = 163003, monster_id = 26010301, pos = { x = -3685.275, y = 224.848, z = -3278.284 }, rot = { x = 0.000, y = 1.286, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, area_id = 12 },
	{ config_id = 163004, monster_id = 20010601, pos = { x = -3646.003, y = 200.889, z = -3159.792 }, rot = { x = 0.000, y = 323.759, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, climate_area_id = 2, area_id = 12 },
	{ config_id = 163005, monster_id = 20010701, pos = { x = -3651.484, y = 200.690, z = -3160.634 }, rot = { x = 0.000, y = 350.706, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, climate_area_id = 2, area_id = 12 },
	{ config_id = 163020, monster_id = 21011001, pos = { x = -3687.784, y = 205.812, z = -3198.531 }, rot = { x = 0.000, y = 23.017, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, climate_area_id = 2, area_id = 12 },
	{ config_id = 163021, monster_id = 20010601, pos = { x = -3656.688, y = 200.977, z = -3162.396 }, rot = { x = 0.000, y = 9.109, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1401 }, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 163006, gadget_id = 70210117, pos = { x = -3684.895, y = 206.720, z = -3196.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 163007, gadget_id = 70210117, pos = { x = -3687.474, y = 225.986, z = -3274.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 163008, gadget_id = 70210117, pos = { x = -3651.590, y = 202.058, z = -3161.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 163010, gadget_id = 70330082, pos = { x = -3671.959, y = 207.517, z = -3181.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 163011, gadget_id = 70330082, pos = { x = -3687.474, y = 226.885, z = -3274.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 163012, gadget_id = 70330082, pos = { x = -3636.689, y = 205.013, z = -3162.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 163022, gadget_id = 70350085, pos = { x = -3684.895, y = 206.963, z = -3196.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 163023, gadget_id = 70350085, pos = { x = -3687.474, y = 226.472, z = -3274.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 163024, gadget_id = 70350085, pos = { x = -3651.590, y = 203.828, z = -3161.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 163033, gadget_id = 70290196, pos = { x = -3671.836, y = 197.121, z = -3208.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 163013, shape = RegionShape.SPHERE, radius = 80, pos = { x = -3669.427, y = 206.069, z = -3209.014 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1163013, name = "ENTER_REGION_163013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_163013", action = "action_EVENT_ENTER_REGION_163013" },
	{ config_id = 1163014, name = "ANY_GADGET_DIE_163014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_163014", action = "action_EVENT_ANY_GADGET_DIE_163014", trigger_count = 0, tag = "998" },
	{ config_id = 1163015, name = "ANY_GADGET_DIE_163015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_163015", action = "action_EVENT_ANY_GADGET_DIE_163015", trigger_count = 0, tag = "998" },
	{ config_id = 1163016, name = "ANY_GADGET_DIE_163016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_163016", action = "action_EVENT_ANY_GADGET_DIE_163016", trigger_count = 0, tag = "998" },
	{ config_id = 1163017, name = "CHALLENGE_SUCCESS_163017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_163017" },
	{ config_id = 1163018, name = "CHALLENGE_FAIL_163018", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_163018" },
	{ config_id = 1163019, name = "CHALLENGE_SUCCESS_163019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_163019" },
	{ config_id = 1163025, name = "ANY_MONSTER_DIE_163025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163025", action = "", tag = "101" },
	{ config_id = 1163026, name = "ANY_MONSTER_DIE_163026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163026", action = "", tag = "101" },
	{ config_id = 1163027, name = "ANY_MONSTER_DIE_163027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163027", action = "", tag = "101" },
	{ config_id = 1163028, name = "ANY_MONSTER_DIE_163028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163028", action = "", tag = "102" },
	{ config_id = 1163029, name = "ANY_MONSTER_DIE_163029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163029", action = "", tag = "103" },
	{ config_id = 1163030, name = "ANY_MONSTER_DIE_163030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163030", action = "", tag = "103" },
	{ config_id = 1163031, name = "ANY_MONSTER_DIE_163031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163031", action = "", tag = "103" },
	{ config_id = 1163032, name = "GROUP_LOAD_163032", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_163032", action = "action_EVENT_GROUP_LOAD_163032", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 163009, gadget_id = 70900205, pos = { x = -3671.836, y = 197.121, z = -3208.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 }
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
		gadgets = { 163010, 163011, 163012, 163033 },
		regions = { 163013 },
		triggers = { "ENTER_REGION_163013", "ANY_GADGET_DIE_163014", "ANY_GADGET_DIE_163015", "ANY_GADGET_DIE_163016", "CHALLENGE_SUCCESS_163017", "CHALLENGE_FAIL_163018", "CHALLENGE_SUCCESS_163019", "ANY_MONSTER_DIE_163025", "ANY_MONSTER_DIE_163026", "ANY_MONSTER_DIE_163027", "ANY_MONSTER_DIE_163028", "ANY_MONSTER_DIE_163029", "ANY_MONSTER_DIE_163030", "ANY_MONSTER_DIE_163031", "GROUP_LOAD_163032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 迷雾一埋伏怪物组,
		monsters = { 163001, 163002, 163020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 迷雾二埋伏怪物组,
		monsters = { 163003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 迷雾三埋伏怪物组,
		monsters = { 163004, 163005, 163021 },
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
		gadgets = { 163006, 163007, 163008, 163022, 163023, 163024 },
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
function condition_EVENT_ENTER_REGION_163013(context, evt)
	if evt.param1 ~= 163013 then return false end
	
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
function action_EVENT_ENTER_REGION_163013(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 1)
	
	ScriptLib.CreateFatherChallenge(context, 100, 67, 99999, {success=400, fail=100, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 100, 1001, 68, {2,998,3}, {},{success=100,fail=100})
	
	ScriptLib.StartFatherChallenge(context, 100)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_163014(context, evt)
	if 163006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_163014(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	        ScriptLib.AttachChildChallenge(context, 100, 1002, 69, {1,101,3}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.thunder1_id, 202)
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 163022 })
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_163015(context, evt)
	if 163007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_163015(context, evt)
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
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 163023 })
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_163016(context, evt)
	if 163008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_163016(context, evt)
	math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
	local randomTemp = math.random(1, 3)
	
	if randomTemp == 1 then
	        ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	        ScriptLib.AttachChildChallenge(context, 100, 1004, 69, {1,103,3}, {},{success=100,fail=100})
	elseif randomTemp == 2 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.thunder3_id, 202)
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	else
	        ScriptLib.ModifyFatherChallengeProperty(context, 100, FatherChallengeProperty.CUR_SUCC, 100)
	        ScriptLib.PrintContextLog(context, "## ModifyFatherChallengeProperty!!!" )
	end
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 163024 })
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_163017(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213163, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_163018(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 6)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_163019(context, evt)
	ScriptLib.PrintContextLog(context, "## ChallengeSuccess 1001!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_163025(context, evt)
	if 163001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_163026(context, evt)
	if 163002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_163027(context, evt)
	if 163020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_163028(context, evt)
	if 163003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_163029(context, evt)
	if 163004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_163030(context, evt)
	if 163005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_163031(context, evt)
	if 163021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_163032(context, evt)
	-- 判断变量"hasStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_163032(context, evt)
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	
	ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	
	return 0
end