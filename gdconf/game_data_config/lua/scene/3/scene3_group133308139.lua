-- 基础信息
local base_info = {
	group_id = 133308139
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 139001, gadget_id = 70210101, pos = { x = -2371.663, y = 78.192, z = 4280.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 26 },
	{ config_id = 139002, gadget_id = 70210101, pos = { x = -2367.991, y = 78.381, z = 4281.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 26 },
	{ config_id = 139003, gadget_id = 70210101, pos = { x = -2277.012, y = 59.724, z = 4481.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 26 },
	{ config_id = 139007, gadget_id = 70210101, pos = { x = -2311.402, y = 57.340, z = 4471.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 },
	{ config_id = 139009, gadget_id = 70210101, pos = { x = -2498.506, y = 75.956, z = 4381.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 26 },
	{ config_id = 139011, gadget_id = 70210101, pos = { x = -2223.435, y = 64.651, z = 4261.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 26 }
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
	gadgets = {
		{ config_id = 139005, gadget_id = 70210101, pos = { x = -2439.558, y = 39.548, z = 4301.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 26 },
		{ config_id = 139006, gadget_id = 70210101, pos = { x = -2455.209, y = 25.805, z = 4362.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 26 },
		{ config_id = 139008, gadget_id = 70210101, pos = { x = -2335.337, y = 104.353, z = 4660.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 26 },
		{ config_id = 139010, gadget_id = 70210101, pos = { x = -2468.539, y = 69.484, z = 4402.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 26 }
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
		gadgets = { 139001, 139002, 139003, 139007, 139009, 139011 },
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