-- 基础信息
local base_info = {
	group_id = 133308732
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
	{ config_id = 732001, gadget_id = 70210101, pos = { x = -1540.832, y = 38.243, z = 5098.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 32 },
	{ config_id = 732002, gadget_id = 70210101, pos = { x = -1539.110, y = 38.243, z = 5097.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 32 },
	{ config_id = 732003, gadget_id = 70210101, pos = { x = -1535.131, y = 37.817, z = 5102.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 32 },
	{ config_id = 732004, gadget_id = 70210101, pos = { x = -1535.875, y = 38.246, z = 5078.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 32 },
	{ config_id = 732005, gadget_id = 70210101, pos = { x = -1536.382, y = 37.404, z = 5076.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 },
	{ config_id = 732007, gadget_id = 70210101, pos = { x = -1541.415, y = 37.092, z = 5075.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 },
	{ config_id = 732008, gadget_id = 70210101, pos = { x = -1555.853, y = 34.161, z = 5093.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 32 },
	{ config_id = 732009, gadget_id = 70210101, pos = { x = -1536.390, y = 35.226, z = 5070.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 32 },
	{ config_id = 732010, gadget_id = 70210101, pos = { x = -1524.490, y = 34.119, z = 5048.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 32 },
	{ config_id = 732011, gadget_id = 70210101, pos = { x = -1533.939, y = 34.460, z = 5061.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 }
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
		gadgets = { 732001, 732002, 732003, 732004, 732005, 732007, 732008, 732009, 732010, 732011 },
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