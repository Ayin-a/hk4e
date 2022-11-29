-- 基础信息
local base_info = {
	group_id = 133001125
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 656, monster_id = 28030301, pos = { x = 1297.600, y = 257.536, z = -1677.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 2 },
	{ config_id = 658, monster_id = 28030301, pos = { x = 1325.734, y = 256.843, z = -1679.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 2 },
	{ config_id = 660, monster_id = 28030301, pos = { x = 1320.922, y = 254.398, z = -1672.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 2 },
	{ config_id = 661, monster_id = 28030301, pos = { x = 1317.048, y = 261.610, z = -1672.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 2 },
	{ config_id = 804, monster_id = 28020102, pos = { x = 1453.229, y = 242.173, z = -1532.220 }, rot = { x = 0.000, y = 105.873, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, area_id = 2 },
	{ config_id = 805, monster_id = 28020102, pos = { x = 1453.538, y = 242.087, z = -1533.933 }, rot = { x = 0.000, y = 62.641, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, area_id = 2 },
	{ config_id = 977, monster_id = 28020301, pos = { x = 1490.544, y = 264.613, z = -1720.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 978, monster_id = 28020102, pos = { x = 1477.140, y = 268.948, z = -1759.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 979, monster_id = 28020102, pos = { x = 1461.730, y = 271.077, z = -1767.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 980, monster_id = 28020102, pos = { x = 1328.728, y = 280.914, z = -1777.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 981, monster_id = 28020102, pos = { x = 1324.044, y = 275.384, z = -1735.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1164, monster_id = 28030401, pos = { x = 1385.304, y = 322.651, z = -1975.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 2 },
	{ config_id = 1165, monster_id = 28030401, pos = { x = 1384.877, y = 322.521, z = -1973.800 }, rot = { x = 0.000, y = 163.687, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 2 },
	{ config_id = 1166, monster_id = 28030401, pos = { x = 1385.156, y = 322.586, z = -1975.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 2 },
	{ config_id = 1167, monster_id = 28020201, pos = { x = 1379.600, y = 323.033, z = -1983.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2592, gadget_id = 70211101, pos = { x = 1409.458, y = 300.705, z = -1845.168 }, rot = { x = 0.000, y = 53.634, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 2593, gadget_id = 70211101, pos = { x = 1323.205, y = 303.256, z = -1862.398 }, rot = { x = 0.000, y = 25.938, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 2594, gadget_id = 70211101, pos = { x = 1409.469, y = 304.932, z = -1888.886 }, rot = { x = 0.000, y = 339.552, z = 347.002 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 }
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
		{ config_id = 614, monster_id = 28010301, pos = { x = 1388.270, y = 234.886, z = -1490.096 }, rot = { x = 0.000, y = 91.977, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 615, monster_id = 28010301, pos = { x = 1371.992, y = 235.135, z = -1494.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 616, monster_id = 28010302, pos = { x = 1410.837, y = 234.400, z = -1494.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 617, monster_id = 28010302, pos = { x = 1409.233, y = 234.557, z = -1476.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 618, monster_id = 28010303, pos = { x = 1407.981, y = 234.400, z = -1510.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 619, monster_id = 28010303, pos = { x = 1414.316, y = 235.367, z = -1540.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 }
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
		monsters = { 656, 658, 660, 661, 804, 805, 977, 978, 979, 980, 981, 1165, 1166, 1167 },
		gadgets = { 2592, 2593, 2594 },
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