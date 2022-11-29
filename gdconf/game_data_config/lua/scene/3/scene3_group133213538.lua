-- 基础信息
local base_info = {
	group_id = 133213538
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 538001, monster_id = 20060301, pos = { x = -3860.592, y = 350.921, z = -3124.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 538002, monster_id = 20060301, pos = { x = -3860.215, y = 350.887, z = -3128.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 538003, monster_id = 20060301, pos = { x = -3863.629, y = 351.970, z = -3126.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 538004, monster_id = 20060201, pos = { x = -3858.667, y = 350.442, z = -3134.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 538005, monster_id = 20060201, pos = { x = -3870.160, y = 354.245, z = -3128.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 538006, monster_id = 20060201, pos = { x = -3867.499, y = 353.148, z = -3124.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 538020, monster_id = 20060301, pos = { x = -3867.604, y = 353.407, z = -3129.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 538021, monster_id = 20060201, pos = { x = -3862.659, y = 351.990, z = -3138.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 538007, gadget_id = 70330064, pos = { x = -3857.382, y = 349.884, z = -3131.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 },
	{ config_id = 538008, gadget_id = 70290096, pos = { x = -3855.500, y = 348.951, z = -3124.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 538009, gadget_id = 70290096, pos = { x = -3836.265, y = 340.772, z = -3117.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 538010, gadget_id = 70290096, pos = { x = -3866.007, y = 353.479, z = -3145.675 }, rot = { x = 0.000, y = 30.000, z = 350.000 }, level = 1, isOneoff = true, persistent = true, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 538011, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3843.425, y = 344.382, z = -3133.968 }, area_id = 12 },
	{ config_id = 538015, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3843.425, y = 344.382, z = -3133.968 }, area_id = 12 },
	{ config_id = 538022, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3843.425, y = 344.382, z = -3133.968 }, area_id = 12 },
	{ config_id = 538025, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3843.425, y = 344.382, z = -3133.968 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1538011, name = "ENTER_REGION_538011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_538011", action = "action_EVENT_ENTER_REGION_538011", trigger_count = 0 },
	{ config_id = 1538012, name = "GADGET_STATE_CHANGE_538012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_538012", action = "action_EVENT_GADGET_STATE_CHANGE_538012", trigger_count = 3, tag = "901" },
	{ config_id = 1538013, name = "VARIABLE_CHANGE_538013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_538013", action = "action_EVENT_VARIABLE_CHANGE_538013" },
	{ config_id = 1538014, name = "ANY_MONSTER_DIE_538014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_538014", action = "action_EVENT_ANY_MONSTER_DIE_538014" },
	{ config_id = 1538015, name = "ENTER_REGION_538015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_538015", action = "action_EVENT_ENTER_REGION_538015", trigger_count = 0 },
	{ config_id = 1538016, name = "VARIABLE_CHANGE_538016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_538016", action = "action_EVENT_VARIABLE_CHANGE_538016" },
	{ config_id = 1538017, name = "VARIABLE_CHANGE_538017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_538017", action = "action_EVENT_VARIABLE_CHANGE_538017" },
	{ config_id = 1538018, name = "VARIABLE_CHANGE_538018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_538018", action = "action_EVENT_VARIABLE_CHANGE_538018" },
	{ config_id = 1538019, name = "CHALLENGE_FAIL_538019", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "condition_EVENT_CHALLENGE_FAIL_538019", action = "action_EVENT_CHALLENGE_FAIL_538019" },
	{ config_id = 1538022, name = "ENTER_REGION_538022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_538022", action = "action_EVENT_ENTER_REGION_538022", trigger_count = 0 },
	{ config_id = 1538023, name = "ANY_MONSTER_DIE_538023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_538023", action = "action_EVENT_ANY_MONSTER_DIE_538023" },
	{ config_id = 1538024, name = "CHALLENGE_FAIL_538024", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "condition_EVENT_CHALLENGE_FAIL_538024", action = "action_EVENT_CHALLENGE_FAIL_538024" },
	{ config_id = 1538025, name = "ENTER_REGION_538025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_538025", action = "action_EVENT_ENTER_REGION_538025" },
	{ config_id = 1538026, name = "ANY_MONSTER_DIE_538026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_538026", action = "action_EVENT_ANY_MONSTER_DIE_538026", trigger_count = 8 }
}

-- 变量
variables = {
	{ config_id = 1, name = "flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "PuzzleFinish", value = 0, no_refresh = true },
	{ config_id = 3, name = "number", value = 3, no_refresh = true },
	{ config_id = 4, name = "challenge", value = 0, no_refresh = true },
	{ config_id = 5, name = "monster", value = 8, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 4,
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
		gadgets = { 538007, 538008, 538009, 538010 },
		regions = { 538011, 538015, 538022, 538025 },
		triggers = { "ENTER_REGION_538011", "GADGET_STATE_CHANGE_538012", "VARIABLE_CHANGE_538013", "ANY_MONSTER_DIE_538014", "ENTER_REGION_538015", "VARIABLE_CHANGE_538016", "VARIABLE_CHANGE_538017", "VARIABLE_CHANGE_538018", "CHALLENGE_FAIL_538019", "ENTER_REGION_538022", "CHALLENGE_FAIL_538024", "ENTER_REGION_538025", "ANY_MONSTER_DIE_538026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 538001, 538002, 538003, 538004, 538005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_538023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 538006, 538020, 538021 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
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
function condition_EVENT_ENTER_REGION_538011(context, evt)
	if evt.param1 ~= 538011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_538011(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	  ScriptLib.ExpeditionChallengeEnterRegion(context, false)
	elseif 1 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	    ScriptLib.ExpeditionChallengeEnterRegion(context, true)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_538012(context, evt)
	-- 检测config_id为52003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 538008 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	elseif 538009 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	elseif 538010 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_538012(context, evt)
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_538013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_538013(context, evt)
	-- 将本组内变量名为 "PuzzleFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "PuzzleFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213538, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_538014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133213538) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_538014(context, evt)
	-- 完成派遣挑战，发奖
	ScriptLib.FinishExpeditionChallenge(context)
	
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213538, 4) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_538015(context, evt)
	if evt.param1 ~= 538015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"PuzzleFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") ~= 1 then
			return false
	end
	
	-- 判断变量"challenge"为2
	if ScriptLib.GetGroupVariableValue(context, "challenge") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_538015(context, evt)
	local int j = ScriptLib.GetGroupVariableValueByGroup(context, "monster", 133213538) 
	
	ScriptLib.CreateFatherChallenge(context, 102, 111175, 9999, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 102, 203, 111173, {133213538,j},{},{success=1,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 102)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213538, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_538016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为2
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_538016(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_538017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为1
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_538017(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_538018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_538018(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_538019(context, evt)
	-- 判断变量"PuzzleFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_538019(context, evt)
	-- 将本组内变量名为 "challenge" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_538022(context, evt)
	if evt.param1 ~= 538022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"PuzzleFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") ~= 0 then
			return false
	end
	
	-- 判断变量"challenge"为0
	if ScriptLib.GetGroupVariableValue(context, "challenge") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_538022(context, evt)
	local int i = ScriptLib.GetGroupVariableValueByGroup(context, "number", 133213538) 
	
	ScriptLib.CreateFatherChallenge(context, 101, 111175, 9999, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 101, 202, 111174, {7,901,i},{},{success=0,fail=0})
	
	ScriptLib.AttachChildChallenge(context, 101, 201, 111173, {133213538,8},{},{success=1,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 101)
	
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_538023(context, evt)
	-- 判断指定group组剩余怪物数量是否是2 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133213538) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_538023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213538, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_538024(context, evt)
	-- 判断变量"PuzzleFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_538024(context, evt)
	-- 将本组内变量名为 "challenge" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_538025(context, evt)
	if evt.param1 ~= 538025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_538025(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_538026(context, evt)
	if 538001 == evt.param1 or 538002 == evt.param1 or 538004 == evt.param1 or 538005 == evt.param1 or 538003 == evt.param1 or 538006 == evt.param1 or 538020 == evt.param1 or 538021 == evt.param1 then
		return true
	end
	 
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_538026(context, evt)
	-- 针对当前group内变量名为 "monster" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end