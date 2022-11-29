-- 基础信息
local base_info = {
	group_id = 133223495
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
	{ config_id = 495003, gadget_id = 70360001, pos = { x = -6008.351, y = 214.886, z = -2915.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 495006, gadget_id = 70360001, pos = { x = -6008.249, y = 214.955, z = -2916.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 495005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -6009.717, y = 214.594, z = -2915.084 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1495001, name = "QUEST_FINISH_495001", event = EventType.EVENT_QUEST_FINISH, source = "7222501", condition = "", action = "action_EVENT_QUEST_FINISH_495001", trigger_count = 0 },
	{ config_id = 1495005, name = "ENTER_REGION_495005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_495005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 495004, gadget_id = 70360001, pos = { x = -6008.249, y = 214.955, z = -2916.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
	},
	regions = {
		{ config_id = 495002, shape = RegionShape.SPHERE, radius = 10, pos = { x = -6009.717, y = 214.594, z = -2915.084 }, area_id = 18 },
		{ config_id = 495007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6008.121, y = 214.871, z = -2914.989 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1495002, name = "ENTER_REGION_495002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_495002" },
		{ config_id = 1495007, name = "ENTER_REGION_495007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 495003 },
		regions = { },
		triggers = { "QUEST_FINISH_495001" },
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
		gadgets = { 495006 },
		regions = { 495005 },
		triggers = { "ENTER_REGION_495005" },
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
function action_EVENT_QUEST_FINISH_495001(context, evt)
	-- 调用提示id为 721670008 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721670008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_495005(context, evt)
	-- 调用提示id为 721670009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721670009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end