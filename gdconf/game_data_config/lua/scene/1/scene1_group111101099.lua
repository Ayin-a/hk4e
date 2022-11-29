-- 基础信息
local base_info = {
	group_id = 111101099
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
	{ config_id = 99001, gadget_id = 70360002, pos = { x = 2353.929, y = 283.898, z = -1729.235 }, rot = { x = 0.000, y = 333.979, z = 0.000 }, level = 1 },
	{ config_id = 99004, gadget_id = 70950051, pos = { x = 2340.344, y = 297.580, z = -1748.613 }, rot = { x = 0.000, y = 251.760, z = 0.000 }, level = 1 },
	{ config_id = 99005, gadget_id = 70950051, pos = { x = 2337.306, y = 297.580, z = -1740.623 }, rot = { x = 0.000, y = 268.607, z = 0.000 }, level = 1 },
	{ config_id = 99006, gadget_id = 70950051, pos = { x = 2338.489, y = 301.994, z = -1744.689 }, rot = { x = 0.000, y = 268.607, z = 0.000 }, level = 1 },
	{ config_id = 99007, gadget_id = 70950051, pos = { x = 2338.489, y = 292.977, z = -1744.689 }, rot = { x = 0.000, y = 251.900, z = 0.000 }, level = 1 },
	{ config_id = 99008, gadget_id = 70950051, pos = { x = 2361.542, y = 296.378, z = -1714.950 }, rot = { x = 0.000, y = 74.830, z = 0.000 }, level = 1 },
	{ config_id = 99009, gadget_id = 70950051, pos = { x = 2364.003, y = 296.300, z = -1722.641 }, rot = { x = 0.000, y = 74.830, z = 0.000 }, level = 1 },
	{ config_id = 99010, gadget_id = 70950051, pos = { x = 2362.847, y = 300.008, z = -1719.209 }, rot = { x = 0.000, y = 74.830, z = 0.000 }, level = 1 },
	{ config_id = 99011, gadget_id = 70950051, pos = { x = 2362.847, y = 292.468, z = -1719.209 }, rot = { x = 0.000, y = 74.830, z = 0.000 }, level = 1 },
	{ config_id = 99012, gadget_id = 70950051, pos = { x = 2363.875, y = 294.208, z = -1733.902 }, rot = { x = 0.000, y = 271.640, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99013, gadget_id = 70950053, pos = { x = 2361.540, y = 303.047, z = -1724.374 }, rot = { x = 0.000, y = 271.640, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99014, gadget_id = 70950051, pos = { x = 2360.785, y = 294.208, z = -1720.879 }, rot = { x = 0.000, y = 264.290, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99015, gadget_id = 70950050, pos = { x = 2338.489, y = 297.486, z = -1744.689 }, rot = { x = 0.000, y = 268.607, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99016, gadget_id = 70950051, pos = { x = 2340.344, y = 292.981, z = -1748.613 }, rot = { x = 0.000, y = 246.400, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99017, gadget_id = 70950053, pos = { x = 2357.557, y = 297.257, z = -1753.630 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99018, gadget_id = 70950052, pos = { x = 2358.171, y = 290.119, z = -1746.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 99019, gadget_id = 70950052, pos = { x = 2351.667, y = 296.245, z = -1746.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 99020, gadget_id = 70950051, pos = { x = 2340.344, y = 302.031, z = -1748.613 }, rot = { x = 0.000, y = 249.900, z = 0.000 }, level = 1 },
	{ config_id = 99021, gadget_id = 70950051, pos = { x = 2337.306, y = 301.975, z = -1740.623 }, rot = { x = 0.000, y = 268.607, z = 0.000 }, level = 1 },
	{ config_id = 99022, gadget_id = 70950051, pos = { x = 2337.306, y = 292.920, z = -1740.623 }, rot = { x = 0.000, y = 268.607, z = 0.000 }, level = 1 },
	{ config_id = 99023, gadget_id = 70950051, pos = { x = 2350.580, y = 301.936, z = -1756.690 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99024, gadget_id = 70950051, pos = { x = 2354.178, y = 301.936, z = -1755.097 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99025, gadget_id = 70950051, pos = { x = 2357.557, y = 301.936, z = -1753.630 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99026, gadget_id = 70950053, pos = { x = 2350.580, y = 297.234, z = -1756.690 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99027, gadget_id = 70950053, pos = { x = 2354.178, y = 297.257, z = -1755.097 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99029, gadget_id = 70950052, pos = { x = 2335.455, y = 295.033, z = -1727.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 99031, gadget_id = 70950051, pos = { x = 2361.526, y = 298.201, z = -1724.340 }, rot = { x = 0.000, y = 271.640, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99032, gadget_id = 70950050, pos = { x = 2362.213, y = 298.014, z = -1727.566 }, rot = { x = 0.000, y = 271.640, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 99033, gadget_id = 70950051, pos = { x = 2360.785, y = 298.014, z = -1720.879 }, rot = { x = 0.000, y = 264.290, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99034, gadget_id = 70950053, pos = { x = 2362.953, y = 303.176, z = -1730.589 }, rot = { x = 0.000, y = 271.640, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99035, gadget_id = 70950051, pos = { x = 2363.875, y = 303.087, z = -1733.902 }, rot = { x = 0.000, y = 271.640, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99036, gadget_id = 70950051, pos = { x = 2360.785, y = 303.087, z = -1720.879 }, rot = { x = 0.000, y = 264.290, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99037, gadget_id = 70950052, pos = { x = 2345.770, y = 290.119, z = -1746.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 99038, gadget_id = 70950052, pos = { x = 2355.010, y = 295.033, z = -1718.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 99039, gadget_id = 70950052, pos = { x = 2368.353, y = 295.033, z = -1741.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 99040, gadget_id = 70950052, pos = { x = 2343.775, y = 295.033, z = -1754.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 99041, gadget_id = 70950050, pos = { x = 2362.847, y = 296.318, z = -1719.209 }, rot = { x = 0.000, y = 74.830, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99042, gadget_id = 70950051, pos = { x = 2350.580, y = 292.031, z = -1756.690 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99043, gadget_id = 70950051, pos = { x = 2354.178, y = 292.054, z = -1755.097 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99044, gadget_id = 70950051, pos = { x = 2357.557, y = 292.054, z = -1753.630 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99045, gadget_id = 70950051, pos = { x = 2362.953, y = 294.208, z = -1730.589 }, rot = { x = 0.000, y = 271.640, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99046, gadget_id = 70950051, pos = { x = 2361.502, y = 294.119, z = -1724.286 }, rot = { x = 0.000, y = 271.640, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99047, gadget_id = 70950051, pos = { x = 2362.953, y = 298.201, z = -1730.589 }, rot = { x = 0.000, y = 271.640, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99048, gadget_id = 70950051, pos = { x = 2363.875, y = 298.193, z = -1733.902 }, rot = { x = 0.000, y = 271.640, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99050, gadget_id = 70950051, pos = { x = 2351.679, y = 290.240, z = -1718.798 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99051, gadget_id = 70950052, pos = { x = 2342.811, y = 299.573, z = -1721.315 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99052, gadget_id = 70950051, pos = { x = 2339.665, y = 290.240, z = -1722.130 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99053, gadget_id = 70950051, pos = { x = 2342.777, y = 295.040, z = -1721.330 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99054, gadget_id = 70950050, pos = { x = 2345.636, y = 294.853, z = -1720.589 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 99055, gadget_id = 70950051, pos = { x = 2339.665, y = 294.853, z = -1722.130 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99056, gadget_id = 70950052, pos = { x = 2348.537, y = 299.702, z = -1719.790 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99057, gadget_id = 70950051, pos = { x = 2351.679, y = 299.613, z = -1718.798 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99058, gadget_id = 70950051, pos = { x = 2339.665, y = 299.613, z = -1722.130 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99059, gadget_id = 70950053, pos = { x = 2348.537, y = 290.240, z = -1719.790 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99060, gadget_id = 70950053, pos = { x = 2342.724, y = 290.150, z = -1721.356 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99061, gadget_id = 70950051, pos = { x = 2348.537, y = 295.040, z = -1719.790 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99064, gadget_id = 70950051, pos = { x = 2351.679, y = 294.835, z = -1718.798 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99066, gadget_id = 70950051, pos = { x = 2351.739, y = 298.331, z = -1745.043 }, rot = { x = 0.000, y = 334.320, z = 0.000 }, level = 1 },
	{ config_id = 99067, gadget_id = 70950051, pos = { x = 2358.435, y = 298.331, z = -1741.940 }, rot = { x = 0.000, y = 334.320, z = 0.000 }, level = 1 },
	{ config_id = 99068, gadget_id = 70950051, pos = { x = 2354.888, y = 302.104, z = -1743.452 }, rot = { x = 0.000, y = 334.320, z = 0.000 }, level = 1 },
	{ config_id = 99069, gadget_id = 70950051, pos = { x = 2354.888, y = 293.293, z = -1743.452 }, rot = { x = 0.000, y = 334.320, z = 0.000 }, level = 1 },
	{ config_id = 99070, gadget_id = 70950051, pos = { x = 2328.892, y = 293.186, z = -1740.166 }, rot = { x = 0.000, y = 245.160, z = 0.000 }, level = 1 },
	{ config_id = 99071, gadget_id = 70950051, pos = { x = 2331.815, y = 293.186, z = -1746.002 }, rot = { x = 0.000, y = 245.160, z = 0.000 }, level = 1 },
	{ config_id = 99072, gadget_id = 70950051, pos = { x = 2330.353, y = 296.754, z = -1742.673 }, rot = { x = 0.000, y = 245.160, z = 0.000 }, level = 1 },
	{ config_id = 99073, gadget_id = 70950051, pos = { x = 2330.352, y = 290.063, z = -1742.672 }, rot = { x = 0.000, y = 245.160, z = 0.000 }, level = 1 },
	{ config_id = 99074, gadget_id = 70950050, pos = { x = 2354.888, y = 298.236, z = -1743.452 }, rot = { x = 0.000, y = 334.320, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99075, gadget_id = 70950051, pos = { x = 2351.739, y = 292.999, z = -1745.043 }, rot = { x = 0.000, y = 345.470, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 99076, gadget_id = 70950051, pos = { x = 2351.739, y = 302.140, z = -1745.043 }, rot = { x = 0.000, y = 334.320, z = 0.000 }, level = 1 },
	{ config_id = 99077, gadget_id = 70950051, pos = { x = 2358.435, y = 302.084, z = -1741.940 }, rot = { x = 0.000, y = 334.320, z = 0.000 }, level = 1 },
	{ config_id = 99078, gadget_id = 70950051, pos = { x = 2358.435, y = 293.236, z = -1741.940 }, rot = { x = 0.000, y = 334.320, z = 0.000 }, level = 1 },
	{ config_id = 99079, gadget_id = 70950050, pos = { x = 2330.353, y = 293.405, z = -1742.673 }, rot = { x = 0.000, y = 245.160, z = 0.000 }, level = 1, start_route = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1099002, name = "GADGET_CREATE_99002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_99002", action = "action_EVENT_GADGET_CREATE_99002", trigger_count = 0 },
	{ config_id = 1099003, name = "SELECT_OPTION_99003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_99003", action = "action_EVENT_SELECT_OPTION_99003", trigger_count = 0, forbid_guest = false },
	{ config_id = 1099028, name = "TIMER_EVENT_99028", event = EventType.EVENT_TIMER_EVENT, source = "refresh_ballon", condition = "", action = "action_EVENT_TIMER_EVENT_99028", trigger_count = 0 },
	{ config_id = 1099030, name = "GADGET_CREATE_99030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_99030", action = "action_EVENT_GADGET_CREATE_99030", trigger_count = 0 },
	{ config_id = 1099049, name = "GADGET_CREATE_99049", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_99049", action = "action_EVENT_GADGET_CREATE_99049", trigger_count = 0 },
	{ config_id = 1099062, name = "TIMER_EVENT_99062", event = EventType.EVENT_TIMER_EVENT, source = "destroy_ballon", condition = "", action = "action_EVENT_TIMER_EVENT_99062", trigger_count = 0 },
	{ config_id = 1099063, name = "GADGET_CREATE_99063", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_99063", action = "action_EVENT_GADGET_CREATE_99063", trigger_count = 0 },
	{ config_id = 1099065, name = "GADGET_CREATE_99065", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_99065", action = "action_EVENT_GADGET_CREATE_99065", trigger_count = 0 },
	{ config_id = 1099080, name = "GADGET_CREATE_99080", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_99080", action = "action_EVENT_GADGET_CREATE_99080", trigger_count = 0 },
	{ config_id = 1099081, name = "GADGET_CREATE_99081", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_99081", action = "action_EVENT_GADGET_CREATE_99081", trigger_count = 0 },
	{ config_id = 1099082, name = "GADGET_CREATE_99082", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_99082", action = "action_EVENT_GADGET_CREATE_99082", trigger_count = 0 },
	{ config_id = 1099083, name = "GADGET_CREATE_99083", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_99083", action = "action_EVENT_GADGET_CREATE_99083", trigger_count = 0 },
	{ config_id = 1099084, name = "GADGET_CREATE_99084", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_99084", action = "action_EVENT_GADGET_CREATE_99084", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "stage", value = 0, no_refresh = false }
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
		gadgets = { 99001 },
		regions = { },
		triggers = { "GADGET_CREATE_99002", "SELECT_OPTION_99003", "TIMER_EVENT_99028", "TIMER_EVENT_99062" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 99004, 99005, 99006, 99007, 99008, 99009, 99010, 99011, 99015, 99016, 99020, 99021, 99022, 99041 },
		regions = { },
		triggers = { "GADGET_CREATE_99080" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 99012, 99013, 99014, 99031, 99032, 99033, 99034, 99035, 99036, 99045, 99046, 99047, 99048 },
		regions = { },
		triggers = { "GADGET_CREATE_99049", "GADGET_CREATE_99081" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 99017, 99023, 99024, 99025, 99026, 99027, 99042, 99043, 99044 },
		regions = { },
		triggers = { "GADGET_CREATE_99082" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 99018, 99019, 99037, 99050, 99051, 99052, 99053, 99054, 99055, 99056, 99057, 99058, 99059, 99060, 99061, 99064 },
		regions = { },
		triggers = { "GADGET_CREATE_99063", "GADGET_CREATE_99065", "GADGET_CREATE_99083" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 99029, 99038, 99039, 99040, 99066, 99067, 99068, 99069, 99070, 99071, 99072, 99073, 99074, 99075, 99076, 99077, 99078, 99079 },
		regions = { },
		triggers = { "GADGET_CREATE_99030", "GADGET_CREATE_99084" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_99002(context, evt)
	if 99001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_99002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101099, 99001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_99003(context, evt)
	-- 判断是gadgetid 99001 option_id 7
	if 99001 ~= evt.param1 then
		return false	
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_99003(context, evt)
	if evt.param2 == 7 then
		local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.SetPlayerGroupVisionType(context, uid_list, {0})
		ScriptLib.DelWorktopOptionByGroupId(context, 111101099, 99001, 7)
		ScriptLib.SetWorktopOptionsByGroupId(context, 111101099, 99001, {2905})
	    ScriptLib.AddExtraGroupSuite(context, 111101099, 2)
		ScriptLib.CreateGroupTimerEvent(context, 111101099, "refresh_ballon", 10)
		ScriptLib.CreateGroupTimerEvent(context, 111101099, "destroy_ballon", 7)
		ScriptLib.ChangeGroupVariableValue(context, "stage", 1)
	elseif evt.param2 == 2905 then
		local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.SetPlayerGroupVisionType(context, uid_list, {1})
		ScriptLib.SetWorktopOptionsByGroupId(context, 111101099, 99001, {7})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_99028(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "stage") == 1 then
	        ScriptLib.AddExtraGroupSuite(context, 111101099, 3)
	        ScriptLib.CreateGroupTimerEvent(context, 111101099, "refresh_ballon", 10)
	        ScriptLib.ChangeGroupVariableValue(context, "stage", 1)
	elseif ScriptLib.GetGroupVariableValue(context, "stage") == 2 then
	        ScriptLib.AddExtraGroupSuite(context, 111101099, 4)
	        ScriptLib.CreateGroupTimerEvent(context, 111101099, "refresh_ballon", 10)
	        ScriptLib.ChangeGroupVariableValue(context, "stage", 1)
	elseif ScriptLib.GetGroupVariableValue(context, "stage") == 3 then
	        ScriptLib.AddExtraGroupSuite(context, 111101099, 5)
	        ScriptLib.CreateGroupTimerEvent(context, 111101099, "refresh_ballon", 10)
	        ScriptLib.ChangeGroupVariableValue(context, "stage", 1)
	elseif ScriptLib.GetGroupVariableValue(context, "stage") == 4 then
	        ScriptLib.AddExtraGroupSuite(context, 111101099, 6)
	        ScriptLib.CreateGroupTimerEvent(context, 111101099, "refresh_ballon", 10)
	        ScriptLib.ChangeGroupVariableValue(context, "stage", 1)
	elseif ScriptLib.GetGroupVariableValue(context, "stage") == 5 then
	        ScriptLib.AddExtraGroupSuite(context, 111101099, 2)
	        ScriptLib.CreateGroupTimerEvent(context, 111101099, "refresh_ballon", 10)
	        ScriptLib.SetGroupVariableValue(context, "stage", 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_99030(context, evt)
	if 99029 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_99030(context, evt)
	ScriptLib.SetPlatformPointArray(context, 99038, 110100004, { 1,2,3,4 }, { route_type = 2 })
	ScriptLib.SetPlatformPointArray(context, 99039, 110100004, { 2,3,4,1 }, { route_type = 2 })
	ScriptLib.SetPlatformPointArray(context, 99040, 110100004, { 3,4,1,2 }, { route_type = 2 })
	ScriptLib.SetPlatformPointArray(context, 99029, 110100004, { 4,1,2,3 }, { route_type = 2 })
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_99049(context, evt)
	if 99032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_99049(context, evt)
	ScriptLib.SetPlatformPointArray(context, 99032, 110100001, { 1,2,3 }, { route_type = 2 })
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_99062(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "stage") == 1 then
	        for i, v in ipairs(suites[2].gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 111101099, v, 201)
	        end
	elseif ScriptLib.GetGroupVariableValue(context, "stage") == 2 then
	        for i, v in ipairs(suites[3].gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 111101099, v, 201)
	        end
	elseif ScriptLib.GetGroupVariableValue(context, "stage") == 3 then
	        for i, v in ipairs(suites[4].gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 111101099, v, 201)
	        end
	elseif ScriptLib.GetGroupVariableValue(context, "stage") == 4 then
	        for i, v in ipairs(suites[5].gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 111101099, v, 201)
	        end
	elseif ScriptLib.GetGroupVariableValue(context, "stage") == 5 then
	        for i, v in ipairs(suites[6].gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 111101099, v, 201)
	        end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_99063(context, evt)
	if 99054 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_99063(context, evt)
	ScriptLib.SetPlatformPointArray(context, 99054, 110100002, { 1,3,2 }, { route_type = 2 })
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_99065(context, evt)
	if 99018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_99065(context, evt)
	ScriptLib.SetPlatformPointArray(context, 99018, 110100003, { 1,2,3 }, { route_type = 2 })
	ScriptLib.SetPlatformPointArray(context, 99019, 110100003, { 2,3,1 }, { route_type = 2 })
	ScriptLib.SetPlatformPointArray(context, 99037, 110100003, { 3,1,2 }, { route_type = 2 })
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_99080(context, evt)
	if 99004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_99080(context, evt)
	ScriptLib.CreateGroupTimerEvent(context, 111101099, "destroy_ballon", 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_99081(context, evt)
	if 99012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_99081(context, evt)
	ScriptLib.CreateGroupTimerEvent(context, 111101099, "destroy_ballon", 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_99082(context, evt)
	if 99017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_99082(context, evt)
	ScriptLib.CreateGroupTimerEvent(context, 111101099, "destroy_ballon", 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_99083(context, evt)
	if 99018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_99083(context, evt)
	ScriptLib.CreateGroupTimerEvent(context, 111101099, "destroy_ballon", 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_99084(context, evt)
	if 99029 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_99084(context, evt)
	ScriptLib.CreateGroupTimerEvent(context, 111101099, "destroy_ballon", 7)
	
	return 0
end