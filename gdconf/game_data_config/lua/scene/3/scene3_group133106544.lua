-- 基础信息
local base_info = {
	group_id = 133106544
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 544002, monster_id = 21020201, pos = { x = -829.480, y = 233.867, z = 2018.230 }, rot = { x = 0.000, y = 240.361, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, area_id = 19 },
	{ config_id = 544003, monster_id = 20011401, pos = { x = -835.917, y = 234.714, z = 2015.435 }, rot = { x = 0.000, y = 33.948, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 544004, monster_id = 28020102, pos = { x = -637.583, y = 234.387, z = 1982.234 }, rot = { x = 0.000, y = 291.005, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
	{ config_id = 544005, monster_id = 20011401, pos = { x = -835.300, y = 234.626, z = 2014.724 }, rot = { x = 0.000, y = 87.500, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 544006, monster_id = 21011201, pos = { x = -831.743, y = 234.071, z = 2020.561 }, rot = { x = 0.000, y = 218.172, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9010, area_id = 19 },
	{ config_id = 544015, monster_id = 28030101, pos = { x = -690.303, y = 269.000, z = 2042.127 }, rot = { x = 0.000, y = 181.377, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 },
	{ config_id = 544016, monster_id = 28030101, pos = { x = -682.341, y = 268.737, z = 2040.179 }, rot = { x = 0.000, y = 181.133, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 544001, gadget_id = 70290200, pos = { x = -687.838, y = 249.950, z = 2057.332 }, rot = { x = 343.074, y = 305.238, z = 5.751 }, level = 36, area_id = 19 },
	{ config_id = 544007, gadget_id = 70217014, pos = { x = -883.770, y = 206.033, z = 1971.465 }, rot = { x = 6.863, y = 170.164, z = 0.314 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 544008, gadget_id = 70217014, pos = { x = -776.238, y = 241.908, z = 2030.098 }, rot = { x = 359.044, y = 29.535, z = 352.476 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 544014, gadget_id = 70217014, pos = { x = -869.374, y = 225.652, z = 2013.283 }, rot = { x = 1.616, y = 29.148, z = 350.382 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
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
		monsters = { 544002, 544003, 544004, 544005, 544006, 544015, 544016 },
		gadgets = { 544001, 544007, 544008, 544014 },
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