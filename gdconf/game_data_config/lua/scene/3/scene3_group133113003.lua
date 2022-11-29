-- 基础信息
local base_info = {
	group_id = 133113003
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
	{ config_id = 3001, gadget_id = 70211131, pos = { x = -377.063, y = 239.787, z = -1156.728 }, rot = { x = 0.000, y = 118.177, z = 0.000 }, level = 26, drop_tag = "解谜超级璃月", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 3002, gadget_id = 70211111, pos = { x = -380.092, y = 215.280, z = -1154.379 }, rot = { x = 0.000, y = 128.296, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 3003, gadget_id = 70211101, pos = { x = -380.114, y = 215.303, z = -1150.318 }, rot = { x = 0.000, y = 37.381, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 3004, gadget_id = 70211101, pos = { x = -378.380, y = 215.365, z = -1152.434 }, rot = { x = 0.000, y = 130.048, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 3005, gadget_id = 70210101, pos = { x = -423.655, y = 213.892, z = -1130.308 }, rot = { x = 0.000, y = 74.560, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬璃月", isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 3006, gadget_id = 70210101, pos = { x = -402.190, y = 208.118, z = -1135.570 }, rot = { x = 0.000, y = 281.663, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬璃月", isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 3007, gadget_id = 70210101, pos = { x = -402.833, y = 208.102, z = -1136.799 }, rot = { x = 0.000, y = 338.134, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬璃月", isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 3008, gadget_id = 70210101, pos = { x = -373.152, y = 215.714, z = -1151.440 }, rot = { x = 0.000, y = 321.309, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬璃月", isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 3009, gadget_id = 70211111, pos = { x = -630.515, y = 218.673, z = -163.063 }, rot = { x = 0.000, y = 303.400, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 3010, gadget_id = 70211131, pos = { x = -649.928, y = 210.897, z = -184.495 }, rot = { x = 0.000, y = 34.335, z = 0.000 }, level = 16, drop_tag = "解谜超级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 3011, gadget_id = 70211101, pos = { x = -613.034, y = 212.060, z = -130.279 }, rot = { x = 0.000, y = 34.469, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
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
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3010, 3011 },
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