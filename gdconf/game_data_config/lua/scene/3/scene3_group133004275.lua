-- 基础信息
local base_info = {
	group_id = 133004275
}

-- Trigger变量
local defs = {
	challenge_1_duration = 300,
	group_id = 133004275,
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
	{ config_id = 275002, gadget_id = 70900201, pos = { x = 2296.082, y = 260.706, z = -761.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 275006, gadget_id = 70900201, pos = { x = 2316.654, y = 260.515, z = -719.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 275007, gadget_id = 70360025, pos = { x = 2250.877, y = 215.990, z = -891.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	{ config_id = 275008, gadget_id = 70900201, pos = { x = 2349.932, y = 249.990, z = -733.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 275011, gadget_id = 70900201, pos = { x = 2250.877, y = 215.990, z = -891.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 275012, gadget_id = 70360024, pos = { x = 2296.082, y = 260.706, z = -761.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 275013, gadget_id = 70360024, pos = { x = 2316.654, y = 260.515, z = -719.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 275015, gadget_id = 70360024, pos = { x = 2349.932, y = 249.990, z = -733.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 275016, gadget_id = 70900201, pos = { x = 2342.178, y = 252.020, z = -782.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 275017, gadget_id = 70360024, pos = { x = 2342.178, y = 252.020, z = -782.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 275019, gadget_id = 70900201, pos = { x = 2339.748, y = 240.832, z = -821.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 275021, gadget_id = 70360024, pos = { x = 2339.748, y = 240.832, z = -821.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 275022, gadget_id = 70900201, pos = { x = 2341.885, y = 244.765, z = -848.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 275024, gadget_id = 70360024, pos = { x = 2341.885, y = 245.413, z = -848.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 275025, gadget_id = 70900201, pos = { x = 2336.820, y = 242.998, z = -872.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 275027, gadget_id = 70360024, pos = { x = 2336.820, y = 242.998, z = -872.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 275028, gadget_id = 70900201, pos = { x = 2305.424, y = 248.096, z = -888.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 275030, gadget_id = 70360024, pos = { x = 2305.424, y = 248.096, z = -888.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 275031, gadget_id = 70900201, pos = { x = 2272.792, y = 234.674, z = -896.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 275033, gadget_id = 70360024, pos = { x = 2272.792, y = 234.674, z = -896.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 275009, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2250.877, y = 215.990, z = -891.933 }, area_id = 1 },
	{ config_id = 275034, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2264.776, y = 273.149, z = -747.942 }, area_id = 1 },
	{ config_id = 275035, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2296.940, y = 256.272, z = -735.759 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1275001, name = "CHALLENGE_SUCCESS_275001", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "10", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_275001", trigger_count = 0 },
	{ config_id = 1275003, name = "GADGET_STATE_CHANGE_275003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275003", action = "action_EVENT_GADGET_STATE_CHANGE_275003" },
	{ config_id = 1275004, name = "GADGET_STATE_CHANGE_275004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275004", action = "action_EVENT_GADGET_STATE_CHANGE_275004" },
	{ config_id = 1275005, name = "GADGET_STATE_CHANGE_275005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275005", action = "action_EVENT_GADGET_STATE_CHANGE_275005" },
	{ config_id = 1275009, name = "ENTER_REGION_275009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275009", action = "", trigger_count = 0, tag = "555" },
	{ config_id = 1275010, name = "QUEST_START_275010", event = EventType.EVENT_QUEST_START, source = defs.source_2, condition = "", action = "action_EVENT_QUEST_START_275010", trigger_count = 0 },
	{ config_id = 1275014, name = "CHALLENGE_FAIL_275014", event = EventType.EVENT_CHALLENGE_FAIL, source = "10", condition = "", action = "action_EVENT_CHALLENGE_FAIL_275014", trigger_count = 0 },
	{ config_id = 1275018, name = "GADGET_STATE_CHANGE_275018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275018", action = "action_EVENT_GADGET_STATE_CHANGE_275018" },
	{ config_id = 1275020, name = "GADGET_STATE_CHANGE_275020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275020", action = "action_EVENT_GADGET_STATE_CHANGE_275020" },
	{ config_id = 1275023, name = "GADGET_STATE_CHANGE_275023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275023", action = "action_EVENT_GADGET_STATE_CHANGE_275023" },
	{ config_id = 1275026, name = "GADGET_STATE_CHANGE_275026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275026", action = "action_EVENT_GADGET_STATE_CHANGE_275026" },
	{ config_id = 1275029, name = "GADGET_STATE_CHANGE_275029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275029", action = "action_EVENT_GADGET_STATE_CHANGE_275029" },
	{ config_id = 1275032, name = "GADGET_STATE_CHANGE_275032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275032", action = "action_EVENT_GADGET_STATE_CHANGE_275032" },
	{ config_id = 1275034, name = "ENTER_REGION_275034", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275034", action = "action_EVENT_ENTER_REGION_275034" },
	{ config_id = 1275035, name = "ENTER_REGION_275035", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_275035", action = "action_EVENT_ENTER_REGION_275035" },
	{ config_id = 1275036, name = "GATHER_275036", event = EventType.EVENT_GATHER, source = "805026", condition = "", action = "action_EVENT_GATHER_275036" }
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
		triggers = { "QUEST_START_275010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 275009 },
		triggers = { "CHALLENGE_SUCCESS_275001", "ENTER_REGION_275009", "CHALLENGE_FAIL_275014", "GATHER_275036" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 275002, 275012 },
		regions = { 275034 },
		triggers = { "GADGET_STATE_CHANGE_275004", "ENTER_REGION_275034" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 275006, 275013 },
		regions = { 275035 },
		triggers = { "GADGET_STATE_CHANGE_275003", "ENTER_REGION_275035" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 275008, 275015 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_275005" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { 275007, 275011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { },
		gadgets = { 275016, 275017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_275018" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
		monsters = { },
		gadgets = { 275019, 275021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_275020" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = suite_9,
		monsters = { },
		gadgets = { 275022, 275024 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_275023" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = suite_10,
		monsters = { },
		gadgets = { 275025, 275027 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_275026" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = suite_11,
		monsters = { },
		gadgets = { 275028, 275030 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_275029" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = suite_12,
		monsters = { },
		gadgets = { 275031, 275033 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_275032" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_275001(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_275003(context, evt)
	if 275013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275003(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004275, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 275006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_275004(context, evt)
	if 275012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275004(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004275, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 275002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_275005(context, evt)
	if 275015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275005(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004275, 7)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 275008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275009(context, evt)
	if evt.param1 ~= 275009 then return false end
	if ScriptLib.GetGroupVariableValue(context, "Challenge_Endpoint_Available")
	 ~= 1 then 
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_275010(context, evt)
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
function action_EVENT_CHALLENGE_FAIL_275014(context, evt)
	
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
function condition_EVENT_GADGET_STATE_CHANGE_275018(context, evt)
	if 275017 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275018(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004275, 8)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 275016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_275020(context, evt)
	if 275021 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275020(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004275, 9)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 275019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_275023(context, evt)
	if 275024 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275023(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 0, 10)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 275022 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_275026(context, evt)
	if 275027 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275026(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004275, 11)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 275025 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_275029(context, evt)
	if 275030 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275029(context, evt)
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004275, 12)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 275028 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_275032(context, evt)
	if 275033 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275032(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004275, 6)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 275031 }) then
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
function condition_EVENT_ENTER_REGION_275034(context, evt)
	if evt.param1 ~= 275034 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275034(context, evt)
	ScriptLib.ShowReminder(context, 1120001)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275035(context, evt)
	if evt.param1 ~= 275035 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275035(context, evt)
	ScriptLib.ShowReminder(context, 1120002)
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_275036(context, evt)
	ScriptLib.ShowReminder(context, 1120005)
	return 0
end