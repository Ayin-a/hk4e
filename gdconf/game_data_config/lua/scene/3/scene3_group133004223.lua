-- 基础信息
local base_info = {
	group_id = 133004223
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
	{ config_id = 1250, gadget_id = 70211101, pos = { x = 2220.364, y = 227.943, z = -941.833 }, rot = { x = 0.000, y = 118.264, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 1251, gadget_id = 70211101, pos = { x = 2146.267, y = 233.572, z = -862.297 }, rot = { x = 0.000, y = 69.152, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 1252, gadget_id = 70211101, pos = { x = 2207.952, y = 255.692, z = -768.832 }, rot = { x = 0.000, y = 68.043, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 1253, gadget_id = 70211131, pos = { x = 2373.156, y = 299.282, z = -649.941 }, rot = { x = 0.000, y = 26.296, z = 0.000 }, level = 1, drop_tag = "解谜超级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 1254, gadget_id = 70211101, pos = { x = 2236.946, y = 258.259, z = -775.702 }, rot = { x = 0.000, y = 72.764, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 1255, gadget_id = 70211101, pos = { x = 2320.784, y = 241.007, z = -871.171 }, rot = { x = 0.000, y = 207.391, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 1256, gadget_id = 70211101, pos = { x = 2261.637, y = 235.990, z = -721.313 }, rot = { x = 0.000, y = 206.046, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 1257, gadget_id = 70211101, pos = { x = 2384.584, y = 226.002, z = -756.339 }, rot = { x = 352.620, y = 37.652, z = 359.124 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 1258, gadget_id = 70211101, pos = { x = 2290.686, y = 225.941, z = -950.938 }, rot = { x = 0.000, y = 250.204, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 1259, gadget_id = 70211101, pos = { x = 2380.738, y = 241.059, z = -822.370 }, rot = { x = 0.000, y = 21.862, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 1261, gadget_id = 70211131, pos = { x = 2245.896, y = 264.261, z = -751.169 }, rot = { x = 0.000, y = 163.184, z = 0.000 }, level = 1, drop_tag = "解谜超级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
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
	rand_suite = true
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
		gadgets = { 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258, 1259, 1261 },
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