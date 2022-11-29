-- 基础信息
local base_info = {
	group_id = 133209052
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 52006, monster_id = 20060101, pos = { x = -2605.890, y = 200.000, z = -4081.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 52007, monster_id = 20060101, pos = { x = -2605.508, y = 200.000, z = -4084.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 52008, monster_id = 20060101, pos = { x = -2608.924, y = 200.000, z = -4084.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 52009, monster_id = 20060201, pos = { x = -2603.976, y = 200.282, z = -4091.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 52010, monster_id = 20060201, pos = { x = -2615.454, y = 200.846, z = -4085.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 52011, monster_id = 20060201, pos = { x = -2612.792, y = 200.476, z = -4080.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 52015, monster_id = 20060201, pos = { x = -2612.792, y = 200.476, z = -4082.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 52022, monster_id = 20060101, pos = { x = -2608.924, y = 200.000, z = -4084.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 52023, monster_id = 20060201, pos = { x = -2615.454, y = 200.846, z = -4087.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 52002, gadget_id = 70330064, pos = { x = -2616.472, y = 208.715, z = -4105.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 },
	{ config_id = 52003, gadget_id = 70290096, pos = { x = -2622.240, y = 203.548, z = -4098.023 }, rot = { x = 10.000, y = 0.000, z = 350.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 52004, gadget_id = 70290096, pos = { x = -2605.634, y = 199.722, z = -4083.820 }, rot = { x = 0.000, y = 33.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 52005, gadget_id = 70290158, pos = { x = -2614.230, y = 201.051, z = -4086.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 52001, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2612.678, y = 200.000, z = -4089.021 }, area_id = 11 },
	{ config_id = 52020, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2612.678, y = 200.000, z = -4089.021 }, area_id = 11 },
	{ config_id = 52021, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2612.678, y = 200.000, z = -4089.021 }, area_id = 11 },
	{ config_id = 52026, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2612.678, y = 200.000, z = -4089.021 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1052001, name = "ENTER_REGION_52001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52001", action = "action_EVENT_ENTER_REGION_52001", trigger_count = 0 },
	{ config_id = 1052012, name = "GADGET_STATE_CHANGE_52012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52012", action = "action_EVENT_GADGET_STATE_CHANGE_52012", trigger_count = 3, tag = "901" },
	{ config_id = 1052013, name = "VARIABLE_CHANGE_52013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_52013", action = "action_EVENT_VARIABLE_CHANGE_52013" },
	{ config_id = 1052014, name = "ANY_MONSTER_DIE_52014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_52014", action = "action_EVENT_ANY_MONSTER_DIE_52014" },
	{ config_id = 1052016, name = "VARIABLE_CHANGE_52016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_52016", action = "action_EVENT_VARIABLE_CHANGE_52016" },
	{ config_id = 1052017, name = "VARIABLE_CHANGE_52017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_52017", action = "action_EVENT_VARIABLE_CHANGE_52017" },
	{ config_id = 1052018, name = "VARIABLE_CHANGE_52018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_52018", action = "action_EVENT_VARIABLE_CHANGE_52018" },
	{ config_id = 1052019, name = "CHALLENGE_FAIL_52019", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "condition_EVENT_CHALLENGE_FAIL_52019", action = "action_EVENT_CHALLENGE_FAIL_52019" },
	{ config_id = 1052020, name = "ENTER_REGION_52020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52020", action = "action_EVENT_ENTER_REGION_52020", trigger_count = 0 },
	{ config_id = 1052021, name = "ENTER_REGION_52021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52021", action = "action_EVENT_ENTER_REGION_52021", trigger_count = 0 },
	{ config_id = 1052024, name = "ANY_MONSTER_DIE_52024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_52024", action = "action_EVENT_ANY_MONSTER_DIE_52024" },
	{ config_id = 1052025, name = "CHALLENGE_FAIL_52025", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "condition_EVENT_CHALLENGE_FAIL_52025", action = "action_EVENT_CHALLENGE_FAIL_52025" },
	{ config_id = 1052026, name = "ENTER_REGION_52026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52026", action = "action_EVENT_ENTER_REGION_52026" },
	{ config_id = 1052027, name = "ANY_MONSTER_DIE_52027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_52027", action = "action_EVENT_ANY_MONSTER_DIE_52027", trigger_count = 9 }
}

-- 变量
variables = {
	{ config_id = 1, name = "flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "PuzzleFinish", value = 0, no_refresh = true },
	{ config_id = 3, name = "number", value = 3, no_refresh = true },
	{ config_id = 4, name = "challenge", value = 0, no_refresh = true },
	{ config_id = 5, name = "monster", value = 9, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 52002, 52003, 52004, 52005 },
		regions = { 52001, 52020, 52021, 52026 },
		triggers = { "ENTER_REGION_52001", "GADGET_STATE_CHANGE_52012", "VARIABLE_CHANGE_52013", "ANY_MONSTER_DIE_52014", "VARIABLE_CHANGE_52016", "VARIABLE_CHANGE_52017", "VARIABLE_CHANGE_52018", "CHALLENGE_FAIL_52019", "ENTER_REGION_52020", "ENTER_REGION_52021", "CHALLENGE_FAIL_52025", "ENTER_REGION_52026", "ANY_MONSTER_DIE_52027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 52006, 52007, 52009, 52010, 52011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_52024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 52008, 52015, 52022, 52023 },
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
function condition_EVENT_ENTER_REGION_52001(context, evt)
	if evt.param1 ~= 52001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52001(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	  ScriptLib.ExpeditionChallengeEnterRegion(context, false)
	elseif 1 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	    ScriptLib.ExpeditionChallengeEnterRegion(context, true)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_52012(context, evt)
	-- 检测config_id为52003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 52003 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	elseif 52004 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	elseif 52005 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52012(context, evt)
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_52013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_52013(context, evt)
	-- 将本组内变量名为 "PuzzleFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "PuzzleFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209052, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_52014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133209052) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_52014(context, evt)
	-- 完成派遣挑战，发奖
	ScriptLib.FinishExpeditionChallenge(context)
	
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133209052, 4) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_52016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为1
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_52016(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_52017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为2
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_52017(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_52018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_52018(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_52019(context, evt)
	-- 判断变量"PuzzleFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_52019(context, evt)
	-- 将本组内变量名为 "challenge" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_52020(context, evt)
	if evt.param1 ~= 52020 then return false end
	
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
function action_EVENT_ENTER_REGION_52020(context, evt)
	local int i = ScriptLib.GetGroupVariableValueByGroup(context, "number", 133209052) 
	
	ScriptLib.CreateFatherChallenge(context, 101, 111175, 9999, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 101, 202, 111174, {7,901,i},{},{success=0,fail=0})
	
	ScriptLib.AttachChildChallenge(context, 101, 201, 111173, {133209052,9},{},{success=1,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 101)
	
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_52021(context, evt)
	if evt.param1 ~= 52021 then return false end
	
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
function action_EVENT_ENTER_REGION_52021(context, evt)
	local int j = ScriptLib.GetGroupVariableValueByGroup(context, "monster", 133209052) 
	
	ScriptLib.CreateFatherChallenge(context, 102, 111175, 9999, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 102, 203, 111173, {133209052,j},{},{success=1,fail=1})
	
	
	ScriptLib.StartFatherChallenge(context, 102)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209052, 2)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_52024(context, evt)
	-- 判断指定group组剩余怪物数量是否是2 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133209052) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_52024(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209052, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_52025(context, evt)
	-- 判断变量"PuzzleFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_52025(context, evt)
	-- 将本组内变量名为 "challenge" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_52026(context, evt)
	if evt.param1 ~= 52026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52026(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_52027(context, evt)
	if 52009 == evt.param1 or 52006 == evt.param1 or 52007 == evt.param1 or 52010 == evt.param1 or 52011 == evt.param1 or 52008 == evt.param1 or 52015 == evt.param1 or 52022 == evt.param1 or 52023 == evt.param1 then
		return true
	end
	 
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_52027(context, evt)
	-- 针对当前group内变量名为 "monster" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end