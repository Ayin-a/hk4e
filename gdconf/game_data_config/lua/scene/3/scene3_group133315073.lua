-- 基础信息
local base_info = {
	group_id = 133315073
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
	{ config_id = 73006, gadget_id = 70360001, pos = { x = 169.993, y = 230.569, z = 2255.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 73001, shape = RegionShape.POLYGON, pos = { x = 270.497, y = 207.894, z = 2275.983 }, height = 215.789, point_array = { { x = 54.719, y = 2316.620 }, { x = 114.081, y = 2325.198 }, { x = 200.065, y = 2317.389 }, { x = 294.129, y = 2326.510 }, { x = 368.302, y = 2340.747 }, { x = 412.062, y = 2292.013 }, { x = 486.275, y = 2289.778 }, { x = 482.754, y = 2241.714 }, { x = 413.309, y = 2211.219 }, { x = 280.471, y = 2211.822 }, { x = 193.298, y = 2230.593 }, { x = 122.822, y = 2260.230 }, { x = 67.730, y = 2270.865 } }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1073001, name = "ENTER_REGION_73001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_73001", action = "action_EVENT_ENTER_REGION_73001" }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = true }
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
		gadgets = { 73006 },
		regions = { 73001 },
		triggers = { "ENTER_REGION_73001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_73001(context, evt)
	if evt.param1 ~= 73001 then return false end
	
	-- 判断是区域73001
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 73001 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_73001(context, evt)
	-- 调用提示id为 730662519 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730662519) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end