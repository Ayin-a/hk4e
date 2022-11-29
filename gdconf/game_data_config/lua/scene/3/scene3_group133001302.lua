-- 基础信息
local base_info = {
	group_id = 133001302
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
	{ config_id = 3166, gadget_id = 70220013, pos = { x = 1572.592, y = 246.081, z = -1562.970 }, rot = { x = 0.000, y = 10.775, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3167, gadget_id = 70220013, pos = { x = 1573.694, y = 245.965, z = -1561.361 }, rot = { x = 0.000, y = 10.775, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3168, gadget_id = 70220013, pos = { x = 1560.386, y = 245.965, z = -1561.422 }, rot = { x = 0.000, y = 10.775, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3169, gadget_id = 70220013, pos = { x = 1560.353, y = 246.081, z = -1559.363 }, rot = { x = 0.000, y = 43.826, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3170, gadget_id = 70210102, pos = { x = 1573.174, y = 246.073, z = -1564.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, chest_drop_id = 1000100, drop_count = 1, area_id = 2 },
	{ config_id = 3171, gadget_id = 70210102, pos = { x = 1609.812, y = 249.196, z = -1605.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, chest_drop_id = 1000000, drop_count = 1, area_id = 2 },
	{ config_id = 3172, gadget_id = 70210102, pos = { x = 1604.625, y = 245.861, z = -1584.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, chest_drop_id = 1000100, drop_count = 1, area_id = 2 },
	{ config_id = 3173, gadget_id = 70220013, pos = { x = 1613.691, y = 246.095, z = -1588.528 }, rot = { x = 0.000, y = 43.826, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3185, gadget_id = 70210102, pos = { x = 1604.755, y = 245.873, z = -1584.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, chest_drop_id = 1000000, drop_count = 1, area_id = 2 },
	{ config_id = 3186, gadget_id = 70210102, pos = { x = 1610.514, y = 249.196, z = -1604.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, chest_drop_id = 1000100, drop_count = 1, area_id = 2 },
	{ config_id = 3280, gadget_id = 70300109, pos = { x = 1413.806, y = 234.943, z = -1550.749 }, rot = { x = 0.000, y = 186.010, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3281, gadget_id = 70300109, pos = { x = 1411.145, y = 235.081, z = -1568.833 }, rot = { x = 0.000, y = 186.010, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3282, gadget_id = 70300109, pos = { x = 1424.399, y = 235.794, z = -1590.437 }, rot = { x = 0.000, y = 98.361, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3283, gadget_id = 70300109, pos = { x = 1447.701, y = 238.518, z = -1592.877 }, rot = { x = 0.000, y = 98.361, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3284, gadget_id = 70300109, pos = { x = 1481.427, y = 238.705, z = -1604.631 }, rot = { x = 0.000, y = 104.285, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3285, gadget_id = 70300109, pos = { x = 1511.093, y = 239.200, z = -1614.048 }, rot = { x = 0.000, y = 73.420, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3286, gadget_id = 70300109, pos = { x = 1537.427, y = 240.873, z = -1602.481 }, rot = { x = 0.000, y = 55.271, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3287, gadget_id = 70300109, pos = { x = 1557.404, y = 243.185, z = -1578.217 }, rot = { x = 0.000, y = 30.744, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3288, gadget_id = 70300109, pos = { x = 1566.786, y = 243.681, z = -1578.851 }, rot = { x = 0.000, y = 92.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3289, gadget_id = 70300109, pos = { x = 1564.787, y = 246.081, z = -1566.103 }, rot = { x = 0.000, y = 45.300, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3290, gadget_id = 70300109, pos = { x = 1584.932, y = 244.412, z = -1581.292 }, rot = { x = 0.000, y = 118.800, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3291, gadget_id = 70300109, pos = { x = 1596.976, y = 245.043, z = -1584.940 }, rot = { x = 0.000, y = 81.520, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3292, gadget_id = 70300109, pos = { x = 1601.491, y = 245.434, z = -1595.142 }, rot = { x = 0.000, y = 136.063, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3293, gadget_id = 70300109, pos = { x = 1608.238, y = 247.490, z = -1602.908 }, rot = { x = 27.949, y = 122.953, z = 324.133 }, level = 15, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000489, name = "GADGET_STATE_CHANGE_489", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_489", action = "action_EVENT_GADGET_STATE_CHANGE_489", trigger_count = 0 },
	{ config_id = 1000490, name = "GADGET_STATE_CHANGE_490", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_490", action = "action_EVENT_GADGET_STATE_CHANGE_490" },
	{ config_id = 1000491, name = "GADGET_STATE_CHANGE_491", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_491", action = "action_EVENT_GADGET_STATE_CHANGE_491" },
	{ config_id = 1000492, name = "GADGET_STATE_CHANGE_492", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_492", action = "action_EVENT_GADGET_STATE_CHANGE_492" }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 3166, 3167, 3168, 3169, 3170, 3171, 3172, 3173, 3280, 3281, 3282, 3283, 3284, 3285, 3286, 3287, 3288, 3289, 3290, 3291, 3292, 3293 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_489", "GADGET_STATE_CHANGE_490", "GADGET_STATE_CHANGE_491", "GADGET_STATE_CHANGE_492" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 3166, 3167, 3168, 3169, 3170, 3173, 3185, 3186, 3280, 3281, 3282, 3283, 3284, 3285, 3286, 3287, 3288, 3289, 3290, 3291, 3292, 3293 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_489", "GADGET_STATE_CHANGE_490", "GADGET_STATE_CHANGE_491", "GADGET_STATE_CHANGE_492" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_489(context, evt)
	if 3170 == evt.param2 and GadgetState.ChestOpened == evt.param1 then
		return true
	end
	
	if 3172 == evt.param2 and GadgetState.ChestOpened == evt.param1 then
		return true
	end
	
	if 3186 == evt.param2 and GadgetState.ChestOpened == evt.param1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_489(context, evt)
	-- 调用提示id为 1110004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_490(context, evt)
	if 3170 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_490(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001302, monsters = {}, gadgets = {3289,3287} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_491(context, evt)
	if 3172 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_491(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001302, monsters = {}, gadgets = {3281} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_492(context, evt)
	if 3186 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_492(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001302, monsters = {}, gadgets = {3293,3292} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end