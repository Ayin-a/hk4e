-- 基础信息
local base_info = {
	group_id = 199001160
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
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 160001, gadget_id = 70690001, pos = { x = 419.816, y = 125.728, z = 405.957 }, rot = { x = 326.370, y = 2.818, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 160002, gadget_id = 70690001, pos = { x = 420.183, y = 129.800, z = 415.272 }, rot = { x = 337.537, y = 359.640, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 160003, gadget_id = 70310171, pos = { x = 417.595, y = 119.891, z = 392.476 }, rot = { x = 349.867, y = 3.860, z = 359.591 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
		{ config_id = 160004, gadget_id = 70310166, pos = { x = 419.345, y = 119.009, z = 394.421 }, rot = { x = 347.680, y = 358.016, z = 0.300 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
		{ config_id = 160005, gadget_id = 70690001, pos = { x = 419.034, y = 134.563, z = 428.446 }, rot = { x = 344.743, y = 314.176, z = 358.871 }, level = 20, area_id = 402 },
		{ config_id = 160006, gadget_id = 70690001, pos = { x = 409.481, y = 136.599, z = 437.922 }, rot = { x = 343.245, y = 269.115, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 160007, gadget_id = 70690001, pos = { x = 400.483, y = 139.308, z = 437.783 }, rot = { x = 343.245, y = 269.115, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 160008, gadget_id = 70690001, pos = { x = 380.911, y = 126.696, z = 420.992 }, rot = { x = 13.987, y = 166.261, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 160009, gadget_id = 70690001, pos = { x = 383.208, y = 124.287, z = 411.599 }, rot = { x = 11.032, y = 137.590, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 160010, gadget_id = 70690001, pos = { x = 389.737, y = 122.400, z = 404.451 }, rot = { x = 347.161, y = 126.474, z = 0.759 }, level = 20, area_id = 402 },
		{ config_id = 160011, gadget_id = 70690010, pos = { x = 418.628, y = 122.358, z = 407.137 }, rot = { x = 0.000, y = 178.947, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 160012, gadget_id = 70690027, pos = { x = 423.449, y = 122.731, z = 395.316 }, rot = { x = 77.741, y = 83.633, z = 1.233 }, level = 20, area_id = 402 },
		{ config_id = 160013, gadget_id = 70690001, pos = { x = 397.024, y = 124.568, z = 398.362 }, rot = { x = 347.276, y = 121.374, z = 1.888 }, level = 20, area_id = 402 },
		{ config_id = 160014, gadget_id = 70690001, pos = { x = 428.883, y = 125.255, z = 420.438 }, rot = { x = 347.336, y = 210.132, z = 2.260 }, level = 20, area_id = 402 },
		{ config_id = 160015, gadget_id = 70690001, pos = { x = 435.030, y = 123.087, z = 427.676 }, rot = { x = 347.139, y = 220.336, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 160016, gadget_id = 70690001, pos = { x = 436.309, y = 125.764, z = 397.585 }, rot = { x = 330.412, y = 93.270, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 160017, gadget_id = 70690001, pos = { x = 446.711, y = 131.306, z = 396.804 }, rot = { x = 336.508, y = 82.373, z = 357.444 }, level = 20, area_id = 402 },
		{ config_id = 160018, gadget_id = 70690001, pos = { x = 460.449, y = 135.599, z = 399.801 }, rot = { x = 351.360, y = 43.190, z = 359.095 }, level = 20, area_id = 402 },
		{ config_id = 160019, gadget_id = 70690001, pos = { x = 468.344, y = 137.286, z = 407.668 }, rot = { x = 343.245, y = 359.568, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 160020, gadget_id = 70690001, pos = { x = 468.276, y = 139.995, z = 416.667 }, rot = { x = 343.245, y = 359.568, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 160021, gadget_id = 70690001, pos = { x = 451.640, y = 127.383, z = 436.371 }, rot = { x = 13.987, y = 256.713, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 160022, gadget_id = 70690001, pos = { x = 442.228, y = 124.974, z = 434.148 }, rot = { x = 11.032, y = 228.042, z = 0.000 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1160023, name = "GADGET_STATE_CHANGE_160023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_160023", action = "action_EVENT_GADGET_STATE_CHANGE_160023", trigger_count = 0 },
		{ config_id = 1160024, name = "GADGET_STATE_CHANGE_160024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_160024", action = "action_EVENT_GADGET_STATE_CHANGE_160024", trigger_count = 0 },
		{ config_id = 1160025, name = "VARIABLE_CHANGE_160025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_160025", action = "action_EVENT_VARIABLE_CHANGE_160025", trigger_count = 0 },
		{ config_id = 1160026, name = "TIME_AXIS_PASS_160026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_160026", action = "action_EVENT_TIME_AXIS_PASS_160026", trigger_count = 0 },
		{ config_id = 1160027, name = "TIME_AXIS_PASS_160027", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_160027", action = "action_EVENT_TIME_AXIS_PASS_160027", trigger_count = 0 },
		{ config_id = 1160028, name = "VARIABLE_CHANGE_160028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_160028", action = "action_EVENT_VARIABLE_CHANGE_160028", trigger_count = 0 },
		{ config_id = 1160029, name = "TIME_AXIS_PASS_160029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_160029", action = "action_EVENT_TIME_AXIS_PASS_160029", trigger_count = 0 },
		{ config_id = 1160030, name = "TIME_AXIS_PASS_160030", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_160030", action = "action_EVENT_TIME_AXIS_PASS_160030", trigger_count = 0 }
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
	},
	{
		-- suite_id = 2,
		-- description = 0,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 102,
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