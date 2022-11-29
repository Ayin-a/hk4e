-- 基础信息
local base_info = {
	group_id = 133302606
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
	-- 2号盒子关闭
	{ config_id = 606001, gadget_id = 71700503, pos = { x = -431.556, y = 236.731, z = 2770.664 }, rot = { x = 0.000, y = 9.204, z = 0.000 }, level = 27, area_id = 24 },
	-- 1号盒子关闭
	{ config_id = 606002, gadget_id = 71700504, pos = { x = -431.510, y = 236.731, z = 2771.212 }, rot = { x = 0.000, y = 311.898, z = 0.000 }, level = 27, area_id = 24 },
	-- 5号盒子关闭
	{ config_id = 606003, gadget_id = 71700505, pos = { x = -431.216, y = 236.731, z = 2770.366 }, rot = { x = 0.000, y = 117.599, z = 0.000 }, level = 27, area_id = 24 },
	-- 3号盒子关闭
	{ config_id = 606004, gadget_id = 71700505, pos = { x = -431.089, y = 236.731, z = 2771.432 }, rot = { x = 0.000, y = 5.044, z = 0.000 }, level = 27, area_id = 24 },
	-- 4号盒子关闭
	{ config_id = 606005, gadget_id = 71700503, pos = { x = -431.135, y = 236.731, z = 2770.883 }, rot = { x = 0.000, y = 98.292, z = 0.000 }, level = 27, area_id = 24 },
	-- 桌上散装糖果1
	{ config_id = 606006, gadget_id = 71700510, pos = { x = -431.266, y = 236.731, z = 2773.010 }, rot = { x = 0.000, y = 277.753, z = 0.000 }, level = 27, area_id = 24 },
	-- 桌上散装糖果1
	{ config_id = 606007, gadget_id = 71700511, pos = { x = -431.006, y = 236.731, z = 2772.716 }, rot = { x = 0.000, y = 4.668, z = 0.000 }, level = 27, area_id = 24 },
	-- 远处桌上空盒子1
	{ config_id = 606008, gadget_id = 71700506, pos = { x = -428.937, y = 236.678, z = 2769.175 }, rot = { x = 0.000, y = 9.204, z = 0.000 }, level = 27, area_id = 24 },
	-- 远处桌上空盒子1
	{ config_id = 606009, gadget_id = 71700507, pos = { x = -429.072, y = 236.678, z = 2768.343 }, rot = { x = 0.000, y = 46.843, z = 0.000 }, level = 27, area_id = 24 },
	-- 远处桌上关闭盒子
	{ config_id = 606010, gadget_id = 71700505, pos = { x = -429.037, y = 236.182, z = 2768.557 }, rot = { x = 0.000, y = 9.204, z = 0.000 }, level = 27, area_id = 24 },
	-- 2号盒子打开
	{ config_id = 606011, gadget_id = 71700513, pos = { x = -431.565, y = 236.731, z = 2770.695 }, rot = { x = 0.000, y = 107.784, z = 0.000 }, level = 27, area_id = 24 },
	-- 1号盒子打开
	{ config_id = 606012, gadget_id = 71700512, pos = { x = -431.510, y = 236.731, z = 2771.212 }, rot = { x = 0.000, y = 285.802, z = 0.000 }, level = 27, area_id = 24 },
	-- 3号盒子打开
	{ config_id = 606013, gadget_id = 71700514, pos = { x = -431.089, y = 236.731, z = 2771.432 }, rot = { x = 0.000, y = 268.286, z = 0.000 }, level = 27, area_id = 24 },
	-- 4号盒子打开
	{ config_id = 606014, gadget_id = 71700515, pos = { x = -431.196, y = 236.731, z = 2770.953 }, rot = { x = 0.000, y = 64.072, z = 0.000 }, level = 27, area_id = 24 },
	-- 5号盒子打开
	{ config_id = 606015, gadget_id = 71700516, pos = { x = -431.292, y = 236.731, z = 2770.399 }, rot = { x = 0.000, y = 10.004, z = 0.000 }, level = 27, area_id = 24 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 都不开,
		monsters = { },
		gadgets = { 606001, 606002, 606003, 606004, 606005, 606006, 606007, 606008, 606009, 606010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 选1,
		monsters = { },
		gadgets = { 606001, 606003, 606004, 606005, 606006, 606007, 606008, 606009, 606010, 606012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 选2,
		monsters = { },
		gadgets = { 606002, 606003, 606004, 606005, 606006, 606007, 606008, 606009, 606010, 606011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 选3,
		monsters = { },
		gadgets = { 606001, 606002, 606003, 606005, 606006, 606007, 606008, 606009, 606010, 606013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 选4,
		monsters = { },
		gadgets = { 606001, 606002, 606003, 606004, 606006, 606007, 606008, 606009, 606010, 606014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 选5,
		monsters = { },
		gadgets = { 606001, 606002, 606004, 606005, 606006, 606007, 606008, 606009, 606010, 606015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 选1after,
		monsters = { },
		gadgets = { 606001, 606003, 606004, 606006, 606007, 606008, 606009, 606010, 606012, 606014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 选2after,
		monsters = { },
		gadgets = { 606002, 606003, 606004, 606006, 606007, 606008, 606009, 606010, 606011, 606014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 选3after,
		monsters = { },
		gadgets = { 606001, 606002, 606003, 606006, 606007, 606008, 606009, 606010, 606013, 606014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 选5after,
		monsters = { },
		gadgets = { 606001, 606002, 606004, 606006, 606007, 606008, 606009, 606010, 606014, 606015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 选完,
		monsters = { },
		gadgets = { 606006, 606007, 606008, 606009, 606010 },
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