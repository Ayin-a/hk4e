-- 基础信息
local base_info = {
	group_id = 133001580
}

-- DEFS_MISCS
local defs = {
	RegionID =  580013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[580001] = { config_id = 580001, monster_id = 21020401, pos = { x = 1560.443, y = 252.086, z = -1648.106 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1029 }, area_id = 2 },
	[580020] = { config_id = 580020, monster_id = 21020401, pos = { x = 1558.745, y = 252.086, z = -1647.142 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1029, 1008, 1034 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[580011] = { config_id = 580011, gadget_id = 70950041, pos = { x = 1563.954, y = 248.190, z = -1642.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	[580014] = { config_id = 580014, gadget_id = 70350196, pos = { x = 1555.357, y = 252.457, z = -1655.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[580015] = { config_id = 580015, gadget_id = 70350196, pos = { x = 1551.005, y = 252.493, z = -1633.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[580016] = { config_id = 580016, gadget_id = 70350196, pos = { x = 1572.982, y = 252.383, z = -1628.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[580017] = { config_id = 580017, gadget_id = 70350196, pos = { x = 1577.495, y = 252.468, z = -1651.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[580021] = { config_id = 580021, gadget_id = 70350196, pos = { x = 1551.005, y = 252.295, z = -1633.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[580022] = { config_id = 580022, gadget_id = 70350196, pos = { x = 1577.495, y = 252.271, z = -1651.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[580023] = { config_id = 580023, gadget_id = 70350196, pos = { x = 1555.357, y = 252.260, z = -1655.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[580024] = { config_id = 580024, gadget_id = 70350196, pos = { x = 1572.982, y = 252.185, z = -1628.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[580030] = { config_id = 580030, gadget_id = 70710001, pos = { x = 1564.494, y = 252.080, z = -1640.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	[580012] = { config_id = 580012, shape = RegionShape.SPHERE, radius = 21, pos = { x = 1564.239, y = 255.733, z = -1642.011 }, area_id = 2 },
	[580013] = { config_id = 580013, shape = RegionShape.SPHERE, radius = 27, pos = { x = 1564.328, y = 252.197, z = -1641.672 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1580002, name = "ANY_MONSTER_LIVE_580002", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_580002", action = "action_EVENT_ANY_MONSTER_LIVE_580002", tlog_tag = "2" },
	{ config_id = 1580003, name = "ANY_MONSTER_LIVE_580003", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_580003", action = "action_EVENT_ANY_MONSTER_LIVE_580003", tlog_tag = "1" },
	{ config_id = 1580004, name = "CHALLENGE_SUCCESS_580004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "501", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_580004" },
	{ config_id = 1580005, name = "CHALLENGE_FAIL_580005", event = EventType.EVENT_CHALLENGE_FAIL, source = "501", condition = "", action = "action_EVENT_CHALLENGE_FAIL_580005" },
	{ config_id = 1580006, name = "ANY_MONSTER_LIVE_580006", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_580006", action = "action_EVENT_ANY_MONSTER_LIVE_580006", tlog_tag = "3" },
	{ config_id = 1580007, name = "CHALLENGE_SUCCESS_580007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "502", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_580007" },
	{ config_id = 1580008, name = "CHALLENGE_SUCCESS_580008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "503", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_580008" },
	{ config_id = 1580009, name = "CHALLENGE_FAIL_580009", event = EventType.EVENT_CHALLENGE_FAIL, source = "502", condition = "", action = "action_EVENT_CHALLENGE_FAIL_580009" },
	{ config_id = 1580010, name = "CHALLENGE_FAIL_580010", event = EventType.EVENT_CHALLENGE_FAIL, source = "503", condition = "", action = "action_EVENT_CHALLENGE_FAIL_580010" },
	{ config_id = 1580012, name = "LEAVE_REGION_580012", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "", tag = "580" },
	{ config_id = 1580018, name = "GADGET_STATE_CHANGE_580018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_580018", action = "action_EVENT_GADGET_STATE_CHANGE_580018" },
	{ config_id = 1580019, name = "GADGET_STATE_CHANGE_580019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_580019", action = "action_EVENT_GADGET_STATE_CHANGE_580019" },
	{ config_id = 1580025, name = "GADGET_STATE_CHANGE_580025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_580025", action = "action_EVENT_GADGET_STATE_CHANGE_580025" },
	{ config_id = 1580026, name = "TIMER_EVENT_580026", event = EventType.EVENT_TIMER_EVENT, source = "first", condition = "", action = "action_EVENT_TIMER_EVENT_580026" },
	{ config_id = 1580027, name = "TIMER_EVENT_580027", event = EventType.EVENT_TIMER_EVENT, source = "second", condition = "", action = "action_EVENT_TIMER_EVENT_580027" },
	{ config_id = 1580028, name = "TIMER_EVENT_580028", event = EventType.EVENT_TIMER_EVENT, source = "third", condition = "", action = "action_EVENT_TIMER_EVENT_580028" },
	{ config_id = 1580029, name = "GADGET_STATE_CHANGE_580029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_580029", action = "action_EVENT_GADGET_STATE_CHANGE_580029" }
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
		regions = { 580013 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 580001 },
		gadgets = { 580011, 580015, 580030 },
		regions = { 580012 },
		triggers = { "ANY_MONSTER_LIVE_580003", "CHALLENGE_SUCCESS_580004", "CHALLENGE_FAIL_580005", "LEAVE_REGION_580012", "GADGET_STATE_CHANGE_580018", "GADGET_STATE_CHANGE_580019", "GADGET_STATE_CHANGE_580025", "TIMER_EVENT_580026", "TIMER_EVENT_580027", "TIMER_EVENT_580028", "GADGET_STATE_CHANGE_580029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 580001 },
		gadgets = { 580011, 580015, 580030 },
		regions = { 580012 },
		triggers = { "ANY_MONSTER_LIVE_580002", "CHALLENGE_SUCCESS_580007", "CHALLENGE_FAIL_580009", "LEAVE_REGION_580012", "GADGET_STATE_CHANGE_580018", "GADGET_STATE_CHANGE_580019", "GADGET_STATE_CHANGE_580025", "TIMER_EVENT_580026", "TIMER_EVENT_580027", "TIMER_EVENT_580028", "GADGET_STATE_CHANGE_580029" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 580020 },
		gadgets = { 580011, 580015, 580030 },
		regions = { 580012 },
		triggers = { "ANY_MONSTER_LIVE_580006", "CHALLENGE_SUCCESS_580008", "CHALLENGE_FAIL_580010", "LEAVE_REGION_580012", "GADGET_STATE_CHANGE_580018", "GADGET_STATE_CHANGE_580019", "GADGET_STATE_CHANGE_580025", "TIMER_EVENT_580026", "TIMER_EVENT_580027", "TIMER_EVENT_580028", "GADGET_STATE_CHANGE_580029" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_580002(context, evt)
	if 580001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_580002(context, evt)
	ScriptLib.CreateFatherChallenge(context, 502, 110175, 240, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 502, 110276, 110176, {240,133001580,1,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 502, 110277, 110177, {240,5,580,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 502, 110278, 110178, {240,1,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 502)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_580003(context, evt)
	if 580001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_580003(context, evt)
	ScriptLib.CreateFatherChallenge(context, 501, 110175, 300, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 501, 110176, 110176, {300,133001580,1,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 501, 110177, 110177, {300,5,580,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 501, 110178, 110178, {300,2,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 501)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_580004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001580, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_580005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001580, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_580006(context, evt)
	if 580020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_580006(context, evt)
	ScriptLib.CreateFatherChallenge(context, 503, 110175, 90, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 503, 110376, 110176, {90,133001580,1,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 503, 110377, 110177, {90,5,580,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 503, 110378, 110179, {90,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 503)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_580007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001580, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_580008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001580, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_580009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001580, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_580010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001580, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_580018(context, evt)
	if 580015 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_580018(context, evt)
	-- 调用提示id为 30010101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30010101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟10秒后,向groupId为：133001580的对象,请求一次调用,并将string参数："first" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001580, "first", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_580019(context, evt)
	if 580014 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_580019(context, evt)
	-- 调用提示id为 30010101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30010101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟10秒后,向groupId为：133001580的对象,请求一次调用,并将string参数："second" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001580, "second", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_580025(context, evt)
	if 580017 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_580025(context, evt)
	-- 调用提示id为 30010101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30010101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟10秒后,向groupId为：133001580的对象,请求一次调用,并将string参数："third" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001580, "third", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_580026(context, evt)
	-- 创建id为580014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 580014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_580027(context, evt)
	-- 创建id为580017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 580017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_580028(context, evt)
	-- 创建id为580016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 580016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_580029(context, evt)
	if 580016 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_580029(context, evt)
	-- 调用提示id为 30010101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30010101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "Activity_ArenaChallengeSub"