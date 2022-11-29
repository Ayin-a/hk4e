-- 基础信息
local base_info = {
	group_id = 111102045
}

-- DEFS_MISCS
defs = {
	start_operator = 45001, --交互后开始的操作台ConfigID
	persina = 45010,
	challenge_time = 180, --挑战需要的时间
	region_vision = 45002,--性能优化圈的regionConfigID
	region_border = 45003,--离开时触发失败的区域
	mons_suites = {2,3,4}, --按顺序刷新的怪物Suite，按顺序刷完为止
	mons_num = 6,-- 需要杀死的所有怪物数量
	end_suite = 5, --group完成时的suite
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 45004, monster_id = 21010401, pos = { x = 1265.918, y = 321.150, z = -1849.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 45005, monster_id = 21010401, pos = { x = 1261.001, y = 321.841, z = -1854.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 45006, monster_id = 21010401, pos = { x = 1267.121, y = 321.633, z = -1852.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 45007, monster_id = 21010101, pos = { x = 1257.950, y = 320.780, z = -1849.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 45008, monster_id = 21020101, pos = { x = 1262.492, y = 320.235, z = -1845.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 45009, monster_id = 21020101, pos = { x = 1264.374, y = 322.120, z = -1855.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 45001, gadget_id = 70360002, pos = { x = 1261.951, y = 321.185, z = -1850.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45010, gadget_id = 70800190, pos = { x = 1260.251, y = 320.535, z = -1847.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 45002, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1263.863, y = 321.580, z = -1852.195 } },
	{ config_id = 45003, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1264.232, y = 321.809, z = -1853.523 } }
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
		gadgets = { 45001, 45010 },
		regions = { 45002, 45003 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 45004, 45005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 45006, 45007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 45008, 45009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
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