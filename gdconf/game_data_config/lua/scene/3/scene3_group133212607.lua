-- 基础信息
local base_info = {
	group_id = 133212607
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 607004, monster_id = 25050301, pos = { x = -3264.470, y = 242.725, z = -4713.253 }, rot = { x = 0.000, y = 85.599, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1008, 1007 }, title_id = 10099, special_name_id = 10131, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 607001, gadget_id = 70360001, pos = { x = -3261.573, y = 242.229, z = -4713.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 607005, gadget_id = 70360290, pos = { x = -3260.582, y = 242.225, z = -4713.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 607006, gadget_id = 70950057, pos = { x = -3259.728, y = 242.746, z = -4713.621 }, rot = { x = 350.590, y = 0.000, z = 353.625 }, level = 1, area_id = 11 },
	{ config_id = 607008, gadget_id = 70360001, pos = { x = -3263.520, y = 243.288, z = -4709.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 607007, shape = RegionShape.SPHERE, radius = 13, pos = { x = -3261.371, y = 242.043, z = -4714.522 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1607002, name = "GADGET_CREATE_607002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_607002", action = "action_EVENT_GADGET_CREATE_607002" },
	{ config_id = 1607003, name = "TIME_AXIS_PASS_607003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_607003", action = "action_EVENT_TIME_AXIS_PASS_607003" },
	{ config_id = 1607007, name = "LEAVE_REGION_607007", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_607007", action = "action_EVENT_LEAVE_REGION_607007", tag = "6071" },
	{ config_id = 1607009, name = "GADGET_CREATE_607009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_607009", action = "action_EVENT_GADGET_CREATE_607009", trigger_count = 0 },
	{ config_id = 1607010, name = "CHALLENGE_SUCCESS_607010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "607", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_607010" },
	{ config_id = 1607011, name = "CHALLENGE_FAIL_607011", event = EventType.EVENT_CHALLENGE_FAIL, source = "607", condition = "", action = "action_EVENT_CHALLENGE_FAIL_607011" },
	{ config_id = 1607012, name = "CHALLENGE_FAIL_607012", event = EventType.EVENT_CHALLENGE_FAIL, source = "2008010", condition = "", action = "" },
	{ config_id = 1607013, name = "CHALLENGE_FAIL_607013", event = EventType.EVENT_CHALLENGE_FAIL, source = "2008011", condition = "", action = "" }
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
	suite = 3,
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
		gadgets = { 607001 },
		regions = { },
		triggers = { "GADGET_CREATE_607002", "TIME_AXIS_PASS_607003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 607004 },
		gadgets = { 607005, 607006, 607008 },
		regions = { 607007 },
		triggers = { "LEAVE_REGION_607007", "GADGET_CREATE_607009", "CHALLENGE_SUCCESS_607010", "CHALLENGE_FAIL_607011", "CHALLENGE_FAIL_607012", "CHALLENGE_FAIL_607013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_GADGET_CREATE_607002(context, evt)
	if 607001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_607002(context, evt)
	-- 创建标识为"delay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_607003(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_607003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212607, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 7228711 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7228711) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_607007(context, evt)
	-- 判断是区域607007
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 607007 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_607007(context, evt)
	-- 终止识别id为2008011的挑战，并判定失败
		ScriptLib.StopChallenge(context, 2008011, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_607009(context, evt)
	if 607008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_607009(context, evt)
	ScriptLib.CreateFatherChallenge(context,607,2008009, 120, {success=1, fail=1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 607, 2008010, 2008010,{120, 133212607,1,0}, {},{success=1, fail=1})
	
	ScriptLib.AttachChildChallenge(context, 607, 2008011, 2008011,{120, 5,6071,1}, {},{success=0, fail=1})
	
	ScriptLib.StartFatherChallenge(context, 607)
	
	return 0
	
	
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_607010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7228720_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212607, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_607011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7228720_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212607, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end