-- 基础信息
local base_info = {
	group_id = 133209013
}

-- DEFS_MISCS
local defs = {
	RegionID =  13062,
	group_1 = 133209013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[13001] = { config_id = 13001, monster_id = 24010101, pos = { x = -2186.450, y = 200.316, z = -3488.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012 }, pose_id = 100, area_id = 11 },
	[13002] = { config_id = 13002, monster_id = 24010101, pos = { x = -2197.420, y = 200.313, z = -3479.078 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012 }, pose_id = 100, area_id = 11 },
	[13003] = { config_id = 13003, monster_id = 24010101, pos = { x = -2181.501, y = 200.315, z = -3471.148 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012 }, pose_id = 100, area_id = 11 },
	-- 难度3专用
	[13004] = { config_id = 13004, monster_id = 24010101, pos = { x = -2190.861, y = 200.321, z = -3470.010 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012, 1008 }, pose_id = 100, area_id = 11 },
	-- 难度3专用
	[13005] = { config_id = 13005, monster_id = 24010101, pos = { x = -2178.787, y = 200.322, z = -3481.810 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012, 1008 }, pose_id = 100, area_id = 11 },
	-- 挑战关专用
	[13006] = { config_id = 13006, monster_id = 24010101, pos = { x = -2186.450, y = 200.316, z = -3488.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 100, area_id = 11 },
	-- 挑战关专用
	[13007] = { config_id = 13007, monster_id = 24010101, pos = { x = -2197.420, y = 200.313, z = -3479.078 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 100, area_id = 11 },
	-- 挑战关专用
	[13008] = { config_id = 13008, monster_id = 24010101, pos = { x = -2181.501, y = 200.315, z = -3471.148 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 100, area_id = 11 },
	-- 挑战关专用
	[13009] = { config_id = 13009, monster_id = 24010101, pos = { x = -2190.861, y = 200.321, z = -3470.010 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 100, area_id = 11 },
	-- 挑战关专用
	[13010] = { config_id = 13010, monster_id = 24010301, pos = { x = -2178.787, y = 200.322, z = -3481.810 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 100, area_id = 11 },
	-- 挑战关专用
	[13022] = { config_id = 13022, monster_id = 24010101, pos = { x = -2195.397, y = 200.322, z = -3485.142 }, rot = { x = 0.000, y = 24.546, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 100, area_id = 11 },
	-- 难度3专用
	[13024] = { config_id = 13024, monster_id = 24010101, pos = { x = -2181.501, y = 200.315, z = -3471.148 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012, 1008 }, pose_id = 100, area_id = 11 },
	-- 难度3专用
	[13025] = { config_id = 13025, monster_id = 24010101, pos = { x = -2197.420, y = 200.313, z = -3479.078 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012, 1008 }, pose_id = 100, area_id = 11 },
	-- 难度3专用
	[13026] = { config_id = 13026, monster_id = 24010101, pos = { x = -2186.450, y = 200.316, z = -3488.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012, 1008 }, pose_id = 100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[13023] = { config_id = 13023, gadget_id = 70330064, pos = { x = -2187.426, y = 200.459, z = -3485.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 },
	[13045] = { config_id = 13045, gadget_id = 70950060, pos = { x = -2188.786, y = 200.425, z = -3482.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 11 },
	[13047] = { config_id = 13047, gadget_id = 70710001, pos = { x = -2188.884, y = 200.309, z = -3477.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	[13011] = { config_id = 13011, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2188.786, y = 200.425, z = -3482.243 }, area_id = 11 },
	[13062] = { config_id = 13062, shape = RegionShape.SPHERE, radius = 27, pos = { x = -2187.972, y = 200.425, z = -3479.096 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1013011, name = "LEAVE_REGION_13011", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "", tag = "580" },
	{ config_id = 1013012, name = "ANY_MONSTER_DIE_13012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13012", action = "action_EVENT_ANY_MONSTER_DIE_13012" },
	{ config_id = 1013013, name = "ANY_MONSTER_DIE_13013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13013", action = "action_EVENT_ANY_MONSTER_DIE_13013" },
	{ config_id = 1013014, name = "ANY_MONSTER_DIE_13014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13014", action = "action_EVENT_ANY_MONSTER_DIE_13014" },
	{ config_id = 1013015, name = "ANY_MONSTER_DIE_13015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_13015", trigger_count = 0 },
	{ config_id = 1013016, name = "GADGET_CREATE_13016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_13016", action = "action_EVENT_GADGET_CREATE_13016", tlog_tag = "4" },
	{ config_id = 1013017, name = "CHALLENGE_FAIL_13017", event = EventType.EVENT_CHALLENGE_FAIL, source = "544", condition = "", action = "action_EVENT_CHALLENGE_FAIL_13017" },
	{ config_id = 1013018, name = "CHALLENGE_SUCCESS_13018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "544", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_13018" },
	{ config_id = 1013019, name = "VARIABLE_CHANGE_13019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "776" },
	{ config_id = 1013020, name = "ANY_MONSTER_DIE_13020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13020", action = "action_EVENT_ANY_MONSTER_DIE_13020" },
	{ config_id = 1013021, name = "VARIABLE_CHANGE_13021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_13021", action = "action_EVENT_VARIABLE_CHANGE_13021" },
	{ config_id = 1013048, name = "GADGET_CREATE_13048", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_13048", action = "action_EVENT_GADGET_CREATE_13048", tlog_tag = "2" },
	{ config_id = 1013049, name = "GADGET_CREATE_13049", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_13049", action = "action_EVENT_GADGET_CREATE_13049", tlog_tag = "1" },
	{ config_id = 1013050, name = "VARIABLE_CHANGE_13050", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "576" },
	{ config_id = 1013051, name = "CHALLENGE_SUCCESS_13051", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "511", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_13051" },
	{ config_id = 1013052, name = "CHALLENGE_FAIL_13052", event = EventType.EVENT_CHALLENGE_FAIL, source = "511", condition = "", action = "action_EVENT_CHALLENGE_FAIL_13052" },
	{ config_id = 1013053, name = "GADGET_CREATE_13053", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_13053", action = "action_EVENT_GADGET_CREATE_13053", tlog_tag = "3" },
	{ config_id = 1013054, name = "CHALLENGE_FAIL_13054", event = EventType.EVENT_CHALLENGE_FAIL, source = "533", condition = "", action = "action_EVENT_CHALLENGE_FAIL_13054" },
	{ config_id = 1013055, name = "CHALLENGE_FAIL_13055", event = EventType.EVENT_CHALLENGE_FAIL, source = "522", condition = "", action = "action_EVENT_CHALLENGE_FAIL_13055" },
	{ config_id = 1013056, name = "CHALLENGE_SUCCESS_13056", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "522", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_13056" },
	{ config_id = 1013057, name = "CHALLENGE_SUCCESS_13057", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "533", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_13057" },
	{ config_id = 1013058, name = "ANY_MONSTER_DIE_13058", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13058", action = "action_EVENT_ANY_MONSTER_DIE_13058", trigger_count = 0 },
	{ config_id = 1013059, name = "ANY_MONSTER_DIE_13059", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13059", action = "action_EVENT_ANY_MONSTER_DIE_13059", trigger_count = 0 },
	{ config_id = 1013060, name = "VARIABLE_CHANGE_13060", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "676" },
	{ config_id = 1013061, name = "VARIABLE_CHANGE_13061", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "776" },
	{ config_id = 1013063, name = "ANY_MONSTER_DIE_13063", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13063", action = "action_EVENT_ANY_MONSTER_DIE_13063", trigger_count = 0 },
	{ config_id = 1013064, name = "ANY_MONSTER_DIE_13064", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13064", action = "action_EVENT_ANY_MONSTER_DIE_13064", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "tool_trigger", value = 0, no_refresh = false },
	{ config_id = 2, name = "key", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		gadgets = { 13023 },
		regions = { 13062 },
		triggers = { "ANY_MONSTER_DIE_13058", "ANY_MONSTER_DIE_13059", "ANY_MONSTER_DIE_13063", "ANY_MONSTER_DIE_13064" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 13045, 13047 },
		regions = { 13011 },
		triggers = { "LEAVE_REGION_13011", "ANY_MONSTER_DIE_13012", "GADGET_CREATE_13049", "VARIABLE_CHANGE_13050", "CHALLENGE_SUCCESS_13051", "CHALLENGE_FAIL_13052" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 13045, 13047 },
		regions = { 13011 },
		triggers = { "LEAVE_REGION_13011", "ANY_MONSTER_DIE_13013", "GADGET_CREATE_13048", "CHALLENGE_FAIL_13055", "CHALLENGE_SUCCESS_13056", "VARIABLE_CHANGE_13060" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 13045, 13047 },
		regions = { 13011 },
		triggers = { "LEAVE_REGION_13011", "ANY_MONSTER_DIE_13014", "GADGET_CREATE_13053", "CHALLENGE_FAIL_13054", "CHALLENGE_SUCCESS_13057", "VARIABLE_CHANGE_13061" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 13045, 13047 },
		regions = { 13011 },
		triggers = { "LEAVE_REGION_13011", "ANY_MONSTER_DIE_13015", "GADGET_CREATE_13016", "CHALLENGE_FAIL_13017", "CHALLENGE_SUCCESS_13018", "VARIABLE_CHANGE_13019", "ANY_MONSTER_DIE_13020", "VARIABLE_CHANGE_13021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13012(context, evt)
	--判断死亡怪物的configid是否为 13001
	if evt.param1 ~= 13001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13012(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13002, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13013(context, evt)
	--判断死亡怪物的configid是否为 13001
	if evt.param1 ~= 13001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13013(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13002, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13003, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13014(context, evt)
	if 13024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13014(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133209013, {13025,13026,13004,13005}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13015(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_13016(context, evt)
	if 13045 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_13016(context, evt)
	ScriptLib.CreateFatherChallenge(context, 544, 111161, 150, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 544, 501, 111162, {150,defs.group_1,5,0},{},{success=1,fail=1})
	
	--ScriptLib.AttachChildChallenge(context, 544, 502, 111163, --{150,5,580,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 544, 503, 111165, {150,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 544)
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13006, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_13017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209013, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_13018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209013, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13020(context, evt)
	if 13006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13020(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key"为3
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13021(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13010, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13008, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_13048(context, evt)
	if 13045 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_13048(context, evt)
	ScriptLib.CreateFatherChallenge(context, 522, 111161, 240, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 522, 501, 111162, {240,defs.group_1,3,0},{},{success=1,fail=1})
	
	--ScriptLib.AttachChildChallenge(context, 522, 502, 111163, --{240,5,580,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 522, 503, 111164, {240,1,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 522)
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13001, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_13049(context, evt)
	if 13045 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_13049(context, evt)
	ScriptLib.CreateFatherChallenge(context, 511, 111161, 300, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 511, 501, 111162, {300,defs.group_1,2,0},{},{success=1,fail=1})
	
	--ScriptLib.AttachChildChallenge(context, 511, 502, 111163, --{300,5,580,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 511, 503, 111164, {300,2,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 511)
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13001, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_13051(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209013, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_13052(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209013, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_13053(context, evt)
	if 13045 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_13053(context, evt)
	ScriptLib.CreateFatherChallenge(context, 533, 111161, 180, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 533, 501, 111162, {180,defs.group_1,5,0},{},{success=1,fail=1})
	
	--ScriptLib.AttachChildChallenge(context, 533, 502, 111163, --{180,5,580,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 533, 503, 111165, {180,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 533)
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13024, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_13054(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209013, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_13055(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209013, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_13056(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209013, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_13057(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209013, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13058(context, evt)
	--判断死亡怪物的configid是否为 13019
	if evt.param1 ~= 13019 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13058(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13059(context, evt)
	--判断死亡怪物的configid是否为 13020
	if evt.param1 ~= 13020 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13059(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13063(context, evt)
	--判断死亡怪物的configid是否为 13041
	if evt.param1 ~= 13041 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13063(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13064(context, evt)
	--判断死亡怪物的configid是否为 13042
	if evt.param1 ~= 13042 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13064(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end