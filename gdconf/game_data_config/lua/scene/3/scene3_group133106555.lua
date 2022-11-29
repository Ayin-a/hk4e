-- 基础信息
local base_info = {
	group_id = 133106555
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
	{ config_id = 555001, gadget_id = 70220016, pos = { x = -683.309, y = 110.153, z = 1862.245 }, rot = { x = 0.020, y = 341.521, z = 15.470 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 555002, gadget_id = 70220015, pos = { x = -684.729, y = 109.512, z = 1863.056 }, rot = { x = 282.069, y = 208.643, z = 14.045 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 555003, gadget_id = 70220015, pos = { x = -683.058, y = 109.843, z = 1864.021 }, rot = { x = 280.388, y = 216.516, z = 217.096 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 555006, gadget_id = 70500000, pos = { x = -648.624, y = 149.383, z = 1893.833 }, rot = { x = 0.299, y = 18.562, z = 0.710 }, level = 36, point_type = 1003, area_id = 19 },
	{ config_id = 555007, gadget_id = 70290001, pos = { x = -638.421, y = 143.363, z = 1871.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 555008, gadget_id = 70500000, pos = { x = -638.404, y = 143.932, z = 1872.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3002, owner = 555007, area_id = 19 },
	{ config_id = 555009, gadget_id = 70500000, pos = { x = -638.486, y = 144.218, z = 1871.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3002, owner = 555007, area_id = 19 },
	{ config_id = 555010, gadget_id = 70500000, pos = { x = -638.153, y = 144.630, z = 1871.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3002, owner = 555007, area_id = 19 },
	{ config_id = 555011, gadget_id = 70500000, pos = { x = -625.067, y = 150.543, z = 1876.770 }, rot = { x = 359.696, y = 0.019, z = 352.701 }, level = 36, point_type = 2004, area_id = 19 },
	{ config_id = 555012, gadget_id = 70500000, pos = { x = -612.932, y = 152.488, z = 1854.189 }, rot = { x = 328.935, y = 336.469, z = 12.665 }, level = 36, point_type = 2026, area_id = 19 },
	{ config_id = 555013, gadget_id = 70500000, pos = { x = -612.099, y = 153.433, z = 1849.645 }, rot = { x = 15.797, y = 44.806, z = 15.131 }, level = 36, point_type = 2026, area_id = 19 }
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
		{ config_id = 555004, gadget_id = 70211101, pos = { x = -680.907, y = 109.658, z = 1861.228 }, rot = { x = 0.083, y = 88.414, z = 357.545 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
	},
	triggers = {
		{ config_id = 1555005, name = "ANY_GADGET_DIE_555005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_555005", action = "action_EVENT_ANY_GADGET_DIE_555005", trigger_count = 0 }
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
		gadgets = { 555001, 555002, 555003, 555006, 555007, 555008, 555009, 555010, 555011, 555012, 555013 },
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