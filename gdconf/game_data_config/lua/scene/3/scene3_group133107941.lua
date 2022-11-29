-- 基础信息
local base_info = {
	group_id = 133107941
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
	{ config_id = 941001, gadget_id = 70210105, pos = { x = -506.521, y = 200.000, z = 292.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 941002, gadget_id = 70210105, pos = { x = -497.690, y = 200.000, z = 293.643 }, rot = { x = 0.000, y = 334.238, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 941003, gadget_id = 70210105, pos = { x = -497.712, y = 200.000, z = 283.208 }, rot = { x = 0.000, y = 319.904, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 941004, gadget_id = 70210105, pos = { x = -493.370, y = 200.000, z = 290.907 }, rot = { x = 0.000, y = 181.524, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 941005, gadget_id = 70210105, pos = { x = -490.498, y = 200.000, z = 303.687 }, rot = { x = 0.000, y = 215.168, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 941006, gadget_id = 70210105, pos = { x = -657.635, y = 200.000, z = 117.005 }, rot = { x = 0.000, y = 270.145, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 941007, gadget_id = 70210105, pos = { x = -653.005, y = 200.000, z = 121.450 }, rot = { x = 0.000, y = 7.402, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 941008, gadget_id = 70210105, pos = { x = -645.931, y = 200.000, z = 108.414 }, rot = { x = 0.000, y = 268.207, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 941009, gadget_id = 70210105, pos = { x = -638.860, y = 200.000, z = 110.163 }, rot = { x = 0.000, y = 43.362, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 941010, gadget_id = 70210105, pos = { x = -638.766, y = 200.000, z = 99.080 }, rot = { x = 0.000, y = 278.186, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1941011, name = "GADGET_STATE_CHANGE_941011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_941011", action = "action_EVENT_GADGET_STATE_CHANGE_941011", trigger_count = 0 },
	{ config_id = 1941012, name = "GADGET_STATE_CHANGE_941012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_941012", action = "action_EVENT_GADGET_STATE_CHANGE_941012", trigger_count = 0 },
	{ config_id = 1941013, name = "GADGET_STATE_CHANGE_941013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_941013", action = "action_EVENT_GADGET_STATE_CHANGE_941013", trigger_count = 0 },
	{ config_id = 1941014, name = "GADGET_STATE_CHANGE_941014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_941014", action = "action_EVENT_GADGET_STATE_CHANGE_941014", trigger_count = 0 },
	{ config_id = 1941015, name = "GADGET_STATE_CHANGE_941015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_941015", action = "action_EVENT_GADGET_STATE_CHANGE_941015", trigger_count = 0 },
	{ config_id = 1941016, name = "GADGET_STATE_CHANGE_941016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_941016", action = "action_EVENT_GADGET_STATE_CHANGE_941016", trigger_count = 0 },
	{ config_id = 1941017, name = "GADGET_STATE_CHANGE_941017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_941017", action = "action_EVENT_GADGET_STATE_CHANGE_941017", trigger_count = 0 },
	{ config_id = 1941018, name = "GADGET_STATE_CHANGE_941018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_941018", action = "action_EVENT_GADGET_STATE_CHANGE_941018", trigger_count = 0 },
	{ config_id = 1941019, name = "GADGET_STATE_CHANGE_941019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_941019", action = "action_EVENT_GADGET_STATE_CHANGE_941019", trigger_count = 0 },
	{ config_id = 1941020, name = "GADGET_STATE_CHANGE_941020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_941020", action = "action_EVENT_GADGET_STATE_CHANGE_941020", trigger_count = 0 }
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
		gadgets = { 941001, 941002, 941003, 941004, 941005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_941011", "GADGET_STATE_CHANGE_941012", "GADGET_STATE_CHANGE_941013", "GADGET_STATE_CHANGE_941014", "GADGET_STATE_CHANGE_941015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 941006, 941007, 941008, 941009, 941010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_941016", "GADGET_STATE_CHANGE_941017", "GADGET_STATE_CHANGE_941018", "GADGET_STATE_CHANGE_941019", "GADGET_STATE_CHANGE_941020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_941011(context, evt)
	if 941001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_941011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079411") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_941012(context, evt)
	if 941002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_941012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079411") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_941013(context, evt)
	if 941003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_941013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079411") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_941014(context, evt)
	if 941004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_941014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079411") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_941015(context, evt)
	if 941005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_941015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079411") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_941016(context, evt)
	if 941006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_941016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079412") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_941017(context, evt)
	if 941007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_941017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079412") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_941018(context, evt)
	if 941008 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_941018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079412") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_941019(context, evt)
	if 941009 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_941019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079412") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_941020(context, evt)
	if 941010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_941020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079412") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end