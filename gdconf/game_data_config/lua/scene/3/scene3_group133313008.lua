-- 基础信息
local base_info = {
	group_id = 133313008
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
	{ config_id = 8001, gadget_id = 70330454, pos = { x = -798.673, y = 14.802, z = 5781.967 }, rot = { x = 0.000, y = 60.218, z = 0.000 }, level = 1, persistent = true, area_id = 32 },
	{ config_id = 8002, gadget_id = 70330454, pos = { x = -763.871, y = 17.438, z = 5844.884 }, rot = { x = 0.000, y = 60.218, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 8003, gadget_id = 70330454, pos = { x = -780.985, y = 15.471, z = 5815.321 }, rot = { x = 0.000, y = 60.218, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008004, name = "ANY_GADGET_DIE_8004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_8004", action = "action_EVENT_ANY_GADGET_DIE_8004" },
	{ config_id = 1008005, name = "ANY_GADGET_DIE_8005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_8005", action = "action_EVENT_ANY_GADGET_DIE_8005" },
	{ config_id = 1008006, name = "ANY_GADGET_DIE_8006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_8006", action = "action_EVENT_ANY_GADGET_DIE_8006" }
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
		gadgets = { 8001, 8002, 8003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_8004", "ANY_GADGET_DIE_8005", "ANY_GADGET_DIE_8006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_8004(context, evt)
	if 8001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_8004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310305") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_8005(context, evt)
	if 8002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_8005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310306") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_8006(context, evt)
	if 8003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_8006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310339") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end