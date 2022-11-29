-- 基础信息
local base_info = {
	group_id = 133220615
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 615001, monster_id = 25080201, pos = { x = -1861.877, y = 231.014, z = -4202.562 }, rot = { x = 0.000, y = 134.716, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 11 },
	{ config_id = 615002, monster_id = 25080101, pos = { x = -1858.671, y = 233.695, z = -4189.144 }, rot = { x = 0.000, y = 53.169, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 615008, monster_id = 25080201, pos = { x = -1862.921, y = 207.107, z = -4182.999 }, rot = { x = 0.000, y = 134.716, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 11 },
	{ config_id = 615009, monster_id = 25080201, pos = { x = -1819.051, y = 200.051, z = -4271.408 }, rot = { x = 0.000, y = 116.781, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 615010, monster_id = 25080201, pos = { x = -1873.223, y = 200.278, z = -4259.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 11 },
	{ config_id = 615011, monster_id = 25080301, pos = { x = -1887.198, y = 200.315, z = -4200.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 615003, gadget_id = 70210101, pos = { x = -1853.896, y = 234.772, z = -4185.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 615004, gadget_id = 70210101, pos = { x = -1853.806, y = 236.004, z = -4187.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 615005, gadget_id = 70210101, pos = { x = -1861.243, y = 207.976, z = -4178.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 615006, gadget_id = 70210101, pos = { x = -1862.481, y = 208.295, z = -4178.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 615007, gadget_id = 70210101, pos = { x = -1830.886, y = 206.799, z = -4214.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 615012, gadget_id = 70310004, pos = { x = -1898.437, y = 200.733, z = -4289.488 }, rot = { x = 12.849, y = 342.012, z = 9.204 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
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
		monsters = { 615001, 615002, 615008, 615009, 615010, 615011 },
		gadgets = { 615003, 615004, 615005, 615006, 615007, 615012 },
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