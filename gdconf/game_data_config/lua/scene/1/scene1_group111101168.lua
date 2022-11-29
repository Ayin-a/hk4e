-- 基础信息
local base_info = {
	group_id = 111101168
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 168001, monster_id = 20011001, pos = { x = 2622.160, y = 227.589, z = -1108.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 168002, monster_id = 20011001, pos = { x = 2616.873, y = 227.596, z = -1107.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 168003, monster_id = 20011201, pos = { x = 2620.155, y = 227.875, z = -1106.899 }, rot = { x = 0.000, y = 202.059, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 168004, monster_id = 20011201, pos = { x = 2617.659, y = 228.069, z = -1107.469 }, rot = { x = 0.000, y = 175.829, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 168005, monster_id = 21010501, pos = { x = 2613.984, y = 227.119, z = -1113.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 168006, monster_id = 21010501, pos = { x = 2622.765, y = 227.696, z = -1106.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 168008, monster_id = 20010801, pos = { x = 2618.704, y = 227.917, z = -1106.587 }, rot = { x = 0.000, y = 202.229, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 168009, monster_id = 20010801, pos = { x = 2614.668, y = 228.145, z = -1106.709 }, rot = { x = 0.000, y = 202.229, z = 0.000 }, level = 1, drop_tag = "史莱姆" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 168003, 168004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 168001, 168002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 168005, 168006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 168008, 168009 },
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