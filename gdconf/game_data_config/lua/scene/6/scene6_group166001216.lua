-- 基础信息
local base_info = {
	group_id = 166001216
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
	{ config_id = 216006, gadget_id = 70360001, pos = { x = 218.516, y = 152.931, z = 717.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 216001, shape = RegionShape.POLYGON, pos = { x = 159.799, y = 151.862, z = 720.356 }, height = 57.344, point_array = { { x = 219.424, y = 780.067 }, { x = 185.615, y = 800.913 }, { x = 86.741, y = 734.184 }, { x = 62.620, y = 679.112 }, { x = 64.284, y = 655.545 }, { x = 80.685, y = 646.480 }, { x = 103.594, y = 639.800 }, { x = 166.411, y = 649.039 }, { x = 256.978, y = 699.903 }, { x = 243.117, y = 733.683 } }, area_id = 300 },
	{ config_id = 216002, shape = RegionShape.SPHERE, radius = 45, pos = { x = 147.347, y = 146.116, z = 709.730 }, area_id = 300 },
	{ config_id = 216004, shape = RegionShape.SPHERE, radius = 50, pos = { x = 147.254, y = 145.181, z = 700.656 }, area_id = 300 },
	{ config_id = 216005, shape = RegionShape.SPHERE, radius = 50, pos = { x = 140.951, y = 145.732, z = 698.658 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1216001, name = "ENTER_REGION_216001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_216001" },
	{ config_id = 1216002, name = "ENTER_REGION_216002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_216002" },
	{ config_id = 1216003, name = "TIME_AXIS_PASS_216003", event = EventType.EVENT_TIME_AXIS_PASS, source = "mushroom", condition = "condition_EVENT_TIME_AXIS_PASS_216003", action = "action_EVENT_TIME_AXIS_PASS_216003" },
	{ config_id = 1216004, name = "ENTER_REGION_216004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_216004" },
	{ config_id = 1216005, name = "ENTER_REGION_216005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_216005" }
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
		gadgets = { 216006 },
		regions = { 216001, 216002 },
		triggers = { "ENTER_REGION_216001", "ENTER_REGION_216002", "TIME_AXIS_PASS_216003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 216004 },
		triggers = { "ENTER_REGION_216004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 216005 },
		triggers = { "ENTER_REGION_216005" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
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

-- 触发操作
function action_EVENT_ENTER_REGION_216001(context, evt)
	-- 调用提示id为 60010213 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010213) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_216002(context, evt)
	-- 调用提示id为 60010216 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010216) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"mushroom"，时间节点为{12}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "mushroom", {12}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_216003(context, evt)
	if "mushroom" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_216003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001216") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_216004(context, evt)
	-- 调用提示id为 60010221 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010221) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_216005(context, evt)
	-- 调用提示id为 60010222 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010222) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end