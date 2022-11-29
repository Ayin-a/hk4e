-- 基础信息
local base_info = {
	group_id = 133001579
}

-- DEFS_MISCS
local defs = {
	RegionID =  579013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[579001] = { config_id = 579001, monster_id = 21020501, pos = { x = 1559.754, y = 252.086, z = -1647.623 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[579014] = { config_id = 579014, monster_id = 21020501, pos = { x = 1559.235, y = 252.087, z = -1647.184 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1034 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[579011] = { config_id = 579011, gadget_id = 70950041, pos = { x = 1563.954, y = 248.197, z = -1642.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	[579015] = { config_id = 579015, gadget_id = 70710001, pos = { x = 1563.855, y = 252.080, z = -1639.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	[579012] = { config_id = 579012, shape = RegionShape.SPHERE, radius = 21, pos = { x = 1564.239, y = 255.733, z = -1642.011 }, area_id = 2 },
	[579013] = { config_id = 579013, shape = RegionShape.SPHERE, radius = 27, pos = { x = 1564.328, y = 252.197, z = -1641.672 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1579002, name = "ANY_MONSTER_LIVE_579002", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_579002", action = "action_EVENT_ANY_MONSTER_LIVE_579002", tlog_tag = "2" },
	{ config_id = 1579003, name = "ANY_MONSTER_LIVE_579003", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_579003", action = "action_EVENT_ANY_MONSTER_LIVE_579003", tlog_tag = "1" },
	{ config_id = 1579004, name = "CHALLENGE_SUCCESS_579004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "501", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_579004" },
	{ config_id = 1579005, name = "CHALLENGE_FAIL_579005", event = EventType.EVENT_CHALLENGE_FAIL, source = "501", condition = "", action = "action_EVENT_CHALLENGE_FAIL_579005" },
	{ config_id = 1579006, name = "CHALLENGE_SUCCESS_579006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "502", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_579006" },
	{ config_id = 1579007, name = "CHALLENGE_FAIL_579007", event = EventType.EVENT_CHALLENGE_FAIL, source = "502", condition = "", action = "action_EVENT_CHALLENGE_FAIL_579007" },
	{ config_id = 1579008, name = "ANY_MONSTER_LIVE_579008", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_579008", action = "action_EVENT_ANY_MONSTER_LIVE_579008", tlog_tag = "3" },
	{ config_id = 1579009, name = "CHALLENGE_SUCCESS_579009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "503", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_579009" },
	{ config_id = 1579010, name = "CHALLENGE_FAIL_579010", event = EventType.EVENT_CHALLENGE_FAIL, source = "503", condition = "", action = "action_EVENT_CHALLENGE_FAIL_579010" },
	{ config_id = 1579012, name = "LEAVE_REGION_579012", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "", tag = "579" }
}

-- 变量
variables = {
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
		regions = { 579013 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 579001 },
		gadgets = { 579011, 579015 },
		regions = { 579012 },
		triggers = { "ANY_MONSTER_LIVE_579003", "CHALLENGE_SUCCESS_579004", "CHALLENGE_FAIL_579005", "LEAVE_REGION_579012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 579001 },
		gadgets = { 579011, 579015 },
		regions = { 579012 },
		triggers = { "ANY_MONSTER_LIVE_579002", "CHALLENGE_SUCCESS_579006", "CHALLENGE_FAIL_579007", "LEAVE_REGION_579012" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 579014 },
		gadgets = { 579011, 579015 },
		regions = { 579012 },
		triggers = { "ANY_MONSTER_LIVE_579008", "CHALLENGE_SUCCESS_579009", "CHALLENGE_FAIL_579010", "LEAVE_REGION_579012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_579002(context, evt)
	if 579001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_579002(context, evt)
	ScriptLib.CreateFatherChallenge(context, 502, 110167, 240, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 502, 110268, 110168, {240,133001579,1,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 502, 110269, 110169, {240,5,579,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 502, 110270, 110170, {240,1,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 502)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_579003(context, evt)
	if 579001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_579003(context, evt)
	ScriptLib.CreateFatherChallenge(context, 501, 110167, 300, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 501, 110168, 110168, {300,133001579,1,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 501, 110169, 110169, {300,5,579,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 501, 110170, 110170, {300,2,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 501)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_579004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001579, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_579005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001579, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_579006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001579, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_579007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001579, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_579008(context, evt)
	if 579014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_579008(context, evt)
	ScriptLib.CreateFatherChallenge(context, 503, 110167, 110, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 503, 110368, 110168, {110,133001579,1,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 503, 110369, 110169, {110,5,579,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 503, 110370, 110179, {110,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 503)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_579009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001579, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_579010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001579, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "Activity_ArenaChallengeSub"