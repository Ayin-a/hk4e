-- 基础信息
local base_info = {
	group_id = 199004091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91001, monster_id = 21030301, pos = { x = -303.602, y = 120.085, z = -609.552 }, rot = { x = 0.000, y = 349.939, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 400 },
	{ config_id = 91002, monster_id = 21010401, pos = { x = -306.939, y = 120.108, z = -611.820 }, rot = { x = 0.000, y = 201.837, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 400 },
	{ config_id = 91003, monster_id = 21010401, pos = { x = -279.024, y = 120.302, z = -615.838 }, rot = { x = 0.000, y = 278.776, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 400 },
	{ config_id = 91005, monster_id = 21030401, pos = { x = -317.730, y = 120.055, z = -596.130 }, rot = { x = 0.000, y = 135.479, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 400 },
	{ config_id = 91006, monster_id = 21011201, pos = { x = -316.447, y = 120.112, z = -589.870 }, rot = { x = 0.000, y = 155.711, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 400 },
	{ config_id = 91007, monster_id = 21011201, pos = { x = -332.537, y = 121.187, z = -600.466 }, rot = { x = 0.000, y = 16.087, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 91004, gadget_id = 70300100, pos = { x = -306.311, y = 119.956, z = -611.332 }, rot = { x = 352.811, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 91008, gadget_id = 70300100, pos = { x = -333.123, y = 121.168, z = -597.965 }, rot = { x = 5.264, y = 358.787, z = 1.123 }, level = 1, area_id = 400 }
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
		monsters = { 91001, 91002, 91003, 91005, 91006, 91007 },
		gadgets = { 91004, 91008 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================