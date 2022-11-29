-- 基础信息
local base_info = {
	group_id = 133107235
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
	{ config_id = 235001, gadget_id = 70710609, pos = { x = -76.025, y = 268.175, z = 90.043 }, rot = { x = 0.000, y = 123.450, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 235002, gadget_id = 70710609, pos = { x = -72.381, y = 268.217, z = 95.898 }, rot = { x = 0.000, y = 344.140, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 235003, gadget_id = 70710609, pos = { x = -77.898, y = 268.405, z = 94.869 }, rot = { x = 0.000, y = 194.900, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 235004, gadget_id = 70710609, pos = { x = -67.372, y = 267.999, z = 98.482 }, rot = { x = 0.000, y = 279.900, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 235005, gadget_id = 70710610, pos = { x = -75.344, y = 268.454, z = 98.128 }, rot = { x = 0.000, y = 291.170, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 235006, gadget_id = 70710610, pos = { x = -66.136, y = 268.301, z = 94.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 235007, gadget_id = 70710610, pos = { x = -74.465, y = 268.211, z = 93.082 }, rot = { x = 0.000, y = 249.910, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 235008, gadget_id = 70710610, pos = { x = -70.262, y = 267.967, z = 101.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 任务失败条件
	{ config_id = 1235009, name = "ANY_GADGET_DIE_235009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_235009", action = "action_EVENT_ANY_GADGET_DIE_235009" },
	-- 任务完成条件
	{ config_id = 1235010, name = "ANY_GADGET_DIE_235010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_235010", action = "action_EVENT_ANY_GADGET_DIE_235010", trigger_count = 4 },
	{ config_id = 1235011, name = "QUEST_FINISH_235011", event = EventType.EVENT_QUEST_FINISH, source = "1904717", condition = "", action = "action_EVENT_QUEST_FINISH_235011" }
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
	suite = 2,
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
		gadgets = { 235001, 235002, 235003, 235004, 235005, 235006, 235007, 235008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_235009", "ANY_GADGET_DIE_235010", "QUEST_FINISH_235011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_GADGET_DIE_235009(context, evt)
	if 235005 == evt.param1 or 235006 == evt.param1 or 235007 == evt.param1 or 235008 == evt.param1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_235009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072352") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_235010(context, evt)
	if 235001 == evt.param1 or 235002 == evt.param1 or 235003 == evt.param1 or 235004 == evt.param1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_235010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072351") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_235011(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133107235, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107235, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end