-- 基础信息
local base_info = {
	group_id = 199002053
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
	{ config_id = 53010, npc_id = 20815, pos = { x = 583.239, y = 264.170, z = -531.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 401 }
}

-- 装置
gadgets = {
	-- 初幕前夜鸦团
	{ config_id = 53001, gadget_id = 70310175, pos = { x = 583.213, y = 262.445, z = -531.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 53002, gadget_id = 70310332, pos = { x = 581.125, y = 262.448, z = -531.175 }, rot = { x = 0.000, y = 41.505, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 401 },
	-- 占位无用
	{ config_id = 53003, gadget_id = 70360002, pos = { x = 583.159, y = 253.195, z = -529.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初幕开始前对话完成
	{ config_id = 1053004, name = "GADGETTALK_DONE_53004", event = EventType.EVENT_GADGETTALK_DONE, source = "6800251", condition = "", action = "action_EVENT_GADGETTALK_DONE_53004", trigger_count = 0 },
	-- 初幕开始后对话完成
	{ config_id = 1053005, name = "GADGETTALK_DONE_53005", event = EventType.EVENT_GADGETTALK_DONE, source = "6800252", condition = "", action = "action_EVENT_GADGETTALK_DONE_53005", trigger_count = 0 },
	-- 7902601开始执行创团长
	{ config_id = 1053006, name = "QUEST_START_53006", event = EventType.EVENT_QUEST_START, source = "7902601", condition = "", action = "action_EVENT_QUEST_START_53006", trigger_count = 0 },
	-- 7902613开始执行创团长
	{ config_id = 1053007, name = "QUEST_START_53007", event = EventType.EVENT_QUEST_START, source = "7902613", condition = "", action = "action_EVENT_QUEST_START_53007", trigger_count = 0 },
	-- 7902602开始执行刷掉团长
	{ config_id = 1053008, name = "QUEST_START_53008", event = EventType.EVENT_QUEST_START, source = "7902602", condition = "", action = "action_EVENT_QUEST_START_53008", trigger_count = 0 },
	-- 7902603开始执行刷掉团长
	{ config_id = 1053009, name = "QUEST_START_53009", event = EventType.EVENT_QUEST_START, source = "7902603", condition = "", action = "action_EVENT_QUEST_START_53009", trigger_count = 0 },
	{ config_id = 1053011, name = "GROUP_LOAD_53011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_53011", trigger_count = 0 }
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
		gadgets = { 53003 },
		regions = { },
		triggers = { "GADGETTALK_DONE_53004", "GADGETTALK_DONE_53005", "QUEST_START_53006", "QUEST_START_53007", "QUEST_START_53008", "QUEST_START_53009", "GROUP_LOAD_53011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 初幕前团长suite,
		monsters = { },
		gadgets = { 53001 },
		regions = { },
		triggers = { "GADGETTALK_DONE_53004", "GADGETTALK_DONE_53005", "QUEST_START_53006", "QUEST_START_53007", "QUEST_START_53008", "QUEST_START_53009" },
		npcs = { 53010 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 初幕后团长suite,
		monsters = { },
		gadgets = { 53002 },
		regions = { },
		triggers = { "GADGETTALK_DONE_53004", "GADGETTALK_DONE_53005", "QUEST_START_53006", "QUEST_START_53007", "QUEST_START_53008", "QUEST_START_53009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_53008", "QUEST_START_53009" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_53008", "QUEST_START_53009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGETTALK_DONE_53004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_53005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902613") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_53006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002053, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_53007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002053, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_53008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002053, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 53001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 杀死Group内所有NPC
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 199002053, kill_policy = GroupKillPolicy.GROUP_KILL_NPC }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_npc_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_53009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 53002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_53011(context, evt)
	ScriptLib.GetHostQuestState(context,7902613)
	
	if 2 == ScriptLib.GetHostQuestState(context,7902613) then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	end
	
	return 0
end