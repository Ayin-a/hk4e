-- 基础信息
local base_info = {
	group_id = 133002077
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 148, monster_id = 21010501, pos = { x = 1738.536, y = 237.748, z = -651.316 }, rot = { x = 0.000, y = 343.144, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 149, monster_id = 21010501, pos = { x = 1708.052, y = 237.607, z = -637.449 }, rot = { x = 0.000, y = 25.854, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 150, monster_id = 21010201, pos = { x = 1718.924, y = 244.285, z = -696.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 151, monster_id = 21010201, pos = { x = 1722.778, y = 245.198, z = -693.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 152, monster_id = 21010201, pos = { x = 1722.175, y = 244.687, z = -696.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 153, monster_id = 20011001, pos = { x = 1730.255, y = 231.340, z = -636.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 154, monster_id = 20011001, pos = { x = 1722.269, y = 231.340, z = -632.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 155, monster_id = 20011001, pos = { x = 1729.240, y = 231.340, z = -629.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 156, monster_id = 20010901, pos = { x = 1726.717, y = 231.340, z = -633.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "大史莱姆", area_id = 3 },
	{ config_id = 157, monster_id = 21030201, pos = { x = 1733.263, y = 239.653, z = -670.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘萨满", disableWander = true, area_id = 3 },
	{ config_id = 158, monster_id = 21030201, pos = { x = 1716.117, y = 236.497, z = -653.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘萨满", disableWander = true, area_id = 3 },
	{ config_id = 159, monster_id = 21010701, pos = { x = 1720.166, y = 244.320, z = -693.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 160, monster_id = 21010701, pos = { x = 1721.965, y = 244.934, z = -691.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, area_id = 3 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 10
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 148, 149 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 148, 149, 150, 151, 152 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 153, 154, 155 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 156 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 157, 158, 159, 160 },
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