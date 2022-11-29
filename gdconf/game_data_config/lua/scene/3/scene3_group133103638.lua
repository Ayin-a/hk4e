-- 基础信息
local base_info = {
	group_id = 133103638
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 638001, monster_id = 21010101, pos = { x = -153.052, y = 308.204, z = 1719.588 }, rot = { x = 0.000, y = 44.466, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 638002, monster_id = 28020302, pos = { x = -72.804, y = 293.787, z = 1765.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 6 },
	{ config_id = 638003, monster_id = 28020302, pos = { x = -86.006, y = 295.577, z = 1767.202 }, rot = { x = 0.000, y = 46.319, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 6 },
	{ config_id = 638004, monster_id = 28020301, pos = { x = -61.942, y = 292.839, z = 1768.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 6 },
	{ config_id = 638005, monster_id = 20011501, pos = { x = 184.349, y = 282.771, z = 1641.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 638006, monster_id = 20011501, pos = { x = 201.630, y = 284.517, z = 1642.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 638007, monster_id = 20011401, pos = { x = 174.328, y = 283.760, z = 1640.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 638008, monster_id = 20011401, pos = { x = 195.973, y = 282.339, z = 1625.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 638009, monster_id = 20011401, pos = { x = 210.583, y = 284.719, z = 1661.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 638010, monster_id = 28020301, pos = { x = 141.740, y = 299.541, z = 1706.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 6 },
	{ config_id = 638011, monster_id = 26030101, pos = { x = -214.105, y = 302.797, z = 1931.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "幼岩龙蜥", area_id = 6 },
	{ config_id = 638012, monster_id = 28020301, pos = { x = -191.531, y = 298.911, z = 2007.764 }, rot = { x = 0.000, y = 269.666, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 6 },
	{ config_id = 638013, monster_id = 28020301, pos = { x = -189.734, y = 297.960, z = 1991.758 }, rot = { x = 0.000, y = 338.064, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 6 },
	{ config_id = 638014, monster_id = 28020301, pos = { x = -76.789, y = 328.236, z = 1988.430 }, rot = { x = 0.000, y = 269.666, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 6 },
	{ config_id = 638015, monster_id = 28020302, pos = { x = -88.470, y = 327.109, z = 1981.096 }, rot = { x = 0.000, y = 74.239, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 6 },
	{ config_id = 638016, monster_id = 28030101, pos = { x = -18.621, y = 308.819, z = 1865.612 }, rot = { x = 0.000, y = 271.614, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, area_id = 6 },
	{ config_id = 638017, monster_id = 28030101, pos = { x = -17.279, y = 296.841, z = 1708.613 }, rot = { x = 0.000, y = 93.348, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, area_id = 6 },
	{ config_id = 638018, monster_id = 28030101, pos = { x = -18.731, y = 297.267, z = 1704.827 }, rot = { x = 0.000, y = 148.024, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, area_id = 6 },
	{ config_id = 638019, monster_id = 28030101, pos = { x = 71.048, y = 273.655, z = 1675.535 }, rot = { x = 0.000, y = 230.802, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, area_id = 6 },
	{ config_id = 638020, monster_id = 28030101, pos = { x = 114.159, y = 256.362, z = 1641.903 }, rot = { x = 0.000, y = 274.119, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, area_id = 6 },
	{ config_id = 638021, monster_id = 28030101, pos = { x = 113.126, y = 256.485, z = 1646.239 }, rot = { x = 0.000, y = 278.373, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, area_id = 6 },
	{ config_id = 638022, monster_id = 28030101, pos = { x = 216.215, y = 285.398, z = 1594.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "鸟类", disableWander = true, area_id = 6 },
	{ config_id = 638023, monster_id = 28030101, pos = { x = -58.088, y = 314.021, z = 1593.357 }, rot = { x = 0.000, y = 72.472, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, area_id = 6 },
	{ config_id = 638024, monster_id = 28030101, pos = { x = -61.041, y = 314.623, z = 1591.087 }, rot = { x = 0.000, y = 114.995, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, area_id = 6 },
	{ config_id = 638025, monster_id = 28030101, pos = { x = -70.354, y = 317.692, z = 1576.042 }, rot = { x = 0.000, y = 88.152, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, area_id = 6 }
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
		monsters = { 638001, 638002, 638003, 638004, 638005, 638006, 638007, 638008, 638009, 638010, 638011, 638012, 638013, 638014, 638015, 638016, 638017, 638018, 638019, 638020, 638021, 638022, 638023, 638024, 638025 },
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