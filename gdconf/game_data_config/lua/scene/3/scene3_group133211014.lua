-- 基础信息
local base_info = {
	group_id = 133211014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 20060301, pos = { x = -4059.661, y = 269.817, z = -2231.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 13 },
	{ config_id = 14002, monster_id = 20060301, pos = { x = -4059.278, y = 270.133, z = -2234.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 13 },
	{ config_id = 14003, monster_id = 20060301, pos = { x = -4062.690, y = 271.330, z = -2232.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 13 },
	{ config_id = 14004, monster_id = 20060201, pos = { x = -4057.745, y = 270.024, z = -2241.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 13 },
	{ config_id = 14005, monster_id = 20060201, pos = { x = -4059.864, y = 270.491, z = -2235.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 13 },
	{ config_id = 14006, monster_id = 20060201, pos = { x = -4066.556, y = 272.629, z = -2230.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 13 },
	{ config_id = 14020, monster_id = 20060101, pos = { x = -4054.308, y = 267.811, z = -2232.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 13 },
	{ config_id = 14021, monster_id = 20060101, pos = { x = -4057.954, y = 269.387, z = -2233.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 13 },
	{ config_id = 14022, monster_id = 20060101, pos = { x = -4056.978, y = 269.459, z = -2237.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 13 },
	{ config_id = 14023, monster_id = 20060301, pos = { x = -4054.979, y = 267.773, z = -2230.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 13 },
	{ config_id = 14024, monster_id = 20060301, pos = { x = -4058.394, y = 268.942, z = -2228.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 13 },
	{ config_id = 14025, monster_id = 20060201, pos = { x = -4053.445, y = 267.744, z = -2236.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14007, gadget_id = 70330064, pos = { x = -4055.184, y = 268.574, z = -2236.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 13 },
	{ config_id = 14008, gadget_id = 70290158, pos = { x = -4059.425, y = 269.746, z = -2249.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 14009, gadget_id = 70290096, pos = { x = -4057.598, y = 267.576, z = -2222.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 14010, gadget_id = 70290096, pos = { x = -4041.021, y = 281.722, z = -2244.170 }, rot = { x = 5.508, y = 359.547, z = 355.287 }, level = 1, isOneoff = true, persistent = true, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 14011, shape = RegionShape.SPHERE, radius = 40, pos = { x = -4066.441, y = 273.819, z = -2239.183 }, area_id = 13 },
	{ config_id = 14015, shape = RegionShape.SPHERE, radius = 40, pos = { x = -4066.441, y = 273.819, z = -2239.183 }, area_id = 13 },
	{ config_id = 14027, shape = RegionShape.SPHERE, radius = 40, pos = { x = -4066.441, y = 273.819, z = -2239.183 }, area_id = 13 },
	{ config_id = 14030, shape = RegionShape.SPHERE, radius = 40, pos = { x = -4066.441, y = 273.819, z = -2239.183 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1014011, name = "ENTER_REGION_14011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14011", action = "action_EVENT_ENTER_REGION_14011", trigger_count = 0 },
	{ config_id = 1014012, name = "GADGET_STATE_CHANGE_14012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14012", action = "action_EVENT_GADGET_STATE_CHANGE_14012", trigger_count = 3, tag = "901" },
	{ config_id = 1014013, name = "VARIABLE_CHANGE_14013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_14013", action = "action_EVENT_VARIABLE_CHANGE_14013" },
	{ config_id = 1014014, name = "ANY_MONSTER_DIE_14014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14014", action = "action_EVENT_ANY_MONSTER_DIE_14014" },
	{ config_id = 1014015, name = "ENTER_REGION_14015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14015", action = "action_EVENT_ENTER_REGION_14015", trigger_count = 0 },
	{ config_id = 1014016, name = "VARIABLE_CHANGE_14016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_14016", action = "action_EVENT_VARIABLE_CHANGE_14016" },
	{ config_id = 1014017, name = "VARIABLE_CHANGE_14017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_14017", action = "action_EVENT_VARIABLE_CHANGE_14017" },
	{ config_id = 1014018, name = "VARIABLE_CHANGE_14018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_14018", action = "action_EVENT_VARIABLE_CHANGE_14018" },
	{ config_id = 1014019, name = "CHALLENGE_FAIL_14019", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "condition_EVENT_CHALLENGE_FAIL_14019", action = "action_EVENT_CHALLENGE_FAIL_14019", trigger_count = 0 },
	{ config_id = 1014026, name = "ANY_MONSTER_DIE_14026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14026", action = "action_EVENT_ANY_MONSTER_DIE_14026" },
	{ config_id = 1014027, name = "ENTER_REGION_14027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14027", action = "action_EVENT_ENTER_REGION_14027", trigger_count = 0 },
	{ config_id = 1014028, name = "ANY_MONSTER_DIE_14028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14028", action = "action_EVENT_ANY_MONSTER_DIE_14028" },
	{ config_id = 1014029, name = "CHALLENGE_FAIL_14029", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "condition_EVENT_CHALLENGE_FAIL_14029", action = "action_EVENT_CHALLENGE_FAIL_14029", trigger_count = 0 },
	{ config_id = 1014030, name = "ENTER_REGION_14030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14030", action = "action_EVENT_ENTER_REGION_14030" },
	{ config_id = 1014031, name = "ANY_MONSTER_DIE_14031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14031", action = "action_EVENT_ANY_MONSTER_DIE_14031", trigger_count = 12 }
}

-- 变量
variables = {
	{ config_id = 1, name = "flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "PuzzleFinish", value = 0, no_refresh = true },
	{ config_id = 3, name = "number", value = 3, no_refresh = true },
	{ config_id = 4, name = "challenge", value = 0, no_refresh = true },
	{ config_id = 5, name = "monster", value = 12, no_refresh = true }
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
		gadgets = { 14007, 14008, 14009, 14010 },
		regions = { 14011, 14015, 14027, 14030 },
		triggers = { "ENTER_REGION_14011", "GADGET_STATE_CHANGE_14012", "VARIABLE_CHANGE_14013", "ANY_MONSTER_DIE_14014", "ENTER_REGION_14015", "VARIABLE_CHANGE_14016", "VARIABLE_CHANGE_14017", "VARIABLE_CHANGE_14018", "CHALLENGE_FAIL_14019", "ENTER_REGION_14027", "CHALLENGE_FAIL_14029", "ENTER_REGION_14030", "ANY_MONSTER_DIE_14031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 14001, 14002, 14004, 14006, 14021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 14022, 14023, 14024, 14025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 14003, 14005, 14020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
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
function condition_EVENT_ENTER_REGION_14011(context, evt)
	if evt.param1 ~= 14011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14011(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	  ScriptLib.ExpeditionChallengeEnterRegion(context, false)
	elseif 1 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	    ScriptLib.ExpeditionChallengeEnterRegion(context, true)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14012(context, evt)
	-- 检测config_id为52003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 14008 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	elseif 14009 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	elseif 14010 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14012(context, evt)
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_14013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_14013(context, evt)
	-- 将本组内变量名为 "PuzzleFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "PuzzleFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133211014, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133211014) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14014(context, evt)
	-- 完成派遣挑战，发奖
	ScriptLib.FinishExpeditionChallenge(context)
	
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133211014, 5) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14015(context, evt)
	if evt.param1 ~= 14015 then return false end
	
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
function action_EVENT_ENTER_REGION_14015(context, evt)
	local int j = ScriptLib.GetGroupVariableValueByGroup(context, "monster", 133211014) 
	
	ScriptLib.CreateFatherChallenge(context, 102, 111175, 9999, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 102, 203, 111173, {133211014,j},{},{success=1,fail=1})
	
	
	ScriptLib.StartFatherChallenge(context, 102)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133211014, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_14016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为2
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_14016(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_14017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为1
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_14017(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_14018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_14018(context, evt)
	-- 将本组内变量名为 "number" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "number", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_14019(context, evt)
	-- 判断变量"PuzzleFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_14019(context, evt)
	-- 将本组内变量名为 "challenge" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14026(context, evt)
	-- 判断指定group组剩余怪物数量是否是1 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133211014) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14026(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133211014, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14027(context, evt)
	if evt.param1 ~= 14027 then return false end
	
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
function action_EVENT_ENTER_REGION_14027(context, evt)
	local int i = ScriptLib.GetGroupVariableValueByGroup(context, "number", 133211014) 
	
	ScriptLib.CreateFatherChallenge(context, 101, 111175, 9999, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 101, 202, 111174, {7,901,i},{},{success=0,fail=0})
	
	ScriptLib.AttachChildChallenge(context, 101, 201, 111173, {133211014,12},{},{success=1,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 101)
	
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14028(context, evt)
	-- 判断指定group组剩余怪物数量是否是2 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133211014) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14028(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133211014, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_14029(context, evt)
	-- 判断变量"PuzzleFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_14029(context, evt)
	-- 将本组内变量名为 "challenge" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14030(context, evt)
	if evt.param1 ~= 14030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14030(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14031(context, evt)
	if 14001 == evt.param1 or 14002 == evt.param1 or 14003 == evt.param1 or 14004 == evt.param1 or 14005 == evt.param1 or 14006 == evt.param1 or 14020 == evt.param1 or 14021 == evt.param1 or 14023 == evt.param1 or 14024 == evt.param1 or 14022 == evt.param1 or 14025 == evt.param1 then
		return true
	end
	 
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14031(context, evt)
	-- 针对当前group内变量名为 "monster" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end