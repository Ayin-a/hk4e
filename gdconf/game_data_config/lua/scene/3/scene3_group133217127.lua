-- 基础信息
local base_info = {
	group_id = 133217127
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
	{ config_id = 127001, gadget_id = 70710325, pos = { x = -4724.597, y = 216.218, z = -3704.497 }, rot = { x = 0.000, y = 13.341, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 127003, gadget_id = 70710325, pos = { x = -4718.794, y = 216.218, z = -3707.248 }, rot = { x = 0.000, y = 13.341, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 127004, gadget_id = 70710325, pos = { x = -4720.708, y = 216.218, z = -3717.034 }, rot = { x = 0.000, y = 13.341, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 127005, gadget_id = 70710325, pos = { x = -4725.704, y = 216.218, z = -3717.057 }, rot = { x = 0.000, y = 13.341, z = 0.000 }, level = 1, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1127002, name = "ANY_GADGET_DIE_127002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_127002", action = "action_EVENT_ANY_GADGET_DIE_127002" },
	{ config_id = 1127006, name = "ANY_GADGET_DIE_127006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_127006", action = "action_EVENT_ANY_GADGET_DIE_127006" },
	{ config_id = 1127007, name = "ANY_GADGET_DIE_127007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_127007", action = "action_EVENT_ANY_GADGET_DIE_127007" },
	{ config_id = 1127008, name = "ANY_GADGET_DIE_127008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_127008", action = "action_EVENT_ANY_GADGET_DIE_127008" }
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
		gadgets = { 127001, 127003, 127004, 127005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_127002", "ANY_GADGET_DIE_127006", "ANY_GADGET_DIE_127007", "ANY_GADGET_DIE_127008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_127002(context, evt)
	if 127001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_127002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216439") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_127006(context, evt)
	if 127003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_127006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216439") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_127007(context, evt)
	if 127004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_127007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216439") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_127008(context, evt)
	if 127005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_127008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216439") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end