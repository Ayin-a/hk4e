-- 基础信息
local base_info = {
	group_id = 144001053
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
	{ config_id = 53001, gadget_id = 70380274, pos = { x = 587.331, y = 195.593, z = -420.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, arguments = { 5 }, area_id = 101, talk_state = 6800205 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1053003, name = "ANY_GADGET_DIE_53003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_53003", action = "action_EVENT_ANY_GADGET_DIE_53003", trigger_count = 0 },
	{ config_id = 1053004, name = "GROUP_LOAD_53004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_53004", action = "action_EVENT_GROUP_LOAD_53004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "talk", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1053002, name = "GADGETTALK_DONE_53002", event = EventType.EVENT_GADGETTALK_DONE, source = "6800205", condition = "", action = "action_EVENT_GADGETTALK_DONE_53002", trigger_count = 0 }
	}
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
		gadgets = { 53001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_53003", "GROUP_LOAD_53004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_53003(context, evt)
	if 53001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_53003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900010finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "talk" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "talk", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_53004(context, evt)
	-- 判断变量"talk"为1
	if ScriptLib.GetGroupVariableValue(context, "talk") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_53004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900010finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end