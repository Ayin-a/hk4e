-- 基础信息
local base_info = {
	group_id = 133001303
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1273, monster_id = 21010201, pos = { x = 1277.219, y = 258.162, z = -1437.104 }, rot = { x = 0.000, y = 127.754, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 2 },
	{ config_id = 1274, monster_id = 21010201, pos = { x = 1256.298, y = 258.571, z = -1411.076 }, rot = { x = 0.000, y = 82.077, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 2 },
	{ config_id = 1275, monster_id = 21010201, pos = { x = 1261.623, y = 258.571, z = -1411.133 }, rot = { x = 0.000, y = 281.374, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 2 },
	{ config_id = 1276, monster_id = 21010601, pos = { x = 1258.875, y = 258.571, z = -1407.978 }, rot = { x = 0.000, y = 180.748, z = 0.000 }, level = 15, drop_id = 1000200, affix = { 1901 }, isElite = true, pose_id = 9003, area_id = 2 },
	{ config_id = 1373, monster_id = 21010201, pos = { x = 1276.391, y = 258.159, z = -1437.542 }, rot = { x = 0.000, y = 121.498, z = 0.000 }, level = 15, drop_id = 1000200, disableWander = true, affix = { 1901 }, pose_id = 9016, area_id = 2 },
	{ config_id = 1374, monster_id = 21010601, pos = { x = 1259.502, y = 258.571, z = -1408.098 }, rot = { x = 0.000, y = 180.748, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9003, area_id = 2 },
	{ config_id = 1375, monster_id = 21011001, pos = { x = 1252.195, y = 261.541, z = -1446.843 }, rot = { x = 0.000, y = 165.719, z = 0.000 }, level = 19, drop_id = 1000200, disableWander = true, affix = { 1901 }, isElite = true, pose_id = 32, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3174, gadget_id = 70210102, pos = { x = 1252.837, y = 261.541, z = -1446.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, chest_drop_id = 1000100, drop_count = 1, area_id = 2 },
	{ config_id = 3175, gadget_id = 70220014, pos = { x = 1252.639, y = 261.541, z = -1445.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3176, gadget_id = 70220014, pos = { x = 1273.094, y = 257.732, z = -1438.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3177, gadget_id = 70220014, pos = { x = 1277.304, y = 257.558, z = -1432.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3178, gadget_id = 70220013, pos = { x = 1278.087, y = 257.485, z = -1433.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3179, gadget_id = 70210102, pos = { x = 1275.301, y = 258.232, z = -1438.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, chest_drop_id = 1000100, drop_count = 1, area_id = 2 },
	{ config_id = 3180, gadget_id = 70310004, pos = { x = 1258.538, y = 258.571, z = -1410.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 2 },
	{ config_id = 3181, gadget_id = 70310001, pos = { x = 1252.925, y = 258.455, z = -1408.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 2 },
	{ config_id = 3182, gadget_id = 70310001, pos = { x = 1257.750, y = 258.455, z = -1404.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 2 },
	{ config_id = 3183, gadget_id = 70310001, pos = { x = 1264.771, y = 258.455, z = -1407.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 2 },
	{ config_id = 3184, gadget_id = 70310001, pos = { x = 1263.029, y = 258.455, z = -1413.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 2 },
	{ config_id = 3294, gadget_id = 70300109, pos = { x = 1411.182, y = 234.682, z = -1539.004 }, rot = { x = 0.000, y = 266.900, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3295, gadget_id = 70300109, pos = { x = 1396.924, y = 234.400, z = -1538.496 }, rot = { x = 0.000, y = 266.900, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3296, gadget_id = 70300109, pos = { x = 1384.290, y = 234.400, z = -1543.015 }, rot = { x = 0.000, y = 279.480, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3297, gadget_id = 70300109, pos = { x = 1368.013, y = 235.352, z = -1539.122 }, rot = { x = 0.000, y = 279.480, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3298, gadget_id = 70300109, pos = { x = 1350.853, y = 236.450, z = -1535.085 }, rot = { x = 0.000, y = 279.480, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3299, gadget_id = 70300109, pos = { x = 1333.151, y = 241.428, z = -1532.707 }, rot = { x = 0.000, y = 262.700, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3300, gadget_id = 70300109, pos = { x = 1310.349, y = 246.837, z = -1534.558 }, rot = { x = 346.567, y = 272.642, z = 357.668 }, level = 15, area_id = 2 },
	{ config_id = 3301, gadget_id = 70300109, pos = { x = 1288.311, y = 251.763, z = -1528.631 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3302, gadget_id = 70300109, pos = { x = 1276.477, y = 252.785, z = -1519.879 }, rot = { x = 0.000, y = 336.600, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3303, gadget_id = 70300109, pos = { x = 1275.819, y = 254.725, z = -1505.980 }, rot = { x = 0.000, y = 42.200, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3304, gadget_id = 70300109, pos = { x = 1282.235, y = 254.741, z = -1491.518 }, rot = { x = 0.000, y = 285.400, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3305, gadget_id = 70300109, pos = { x = 1269.257, y = 255.141, z = -1482.443 }, rot = { x = 0.000, y = 26.700, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3306, gadget_id = 70300109, pos = { x = 1274.734, y = 255.141, z = -1468.051 }, rot = { x = 0.000, y = 329.700, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3307, gadget_id = 70300109, pos = { x = 1264.354, y = 255.163, z = -1449.652 }, rot = { x = 0.000, y = 332.965, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3308, gadget_id = 70300109, pos = { x = 1258.793, y = 256.020, z = -1427.133 }, rot = { x = 0.000, y = 356.500, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3309, gadget_id = 70300109, pos = { x = 1258.062, y = 258.571, z = -1415.831 }, rot = { x = 0.000, y = 356.500, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3310, gadget_id = 70300109, pos = { x = 1267.674, y = 257.265, z = -1428.501 }, rot = { x = 0.000, y = 129.267, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3311, gadget_id = 70300109, pos = { x = 1252.730, y = 254.981, z = -1435.680 }, rot = { x = 0.000, y = 198.700, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3323, gadget_id = 70300086, pos = { x = 1387.937, y = 233.891, z = -1536.878 }, rot = { x = 0.000, y = 0.000, z = 88.513 }, level = 15, area_id = 2 },
	{ config_id = 3324, gadget_id = 70220014, pos = { x = 1445.925, y = 239.741, z = -1584.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3325, gadget_id = 70220014, pos = { x = 1451.111, y = 241.539, z = -1602.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3326, gadget_id = 70220014, pos = { x = 1487.683, y = 242.967, z = -1586.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3327, gadget_id = 70220014, pos = { x = 1542.173, y = 243.103, z = -1584.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3328, gadget_id = 70220014, pos = { x = 1578.407, y = 244.197, z = -1572.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 3329, gadget_id = 70220014, pos = { x = 1597.780, y = 246.230, z = -1602.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000493, name = "GADGET_STATE_CHANGE_493", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_493", action = "action_EVENT_GADGET_STATE_CHANGE_493", trigger_count = 0 },
	{ config_id = 1000494, name = "GADGET_STATE_CHANGE_494", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_494", action = "action_EVENT_GADGET_STATE_CHANGE_494" },
	{ config_id = 1000495, name = "GADGET_STATE_CHANGE_495", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_495", action = "action_EVENT_GADGET_STATE_CHANGE_495" },
	{ config_id = 1000496, name = "ANY_MONSTER_DIE_496", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_496", action = "action_EVENT_ANY_MONSTER_DIE_496" }
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
		gadgets = { 3323, 3324, 3325, 3326, 3327, 3328, 3329 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1273, 1274, 1275, 1276 },
		gadgets = { 3174, 3175, 3176, 3177, 3178, 3179, 3180, 3181, 3182, 3183, 3184, 3294, 3295, 3296, 3297, 3298, 3299, 3300, 3301, 3302, 3303, 3304, 3305, 3306, 3307, 3308, 3309, 3310, 3311, 3323, 3324, 3325, 3326, 3327, 3328, 3329 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_493", "GADGET_STATE_CHANGE_494", "GADGET_STATE_CHANGE_495", "ANY_MONSTER_DIE_496" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 1274, 1275, 1373, 1374 },
		gadgets = { 3174, 3175, 3176, 3177, 3178, 3179, 3180, 3181, 3182, 3183, 3184, 3294, 3295, 3296, 3297, 3298, 3299, 3300, 3301, 3302, 3303, 3304, 3305, 3306, 3307, 3308, 3309, 3310, 3311, 3323, 3324, 3325, 3326, 3327, 3328, 3329 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 1273, 1374, 1375 },
		gadgets = { 3174, 3175, 3176, 3177, 3178, 3179, 3180, 3181, 3182, 3183, 3184, 3294, 3295, 3296, 3297, 3298, 3299, 3300, 3301, 3302, 3303, 3304, 3305, 3306, 3307, 3308, 3309, 3310, 3311, 3323, 3324, 3325, 3326, 3327, 3328, 3329 },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_493(context, evt)
	if 3179 == evt.param2 and GadgetState.ChestOpened == evt.param1 then
		return true
	end
	
	if 3174 == evt.param2 and GadgetState.ChestOpened == evt.param1 then
		return false
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_493(context, evt)
	-- 调用提示id为 1110004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_494(context, evt)
	if 3179 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_494(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001303, monsters = {}, gadgets = {3310} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_495(context, evt)
	if 3174 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_495(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001303, monsters = {}, gadgets = {3311} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_496(context, evt)
	if 1276 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_496(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001303, monsters = {}, gadgets = {3309,3308} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end