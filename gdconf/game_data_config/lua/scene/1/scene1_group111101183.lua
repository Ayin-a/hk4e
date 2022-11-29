-- 基础信息
local base_info = {
	group_id = 111101183
}

-- DEFS_MISCS
defs = {

	group_id = 111101183,
	--使用的移动点阵ID
	pointarray_id = 110100042,
	pillar_num = 5,
--定义的给操作台的操作数
	option_pre = 301,
	option_next = 302,
	option_in = 304,
	option_out = 303,
	reminder_cantmove = 1120003,
	
--定义符文石和移动点之间的位置关系
	Graph = {
		[1] = {preNode = 6, nextNode = 2, outNode = 0, inNode = 0},
		[2] = {preNode = 1, nextNode = 3, outNode = 6, inNode = 0},
		[3] = {preNode = 2, nextNode = 4, outNode = 8, inNode = 0},
		[4] = {preNode = 3, nextNode = 5, outNode = 0, inNode = 0},
		[5] = {preNode = 4, nextNode = 1, outNode = 7, inNode = 0},
		[6] = {preNode = 0, nextNode = 0, outNode = 0, inNode = 2},
		[7] = {preNode = 0, nextNode = 0, outNode = 0, inNode = 5},
		[8] = {preNode = 0, nextNode = 0, outNode = 0, inNode = 3},
	},
--每个桩的存储id
	PillarName = {
		[183001] = "Pillar01",
		[183002] = "Pillar02",
		[183003] = "Pillar03",
		[183004] = "Pillar04",
		[183005] = "Pillar05",
	},
--每个操作台对应的位置
	OperatorPos = {
		[183012] = 5,
		[183013] = 1,
		[183014] = 2,
		[183015] = 3,
		[183016] = 4,
		[183017] = 6,
		[183018] = 8,
		[183019] = 7,
	},

--最终柱子应该在的位置
	Solution = {
		[183001] = 2,
		[183002] = 1,
		[183003] = 8,
		[183004] = 6,
		[183005] = 3,
	}
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
	{ config_id = 183001, gadget_id = 70350292, pos = { x = 2449.505, y = 294.264, z = -1578.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 183002, gadget_id = 70720214, pos = { x = 2444.334, y = 291.930, z = -1569.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 183003, gadget_id = 70710010, pos = { x = 2452.401, y = 291.850, z = -1560.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 183004, gadget_id = 70350173, pos = { x = 2463.780, y = 295.085, z = -1566.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 183005, gadget_id = 70350174, pos = { x = 2462.141, y = 293.196, z = -1577.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 183006, gadget_id = 70690017, pos = { x = 2454.121, y = 291.189, z = -1570.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 183007, gadget_id = 70350292, pos = { x = 2445.173, y = 300.252, z = -1569.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 183008, gadget_id = 70720214, pos = { x = 2450.520, y = 298.506, z = -1579.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 183009, gadget_id = 70710010, pos = { x = 2452.952, y = 297.463, z = -1550.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 183010, gadget_id = 70350173, pos = { x = 2437.211, y = 295.934, z = -1570.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 183011, gadget_id = 70350174, pos = { x = 2452.924, y = 296.193, z = -1560.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 183012, gadget_id = 70360001, pos = { x = 2444.048, y = 290.892, z = -1568.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 183013, gadget_id = 70360001, pos = { x = 2451.640, y = 293.162, z = -1560.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 183014, gadget_id = 70360001, pos = { x = 2462.894, y = 292.531, z = -1566.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 183015, gadget_id = 70360001, pos = { x = 2461.219, y = 293.165, z = -1577.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 183016, gadget_id = 70360001, pos = { x = 2449.644, y = 295.047, z = -1578.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 183017, gadget_id = 70360001, pos = { x = 2435.868, y = 287.565, z = -1570.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 183018, gadget_id = 70360001, pos = { x = 2452.725, y = 289.061, z = -1550.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 183019, gadget_id = 70360001, pos = { x = 2466.120, y = 294.611, z = -1582.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "Pillar01", value = 1, no_refresh = false },
	{ config_id = 2, name = "Pillar02", value = 2, no_refresh = false },
	{ config_id = 3, name = "Pillar03", value = 3, no_refresh = false },
	{ config_id = 4, name = "Pillar04", value = 4, no_refresh = false },
	{ config_id = 5, name = "Pillar05", value = 5, no_refresh = false },
	{ config_id = 6, name = "Finished", value = 0, no_refresh = true }
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
		gadgets = { 183001, 183002, 183003, 183004, 183005, 183007, 183008, 183009, 183010, 183011, 183012, 183013, 183014, 183015, 183016, 183017, 183018, 183019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 183006 },
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