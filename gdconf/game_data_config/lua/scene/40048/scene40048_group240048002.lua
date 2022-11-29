-- 基础信息
local base_info = {
	group_id = 240048002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2055, monster_id = 25080201, pos = { x = -83.572, y = 1.607, z = -65.664 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1005 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2003, gadget_id = 70350293, pos = { x = -78.112, y = 1.507, z = -65.421 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2004, gadget_id = 70350293, pos = { x = -88.362, y = 1.507, z = -55.561 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2005, gadget_id = 70350293, pos = { x = -98.808, y = 1.337, z = -66.100 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2006, gadget_id = 70350293, pos = { x = -93.562, y = 1.520, z = -60.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2007, gadget_id = 70350293, pos = { x = -93.568, y = 1.507, z = -50.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2009, gadget_id = 70350293, pos = { x = -83.199, y = 1.415, z = -50.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2011, gadget_id = 70220070, pos = { x = -69.803, y = 1.507, z = -50.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2012, gadget_id = 70220071, pos = { x = -72.083, y = 1.507, z = -50.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2013, gadget_id = 70220070, pos = { x = -74.375, y = 1.507, z = -50.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, gadget_id = 70220071, pos = { x = -76.658, y = 1.507, z = -50.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2015, gadget_id = 70220071, pos = { x = -98.766, y = 1.504, z = -58.700 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2016, gadget_id = 70220070, pos = { x = -98.841, y = 1.505, z = -56.453 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2035, gadget_id = 70220071, pos = { x = -98.722, y = 1.504, z = -54.210 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2036, gadget_id = 70220070, pos = { x = -98.798, y = 1.504, z = -51.903 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2037, gadget_id = 70350293, pos = { x = -98.804, y = 1.444, z = -76.443 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2041, gadget_id = 70220070, pos = { x = -100.156, y = 1.507, z = -50.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2044, gadget_id = 70220071, pos = { x = -102.438, y = 1.507, z = -50.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2045, gadget_id = 70220070, pos = { x = -104.728, y = 1.507, z = -50.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2046, gadget_id = 70220071, pos = { x = -107.013, y = 1.507, z = -50.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2047, gadget_id = 70220071, pos = { x = -88.482, y = 1.602, z = -69.185 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2048, gadget_id = 70220070, pos = { x = -88.556, y = 1.558, z = -66.939 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2049, gadget_id = 70220071, pos = { x = -88.437, y = 1.546, z = -64.696 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2052, gadget_id = 70220070, pos = { x = -88.513, y = 1.602, z = -62.389 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2053, gadget_id = 70290141, pos = { x = -83.543, y = 1.898, z = -43.866 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2054, gadget_id = 70290141, pos = { x = -104.269, y = 1.390, z = -77.451 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 2065, gadget_id = 70360001, pos = { x = -83.503, y = 2.811, z = -44.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2066, gadget_id = 70360001, pos = { x = -103.887, y = 2.428, z = -77.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2071, gadget_id = 70211001, pos = { x = -96.255, y = 1.421, z = -42.454 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	-- 延迟卡人保险1
	{ config_id = 2050, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = -104.300, y = 1.421, z = -44.773 } },
	-- 延迟卡人保险2
	{ config_id = 2051, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = -72.183, y = 1.415, z = -44.257 } },
	{ config_id = 2067, shape = RegionShape.SPHERE, radius = 5, pos = { x = -93.605, y = 11.440, z = -89.525 } },
	{ config_id = 2072, shape = RegionShape.SPHERE, radius = 5, pos = { x = -92.864, y = 0.560, z = -78.338 } }
}

-- 触发器
triggers = {
	-- 2004
	{ config_id = 1002001, name = "GADGET_STATE_CHANGE_2001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2001", action = "action_EVENT_GADGET_STATE_CHANGE_2001", trigger_count = 0 },
	-- 2004
	{ config_id = 1002002, name = "GADGET_STATE_CHANGE_2002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2002", action = "action_EVENT_GADGET_STATE_CHANGE_2002", trigger_count = 0 },
	-- 2005阻挡
	{ config_id = 1002008, name = "GADGET_STATE_CHANGE_2008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2008", action = "action_EVENT_GADGET_STATE_CHANGE_2008", trigger_count = 0 },
	-- 2005阻挡
	{ config_id = 1002010, name = "GADGET_STATE_CHANGE_2010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2010", action = "action_EVENT_GADGET_STATE_CHANGE_2010", trigger_count = 0 },
	-- 2007阻挡
	{ config_id = 1002017, name = "GADGET_STATE_CHANGE_2017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2017", action = "action_EVENT_GADGET_STATE_CHANGE_2017", trigger_count = 0 },
	-- 2007
	{ config_id = 1002018, name = "GADGET_STATE_CHANGE_2018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2018", action = "action_EVENT_GADGET_STATE_CHANGE_2018", trigger_count = 0 },
	-- 2007
	{ config_id = 1002019, name = "GADGET_STATE_CHANGE_2019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2019", action = "action_EVENT_GADGET_STATE_CHANGE_2019", trigger_count = 0 },
	-- 2009阻挡
	{ config_id = 1002020, name = "GADGET_STATE_CHANGE_2020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2020", action = "action_EVENT_GADGET_STATE_CHANGE_2020", trigger_count = 0 },
	-- 2003
	{ config_id = 1002021, name = "GADGET_STATE_CHANGE_2021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2021", action = "action_EVENT_GADGET_STATE_CHANGE_2021", trigger_count = 0 },
	-- 2003
	{ config_id = 1002022, name = "GADGET_STATE_CHANGE_2022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2022", action = "action_EVENT_GADGET_STATE_CHANGE_2022", trigger_count = 0 },
	-- 2004
	{ config_id = 1002023, name = "GADGET_STATE_CHANGE_2023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2023", action = "action_EVENT_GADGET_STATE_CHANGE_2023", trigger_count = 0 },
	-- 2004
	{ config_id = 1002024, name = "GADGET_STATE_CHANGE_2024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2024", action = "action_EVENT_GADGET_STATE_CHANGE_2024", trigger_count = 0 },
	-- 2005
	{ config_id = 1002025, name = "GADGET_STATE_CHANGE_2025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2025", action = "action_EVENT_GADGET_STATE_CHANGE_2025", trigger_count = 0 },
	-- 2005
	{ config_id = 1002026, name = "GADGET_STATE_CHANGE_2026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2026", action = "action_EVENT_GADGET_STATE_CHANGE_2026", trigger_count = 0 },
	-- 2006
	{ config_id = 1002027, name = "GADGET_STATE_CHANGE_2027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2027", action = "action_EVENT_GADGET_STATE_CHANGE_2027", trigger_count = 0 },
	-- 2006
	{ config_id = 1002028, name = "GADGET_STATE_CHANGE_2028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2028", action = "action_EVENT_GADGET_STATE_CHANGE_2028", trigger_count = 0 },
	-- 2007
	{ config_id = 1002029, name = "GADGET_STATE_CHANGE_2029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2029", action = "action_EVENT_GADGET_STATE_CHANGE_2029", trigger_count = 0 },
	-- 2007
	{ config_id = 1002030, name = "GADGET_STATE_CHANGE_2030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2030", action = "action_EVENT_GADGET_STATE_CHANGE_2030", trigger_count = 0 },
	-- 2009
	{ config_id = 1002031, name = "GADGET_STATE_CHANGE_2031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2031", action = "action_EVENT_GADGET_STATE_CHANGE_2031", trigger_count = 0 },
	-- 2009
	{ config_id = 1002032, name = "GADGET_STATE_CHANGE_2032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2032", action = "action_EVENT_GADGET_STATE_CHANGE_2032", trigger_count = 0 },
	-- 2009
	{ config_id = 1002033, name = "GADGET_STATE_CHANGE_2033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2033", action = "action_EVENT_GADGET_STATE_CHANGE_2033", trigger_count = 0 },
	-- 2009
	{ config_id = 1002034, name = "GADGET_STATE_CHANGE_2034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2034", action = "action_EVENT_GADGET_STATE_CHANGE_2034", trigger_count = 0 },
	-- 2007阻挡
	{ config_id = 1002038, name = "GADGET_STATE_CHANGE_2038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2038", action = "action_EVENT_GADGET_STATE_CHANGE_2038", trigger_count = 0 },
	-- 2005阻挡
	{ config_id = 1002039, name = "GADGET_STATE_CHANGE_2039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2039", action = "action_EVENT_GADGET_STATE_CHANGE_2039", trigger_count = 0 },
	-- 2009阻挡
	{ config_id = 1002040, name = "GADGET_STATE_CHANGE_2040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2040", action = "action_EVENT_GADGET_STATE_CHANGE_2040", trigger_count = 0 },
	-- 2007提示
	{ config_id = 1002042, name = "GADGET_STATE_CHANGE_2042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2042", action = "action_EVENT_GADGET_STATE_CHANGE_2042", trigger_count = 0 },
	-- 2009提示
	{ config_id = 1002043, name = "GADGET_STATE_CHANGE_2043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2043", action = "action_EVENT_GADGET_STATE_CHANGE_2043", trigger_count = 0 },
	-- 延迟卡人保险1
	{ config_id = 1002050, name = "ENTER_REGION_2050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2050", action = "action_EVENT_ENTER_REGION_2050", trigger_count = 0 },
	-- 延迟卡人保险2
	{ config_id = 1002051, name = "ENTER_REGION_2051", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2051", action = "action_EVENT_ENTER_REGION_2051", trigger_count = 0 },
	-- 2004阻挡
	{ config_id = 1002056, name = "GADGET_STATE_CHANGE_2056", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2056", action = "action_EVENT_GADGET_STATE_CHANGE_2056", trigger_count = 0 },
	-- 2007阻挡
	{ config_id = 1002057, name = "GADGET_STATE_CHANGE_2057", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2057", action = "action_EVENT_GADGET_STATE_CHANGE_2057", trigger_count = 0 },
	-- 2009阻挡
	{ config_id = 1002058, name = "GADGET_STATE_CHANGE_2058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2058", action = "action_EVENT_GADGET_STATE_CHANGE_2058", trigger_count = 0 },
	-- 2037
	{ config_id = 1002059, name = "GADGET_STATE_CHANGE_2059", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2059", action = "action_EVENT_GADGET_STATE_CHANGE_2059", trigger_count = 0 },
	-- 2037
	{ config_id = 1002060, name = "GADGET_STATE_CHANGE_2060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2060", action = "action_EVENT_GADGET_STATE_CHANGE_2060", trigger_count = 0 },
	-- gadget销毁计数1
	{ config_id = 1002061, name = "ANY_GADGET_DIE_2061", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2061", action = "action_EVENT_ANY_GADGET_DIE_2061", trigger_count = 4 },
	-- gadget销毁计数2
	{ config_id = 1002062, name = "ANY_GADGET_DIE_2062", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2062", action = "action_EVENT_ANY_GADGET_DIE_2062", trigger_count = 4 },
	-- gadget销毁计数3
	{ config_id = 1002063, name = "ANY_GADGET_DIE_2063", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2063", action = "action_EVENT_ANY_GADGET_DIE_2063", trigger_count = 4 },
	-- gadget销毁计数4
	{ config_id = 1002064, name = "ANY_GADGET_DIE_2064", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2064", action = "action_EVENT_ANY_GADGET_DIE_2064", trigger_count = 4 },
	{ config_id = 1002067, name = "ENTER_REGION_2067", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2067", action = "action_EVENT_ENTER_REGION_2067" },
	{ config_id = 1002068, name = "SELECT_OPTION_2068", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2068", action = "action_EVENT_SELECT_OPTION_2068" },
	{ config_id = 1002069, name = "SELECT_OPTION_2069", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2069", action = "action_EVENT_SELECT_OPTION_2069" },
	-- 2037阻挡
	{ config_id = 1002070, name = "GADGET_STATE_CHANGE_2070", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2070", action = "action_EVENT_GADGET_STATE_CHANGE_2070", trigger_count = 0 },
	{ config_id = 1002072, name = "ENTER_REGION_2072", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2072", action = "action_EVENT_ENTER_REGION_2072" },
	{ config_id = 1002073, name = "VARIABLE_CHANGE_2073", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2073", action = "action_EVENT_VARIABLE_CHANGE_2073" },
	-- 2007 0 1
	{ config_id = 1002074, name = "GADGET_STATE_CHANGE_2074", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2074", action = "action_EVENT_GADGET_STATE_CHANGE_2074", trigger_count = 0 },
	-- 2007 2 1
	{ config_id = 1002075, name = "GADGET_STATE_CHANGE_2075", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2075", action = "action_EVENT_GADGET_STATE_CHANGE_2075", trigger_count = 0 },
	-- 2007 1 0
	{ config_id = 1002076, name = "GADGET_STATE_CHANGE_2076", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2076", action = "action_EVENT_GADGET_STATE_CHANGE_2076", trigger_count = 0 },
	-- 2007 1 0
	{ config_id = 1002077, name = "GADGET_STATE_CHANGE_2077", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2077", action = "action_EVENT_GADGET_STATE_CHANGE_2077", trigger_count = 0 },
	-- 2007 1 2
	{ config_id = 1002078, name = "GADGET_STATE_CHANGE_2078", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2078", action = "action_EVENT_GADGET_STATE_CHANGE_2078", trigger_count = 0 },
	-- 2007 0 1
	{ config_id = 1002079, name = "GADGET_STATE_CHANGE_2079", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2079", action = "action_EVENT_GADGET_STATE_CHANGE_2079", trigger_count = 0 },
	-- 2009 0 1
	{ config_id = 1002080, name = "GADGET_STATE_CHANGE_2080", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2080", action = "action_EVENT_GADGET_STATE_CHANGE_2080", trigger_count = 0 },
	-- 2009 2 1
	{ config_id = 1002081, name = "GADGET_STATE_CHANGE_2081", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2081", action = "action_EVENT_GADGET_STATE_CHANGE_2081", trigger_count = 0 },
	-- 2009 1 0
	{ config_id = 1002082, name = "GADGET_STATE_CHANGE_2082", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2082", action = "action_EVENT_GADGET_STATE_CHANGE_2082", trigger_count = 0 },
	-- 2009 1 0
	{ config_id = 1002083, name = "GADGET_STATE_CHANGE_2083", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2083", action = "action_EVENT_GADGET_STATE_CHANGE_2083", trigger_count = 0 },
	-- 2009 1 2
	{ config_id = 1002084, name = "GADGET_STATE_CHANGE_2084", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2084", action = "action_EVENT_GADGET_STATE_CHANGE_2084", trigger_count = 0 },
	-- 2009 0 1
	{ config_id = 1002085, name = "GADGET_STATE_CHANGE_2085", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2085", action = "action_EVENT_GADGET_STATE_CHANGE_2085", trigger_count = 0 },
	-- 2007 1 2 2
	{ config_id = 1002086, name = "GADGET_STATE_CHANGE_2086", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2086", action = "action_EVENT_GADGET_STATE_CHANGE_2086", trigger_count = 0 },
	-- 2009 1 2 2
	{ config_id = 1002087, name = "GADGET_STATE_CHANGE_2087", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2087", action = "action_EVENT_GADGET_STATE_CHANGE_2087", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "wall3", value = 1, no_refresh = false },
	{ config_id = 2, name = "wall4", value = 0, no_refresh = false },
	{ config_id = 3, name = "wall5", value = 1, no_refresh = false },
	{ config_id = 4, name = "wall6", value = 0, no_refresh = false },
	{ config_id = 5, name = "wall7", value = 1, no_refresh = false },
	{ config_id = 6, name = "wall9", value = 1, no_refresh = false },
	{ config_id = 7, name = "wall70", value = 1, no_refresh = false },
	{ config_id = 8, name = "wall90", value = 0, no_refresh = false },
	{ config_id = 9, name = "gadget1", value = 4, no_refresh = false },
	{ config_id = 10, name = "gadget2", value = 4, no_refresh = false },
	{ config_id = 11, name = "gadget3", value = 4, no_refresh = false },
	{ config_id = 12, name = "gadget4", value = 4, no_refresh = false },
	{ config_id = 13, name = "point", value = 0, no_refresh = false },
	{ config_id = 14, name = "wall40", value = 0, no_refresh = false },
	{ config_id = 15, name = "wall1", value = 0, no_refresh = false }
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
		monsters = { 2055 },
		gadgets = { 2003, 2004, 2005, 2006, 2007, 2009, 2011, 2012, 2013, 2014, 2015, 2016, 2035, 2036, 2037, 2041, 2044, 2045, 2046, 2047, 2048, 2049, 2052, 2053, 2054, 2065, 2066, 2071 },
		regions = { 2050, 2051, 2067, 2072 },
		triggers = { "GADGET_STATE_CHANGE_2001", "GADGET_STATE_CHANGE_2002", "GADGET_STATE_CHANGE_2008", "GADGET_STATE_CHANGE_2010", "GADGET_STATE_CHANGE_2021", "GADGET_STATE_CHANGE_2022", "GADGET_STATE_CHANGE_2023", "GADGET_STATE_CHANGE_2024", "GADGET_STATE_CHANGE_2025", "GADGET_STATE_CHANGE_2026", "GADGET_STATE_CHANGE_2027", "GADGET_STATE_CHANGE_2028", "GADGET_STATE_CHANGE_2039", "ENTER_REGION_2050", "ENTER_REGION_2051", "GADGET_STATE_CHANGE_2056", "GADGET_STATE_CHANGE_2059", "GADGET_STATE_CHANGE_2060", "ANY_GADGET_DIE_2061", "ANY_GADGET_DIE_2062", "ANY_GADGET_DIE_2063", "ANY_GADGET_DIE_2064", "ENTER_REGION_2067", "SELECT_OPTION_2068", "SELECT_OPTION_2069", "GADGET_STATE_CHANGE_2070", "ENTER_REGION_2072", "VARIABLE_CHANGE_2073" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 废弃,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2017", "GADGET_STATE_CHANGE_2018", "GADGET_STATE_CHANGE_2019", "GADGET_STATE_CHANGE_2020", "GADGET_STATE_CHANGE_2029", "GADGET_STATE_CHANGE_2030", "GADGET_STATE_CHANGE_2031", "GADGET_STATE_CHANGE_2032", "GADGET_STATE_CHANGE_2033", "GADGET_STATE_CHANGE_2034", "GADGET_STATE_CHANGE_2038", "GADGET_STATE_CHANGE_2040" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2042", "GADGET_STATE_CHANGE_2043", "GADGET_STATE_CHANGE_2057", "GADGET_STATE_CHANGE_2058", "GADGET_STATE_CHANGE_2074", "GADGET_STATE_CHANGE_2075", "GADGET_STATE_CHANGE_2076", "GADGET_STATE_CHANGE_2077", "GADGET_STATE_CHANGE_2078", "GADGET_STATE_CHANGE_2079", "GADGET_STATE_CHANGE_2080", "GADGET_STATE_CHANGE_2081", "GADGET_STATE_CHANGE_2082", "GADGET_STATE_CHANGE_2083", "GADGET_STATE_CHANGE_2084", "GADGET_STATE_CHANGE_2085", "GADGET_STATE_CHANGE_2086", "GADGET_STATE_CHANGE_2087" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2001(context, evt)
	-- 检测config_id为2004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall4"为1
	if ScriptLib.GetGroupVariableValue(context, "wall4") ~= 1 then
			return false
	end
	
	-- 判断变量"wall40"为0
	if ScriptLib.GetGroupVariableValue(context, "wall40") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2001(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2004, 1, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall4" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall4", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall40" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall40", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2002(context, evt)
	-- 检测config_id为2004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall4"为1
	if ScriptLib.GetGroupVariableValue(context, "wall4") ~= 1 then
			return false
	end
	
	-- 判断变量"wall40"为1
	if ScriptLib.GetGroupVariableValue(context, "wall40") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2002(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2004, 1, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall4" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall4", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall40" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall40", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2008(context, evt)
	-- 检测config_id为2004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"gadget2"为4
	if ScriptLib.GetGroupVariableValue(context, "gadget2") == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2008(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2010(context, evt)
	-- 检测config_id为2005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall5"为0
	if ScriptLib.GetGroupVariableValue(context, "wall5") ~= 0 then
			return false
	end
	
	-- 判断变量"wall1"为1
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2010(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2017(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	-- 判断变量"gadget3"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget3") ~= 0 then
			return false
	end
	
	-- 判断变量"wall70"为1
	if ScriptLib.GetGroupVariableValue(context, "wall70") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2017(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall70" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall70", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2018(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall9"为0
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 0 then
			return false
	end
	
	-- 判断变量"wall70"为0
	if ScriptLib.GetGroupVariableValue(context, "wall70") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2018(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall70" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall70", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2019(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"gadget3"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget3") ~= 0 then
			return false
	end
	
	-- 判断变量"wall70"为1
	if ScriptLib.GetGroupVariableValue(context, "wall70") ~= 1 then
			return false
	end
	
	-- 判断变量"wall9"为0
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2019(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall70" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall70", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2020(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	-- 判断变量"gadget1"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget1") ~= 0 then
			return false
	end
	
	-- 判断变量"wall90"为0
	if ScriptLib.GetGroupVariableValue(context, "wall90") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2020(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {9}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall90" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall90", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2021(context, evt)
	-- 检测config_id为2003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall3"为0
	if ScriptLib.GetGroupVariableValue(context, "wall3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2021(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2003, 1, {12}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2022(context, evt)
	-- 检测config_id为2003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall3"为1
	if ScriptLib.GetGroupVariableValue(context, "wall3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2022(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2003, 1, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2023(context, evt)
	-- 检测config_id为2004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall4"为0
	if ScriptLib.GetGroupVariableValue(context, "wall4") ~= 0 then
			return false
	end
	
	-- 判断变量"gadget4"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2023(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2004, 1, {11}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2024(context, evt)
	-- 检测config_id为2004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall4"为2
	if ScriptLib.GetGroupVariableValue(context, "wall4") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2024(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2004, 1, {11}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2025(context, evt)
	-- 检测config_id为2005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall5"为0
	if ScriptLib.GetGroupVariableValue(context, "wall5") ~= 0 then
			return false
	end
	
	-- 判断变量"wall1"为0
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2025(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2005, 1, {10}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2026(context, evt)
	-- 检测config_id为2005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall5"为1
	if ScriptLib.GetGroupVariableValue(context, "wall5") ~= 1 then
			return false
	end
	
	-- 判断变量"gadget2"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2026(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2005, 1, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall5" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall5", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2027(context, evt)
	-- 检测config_id为2006的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall6"为0
	if ScriptLib.GetGroupVariableValue(context, "wall6") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2027(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2006, 1, {14}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall6" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall6", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2028(context, evt)
	-- 检测config_id为2006的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall6"为1
	if ScriptLib.GetGroupVariableValue(context, "wall6") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2028(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2006, 1, {6}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall6" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall6", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2029(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") == 0 then
			return true
	end
	
	-- 判断变量"wall9"为0或1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 2 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2029(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall70" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall70", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2030(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为2
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2030(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall70" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall70", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2031(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	-- 判断变量"wall90"为1
	if ScriptLib.GetGroupVariableValue(context, "wall90") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2031(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall90" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall90", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2032(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	-- 判断变量"wall90"为0
	if ScriptLib.GetGroupVariableValue(context, "wall90") ~= 0 then
			return false
	end
	
	-- 判断变量"gadget1"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget1") ~= 0 then
			return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2032(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {9}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall90" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall90", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2033(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 == evt.param2 and GadgetState.GearStart == evt.param1 and GadgetState.Default == evt.param3 then
		return true
	end
	
	-- 判断变量"wall9"为0
	if ScriptLib.GetGroupVariableValue(context, "wall9") == 0 then
			return true
	end
	
	-- 判断变量"wall7"为0或1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 2 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2033(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall90" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall90", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2034(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall9"为2
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2034(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2038(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	-- 判断变量"gadget3"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget3") ~= 0 then
			return false
	end
	
	-- 判断变量"wall70"为0
	if ScriptLib.GetGroupVariableValue(context, "wall70") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2038(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall70" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall70", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2039(context, evt)
	-- 检测config_id为2005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall5"为0
	if ScriptLib.GetGroupVariableValue(context, "wall5") ~= 0 then
			return false
	end
	
	-- 判断变量"wall1"为1
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2039(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2040(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	-- 判断变量"gadget1"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget1") ~= 0 then
			return false
	end
	
	-- 判断变量"wall90"为1
	if ScriptLib.GetGroupVariableValue(context, "wall90") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2040(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {9}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall90" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall90", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2042(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	-- 判断变量"wall9"为2
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2042(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2043(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall9"为0
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 0 then
			return false
	end
	
	-- 判断变量"wall7"为2
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2043(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2050(context, evt)
	if evt.param1 ~= 2050 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	-- 判断变量"wall9"为2
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2050(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "wall9", 1, 240048002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2051(context, evt)
	if evt.param1 ~= 2051 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"wall7"为2
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 2 then
			return false
	end
	
	-- 判断变量"wall9"为0
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2051(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "wall7", 1, 240048002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2056(context, evt)
	-- 检测config_id为2004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"gadget4"为4
	if ScriptLib.GetGroupVariableValue(context, "gadget4") == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2056(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2057(context, evt)
	-- 检测config_id为2004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"gadget3"为4
	if ScriptLib.GetGroupVariableValue(context, "gadget3") == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2057(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2058(context, evt)
	-- 检测config_id为2004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"gadget1"为4
	if ScriptLib.GetGroupVariableValue(context, "gadget1") == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2058(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2059(context, evt)
	-- 检测config_id为2037的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2037 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall1"为0
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 0 then
			return false
	end
	
	-- 判断变量"wall5"为0
	if ScriptLib.GetGroupVariableValue(context, "wall5") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2059(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2037, 1, {10}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2060(context, evt)
	-- 检测config_id为2037的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2037 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall1"为1
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2060(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2037, 1, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2061(context, evt)
	if 2011 == evt.param1 or 2012 == evt.param1 or 2013 == evt.param1 or 2014 == evt.param1 then
		return true
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2061(context, evt)
	-- 针对当前group内变量名为 "gadget1" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gadget1", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2062(context, evt)
	if 2015 == evt.param1 or 2016 == evt.param1 or 2035 == evt.param1 or 2036 == evt.param1 then
		return true
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2062(context, evt)
	-- 针对当前group内变量名为 "gadget2" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gadget2", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2063(context, evt)
	if 2041 == evt.param1 or 2044 == evt.param1 or 2045 == evt.param1 or 2046 == evt.param1 then
		return true
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2063(context, evt)
	-- 针对当前group内变量名为 "gadget3" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gadget3", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2064(context, evt)
	if 2047 == evt.param1 or 2048 == evt.param1 or 2049 == evt.param1 or 2052 == evt.param1 then
		return true
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2064(context, evt)
	-- 针对当前group内变量名为 "gadget4" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gadget4", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2067(context, evt)
	if evt.param1 ~= 2067 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2067(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240048002, 2065, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240048002, 2066, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240048002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2068(context, evt)
	-- 判断是gadgetid 2065 option_id 73
	if 2065 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2068(context, evt)
	-- 改变指定group组240048002中， configid为2053的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240048002, 2053, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 240048002 ；指定config：2065；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240048002, 2065, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "point" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "point", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2069(context, evt)
	-- 判断是gadgetid 2066 option_id 73
	if 2066 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2069(context, evt)
	-- 改变指定group组240048002中， configid为2054的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240048002, 2054, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 240048002 ；指定config：2066；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240048002, 2066, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "point" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "point", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2070(context, evt)
	-- 检测config_id为2037的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2037 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall1"为0
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 0 then
			return false
	end
	
	-- 判断变量"wall5"为1
	if ScriptLib.GetGroupVariableValue(context, "wall5") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2070(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2072(context, evt)
	if evt.param1 ~= 2072 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2072(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240048006, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2073(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"point"为2
	if ScriptLib.GetGroupVariableValue(context, "point") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2073(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240048006, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2074(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2074(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall70" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall70", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2075(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为2
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2075(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall70" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall70", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2076(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall70"为1
	if ScriptLib.GetGroupVariableValue(context, "wall70") ~= 1 then
			return false
	end
	
	-- 判断变量"gadget3"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2076(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall70" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall70", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2077(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	-- 判断变量"wall70"为0
	if ScriptLib.GetGroupVariableValue(context, "wall70") ~= 0 then
			return false
	end
	
	-- 判断变量"gadget3"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2077(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall70" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall70", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2078(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall70"为0
	if ScriptLib.GetGroupVariableValue(context, "wall70") ~= 0 then
			return false
	end
	
	-- 判断变量"wall9"为0
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2078(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall70" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall70", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2079(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	-- 判断变量"wall9"为0
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2079(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall70" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall70", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2080(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall9"为0
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 0 then
			return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2080(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall90" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall90", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2081(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall9"为2
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2081(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall90" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall90", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2082(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	-- 判断变量"wall90"为0
	if ScriptLib.GetGroupVariableValue(context, "wall90") ~= 0 then
			return false
	end
	
	-- 判断变量"gadget1"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2082(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {9}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall90" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall90", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2083(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall90"为1
	if ScriptLib.GetGroupVariableValue(context, "wall90") ~= 1 then
			return false
	end
	
	-- 判断变量"gadget3"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2083(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {9}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall90" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall90", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2084(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	-- 判断变量"wall90"为1
	if ScriptLib.GetGroupVariableValue(context, "wall90") ~= 1 then
			return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2084(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall90" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall90", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2085(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall9"为0
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 0 then
			return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2085(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall90" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall90", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2086(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	
	-- 判断变量"gadget3"不为0
	if ScriptLib.GetGroupVariableValue(context, "gadget3") == 0 then
			return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2086(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall70" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall70", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2087(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	-- 判断变量"gadget1"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget1") == 0 then
			return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2087(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "wall90" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall90", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end