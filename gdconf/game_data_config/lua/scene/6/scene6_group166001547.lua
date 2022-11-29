-- 基础信息
local base_info = {
	group_id = 166001547
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
	{ config_id = 547002, gadget_id = 70310004, pos = { x = 846.663, y = 1120.269, z = 552.271 }, rot = { x = 12.882, y = 13.101, z = 345.477 }, level = 36, persistent = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 547001, shape = RegionShape.SPHERE, radius = 70, pos = { x = 884.570, y = 1085.604, z = 577.328 }, area_id = 300 },
	{ config_id = 547003, shape = RegionShape.SPHERE, radius = 70, pos = { x = 884.570, y = 1121.507, z = 577.328 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1547001, name = "ENTER_REGION_547001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_547001", trigger_count = 0 },
	{ config_id = 1547003, name = "ENTER_REGION_547003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_547003", trigger_count = 0 }
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
		gadgets = { 547002 },
		regions = { 547001, 547003 },
		triggers = { "ENTER_REGION_547001", "ENTER_REGION_547003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_547001(context, evt)
	-- 调用提示id为 60010287 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010287) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_547003(context, evt)
	-- 调用提示id为 60010286 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010286) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end