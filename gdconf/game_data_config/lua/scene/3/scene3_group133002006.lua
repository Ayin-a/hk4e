-- 基础信息
local base_info = {
	group_id = 133002006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6009, monster_id = 28010201, pos = { x = 2031.575, y = 207.452, z = -971.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_tag = "采集动物", area_id = 3 },
	{ config_id = 6010, monster_id = 28010201, pos = { x = 2029.445, y = 205.402, z = -931.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "采集动物", area_id = 3 },
	{ config_id = 6011, monster_id = 28010201, pos = { x = 2043.331, y = 207.428, z = -985.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_tag = "采集动物", area_id = 3 },
	{ config_id = 6012, monster_id = 28010201, pos = { x = 2029.769, y = 205.925, z = -949.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_tag = "采集动物", area_id = 3 },
	{ config_id = 6013, monster_id = 28040101, pos = { x = 1804.325, y = 232.450, z = -905.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "水族", area_id = 3 },
	{ config_id = 6014, monster_id = 28040101, pos = { x = 1800.727, y = 232.450, z = -901.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "水族", area_id = 3 },
	{ config_id = 6015, monster_id = 28040101, pos = { x = 1809.479, y = 232.450, z = -926.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "水族", area_id = 3 },
	{ config_id = 6016, monster_id = 28040101, pos = { x = 2038.672, y = 201.650, z = -906.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "水族", area_id = 3 },
	{ config_id = 6017, monster_id = 28040101, pos = { x = 2041.728, y = 201.650, z = -903.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "水族", area_id = 3 },
	{ config_id = 6018, monster_id = 28040101, pos = { x = 2041.504, y = 201.650, z = -896.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "水族", area_id = 3 },
	{ config_id = 6019, monster_id = 28040101, pos = { x = 2041.820, y = 201.650, z = -898.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "水族", area_id = 3 },
	{ config_id = 6020, monster_id = 28040101, pos = { x = 2042.368, y = 201.650, z = -906.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "水族", area_id = 3 },
	{ config_id = 6021, monster_id = 28010303, pos = { x = 1826.445, y = 233.822, z = -917.160 }, rot = { x = 0.000, y = 316.975, z = 0.000 }, level = 10, drop_tag = "采集动物", area_id = 3 },
	{ config_id = 6022, monster_id = 28010303, pos = { x = 1831.715, y = 234.756, z = -918.251 }, rot = { x = 0.000, y = 316.975, z = 0.000 }, level = 10, drop_tag = "采集动物", area_id = 3 },
	{ config_id = 6023, monster_id = 28040103, pos = { x = 1955.340, y = 210.490, z = -900.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "水族", area_id = 3 },
	{ config_id = 6024, monster_id = 28040102, pos = { x = 1952.891, y = 210.490, z = -897.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "水族", area_id = 3 },
	{ config_id = 6025, monster_id = 28050101, pos = { x = 1940.195, y = 211.670, z = -834.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "魔法生物", area_id = 3 },
	{ config_id = 6026, monster_id = 28050101, pos = { x = 1943.349, y = 208.289, z = -824.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "魔法生物", area_id = 3 },
	{ config_id = 6027, monster_id = 28050101, pos = { x = 1924.369, y = 212.098, z = -818.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "魔法生物", area_id = 3 },
	{ config_id = 6028, monster_id = 28050101, pos = { x = 1889.113, y = 246.346, z = -878.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "魔法生物", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 6001, monster_id = 28040104, pos = { x = 1823.381, y = 233.200, z = -902.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
		{ config_id = 6002, monster_id = 28040104, pos = { x = 1825.587, y = 233.200, z = -908.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
		{ config_id = 6003, monster_id = 28040104, pos = { x = 1819.956, y = 233.200, z = -907.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
		{ config_id = 6004, monster_id = 28040104, pos = { x = 1821.342, y = 233.200, z = -910.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
		{ config_id = 6005, monster_id = 28040104, pos = { x = 1815.738, y = 233.200, z = -908.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
		{ config_id = 6006, monster_id = 28040104, pos = { x = 1818.372, y = 233.200, z = -916.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
		{ config_id = 6007, monster_id = 28040104, pos = { x = 1823.449, y = 233.200, z = -911.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
		{ config_id = 6008, monster_id = 28040104, pos = { x = 1821.708, y = 233.200, z = -907.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 }
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
		monsters = { 6009, 6010, 6011, 6012, 6013, 6014, 6015, 6016, 6017, 6018, 6019, 6020, 6021, 6022, 6023, 6024, 6025, 6026, 6027, 6028 },
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