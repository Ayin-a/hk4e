-- 基础信息
local base_info = {
	group_id = 133304369
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
	{ config_id = 369001, gadget_id = 70210102, pos = { x = -1754.897, y = 255.912, z = 2759.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 369004, gadget_id = 70210102, pos = { x = -1756.166, y = 255.065, z = 2754.141 }, rot = { x = 0.000, y = 37.086, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 369005, gadget_id = 70290003, pos = { x = -1754.897, y = 255.804, z = 2759.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 369006, gadget_id = 70290003, pos = { x = -1756.166, y = 255.036, z = 2754.141 }, rot = { x = 0.000, y = 37.086, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1369002, name = "GADGET_STATE_CHANGE_369002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369002", action = "action_EVENT_GADGET_STATE_CHANGE_369002", trigger_count = 0 },
	{ config_id = 1369003, name = "GADGET_STATE_CHANGE_369003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369003", action = "action_EVENT_GADGET_STATE_CHANGE_369003", trigger_count = 0 }
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
		gadgets = { 369001, 369005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_369002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 369004, 369006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_369003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369002(context, evt)
	if 369001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2300422") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369003(context, evt)
	if 369004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2300422") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end