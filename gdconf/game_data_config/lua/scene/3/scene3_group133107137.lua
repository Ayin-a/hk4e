-- 基础信息
local base_info = {
	group_id = 133107137
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
	{ config_id = 137001, gadget_id = 70211101, pos = { x = -868.120, y = 244.391, z = 326.969 }, rot = { x = 0.000, y = 201.400, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 137002, gadget_id = 70211111, pos = { x = -918.791, y = 271.318, z = 230.527 }, rot = { x = 0.000, y = 290.540, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 137003, gadget_id = 70210107, pos = { x = -855.480, y = 269.840, z = 236.766 }, rot = { x = 0.000, y = 283.670, z = 0.000 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 137004, gadget_id = 70210107, pos = { x = -842.394, y = 250.936, z = 274.244 }, rot = { x = 0.000, y = 290.130, z = 0.000 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 137005, gadget_id = 70210107, pos = { x = -909.109, y = 284.033, z = 217.944 }, rot = { x = 0.000, y = 343.400, z = 0.000 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 137006, gadget_id = 70210107, pos = { x = -956.826, y = 269.876, z = 245.090 }, rot = { x = 0.000, y = 45.260, z = 0.000 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 137007, gadget_id = 70211101, pos = { x = -917.092, y = 263.353, z = 221.456 }, rot = { x = 0.000, y = 201.400, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
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
		gadgets = { 137001, 137002, 137003, 137004, 137005, 137006, 137007 },
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