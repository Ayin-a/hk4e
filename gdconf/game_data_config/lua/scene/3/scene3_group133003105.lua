-- 基础信息
local base_info = {
	group_id = 133003105
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 508, monster_id = 28030101, pos = { x = 2404.509, y = 276.759, z = -1227.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 509, monster_id = 28030101, pos = { x = 2397.101, y = 279.202, z = -1229.564 }, rot = { x = 0.000, y = 44.255, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 510, monster_id = 28020102, pos = { x = 2068.434, y = 197.069, z = -1183.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 511, monster_id = 28020102, pos = { x = 2527.697, y = 206.990, z = -1254.238 }, rot = { x = 0.000, y = 253.185, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 512, monster_id = 28020102, pos = { x = 2129.135, y = 209.471, z = -1073.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 513, monster_id = 28020102, pos = { x = 2337.893, y = 257.574, z = -1444.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 774, monster_id = 28020102, pos = { x = 2512.795, y = 203.996, z = -1158.446 }, rot = { x = 0.000, y = 264.305, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, area_id = 1 },
	{ config_id = 775, monster_id = 28020102, pos = { x = 2511.617, y = 204.117, z = -1159.083 }, rot = { x = 0.000, y = 41.954, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, area_id = 1 },
	{ config_id = 1203, monster_id = 28010201, pos = { x = 2608.745, y = 228.572, z = -1536.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1204, monster_id = 28010201, pos = { x = 2583.738, y = 234.371, z = -1529.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1205, monster_id = 28010201, pos = { x = 2651.800, y = 233.215, z = -1458.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1206, monster_id = 28010201, pos = { x = 2655.250, y = 234.813, z = -1431.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1207, monster_id = 28010201, pos = { x = 2630.474, y = 220.311, z = -1382.494 }, rot = { x = 0.000, y = 283.014, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1208, monster_id = 28010201, pos = { x = 2601.076, y = 211.878, z = -1380.117 }, rot = { x = 0.000, y = 283.014, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1209, monster_id = 28010201, pos = { x = 2551.975, y = 215.249, z = -1399.361 }, rot = { x = 0.000, y = 283.014, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1210, monster_id = 28010201, pos = { x = 2571.918, y = 216.406, z = -1461.963 }, rot = { x = 0.000, y = 283.014, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1211, monster_id = 28010201, pos = { x = 2535.655, y = 217.885, z = -1412.560 }, rot = { x = 0.000, y = 283.014, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1212, monster_id = 28010201, pos = { x = 2523.730, y = 215.140, z = -1289.203 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1213, monster_id = 28010201, pos = { x = 2487.766, y = 200.524, z = -1227.214 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1214, monster_id = 28010201, pos = { x = 2536.198, y = 205.382, z = -1202.819 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1215, monster_id = 28010201, pos = { x = 2593.552, y = 213.592, z = -1245.230 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1216, monster_id = 28010201, pos = { x = 2579.192, y = 217.219, z = -1222.597 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1217, monster_id = 28010201, pos = { x = 2494.363, y = 203.200, z = -1189.025 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1218, monster_id = 28010201, pos = { x = 2461.041, y = 199.087, z = -1181.692 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1219, monster_id = 28010201, pos = { x = 2445.245, y = 202.161, z = -1237.636 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1220, monster_id = 28010201, pos = { x = 2413.033, y = 209.162, z = -1221.769 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1221, monster_id = 28010201, pos = { x = 2483.308, y = 212.183, z = -1277.196 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1222, monster_id = 28010201, pos = { x = 2431.766, y = 209.365, z = -1297.851 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1223, monster_id = 28010201, pos = { x = 2465.594, y = 209.805, z = -1111.413 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1224, monster_id = 28010201, pos = { x = 2433.068, y = 210.121, z = -1129.807 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1225, monster_id = 28010201, pos = { x = 2395.374, y = 210.219, z = -1115.066 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1226, monster_id = 28010201, pos = { x = 2404.691, y = 212.606, z = -1092.709 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1286, monster_id = 28020301, pos = { x = 2441.977, y = 220.726, z = -1342.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 1287, monster_id = 28020301, pos = { x = 2438.798, y = 220.777, z = -1336.675 }, rot = { x = 0.000, y = 99.411, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 1288, monster_id = 28020301, pos = { x = 2460.257, y = 219.814, z = -1372.526 }, rot = { x = 0.000, y = 28.297, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 1335, monster_id = 28020102, pos = { x = 2544.970, y = 218.671, z = -1428.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 1336, monster_id = 28020102, pos = { x = 2487.959, y = 225.074, z = -1391.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 1396, monster_id = 28010201, pos = { x = 2543.383, y = 219.229, z = -1449.152 }, rot = { x = 0.000, y = 283.014, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1414, monster_id = 28010201, pos = { x = 2490.778, y = 206.428, z = -1137.858 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1415, monster_id = 28010201, pos = { x = 2519.696, y = 204.144, z = -1142.832 }, rot = { x = 0.000, y = 26.434, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1416, monster_id = 28010201, pos = { x = 2484.182, y = 199.051, z = -1201.988 }, rot = { x = 0.000, y = 291.849, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1431, monster_id = 28010201, pos = { x = 2664.716, y = 196.405, z = -1633.408 }, rot = { x = 0.000, y = 315.367, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
	{ config_id = 1432, monster_id = 28010201, pos = { x = 2632.239, y = 204.930, z = -1617.165 }, rot = { x = 0.000, y = 315.367, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 477, shape = RegionShape.SPHERE, radius = 16.1, pos = { x = 2533.955, y = 208.170, z = -1270.267 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000477, name = "ENTER_REGION_477", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_477", action = "action_EVENT_ENTER_REGION_477" }
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
	rand_suite = true
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
		monsters = { 508, 509, 510, 512, 513, 774, 775, 1203, 1204, 1205, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1216, 1217, 1218, 1219, 1220, 1221, 1222, 1223, 1224, 1225, 1226, 1286, 1287, 1288, 1335, 1336, 1396, 1414, 1415, 1416, 1431, 1432 },
		gadgets = { },
		regions = { 477 },
		triggers = { "ENTER_REGION_477" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_477(context, evt)
	if evt.param1 ~= 477 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_477(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 511, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end