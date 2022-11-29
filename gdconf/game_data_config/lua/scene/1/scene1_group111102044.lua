-- 基础信息
local base_info = {
	group_id = 111102044
}

-- DEFS_MISCS
defs = {
	start_operator = 44001, --交互后开始的操作台ConfigID
	protect_target = 44003, --需要保护的目标ConfigID
	persina = 44002,
	protect_percent = 0, --保护目标的血量百分比
	challenge_time = 180, --挑战需要的时间
	region_vision = 44004,--性能优化圈的regionConfigID
	region_border = 44005,--离开时触发失败的区域
	mons_suites = {3,4,5,6}, --按顺序刷新的怪物Suite，按顺序刷完为止
	target_suite = 2,--嘲讽单位的Suite
	mons_num = 8,-- 需要杀死的所有怪物数量
	remind_pos = {x= 1256,y= 323, z= -1888}, --播放刷怪音效的位置
	end_suite = 7, --group完成时的suite
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44006, monster_id = 21010101, pos = { x = 1264.489, y = 323.628, z = -1884.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 44007, monster_id = 21010101, pos = { x = 1264.038, y = 324.060, z = -1892.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 44008, monster_id = 21010201, pos = { x = 1248.385, y = 323.185, z = -1885.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 44009, monster_id = 21010201, pos = { x = 1247.614, y = 323.698, z = -1891.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 44010, monster_id = 21010301, pos = { x = 1260.525, y = 323.551, z = -1881.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 44011, monster_id = 21010301, pos = { x = 1252.620, y = 323.174, z = -1881.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 44012, monster_id = 21010401, pos = { x = 1260.117, y = 324.791, z = -1896.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 44013, monster_id = 21010401, pos = { x = 1253.887, y = 325.105, z = -1896.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 44001, gadget_id = 70360286, pos = { x = 1256.402, y = 323.801, z = -1888.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 44002, gadget_id = 70800189, pos = { x = 1256.325, y = 323.808, z = -1888.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 44003, gadget_id = 70350035, pos = { x = 1256.024, y = 324.222, z = -1888.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 44004, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1256.345, y = 324.089, z = -1888.731 } },
	{ config_id = 44005, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1256.562, y = 323.675, z = -1888.005 } }
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
		gadgets = { 44001, 44002 },
		regions = { 44004, 44005 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 44003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 44006, 44007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 44008, 44009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 44010, 44011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 44012, 44013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
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