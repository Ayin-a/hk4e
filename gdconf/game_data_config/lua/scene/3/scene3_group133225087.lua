-- 基础信息
local base_info = {
	group_id = 133225087
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
	{ config_id = 1, name = "progress", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 87001, gadget_id = 70310090, pos = { x = -6424.125, y = 228.187, z = -2654.889 }, rot = { x = 0.000, y = 0.000, z = 22.593 }, level = 33, persistent = true, area_id = 18 },
		{ config_id = 87002, gadget_id = 70310090, pos = { x = -6441.103, y = 234.262, z = -2624.957 }, rot = { x = 0.000, y = 0.000, z = 7.706 }, level = 33, persistent = true, area_id = 18 },
		{ config_id = 87003, gadget_id = 70310090, pos = { x = -6462.857, y = 241.324, z = -2613.866 }, rot = { x = 0.000, y = 297.408, z = 7.706 }, level = 33, persistent = true, area_id = 18 },
		{ config_id = 87004, gadget_id = 70310090, pos = { x = -6465.852, y = 244.536, z = -2582.116 }, rot = { x = 6.910, y = 12.339, z = 5.086 }, level = 33, persistent = true, area_id = 18 },
		{ config_id = 87005, gadget_id = 70310090, pos = { x = -6433.416, y = 243.329, z = -2591.303 }, rot = { x = 0.000, y = 32.134, z = 7.706 }, level = 33, persistent = true, area_id = 18 },
		{ config_id = 87006, gadget_id = 70310090, pos = { x = -6425.537, y = 256.570, z = -2567.728 }, rot = { x = 6.924, y = 328.300, z = 3.390 }, level = 33, persistent = true, area_id = 18 },
		{ config_id = 87007, gadget_id = 70310090, pos = { x = -6400.796, y = 253.582, z = -2622.397 }, rot = { x = 4.398, y = 302.348, z = 0.029 }, level = 33, persistent = true, area_id = 18 },
		{ config_id = 87008, gadget_id = 70310090, pos = { x = -6408.780, y = 250.183, z = -2528.650 }, rot = { x = 6.924, y = 328.300, z = 3.390 }, level = 33, persistent = true, area_id = 18 },
		{ config_id = 87009, gadget_id = 70310090, pos = { x = -6434.457, y = 249.326, z = -2537.446 }, rot = { x = 7.047, y = 278.134, z = 356.874 }, level = 33, persistent = true, area_id = 18 },
		{ config_id = 87010, gadget_id = 70310090, pos = { x = -6434.457, y = 249.326, z = -2537.446 }, rot = { x = 7.047, y = 278.134, z = 356.874 }, level = 33, persistent = true, area_id = 18 },
		{ config_id = 87011, gadget_id = 70310090, pos = { x = -6368.666, y = 264.448, z = -2631.337 }, rot = { x = 352.845, y = 228.115, z = 0.029 }, level = 33, persistent = true, area_id = 18 }
	},
	triggers = {
		{ config_id = 1087012, name = "GADGET_STATE_CHANGE_87012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_87012", action = "action_EVENT_GADGET_STATE_CHANGE_87012", trigger_count = 0 }
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