-- 基础信息
local base_info = {
	group_id = 133220059
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 59001, monster_id = 24020101, pos = { x = -2338.568, y = 232.994, z = -4328.924 }, rot = { x = 0.000, y = 19.147, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 59002, monster_id = 24020101, pos = { x = -2346.794, y = 232.759, z = -4327.890 }, rot = { x = 0.000, y = 19.147, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 59003, monster_id = 24020101, pos = { x = -2198.101, y = 228.320, z = -4258.900 }, rot = { x = 0.000, y = 288.959, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 59004, monster_id = 24020101, pos = { x = -2199.109, y = 228.084, z = -4267.130 }, rot = { x = 0.000, y = 288.959, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 59005, monster_id = 24020101, pos = { x = -2202.958, y = 228.015, z = -4261.958 }, rot = { x = 0.000, y = 288.959, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 59006, monster_id = 24020101, pos = { x = -2342.791, y = 227.076, z = -4206.941 }, rot = { x = 0.000, y = 214.220, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 59007, monster_id = 24020101, pos = { x = -2335.118, y = 226.840, z = -4210.082 }, rot = { x = 0.000, y = 214.220, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 59008, monster_id = 24020101, pos = { x = -2341.121, y = 226.771, z = -4212.434 }, rot = { x = 0.000, y = 214.220, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 59009, monster_id = 24020101, pos = { x = -2341.609, y = 232.689, z = -4324.058 }, rot = { x = 0.000, y = 19.147, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 59010, monster_id = 24020101, pos = { x = -2302.869, y = 234.453, z = -4327.724 }, rot = { x = 0.000, y = 36.019, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 59011, monster_id = 24020101, pos = { x = -2308.943, y = 234.836, z = -4329.886 }, rot = { x = 0.000, y = 36.019, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 59012, monster_id = 24020101, pos = { x = -2301.371, y = 233.453, z = -4333.262 }, rot = { x = 0.000, y = 36.019, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 }
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
		monsters = { 59010, 59011, 59012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 59003, 59004, 59005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 59006, 59007, 59008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 59001, 59002, 59009 },
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