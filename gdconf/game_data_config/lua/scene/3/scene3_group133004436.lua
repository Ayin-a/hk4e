-- 基础信息
local base_info = {
	group_id = 133004436
}

-- Trigger变量
local defs = {
	challenge_1_duration = 300,
	group_id = 133004436,
	father_quest = 20058,
	challenge_id_no_record = 184,
	challenge_id_have_record = 168,
	source_2 = "2005803"
}

-- DEFS_MISCS
defs.quest_1_id = defs.father_quest.."03"

defs.quest_1_success = defs.group_id.."01"


defs.quest_1_fail = defs.group_id.."02"

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 436001, gadget_id = 70900201, pos = { x = 2296.082, y = 260.706, z = -761.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 436002, gadget_id = 70900201, pos = { x = 2316.654, y = 260.515, z = -719.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 436003, gadget_id = 70360025, pos = { x = 2250.877, y = 215.990, z = -891.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 436004, gadget_id = 70900201, pos = { x = 2349.932, y = 249.990, z = -733.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 436005, gadget_id = 70900201, pos = { x = 2250.877, y = 215.990, z = -891.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 436006, gadget_id = 70360024, pos = { x = 2296.082, y = 260.706, z = -761.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 436007, gadget_id = 70360024, pos = { x = 2316.654, y = 260.515, z = -719.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 436008, gadget_id = 70360024, pos = { x = 2349.932, y = 249.990, z = -733.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 436009, gadget_id = 70900201, pos = { x = 2342.178, y = 252.020, z = -782.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 436010, gadget_id = 70360024, pos = { x = 2342.178, y = 252.020, z = -782.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 436011, gadget_id = 70900201, pos = { x = 2339.748, y = 240.832, z = -821.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 436012, gadget_id = 70360024, pos = { x = 2339.748, y = 240.832, z = -821.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 436013, gadget_id = 70900201, pos = { x = 2341.885, y = 244.765, z = -848.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 436014, gadget_id = 70360024, pos = { x = 2341.885, y = 245.413, z = -848.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 436015, gadget_id = 70900201, pos = { x = 2336.820, y = 242.998, z = -872.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 436016, gadget_id = 70360024, pos = { x = 2336.820, y = 242.998, z = -872.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 436017, gadget_id = 70900201, pos = { x = 2305.424, y = 248.096, z = -888.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 436018, gadget_id = 70360024, pos = { x = 2305.424, y = 248.096, z = -888.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 436019, gadget_id = 70900201, pos = { x = 2272.792, y = 234.674, z = -896.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 436020, gadget_id = 70360024, pos = { x = 2272.792, y = 234.674, z = -896.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 436025, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2250.877, y = 215.990, z = -891.933 }, area_id = 1 },
	{ config_id = 436034, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2264.776, y = 273.149, z = -747.942 }, area_id = 1 },
	{ config_id = 436035, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2296.940, y = 256.272, z = -735.759 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1436021, name = "CHALLENGE_SUCCESS_436021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_436021", trigger_count = 0 },
	{ config_id = 1436022, name = "GADGET_STATE_CHANGE_436022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_436022", action = "action_EVENT_GADGET_STATE_CHANGE_436022" },
	{ config_id = 1436023, name = "GADGET_STATE_CHANGE_436023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_436023", action = "action_EVENT_GADGET_STATE_CHANGE_436023" },
	{ config_id = 1436024, name = "GADGET_STATE_CHANGE_436024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_436024", action = "action_EVENT_GADGET_STATE_CHANGE_436024" },
	{ config_id = 1436025, name = "ENTER_REGION_436025", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_436025", action = "", trigger_count = 0, tag = "555" },
	{ config_id = 1436026, name = "QUEST_START_436026", event = EventType.EVENT_QUEST_START, source = defs.source_2, condition = "", action = "action_EVENT_QUEST_START_436026", trigger_count = 0 },
	{ config_id = 1436027, name = "CHALLENGE_FAIL_436027", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_436027", trigger_count = 0 },
	{ config_id = 1436028, name = "GADGET_STATE_CHANGE_436028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_436028", action = "action_EVENT_GADGET_STATE_CHANGE_436028" },
	{ config_id = 1436029, name = "GADGET_STATE_CHANGE_436029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_436029", action = "action_EVENT_GADGET_STATE_CHANGE_436029" },
	{ config_id = 1436030, name = "GADGET_STATE_CHANGE_436030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_436030", action = "action_EVENT_GADGET_STATE_CHANGE_436030" },
	{ config_id = 1436031, name = "GADGET_STATE_CHANGE_436031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_436031", action = "action_EVENT_GADGET_STATE_CHANGE_436031" },
	{ config_id = 1436032, name = "GADGET_STATE_CHANGE_436032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_436032", action = "action_EVENT_GADGET_STATE_CHANGE_436032" },
	{ config_id = 1436033, name = "GADGET_STATE_CHANGE_436033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_436033", action = "action_EVENT_GADGET_STATE_CHANGE_436033" },
	{ config_id = 1436034, name = "ENTER_REGION_436034", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_436034", action = "action_EVENT_ENTER_REGION_436034" },
	{ config_id = 1436035, name = "ENTER_REGION_436035", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_436035", action = "action_EVENT_ENTER_REGION_436035" },
	{ config_id = 1436036, name = "GATHER_436036", event = EventType.EVENT_GATHER, source = "805026", condition = "", action = "action_EVENT_GATHER_436036" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Challenge_Flag", value = 0, no_refresh = false },
	{ config_id = 2, name = "Challenge_Endpoint_Available", value = 0, no_refresh = false },
	{ config_id = 3, name = "Challenge_Log", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 12,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_436026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 436025 },
		triggers = { "CHALLENGE_SUCCESS_436021", "ENTER_REGION_436025", "CHALLENGE_FAIL_436027", "GATHER_436036" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 436001, 436006 },
		regions = { 436034 },
		triggers = { "GADGET_STATE_CHANGE_436023", "ENTER_REGION_436034" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 436002, 436007 },
		regions = { 436035 },
		triggers = { "GADGET_STATE_CHANGE_436022", "ENTER_REGION_436035" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 436004, 436008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_436024" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { 436003, 436005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { },
		gadgets = { 436009, 436010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_436028" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
		monsters = { },
		gadgets = { 436011, 436012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_436029" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = suite_9,
		monsters = { },
		gadgets = { 436013, 436014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_436030" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = suite_10,
		monsters = { },
		gadgets = { 436015, 436016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_436031" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = suite_11,
		monsters = { },
		gadgets = { 436017, 436018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_436032" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = suite_12,
		monsters = { },
		gadgets = { 436019, 436020 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_436033" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_436021(context, evt)
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context,defs.quest_1_success)
	
	ScriptLib.KillExtraGroupSuite(context,133004275,6)
	
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 12)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 11)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 10)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 9)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 8)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 7)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 6)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 5)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_436022(context, evt)
	if 436007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_436022(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004436, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 436002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_436023(context, evt)
	if 436006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_436023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004436, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 436001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_436024(context, evt)
	if 436008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_436024(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004436, 7)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 436004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_436025(context, evt)
	if evt.param1 ~= 436025 then return false end
	if ScriptLib.GetGroupVariableValue(context, "Challenge_Endpoint_Available")
	 ~= 1 then 
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_436026(context, evt)
	-- 添加2号资源包
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	
	-- 触发镜头注目，注目位置为坐标（0，0，0），持续时间为0秒，并且为强制注目形式，不广播其他玩家
	local pos = {x=2296, y=261, z=-761}
	if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos,  duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1 }) then
	return -1
	end 
	
	-- 开启限时到达挑战
	ScriptLib.SetGroupVariableValue(context, "Challenge_Log", 1)
	ScriptLib.ActiveChallenge(context, 10, defs.challenge_id_have_record, defs.challenge_1_duration, 4, 555, 1)
	
	ScriptLib.SetGroupVariableValue(context, "Challenge_Log", 2)
	ScriptLib.SetGroupVariableValue(context, "Challenge_Flag", 1)
	ScriptLib.SetGroupVariableValue(context, "Challenge_Endpoint_Available", 0)
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_436027(context, evt)
	
	-- 向任务返回结果
	ScriptLib.AddQuestProgress(context, defs.quest_1_fail)
	
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 12)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 11)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 10)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 9)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 8)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 7)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 6)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 5)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_436028(context, evt)
	if 436010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_436028(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004436, 8)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 436009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_436029(context, evt)
	if 436012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_436029(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004436, 9)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 436011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_436030(context, evt)
	if 436014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_436030(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 0, 10)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 436013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 调用提示id为 1120003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1120003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_436031(context, evt)
	if 436016 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_436031(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004436, 11)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 436015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_436032(context, evt)
	if 436018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_436032(context, evt)
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004436, 12)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 436017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_436033(context, evt)
	if 436020 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_436033(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004436, 6)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 436019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "Challenge_Endpoint_Available" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Challenge_Endpoint_Available", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 1120004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1120004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_436034(context, evt)
	if evt.param1 ~= 436034 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_436034(context, evt)
	ScriptLib.ShowReminder(context, 1120001)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_436035(context, evt)
	if evt.param1 ~= 436035 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_436035(context, evt)
	ScriptLib.ShowReminder(context, 1120002)
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_436036(context, evt)
	ScriptLib.ShowReminder(context, 1120005)
	return 0
end