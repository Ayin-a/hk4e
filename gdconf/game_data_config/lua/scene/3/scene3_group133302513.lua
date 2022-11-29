-- 基础信息
local base_info = {
	group_id = 133302513
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 513001, monster_id = 21010701, pos = { x = -301.959, y = 226.323, z = 2316.049 }, rot = { x = 0.000, y = 67.602, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 24 },
	{ config_id = 513006, monster_id = 21010701, pos = { x = -297.446, y = 225.878, z = 2314.705 }, rot = { x = 0.000, y = 344.979, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 24 },
	{ config_id = 513008, monster_id = 21030201, pos = { x = -298.373, y = 225.453, z = 2319.234 }, rot = { x = 0.000, y = 189.122, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 513002, gadget_id = 70217020, pos = { x = -299.210, y = 225.945, z = 2316.916 }, rot = { x = 359.470, y = 0.024, z = 354.759 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 513003, gadget_id = 70310001, pos = { x = -294.042, y = 224.865, z = 2311.886 }, rot = { x = 6.646, y = 359.331, z = 348.517 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 513004, gadget_id = 70300086, pos = { x = -301.216, y = 225.834, z = 2317.379 }, rot = { x = 355.932, y = 174.768, z = 37.181 }, level = 27, area_id = 24 },
	{ config_id = 513005, gadget_id = 70300086, pos = { x = -296.934, y = 225.300, z = 2316.352 }, rot = { x = -0.005, y = 202.735, z = 328.180 }, level = 27, area_id = 24 },
	{ config_id = 513009, gadget_id = 70220013, pos = { x = -291.691, y = 224.421, z = 2312.311 }, rot = { x = 4.242, y = 359.502, z = 346.601 }, level = 27, area_id = 24 },
	{ config_id = 513011, gadget_id = 70220013, pos = { x = -293.154, y = 224.913, z = 2310.312 }, rot = { x = 12.775, y = 52.825, z = 355.892 }, level = 27, area_id = 24 }
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
		{ config_id = 513010, gadget_id = 70310004, pos = { x = -299.708, y = 225.903, z = 2314.114 }, rot = { x = 7.161, y = 202.470, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 }
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
		monsters = { 513001, 513006, 513008 },
		gadgets = { 513002, 513003, 513004, 513005, 513009, 513011 },
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