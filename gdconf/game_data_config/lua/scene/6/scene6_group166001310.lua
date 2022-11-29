-- 基础信息
local base_info = {
	group_id = 166001310
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 310004, monster_id = 28050301, pos = { x = 1005.416, y = 1088.951, z = 859.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 310005, monster_id = 28050301, pos = { x = 1011.622, y = 1086.301, z = 859.778 }, rot = { x = 0.000, y = 12.009, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 310014, monster_id = 28050301, pos = { x = 934.138, y = 1082.408, z = 874.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 310016, monster_id = 28050301, pos = { x = 937.272, y = 1082.704, z = 881.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 310017, monster_id = 28050301, pos = { x = 932.678, y = 1084.496, z = 887.489 }, rot = { x = 0.000, y = 147.326, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 310025, monster_id = 28050102, pos = { x = 1009.451, y = 1078.036, z = 946.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 310029, monster_id = 28050102, pos = { x = 1024.802, y = 1082.097, z = 943.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 310030, monster_id = 28050102, pos = { x = 1010.582, y = 1078.429, z = 964.643 }, rot = { x = 0.000, y = 293.654, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 310031, monster_id = 20011401, pos = { x = 1015.239, y = 1078.414, z = 954.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 310032, monster_id = 20011401, pos = { x = 1022.659, y = 1080.849, z = 948.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 310033, monster_id = 20011401, pos = { x = 1014.020, y = 1078.419, z = 947.208 }, rot = { x = 0.000, y = 62.144, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 310043, monster_id = 20011001, pos = { x = 986.217, y = 1033.366, z = 938.692 }, rot = { x = 0.000, y = 301.156, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 310045, monster_id = 28010202, pos = { x = 982.580, y = 1018.235, z = 852.184 }, rot = { x = 0.000, y = 234.824, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 310046, monster_id = 28010202, pos = { x = 949.111, y = 1019.963, z = 898.532 }, rot = { x = 0.000, y = 234.824, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 310047, monster_id = 28010202, pos = { x = 1011.148, y = 1016.037, z = 878.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 310048, monster_id = 28010202, pos = { x = 962.351, y = 1021.883, z = 946.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 310053, monster_id = 20011501, pos = { x = 937.655, y = 1014.471, z = 964.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 300 },
	{ config_id = 310058, monster_id = 28010201, pos = { x = 1027.015, y = 1016.716, z = 952.233 }, rot = { x = 0.000, y = 53.463, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 310001, gadget_id = 70210101, pos = { x = 1031.484, y = 1087.046, z = 888.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 300 },
	{ config_id = 310002, gadget_id = 70210101, pos = { x = 1034.857, y = 1087.829, z = 899.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 300 },
	{ config_id = 310003, gadget_id = 70210101, pos = { x = 1016.013, y = 1087.058, z = 890.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 310006, gadget_id = 70220048, pos = { x = 976.037, y = 1078.097, z = 848.166 }, rot = { x = 3.536, y = 338.107, z = 358.580 }, level = 36, area_id = 300 },
	{ config_id = 310007, gadget_id = 70211001, pos = { x = 973.419, y = 1078.073, z = 847.326 }, rot = { x = 0.000, y = 30.611, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 310008, gadget_id = 70210101, pos = { x = 988.032, y = 1082.055, z = 839.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 300 },
	{ config_id = 310012, gadget_id = 70210101, pos = { x = 959.181, y = 1014.273, z = 922.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 300 },
	{ config_id = 310013, gadget_id = 70210101, pos = { x = 991.241, y = 1013.688, z = 884.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 310015, gadget_id = 70290300, pos = { x = 930.212, y = 1085.228, z = 900.426 }, rot = { x = 0.000, y = 79.631, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 310018, gadget_id = 70220048, pos = { x = 924.164, y = 1085.618, z = 921.857 }, rot = { x = 0.000, y = 197.942, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 310019, gadget_id = 70220048, pos = { x = 925.475, y = 1085.911, z = 924.030 }, rot = { x = 0.000, y = 53.255, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 310020, gadget_id = 70210101, pos = { x = 920.565, y = 1101.059, z = 958.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 310026, gadget_id = 70220048, pos = { x = 1009.486, y = 1078.452, z = 946.570 }, rot = { x = 0.000, y = 53.255, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 310027, gadget_id = 70220048, pos = { x = 1018.780, y = 1078.434, z = 942.472 }, rot = { x = 0.000, y = 53.255, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 310034, gadget_id = 70290347, pos = { x = 919.051, y = 1022.392, z = 876.366 }, rot = { x = 0.000, y = 277.898, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 310035, gadget_id = 70290347, pos = { x = 986.493, y = 1022.965, z = 940.252 }, rot = { x = 0.000, y = 359.780, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 310036, gadget_id = 70220048, pos = { x = 1014.259, y = 1027.044, z = 905.520 }, rot = { x = 0.000, y = 15.946, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 310037, gadget_id = 70220048, pos = { x = 1011.825, y = 1027.100, z = 906.264 }, rot = { x = 0.000, y = 15.946, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 310038, gadget_id = 70220063, pos = { x = 1013.941, y = 1027.051, z = 903.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 310040, gadget_id = 70290308, pos = { x = 1014.905, y = 1027.052, z = 904.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 310041, gadget_id = 70290308, pos = { x = 1010.385, y = 1027.019, z = 896.697 }, rot = { x = 0.000, y = 273.071, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 310042, gadget_id = 70220014, pos = { x = 986.236, y = 1032.689, z = 938.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 310049, gadget_id = 70220051, pos = { x = 958.274, y = 1021.448, z = 946.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 310050, gadget_id = 70220050, pos = { x = 959.585, y = 1021.484, z = 947.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 310051, gadget_id = 70210101, pos = { x = 1009.126, y = 1017.645, z = 880.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 310052, gadget_id = 70210101, pos = { x = 963.827, y = 1023.011, z = 852.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 310054, gadget_id = 70290308, pos = { x = 993.681, y = 1079.348, z = 960.388 }, rot = { x = 44.599, y = 344.248, z = 68.114 }, level = 36, area_id = 300 },
	{ config_id = 310061, gadget_id = 70290347, pos = { x = 944.040, y = 1088.417, z = 932.848 }, rot = { x = 0.000, y = 38.763, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 310062, gadget_id = 70290219, pos = { x = 929.930, y = 1084.474, z = 881.906 }, rot = { x = 359.221, y = 92.923, z = 8.142 }, level = 36, area_id = 300 },
	{ config_id = 310063, gadget_id = 70290200, pos = { x = 950.885, y = 1011.767, z = 922.228 }, rot = { x = 355.685, y = 27.174, z = 1.541 }, level = 36, area_id = 300 },
	{ config_id = 310064, gadget_id = 70290347, pos = { x = 975.593, y = 1022.582, z = 840.549 }, rot = { x = 358.391, y = 359.831, z = 356.407 }, level = 36, persistent = true, interact_id = 87, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1310028, name = "ANY_GADGET_DIE_310028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_310028", action = "action_EVENT_ANY_GADGET_DIE_310028" },
	{ config_id = 1310044, name = "ANY_GADGET_DIE_310044", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_310044", action = "action_EVENT_ANY_GADGET_DIE_310044" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 310009, gadget_id = 70500000, pos = { x = 1026.327, y = 1081.377, z = 952.153 }, rot = { x = 0.000, y = 297.815, z = 0.000 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 310010, gadget_id = 70500000, pos = { x = 1032.528, y = 1084.118, z = 941.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 310011, gadget_id = 70500000, pos = { x = 1034.906, y = 1085.873, z = 936.970 }, rot = { x = 8.343, y = 285.107, z = 20.891 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 310021, gadget_id = 70500000, pos = { x = 951.254, y = 1092.243, z = 952.715 }, rot = { x = 0.000, y = 147.607, z = 0.000 }, level = 36, point_type = 1009, area_id = 300 },
		{ config_id = 310022, gadget_id = 70500000, pos = { x = 954.034, y = 1091.766, z = 950.953 }, rot = { x = 0.000, y = 319.131, z = 0.000 }, level = 36, point_type = 1009, area_id = 300 },
		{ config_id = 310023, gadget_id = 70500000, pos = { x = 1029.266, y = 1082.968, z = 941.796 }, rot = { x = 16.745, y = 260.565, z = 0.001 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 310024, gadget_id = 70500000, pos = { x = 1042.628, y = 1089.208, z = 930.925 }, rot = { x = 356.823, y = 359.407, z = 21.147 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 310039, gadget_id = 70500000, pos = { x = 1016.105, y = 1022.087, z = 932.717 }, rot = { x = 0.000, y = 225.661, z = 0.000 }, level = 36, point_type = 1009, area_id = 300 },
		{ config_id = 310055, gadget_id = 70500000, pos = { x = 919.536, y = 1022.506, z = 899.201 }, rot = { x = 16.652, y = 93.447, z = 355.760 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 310056, gadget_id = 70500000, pos = { x = 916.373, y = 1022.176, z = 896.725 }, rot = { x = 327.224, y = 357.285, z = 9.215 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 310057, gadget_id = 70500000, pos = { x = 919.377, y = 1022.090, z = 894.185 }, rot = { x = 354.599, y = 335.885, z = 358.722 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 310059, gadget_id = 70500000, pos = { x = 1064.239, y = 1015.059, z = 926.462 }, rot = { x = 0.000, y = 72.134, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 310060, gadget_id = 70500000, pos = { x = 1066.835, y = 1016.234, z = 923.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 }
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
		monsters = { 310004, 310005, 310014, 310016, 310017, 310029, 310030, 310031, 310032, 310033, 310045, 310046, 310047, 310048, 310053, 310058 },
		gadgets = { 310001, 310002, 310003, 310006, 310007, 310008, 310012, 310013, 310015, 310018, 310019, 310020, 310026, 310027, 310034, 310035, 310036, 310037, 310038, 310040, 310041, 310042, 310049, 310050, 310051, 310052, 310054, 310061, 310062, 310063, 310064 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_310028", "ANY_GADGET_DIE_310044" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_310028(context, evt)
	if 310026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_310028(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 310025, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_310044(context, evt)
	if 310042 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_310044(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 310043, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end