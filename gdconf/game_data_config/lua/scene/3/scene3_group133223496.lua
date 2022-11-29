-- 基础信息
local base_info = {
	group_id = 133223496
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
	{ config_id = 496001, gadget_id = 70360001, pos = { x = -5979.240, y = 214.272, z = -2566.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 496003, gadget_id = 70360001, pos = { x = -5979.138, y = 214.341, z = -2567.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 496006, shape = RegionShape.SPHERE, radius = 10, pos = { x = -5979.300, y = 213.981, z = -2565.344 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1496004, name = "QUEST_FINISH_496004", event = EventType.EVENT_QUEST_FINISH, source = "7222601", condition = "", action = "action_EVENT_QUEST_FINISH_496004", trigger_count = 0 },
	{ config_id = 1496006, name = "ENTER_REGION_496006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_496006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 496002, gadget_id = 70360001, pos = { x = -5979.138, y = 214.341, z = -2567.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
	},
	regions = {
		{ config_id = 496005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -5979.850, y = 213.981, z = -2564.902 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1496005, name = "ENTER_REGION_496005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_496005" }
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
		gadgets = { 496001 },
		regions = { },
		triggers = { "QUEST_FINISH_496004" },
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
		gadgets = { 496003 },
		regions = { 496006 },
		triggers = { "ENTER_REGION_496006" },
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
function action_EVENT_QUEST_FINISH_496004(context, evt)
	-- 调用提示id为 721670008 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721670008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_496006(context, evt)
	-- 调用提示id为 721670009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721670009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end