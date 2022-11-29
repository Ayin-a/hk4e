-- 基础信息
local base_info = {
	group_id = 133223497
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
	{ config_id = 497001, gadget_id = 70360001, pos = { x = -6222.386, y = 235.472, z = -2460.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 497003, gadget_id = 70360001, pos = { x = -6222.284, y = 235.541, z = -2461.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 497006, shape = RegionShape.SPHERE, radius = 10, pos = { x = -6222.445, y = 235.180, z = -2459.179 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1497004, name = "QUEST_FINISH_497004", event = EventType.EVENT_QUEST_FINISH, source = "7222701", condition = "", action = "action_EVENT_QUEST_FINISH_497004", trigger_count = 0 },
	{ config_id = 1497006, name = "ENTER_REGION_497006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_497006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 497002, gadget_id = 70360001, pos = { x = -6222.284, y = 235.541, z = -2461.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
	},
	regions = {
		{ config_id = 497005, shape = RegionShape.SPHERE, radius = 810, pos = { x = -6222.996, y = 234.913, z = -2458.737 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1497005, name = "ENTER_REGION_497005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_497005" }
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
		gadgets = { 497001 },
		regions = { },
		triggers = { "QUEST_FINISH_497004" },
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 497003 },
		regions = { 497006 },
		triggers = { "ENTER_REGION_497006" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_497004(context, evt)
	-- 调用提示id为 721670008 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721670008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_497006(context, evt)
	-- 调用提示id为 721670009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721670009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end