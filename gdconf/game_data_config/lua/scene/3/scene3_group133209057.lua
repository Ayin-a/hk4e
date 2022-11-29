-- 基础信息
local base_info = {
	group_id = 133209057
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 57001, monster_id = 20060101, pos = { x = -2753.966, y = 225.320, z = -4475.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 57002, monster_id = 20060101, pos = { x = -2753.590, y = 226.119, z = -4479.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 57003, monster_id = 20060101, pos = { x = -2757.003, y = 225.420, z = -4477.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 57004, monster_id = 20060301, pos = { x = -2752.052, y = 228.004, z = -4485.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 57005, monster_id = 20060301, pos = { x = -2763.529, y = 226.112, z = -4479.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 57006, monster_id = 20060301, pos = { x = -2755.423, y = 225.420, z = -4464.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 57015, monster_id = 20060101, pos = { x = -2753.590, y = 226.119, z = -4477.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 57022, monster_id = 20060101, pos = { x = -2757.003, y = 225.420, z = -4475.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 },
	{ config_id = 57023, monster_id = 20060301, pos = { x = -2752.052, y = 228.004, z = -4484.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 57007, gadget_id = 70330064, pos = { x = -2757.931, y = 226.863, z = -4485.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 },
	{ config_id = 57008, gadget_id = 70290096, pos = { x = -2739.796, y = 232.367, z = -4485.899 }, rot = { x = 10.000, y = 20.000, z = 10.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 57009, gadget_id = 70290096, pos = { x = -2766.605, y = 227.561, z = -4501.934 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 57010, gadget_id = 70290096, pos = { x = -2761.916, y = 225.823, z = -4475.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 57011, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2760.753, y = 226.531, z = -4483.791 }, area_id = 11 },
	{ config_id = 57020, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2760.753, y = 226.531, z = -4483.791 }, area_id = 11 },
	{ config_id = 57021, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2760.753, y = 226.531, z = -4483.791 }, area_id = 11 },
	{ config_id = 57026, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2760.753, y = 226.531, z = -4483.791 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1057011, name = "ENTER_REGION_57011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57011", action = "action_EVENT_ENTER_REGION_57011", trigger_count = 0 },
	{ config_id = 1057012, name = "GADGET_STATE_CHANGE_57012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_57012", action = "action_EVENT_GADGET_STATE_CHANGE_57012", trigger_count = 3, tag = "901" },
	{ config_id = 1057013, name = "VARIABLE_CHANGE_57013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_57013", action = "action_EVENT_VARIABLE_CHANGE_57013" },
	{ config_id = 1057014, name = "ANY_MONSTER_DIE_57014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57014", action = "action_EVENT_ANY_MONSTER_DIE_57014" },
	{ config_id = 1057016, name = "VARIABLE_CHANGE_57016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_57016", action = "action_EVENT_VARIABLE_CHANGE_57016" },
	{ config_id = 1057017, name = "VARIABLE_CHANGE_57017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_57017", action = "action_EVENT_VARIABLE_CHANGE_57017" },
	{ config_id = 1057018, name = "VARIABLE_CHANGE_57018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_57018", action = "action_EVENT_VARIABLE_CHANGE_57018" },
	{ config_id = 1057019, name = "CHALLENGE_FAIL_57019", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "condition_EVENT_CHALLENGE_FAIL_57019", action = "action_EVENT_CHALLENGE_FAIL_57019" },
	{ config_id = 1057020, name = "ENTER_REGION_57020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57020", action = "action_EVENT_ENTER_REGION_57020", trigger_count = 0 },
	{ config_id = 1057021, name = "ENTER_REGION_57021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57021", action = "action_EVENT_ENTER_REGION_57021", trigger_count = 0 },
	{ config_id = 1057024, name = "ANY_MONSTER_DIE_57024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57024", action = "action_EVENT_ANY_MONSTER_DIE_57024" },
	{ config_id = 1057025, name = "CHALLENGE_FAIL_57025", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "condition_EVENT_CHALLENGE_FAIL_57025", action = "action_EVENT_CHALLENGE_FAIL_57025" },
	{ config_id = 1057026, name = "ENTER_REGION_57026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57026", action = "action_EVENT_ENTER_REGION_57026" },
	{ config_id = 1057027, name = "ANY_MONSTER_DIE_57027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57027", action = "action_EVENT_ANY_MONSTER_DIE_57027", trigger_count = 9 }
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
		gadgets = { 57007, 57008, 57009, 57010 },
		regions = { 57011, 57020, 57021, 57026 },
		triggers = { "ENTER_REGION_57011", "GADGET_STATE_CHANGE_57012", "VARIABLE_CHANGE_57013", "ANY_MONSTER_DIE_57014", "VARIABLE_CHANGE_57016", "VARIABLE_CHANGE_57017", "VARIABLE_CHANGE_57018", "CHALLENGE_FAIL_57019", "ENTER_REGION_57020", "ENTER_REGION_57021", "CHALLENGE_FAIL_57025", "ENTER_REGION_57026", "ANY_MONSTER_DIE_57027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 57001, 57002, 57003, 57004, 57005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_57024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 57006, 57015, 57022, 57023 },
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
function condition_EVENT_ENTER_REGION_57011(context, evt)
	if evt.param1 ~= 57011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57011(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	  ScriptLib.ExpeditionChallengeEnterRegion(context, false)
	elseif 1 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	    ScriptLib.ExpeditionChallengeEnterRegion(context, true)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_57012(context, evt)
	-- 检测config_id为52003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 57008 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	elseif 57009 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	elseif 57010 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_57012(context, evt)
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_57013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_57013(context, evt)
	-- 将本组内变量名为 "PuzzleFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "PuzzleFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209057, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_57014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133209057) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57014(context, evt)
	-- 完成派遣挑战，发奖
	ScriptLib.FinishExpeditionChallenge(context)
	
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133209057, 4) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_57016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为2
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_57016(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_57017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为1
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_57017(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_57018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_57018(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_57019(context, evt)
	-- 判断变量"PuzzleFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_57019(context, evt)
	-- 将本组内变量名为 "challenge" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57020(context, evt)
	if evt.param1 ~= 57020 then return false end
	
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
function action_EVENT_ENTER_REGION_57020(context, evt)
	local int i = ScriptLib.GetGroupVariableValueByGroup(context, "number", 133209057) 
	
	ScriptLib.CreateFatherChallenge(context, 101, 111175, 9999, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 101, 202, 111174, {7,901,i},{},{success=0,fail=0})
	
	ScriptLib.AttachChildChallenge(context, 101, 201, 111173, {133209057,9},{},{success=1,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 101)
	
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57021(context, evt)
	if evt.param1 ~= 57021 then return false end
	
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
function action_EVENT_ENTER_REGION_57021(context, evt)
	local int j = ScriptLib.GetGroupVariableValueByGroup(context, "monster", 133209057) 
	
	ScriptLib.CreateFatherChallenge(context, 102, 111175, 9999, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 102, 203, 111173, {133209057,j},{},{success=1,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 102)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209057, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_57024(context, evt)
	-- 判断指定group组剩余怪物数量是否是2 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133209057) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57024(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209057, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_57025(context, evt)
	-- 判断变量"PuzzleFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_57025(context, evt)
	-- 将本组内变量名为 "challenge" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57026(context, evt)
	if evt.param1 ~= 57026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57026(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_57027(context, evt)
	if 57001 == evt.param1 or 57002 == evt.param1 or 57003 == evt.param1 or 57004 == evt.param1 or 57005 == evt.param1 or 57006 == evt.param1 or 57015 == evt.param1 or 57022 == evt.param1 or 57023 == evt.param1 then
		return true
	end
	 
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57027(context, evt)
	-- 针对当前group内变量名为 "monster" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end