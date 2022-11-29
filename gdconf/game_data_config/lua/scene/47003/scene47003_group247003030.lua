-- 基础信息
local base_info = {
	group_id = 247003030
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
	{ config_id = 30001, gadget_id = 70210101, pos = { x = 92.016, y = 1.928, z = 24.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 30002, gadget_id = 70210101, pos = { x = 113.715, y = 0.936, z = 81.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 30003, gadget_id = 70210101, pos = { x = 156.867, y = 1.999, z = 124.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 30007, gadget_id = 70210101, pos = { x = 207.832, y = 1.338, z = 163.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 30008, gadget_id = 70210101, pos = { x = 236.929, y = 1.958, z = 124.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 30009, gadget_id = 70210101, pos = { x = 280.538, y = -1.163, z = 161.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 30010, gadget_id = 70310146, pos = { x = 280.608, y = -1.088, z = 162.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30011, gadget_id = 70210101, pos = { x = 236.788, y = 1.789, z = 284.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 30012, gadget_id = 70310146, pos = { x = 237.252, y = 2.214, z = 284.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30013, gadget_id = 70310146, pos = { x = 273.968, y = 0.941, z = 241.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30014, gadget_id = 70310146, pos = { x = 9.746, y = 1.037, z = 177.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30015, gadget_id = 70310146, pos = { x = 298.418, y = 1.665, z = 172.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30016, gadget_id = 70310146, pos = { x = 258.228, y = 1.225, z = 10.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30017, gadget_id = 70310146, pos = { x = 56.624, y = -1.206, z = 52.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30018, gadget_id = 70310146, pos = { x = 115.033, y = 1.837, z = 156.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30019, gadget_id = 70310146, pos = { x = 241.557, y = 0.766, z = 46.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30020, gadget_id = 70310146, pos = { x = 237.020, y = 1.871, z = 204.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true }
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
		gadgets = { 30001, 30002, 30003, 30007, 30008, 30009, 30010, 30011, 30012, 30013, 30014, 30015, 30016, 30017, 30018, 30019, 30020 },
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