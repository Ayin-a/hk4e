-- 基础信息
local base_info = {
	group_id = 166001232
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
	{ config_id = 232001, gadget_id = 70360001, pos = { x = 785.364, y = 714.836, z = 330.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 232003, gadget_id = 70360001, pos = { x = 825.807, y = 984.437, z = 740.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 232002, shape = RegionShape.SPHERE, radius = 30, pos = { x = 782.834, y = 717.151, z = 328.797 }, area_id = 300 },
	{ config_id = 232004, shape = RegionShape.SPHERE, radius = 30, pos = { x = 816.096, y = 981.225, z = 745.769 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1232002, name = "ENTER_REGION_232002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_232002" },
	{ config_id = 1232004, name = "ENTER_REGION_232004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_232004" }
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
		gadgets = { 232001, 232003 },
		regions = { 232002, 232004 },
		triggers = { "ENTER_REGION_232002", "ENTER_REGION_232004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_232002(context, evt)
	-- 调用提示id为 60010227 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010227) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_232004(context, evt)
	-- 调用提示id为 60010227 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010227) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end