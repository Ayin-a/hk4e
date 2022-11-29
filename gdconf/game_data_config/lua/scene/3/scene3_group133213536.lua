-- 基础信息
local base_info = {
	group_id = 133213536
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 536001, monster_id = 20060101, pos = { x = -3376.617, y = 200.000, z = -3387.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 536002, monster_id = 20060101, pos = { x = -3376.235, y = 200.000, z = -3391.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 536003, monster_id = 20060101, pos = { x = -3372.505, y = 200.000, z = -3384.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 536004, monster_id = 20060201, pos = { x = -3374.716, y = 200.489, z = -3397.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 536005, monster_id = 20060201, pos = { x = -3374.984, y = 200.000, z = -3396.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 536006, monster_id = 20060301, pos = { x = -3369.226, y = 200.041, z = -3395.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 536020, monster_id = 20060301, pos = { x = -3366.693, y = 200.000, z = -3391.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 },
	{ config_id = 536021, monster_id = 20060101, pos = { x = -3375.885, y = 200.000, z = -3385.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 536007, gadget_id = 70330064, pos = { x = -3370.866, y = 201.825, z = -3407.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 },
	{ config_id = 536008, gadget_id = 70290096, pos = { x = -3358.129, y = 201.427, z = -3394.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 536009, gadget_id = 70290096, pos = { x = -3373.882, y = 199.301, z = -3383.772 }, rot = { x = 0.000, y = 333.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 536010, gadget_id = 70290158, pos = { x = -3390.801, y = 199.160, z = -3390.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 536011, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3385.518, y = 200.000, z = -3397.926 }, area_id = 12 },
	{ config_id = 536015, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3385.518, y = 200.000, z = -3397.921 }, area_id = 12 },
	{ config_id = 536022, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3385.518, y = 200.000, z = -3397.926 }, area_id = 12 },
	{ config_id = 536025, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3385.518, y = 200.000, z = -3397.926 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1536011, name = "ENTER_REGION_536011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_536011", action = "action_EVENT_ENTER_REGION_536011", trigger_count = 0 },
	{ config_id = 1536012, name = "GADGET_STATE_CHANGE_536012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_536012", action = "action_EVENT_GADGET_STATE_CHANGE_536012", trigger_count = 3, tag = "901" },
	{ config_id = 1536013, name = "VARIABLE_CHANGE_536013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_536013", action = "action_EVENT_VARIABLE_CHANGE_536013" },
	{ config_id = 1536014, name = "ANY_MONSTER_DIE_536014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_536014", action = "action_EVENT_ANY_MONSTER_DIE_536014" },
	{ config_id = 1536015, name = "ENTER_REGION_536015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_536015", action = "action_EVENT_ENTER_REGION_536015", trigger_count = 0 },
	{ config_id = 1536016, name = "VARIABLE_CHANGE_536016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_536016", action = "action_EVENT_VARIABLE_CHANGE_536016" },
	{ config_id = 1536017, name = "VARIABLE_CHANGE_536017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_536017", action = "action_EVENT_VARIABLE_CHANGE_536017" },
	{ config_id = 1536018, name = "VARIABLE_CHANGE_536018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_536018", action = "action_EVENT_VARIABLE_CHANGE_536018" },
	{ config_id = 1536019, name = "CHALLENGE_FAIL_536019", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "condition_EVENT_CHALLENGE_FAIL_536019", action = "action_EVENT_CHALLENGE_FAIL_536019" },
	{ config_id = 1536022, name = "ENTER_REGION_536022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_536022", action = "action_EVENT_ENTER_REGION_536022", trigger_count = 0 },
	{ config_id = 1536023, name = "ANY_MONSTER_DIE_536023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_536023", action = "action_EVENT_ANY_MONSTER_DIE_536023" },
	{ config_id = 1536024, name = "CHALLENGE_FAIL_536024", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "condition_EVENT_CHALLENGE_FAIL_536024", action = "action_EVENT_CHALLENGE_FAIL_536024" },
	{ config_id = 1536025, name = "ENTER_REGION_536025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_536025", action = "action_EVENT_ENTER_REGION_536025" },
	{ config_id = 1536026, name = "ANY_MONSTER_DIE_536026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_536026", action = "action_EVENT_ANY_MONSTER_DIE_536026", trigger_count = 8 }
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
		gadgets = { 536007, 536008, 536009, 536010 },
		regions = { 536011, 536015, 536022, 536025 },
		triggers = { "ENTER_REGION_536011", "GADGET_STATE_CHANGE_536012", "VARIABLE_CHANGE_536013", "ANY_MONSTER_DIE_536014", "ENTER_REGION_536015", "VARIABLE_CHANGE_536016", "VARIABLE_CHANGE_536017", "VARIABLE_CHANGE_536018", "CHALLENGE_FAIL_536019", "ENTER_REGION_536022", "CHALLENGE_FAIL_536024", "ENTER_REGION_536025", "ANY_MONSTER_DIE_536026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 536001, 536002, 536003, 536004, 536005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_536023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 536006, 536020, 536021 },
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
function condition_EVENT_ENTER_REGION_536011(context, evt)
	if evt.param1 ~= 536011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_536011(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	  ScriptLib.ExpeditionChallengeEnterRegion(context, false)
	elseif 1 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	    ScriptLib.ExpeditionChallengeEnterRegion(context, true)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_536012(context, evt)
	-- 检测config_id为52003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 536008 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	elseif 536009 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	elseif 536010 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_536012(context, evt)
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_536013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_536013(context, evt)
	-- 将本组内变量名为 "PuzzleFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "PuzzleFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213536, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_536014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133213536) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_536014(context, evt)
	-- 完成派遣挑战，发奖
	ScriptLib.FinishExpeditionChallenge(context)
	
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213536, 4) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_536015(context, evt)
	if evt.param1 ~= 536015 then return false end
	
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
function action_EVENT_ENTER_REGION_536015(context, evt)
	local int j = ScriptLib.GetGroupVariableValueByGroup(context, "monster", 133213536) 
	
	ScriptLib.CreateFatherChallenge(context, 102, 111175, 9999, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 102, 203, 111173, {133213536,j},{},{success=1,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 102)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213536, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_536016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为2
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_536016(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_536017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为1
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_536017(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_536018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_536018(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_536019(context, evt)
	-- 判断变量"PuzzleFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_536019(context, evt)
	-- 将本组内变量名为 "challenge" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_536022(context, evt)
	if evt.param1 ~= 536022 then return false end
	
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
function action_EVENT_ENTER_REGION_536022(context, evt)
	local int i = ScriptLib.GetGroupVariableValueByGroup(context, "number", 133213536) 
	
	ScriptLib.CreateFatherChallenge(context, 101, 111175, 9999, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 101, 202, 111174, {7,901,i},{},{success=0,fail=0})
	
	ScriptLib.AttachChildChallenge(context, 101, 201, 111173, {133213536,8},{},{success=1,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 101)
	
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_536023(context, evt)
	-- 判断指定group组剩余怪物数量是否是2 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133213536) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_536023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213536, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_536024(context, evt)
	-- 判断变量"PuzzleFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_536024(context, evt)
	-- 将本组内变量名为 "challenge" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_536025(context, evt)
	if evt.param1 ~= 536025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_536025(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_536026(context, evt)
	if 536001 == evt.param1 or 536002 == evt.param1 or 536004 == evt.param1 or 536005 == evt.param1 or 536003 == evt.param1 or 536006 == evt.param1 or 536020 == evt.param1 or 536021 == evt.param1 then
		return true
	end
	 
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_536026(context, evt)
	-- 针对当前group内变量名为 "monster" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end