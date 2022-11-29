-- 基础信息
local base_info = {
	group_id = 133304336
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "reach", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 336001, gadget_id = 70230112, pos = { x = -1725.661, y = 193.123, z = 2143.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 336002, gadget_id = 70230113, pos = { x = -1726.699, y = 193.690, z = 2144.466 }, rot = { x = 284.200, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 336003, gadget_id = 70230113, pos = { x = -1727.765, y = 194.046, z = 2145.948 }, rot = { x = 292.400, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 336004, gadget_id = 70230113, pos = { x = -1728.890, y = 194.292, z = 2147.486 }, rot = { x = 298.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 336009, gadget_id = 70230113, pos = { x = -1747.474, y = 192.520, z = 2170.239 }, rot = { x = 328.900, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 336010, gadget_id = 70230113, pos = { x = -1749.198, y = 191.743, z = 2172.000 }, rot = { x = 328.900, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 336011, gadget_id = 70230113, pos = { x = -1751.159, y = 191.225, z = 2175.433 }, rot = { x = 300.300, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 336012, gadget_id = 70230113, pos = { x = -1751.447, y = 191.295, z = 2177.475 }, rot = { x = 300.300, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 336013, gadget_id = 70230113, pos = { x = -1733.951, y = 179.082, z = 2237.174 }, rot = { x = 317.300, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 336014, gadget_id = 70230113, pos = { x = -1731.899, y = 178.614, z = 2239.189 }, rot = { x = 317.300, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 336015, gadget_id = 70230113, pos = { x = -1729.944, y = 178.132, z = 2241.256 }, rot = { x = 317.300, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
	},
	regions = {
		{ config_id = 336005, shape = RegionShape.SPHERE, radius = 4, pos = { x = -1726.699, y = 193.690, z = 2144.466 }, area_id = 21 },
		{ config_id = 336008, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1597.242, y = 272.455, z = 2289.316 }, area_id = 21 }
	},
	triggers = {
		{ config_id = 1336005, name = "ENTER_REGION_336005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_336005", action = "action_EVENT_ENTER_REGION_336005", trigger_count = 0 },
		{ config_id = 1336006, name = "TIME_AXIS_PASS_336006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_336006", action = "action_EVENT_TIME_AXIS_PASS_336006", trigger_count = 0 },
		{ config_id = 1336008, name = "ENTER_REGION_336008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_336008", action = "action_EVENT_ENTER_REGION_336008", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { },
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