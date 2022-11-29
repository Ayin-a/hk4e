-- 基础信息
local base_info = {
	group_id = 166001152
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 152002, monster_id = 25010701, pos = { x = 979.578, y = 1021.337, z = 929.713 }, rot = { x = 0.000, y = 48.560, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9101, area_id = 300 },
	{ config_id = 152003, monster_id = 25030201, pos = { x = 974.243, y = 1021.232, z = 930.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9003, area_id = 300 },
	{ config_id = 152004, monster_id = 25070101, pos = { x = 1016.237, y = 1017.128, z = 951.762 }, rot = { x = 0.000, y = 48.528, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 300 },
	{ config_id = 152005, monster_id = 25010301, pos = { x = 1007.033, y = 1021.743, z = 917.993 }, rot = { x = 0.000, y = 260.174, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9002, area_id = 300 },
	{ config_id = 152006, monster_id = 25010201, pos = { x = 996.256, y = 1021.513, z = 941.161 }, rot = { x = 0.000, y = 338.782, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9102, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 152001, gadget_id = 70360001, pos = { x = 387.616, y = 123.048, z = 1360.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
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
	end_suite = 2,
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
		monsters = { 152002, 152003, 152004, 152005, 152006 },
		gadgets = { 152001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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