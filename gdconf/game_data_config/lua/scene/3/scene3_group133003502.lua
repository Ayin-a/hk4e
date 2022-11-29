-- 基础信息
local base_info = {
	group_id = 133003502
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
	{ config_id = 502001, gadget_id = 70220008, pos = { x = 2540.130, y = 212.232, z = -1126.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, isOneoff = true, area_id = 1 },
	{ config_id = 502002, gadget_id = 70220021, pos = { x = 2541.540, y = 212.280, z = -1113.355 }, rot = { x = 41.337, y = 70.538, z = 283.372 }, level = 2, isOneoff = true, area_id = 1 },
	{ config_id = 502003, gadget_id = 70220021, pos = { x = 2547.634, y = 210.877, z = -1108.652 }, rot = { x = 358.902, y = 355.732, z = 5.814 }, level = 2, isOneoff = true, area_id = 1 },
	{ config_id = 502004, gadget_id = 70220021, pos = { x = 2550.069, y = 211.387, z = -1126.756 }, rot = { x = 353.395, y = 63.032, z = 347.672 }, level = 2, isOneoff = true, area_id = 1 },
	{ config_id = 502005, gadget_id = 70220021, pos = { x = 2555.033, y = 214.982, z = -1110.755 }, rot = { x = 354.013, y = 65.840, z = 347.364 }, level = 2, isOneoff = true, area_id = 1 },
	{ config_id = 502006, gadget_id = 70220008, pos = { x = 2549.078, y = 215.032, z = -1111.176 }, rot = { x = 350.960, y = 0.209, z = 357.361 }, level = 2, isOneoff = true, area_id = 1 },
	{ config_id = 502007, gadget_id = 70710062, pos = { x = 2551.556, y = 215.121, z = -1115.592 }, rot = { x = 0.000, y = 293.732, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 502014, gadget_id = 70310011, pos = { x = 2547.371, y = 215.707, z = -1107.459 }, rot = { x = 0.000, y = 18.605, z = 0.000 }, level = 2, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1502008, name = "QUEST_START_502008", event = EventType.EVENT_QUEST_START, source = "1020108", condition = "", action = "action_EVENT_QUEST_START_502008", trigger_count = 0 },
	{ config_id = 1502009, name = "QUEST_START_502009", event = EventType.EVENT_QUEST_START, source = "1020109", condition = "", action = "action_EVENT_QUEST_START_502009", trigger_count = 0 },
	{ config_id = 1502015, name = "GADGET_STATE_CHANGE_502015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_502015", action = "action_EVENT_GADGET_STATE_CHANGE_502015" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 502001, 502002, 502003, 502004, 502005, 502006 },
		regions = { },
		triggers = { "QUEST_START_502008", "QUEST_START_502009", "GADGET_STATE_CHANGE_502015" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 502014 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_502008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003502, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_502009(context, evt)
	-- 创建id为502007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 502007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_502015(context, evt)
	if 502014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_502015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end