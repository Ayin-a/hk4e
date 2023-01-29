-- 基础信息
local base_info = {
	group_id = 199004014
}

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
	{ config_id = 14001, gadget_id = 70620002, pos = { x = -281.137, y = 121.019, z = -644.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, isOneoff = true, persistent = true, area_id = 400 },
	{ config_id = 14002, gadget_id = 70500000, pos = { x = -280.496, y = 120.349, z = -645.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3011, isOneoff = true, area_id = 400 },
	{ config_id = 14003, gadget_id = 70500000, pos = { x = -280.496, y = 120.349, z = -644.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3011, isOneoff = true, area_id = 400 },
	{ config_id = 14004, gadget_id = 70220124, pos = { x = -289.218, y = 121.598, z = -646.540 }, rot = { x = 1.876, y = 26.758, z = 356.283 }, level = 1, area_id = 400 },
	{ config_id = 14005, gadget_id = 70500000, pos = { x = -280.808, y = 120.349, z = -644.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3011, isOneoff = true, area_id = 400 },
	{ config_id = 14006, gadget_id = 70500000, pos = { x = -280.944, y = 120.349, z = -644.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3011, isOneoff = true, area_id = 400 },
	{ config_id = 14015, gadget_id = 70220011, pos = { x = -289.218, y = 121.598, z = -646.540 }, rot = { x = 1.876, y = 26.758, z = 356.283 }, level = 1, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 14018, shape = RegionShape.SPHERE, radius = 2, pos = { x = -281.092, y = 120.222, z = -644.584 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1014007, name = "QUEST_FINISH_14007", event = EventType.EVENT_QUEST_FINISH, source = "7902514", condition = "", action = "action_EVENT_QUEST_FINISH_14007", trigger_count = 0 },
	{ config_id = 1014008, name = "QUEST_FINISH_14008", event = EventType.EVENT_QUEST_FINISH, source = "7902517", condition = "", action = "action_EVENT_QUEST_FINISH_14008", trigger_count = 0 },
	{ config_id = 1014009, name = "QUEST_START_14009", event = EventType.EVENT_QUEST_START, source = "79025513", condition = "condition_EVENT_QUEST_START_14009", action = "action_EVENT_QUEST_START_14009", trigger_count = 0 },
	{ config_id = 1014010, name = "QUEST_START_14010", event = EventType.EVENT_QUEST_START, source = "7902514", condition = "condition_EVENT_QUEST_START_14010", action = "action_EVENT_QUEST_START_14010", trigger_count = 0 },
	{ config_id = 1014011, name = "ANY_GADGET_DIE_14011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_14011", action = "action_EVENT_ANY_GADGET_DIE_14011", trigger_count = 0 },
	{ config_id = 1014012, name = "QUEST_START_14012", event = EventType.EVENT_QUEST_START, source = "7902515", condition = "condition_EVENT_QUEST_START_14012", action = "action_EVENT_QUEST_START_14012", trigger_count = 0 },
	{ config_id = 1014013, name = "QUEST_START_14013", event = EventType.EVENT_QUEST_START, source = "7902516", condition = "condition_EVENT_QUEST_START_14013", action = "action_EVENT_QUEST_START_14013", trigger_count = 0 },
	{ config_id = 1014014, name = "QUEST_START_14014", event = EventType.EVENT_QUEST_START, source = "7902517", condition = "", action = "action_EVENT_QUEST_START_14014", trigger_count = 0 },
	{ config_id = 1014016, name = "QUEST_START_14016", event = EventType.EVENT_QUEST_START, source = "7902517", condition = "condition_EVENT_QUEST_START_14016", action = "action_EVENT_QUEST_START_14016", trigger_count = 0 },
	{ config_id = 1014017, name = "QUEST_START_14017", event = EventType.EVENT_QUEST_START, source = "7902515", condition = "condition_EVENT_QUEST_START_14017", action = "action_EVENT_QUEST_START_14017", trigger_count = 0 },
	{ config_id = 1014018, name = "ENTER_REGION_14018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_14018", trigger_count = 0 },
	{ config_id = 1014019, name = "TIME_AXIS_PASS_14019", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_14019", action = "action_EVENT_TIME_AXIS_PASS_14019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true },
	{ config_id = 2, name = "kill", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 14001, 14002, 14003, 14004, 14005, 14006 },
		regions = { 14018 },
		triggers = { "QUEST_FINISH_14007", "QUEST_FINISH_14008", "QUEST_START_14009", "QUEST_START_14010", "ANY_GADGET_DIE_14011", "QUEST_START_14012", "QUEST_START_14013", "QUEST_START_14014", "QUEST_START_14016", "QUEST_START_14017", "ENTER_REGION_14018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 14001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "TIME_AXIS_PASS_14019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 14015 },
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

-- 触发操作
function action_EVENT_QUEST_FINISH_14007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199004014, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_14008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 14015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_14009(context, evt)
	-- 判断变量"temp"为1
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_14009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902513fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_14010(context, evt)
	-- 判断变量"temp"为1
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_14010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902514fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_14011(context, evt)
	if 14004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_14011(context, evt)
	-- 将本组内变量名为 "kill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "kill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004014, 3)
	
	-- 创建标识为"temp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "temp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_14012(context, evt)
	-- 判断变量"temp"为1
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_14012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902515fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_14013(context, evt)
	-- 判断变量"temp"为1
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_14013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902516fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_14014(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004014, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_14016(context, evt)
	-- 判断变量"temp"为1
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_14016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7902517finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_14017(context, evt)
	-- 判断变量"kill"为1
	if ScriptLib.GetGroupVariableValue(context, "kill") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_14017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7902515finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004014, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_14018(context, evt)
	if ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 then
		ScriptLib.SetGroupVariableValue(context, "temp", 1)
		
		ScriptLib.AddQuestProgress(context, "Q7902517finish")
		
		ScriptLib.RemoveExtraGroupSuite(context, 199004014, 2)
		
		ScriptLib.AddQuestProgress(context, "7902514fail")
		
		ScriptLib.AddQuestProgress(context, "7902515fail")
		
		ScriptLib.AddQuestProgress(context, "7902516fail")
		
		ScriptLib.AddQuestProgress(context, "7902513fail")
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_14019(context, evt)
	if "temp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_14019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7902515finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end