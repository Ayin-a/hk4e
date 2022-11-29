-- 基础信息
local base_info = {
	group_id = 133107247
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
	-- 旅行者要看的报告
	{ config_id = 247001, gadget_id = 70710685, pos = { x = -638.702, y = 228.272, z = 295.052 }, rot = { x = 357.860, y = 294.455, z = 358.354 }, level = 1, area_id = 7 },
	-- 夜兰要看的报告
	{ config_id = 247002, gadget_id = 70710685, pos = { x = -637.286, y = 228.272, z = 296.819 }, rot = { x = 356.729, y = 3.580, z = 5.042 }, level = 1, area_id = 7 },
	{ config_id = 247004, gadget_id = 70710685, pos = { x = -639.216, y = 228.272, z = 294.783 }, rot = { x = 358.794, y = 320.365, z = 357.585 }, level = 1, area_id = 7 },
	{ config_id = 247005, gadget_id = 70710685, pos = { x = -638.746, y = 228.272, z = 295.201 }, rot = { x = 0.000, y = 326.845, z = 0.000 }, level = 1, area_id = 7 },
	-- 旅行者要看的报告
	{ config_id = 247006, gadget_id = 70710685, pos = { x = -636.744, y = 228.272, z = 297.292 }, rot = { x = 357.692, y = 288.132, z = 358.600 }, level = 1, area_id = 7 },
	-- 夜兰要看的报告
	{ config_id = 247007, gadget_id = 70710685, pos = { x = -637.237, y = 228.272, z = 296.889 }, rot = { x = 0.000, y = 4.422, z = 0.000 }, level = 1, area_id = 7 }
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
	suite = 5,
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
		-- description = 报告分成两堆,
		monsters = { },
		gadgets = { 247004, 247005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 对话结束，开始阅读,
		monsters = { },
		gadgets = { 247001, 247002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 两人一起看报告,
		monsters = { },
		gadgets = { 247006, 247007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 空suite备用,
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