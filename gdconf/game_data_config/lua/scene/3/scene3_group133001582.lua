-- 基础信息
local base_info = {
	group_id = 133001582
}

-- DEFS_MISCS
local defs = {
	RegionID =  582043
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[582003] = { config_id = 582003, monster_id = 21010201, pos = { x = 1554.817, y = 252.089, z = -1640.464 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[582004] = { config_id = 582004, monster_id = 21010201, pos = { x = 1557.604, y = 252.089, z = -1634.719 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[582005] = { config_id = 582005, monster_id = 21010201, pos = { x = 1554.768, y = 252.089, z = -1643.605 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[582006] = { config_id = 582006, monster_id = 21010201, pos = { x = 1555.938, y = 252.089, z = -1646.302 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[582007] = { config_id = 582007, monster_id = 21010201, pos = { x = 1557.559, y = 252.089, z = -1648.565 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[582008] = { config_id = 582008, monster_id = 21010201, pos = { x = 1559.565, y = 252.089, z = -1650.528 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[582011] = { config_id = 582011, monster_id = 21010901, pos = { x = 1560.801, y = 252.060, z = -1651.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	[582012] = { config_id = 582012, monster_id = 21010501, pos = { x = 1558.308, y = 252.061, z = -1649.706 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	[582013] = { config_id = 582013, monster_id = 21011001, pos = { x = 1556.605, y = 252.060, z = -1647.294 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	[582014] = { config_id = 582014, monster_id = 21010501, pos = { x = 1555.073, y = 252.060, z = -1645.036 }, rot = { x = 0.000, y = 65.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	[582015] = { config_id = 582015, monster_id = 21020201, pos = { x = 1565.103, y = 252.089, z = -1650.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[582016] = { config_id = 582016, monster_id = 21020201, pos = { x = 1568.735, y = 252.089, z = -1648.994 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[582017] = { config_id = 582017, monster_id = 21020201, pos = { x = 1563.878, y = 252.061, z = -1631.301 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[582018] = { config_id = 582018, monster_id = 21020201, pos = { x = 1561.143, y = 252.061, z = -1632.011 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[582029] = { config_id = 582029, monster_id = 21010901, pos = { x = 1566.185, y = 252.060, z = -1651.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	[582030] = { config_id = 582030, monster_id = 21011001, pos = { x = 1554.602, y = 252.060, z = -1642.046 }, rot = { x = 0.000, y = 85.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	[582031] = { config_id = 582031, monster_id = 21010501, pos = { x = 1570.843, y = 252.060, z = -1648.370 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	[582032] = { config_id = 582032, monster_id = 21011001, pos = { x = 1568.571, y = 252.060, z = -1650.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	[582033] = { config_id = 582033, monster_id = 21010901, pos = { x = 1572.825, y = 252.060, z = -1636.576 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	[582034] = { config_id = 582034, monster_id = 21010501, pos = { x = 1574.043, y = 252.061, z = -1638.827 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	[582035] = { config_id = 582035, monster_id = 21011001, pos = { x = 1574.083, y = 252.060, z = -1641.379 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	[582036] = { config_id = 582036, monster_id = 21010901, pos = { x = 1554.666, y = 252.060, z = -1639.963 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	[582044] = { config_id = 582044, monster_id = 21010201, pos = { x = 1554.881, y = 252.087, z = -1640.569 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 2 },
	[582045] = { config_id = 582045, monster_id = 21010201, pos = { x = 1557.668, y = 252.087, z = -1634.824 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 2 },
	[582046] = { config_id = 582046, monster_id = 21010201, pos = { x = 1554.832, y = 252.087, z = -1643.710 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 2 },
	[582047] = { config_id = 582047, monster_id = 21010201, pos = { x = 1556.002, y = 252.087, z = -1646.407 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 2 },
	[582048] = { config_id = 582048, monster_id = 21010201, pos = { x = 1557.623, y = 252.087, z = -1648.670 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 2 },
	[582049] = { config_id = 582049, monster_id = 21010201, pos = { x = 1559.629, y = 252.087, z = -1650.633 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 2 },
	[582050] = { config_id = 582050, monster_id = 21020201, pos = { x = 1565.037, y = 252.094, z = -1650.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 2 },
	[582051] = { config_id = 582051, monster_id = 21020201, pos = { x = 1568.669, y = 252.094, z = -1648.880 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 2 },
	[582052] = { config_id = 582052, monster_id = 21020201, pos = { x = 1563.813, y = 252.065, z = -1631.187 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 2 },
	[582053] = { config_id = 582053, monster_id = 21020201, pos = { x = 1561.077, y = 252.065, z = -1631.897 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[582002] = { config_id = 582002, gadget_id = 70350178, pos = { x = 1564.035, y = 252.186, z = -1642.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[582019] = { config_id = 582019, gadget_id = 70950060, pos = { x = 1564.035, y = 252.186, z = -1642.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	[582056] = { config_id = 582056, gadget_id = 70710001, pos = { x = 1564.009, y = 252.080, z = -1640.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	[582043] = { config_id = 582043, shape = RegionShape.SPHERE, radius = 27, pos = { x = 1564.328, y = 252.197, z = -1641.672 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1582001, name = "ANY_MONSTER_DIE_582001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_582001", action = "action_EVENT_ANY_MONSTER_DIE_582001", trigger_count = 0 },
	{ config_id = 1582009, name = "ANY_MONSTER_DIE_582009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_582009", action = "action_EVENT_ANY_MONSTER_DIE_582009", trigger_count = 0 },
	{ config_id = 1582010, name = "VARIABLE_CHANGE_582010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "582" },
	{ config_id = 1582020, name = "GADGET_CREATE_582020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_582020", action = "action_EVENT_GADGET_CREATE_582020", tlog_tag = "2" },
	{ config_id = 1582021, name = "CHALLENGE_SUCCESS_582021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "503", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_582021" },
	{ config_id = 1582022, name = "CHALLENGE_FAIL_582022", event = EventType.EVENT_CHALLENGE_FAIL, source = "503", condition = "", action = "action_EVENT_CHALLENGE_FAIL_582022" },
	{ config_id = 1582023, name = "GADGET_CREATE_582023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_582023", action = "action_EVENT_GADGET_CREATE_582023", tlog_tag = "3" },
	{ config_id = 1582024, name = "CHALLENGE_SUCCESS_582024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "505", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_582024" },
	{ config_id = 1582025, name = "GADGET_CREATE_582025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_582025", action = "action_EVENT_GADGET_CREATE_582025", tlog_tag = "1" },
	{ config_id = 1582026, name = "CHALLENGE_FAIL_582026", event = EventType.EVENT_CHALLENGE_FAIL, source = "505", condition = "", action = "action_EVENT_CHALLENGE_FAIL_582026" },
	{ config_id = 1582027, name = "CHALLENGE_SUCCESS_582027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "501", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_582027" },
	{ config_id = 1582028, name = "CHALLENGE_FAIL_582028", event = EventType.EVENT_CHALLENGE_FAIL, source = "501", condition = "", action = "action_EVENT_CHALLENGE_FAIL_582028" },
	{ config_id = 1582037, name = "TIMER_EVENT_582037", event = EventType.EVENT_TIMER_EVENT, source = "first", condition = "", action = "action_EVENT_TIMER_EVENT_582037" },
	{ config_id = 1582038, name = "TIMER_EVENT_582038", event = EventType.EVENT_TIMER_EVENT, source = "second", condition = "", action = "action_EVENT_TIMER_EVENT_582038" },
	{ config_id = 1582039, name = "TIMER_EVENT_582039", event = EventType.EVENT_TIMER_EVENT, source = "third", condition = "", action = "action_EVENT_TIMER_EVENT_582039" },
	{ config_id = 1582040, name = "ANY_MONSTER_LIVE_582040", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_582040", action = "action_EVENT_ANY_MONSTER_LIVE_582040" },
	{ config_id = 1582041, name = "ANY_MONSTER_LIVE_582041", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_582041", action = "action_EVENT_ANY_MONSTER_LIVE_582041" },
	{ config_id = 1582042, name = "ANY_MONSTER_LIVE_582042", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_582042", action = "action_EVENT_ANY_MONSTER_LIVE_582042" },
	{ config_id = 1582054, name = "ANY_MONSTER_DIE_582054", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_582054", action = "action_EVENT_ANY_MONSTER_DIE_582054", trigger_count = 0 },
	{ config_id = 1582055, name = "ANY_MONSTER_DIE_582055", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_582055", action = "action_EVENT_ANY_MONSTER_DIE_582055", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "tool_trigger", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { 582043 },
		triggers = { "ANY_MONSTER_DIE_582001", "ANY_MONSTER_DIE_582009", "ANY_MONSTER_DIE_582054", "ANY_MONSTER_DIE_582055" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 582002, 582019, 582056 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_582010", "GADGET_CREATE_582025", "CHALLENGE_SUCCESS_582027", "CHALLENGE_FAIL_582028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 582002, 582019, 582056 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_582010", "GADGET_CREATE_582020", "CHALLENGE_SUCCESS_582021", "CHALLENGE_FAIL_582022" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 582002, 582019, 582056 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_582010", "GADGET_CREATE_582023", "CHALLENGE_SUCCESS_582024", "CHALLENGE_FAIL_582026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 582011, 582012, 582013 },
		gadgets = { 582056 },
		regions = { },
		triggers = { "TIMER_EVENT_582037", "ANY_MONSTER_LIVE_582040" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 582029, 582031, 582032 },
		gadgets = { 582056 },
		regions = { },
		triggers = { "TIMER_EVENT_582038", "ANY_MONSTER_LIVE_582041" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 582033, 582034, 582035 },
		gadgets = { 582056 },
		regions = { },
		triggers = { "TIMER_EVENT_582039", "ANY_MONSTER_LIVE_582042" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 582014, 582030, 582036 },
		gadgets = { 582056 },
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
function condition_EVENT_ANY_MONSTER_DIE_582001(context, evt)
	--判断死亡怪物的configid是否为 582015
	if evt.param1 ~= 582015 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_582001(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_582009(context, evt)
	--判断死亡怪物的configid是否为 582016
	if evt.param1 ~= 582016 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_582009(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_582020(context, evt)
	if 582019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_582020(context, evt)
	ScriptLib.CreateFatherChallenge(context, 503, 110159, 210, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 503, 110260, 110160, {210,133001582,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 503, 110261, 110161, {210,3,582,3},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 503, 110262, 110162, {210,1,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 503)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 504, 133001582, {582015,582016}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 508, 133001582, {582003,582004,582005,582006,582007,582008}, 99, 2, 2) then
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001583, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001582, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_582021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001582, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001583, suite = 1 }) then
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
function action_EVENT_CHALLENGE_FAIL_582022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001582, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001583, suite = 1 }) then
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
function condition_EVENT_GADGET_CREATE_582023(context, evt)
	if 582019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_582023(context, evt)
	ScriptLib.CreateFatherChallenge(context, 505, 110159, 190, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 505, 110360, 110160, {190,133001582,25,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 505, 110361, 110161, {190,3,582,3},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 505, 110362, 110179, {190,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 505)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 506, 133001582, {582050,582051}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 509, 133001582, {582044,582045,582046,582047,582048,582049}, 99, 2, 2) then
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001583, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001582, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_582024(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001582, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001583, suite = 1 }) then
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
function condition_EVENT_GADGET_CREATE_582025(context, evt)
	if 582019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_582025(context, evt)
	ScriptLib.CreateFatherChallenge(context, 501, 110159, 240, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 501, 110160, 110160, {240,133001582,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 501, 110161, 110161, {240,3,582,2},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 501, 110162, 110162, {240,2,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 501)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 502, 133001582, {582015,582016}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 507, 133001582, {582003,582004,582005,582006,582007,582008}, 99, 2, 2) then
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001583, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001582, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_582026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001582, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001583, suite = 1 }) then
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
function action_EVENT_CHALLENGE_SUCCESS_582027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001582, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001583, suite = 1 }) then
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
function action_EVENT_CHALLENGE_FAIL_582028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001582, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001583, suite = 1 }) then
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
function action_EVENT_TIMER_EVENT_582037(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001582, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_582038(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001582, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_582039(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001582, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_582040(context, evt)
	if 582011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_582040(context, evt)
	-- 延迟60秒后,向groupId为：133001582的对象,请求一次调用,并将string参数："first" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001582, "first", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_582041(context, evt)
	if 582032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_582041(context, evt)
	-- 延迟60秒后,向groupId为：133001582的对象,请求一次调用,并将string参数："second" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001582, "second", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_582042(context, evt)
	if 582033 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_582042(context, evt)
	-- 延迟60秒后,向groupId为：133001582的对象,请求一次调用,并将string参数："third" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001582, "third", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_582054(context, evt)
	--判断死亡怪物的configid是否为 582050
	if evt.param1 ~= 582050 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_582054(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_582055(context, evt)
	--判断死亡怪物的configid是否为 582051
	if evt.param1 ~= 582051 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_582055(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

require "WindFlora_Arenashake"
require "Activity_ArenaChallengeSub"