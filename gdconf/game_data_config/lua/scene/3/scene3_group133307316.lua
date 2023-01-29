-- 基础信息
local base_info = {
	group_id = 133307316
}

-- Trigger变量
local defs = {
	chest_id = 316007,
	hint_gadget_id = 316006,
	region_id = 316008
}

-- DEFS_MISCS
local windball_worktops = 
{
    316001,
    316002,
    182005
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
	{ config_id = 316001, gadget_id = 70290672, pos = { x = -1359.673, y = 25.912, z = 5301.403 }, rot = { x = 0.000, y = 292.814, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 316002, gadget_id = 70290672, pos = { x = -1317.523, y = 70.419, z = 5081.804 }, rot = { x = 1.588, y = 344.137, z = 9.435 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 316005, gadget_id = 70290673, pos = { x = -1345.982, y = 67.793, z = 4979.679 }, rot = { x = 359.976, y = 307.674, z = 358.684 }, level = 32, area_id = 32 },
	{ config_id = 316006, gadget_id = 70290693, pos = { x = -1359.673, y = 25.912, z = 5301.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 316007, gadget_id = 70211111, pos = { x = -1349.846, y = 68.462, z = 4984.750 }, rot = { x = 0.000, y = 39.040, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
	-- 玩法范围
	{ config_id = 316008, shape = RegionShape.POLYGON, pos = { x = -1340.025, y = 46.630, z = 5134.750 }, height = 94.316, point_array = { { x = -1364.840, y = 4972.935 }, { x = -1437.869, y = 5140.855 }, { x = -1442.097, y = 5267.051 }, { x = -1408.464, y = 5309.808 }, { x = -1348.351, y = 5332.361 }, { x = -1342.256, y = 5312.950 }, { x = -1287.217, y = 5304.398 }, { x = -1310.291, y = 5231.374 }, { x = -1301.809, y = 5184.049 }, { x = -1262.095, y = 5133.463 }, { x = -1237.954, y = 5001.039 }, { x = -1300.838, y = 4937.149 }, { x = -1341.361, y = 4937.139 } }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 玩法范围
	{ config_id = 1316008, name = "ENTER_REGION_316008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 316003, gadget_id = 70290672, pos = { x = -1494.930, y = 59.557, z = 5213.168 }, rot = { x = 0.000, y = 20.681, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
		{ config_id = 316004, gadget_id = 70290672, pos = { x = -1271.941, y = 58.757, z = 5265.423 }, rot = { x = 358.062, y = 357.619, z = 8.687 }, level = 32, persistent = true, area_id = 32 }
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
		gadgets = { 316001, 316002, 316005 },
		regions = { 316008 },
		triggers = { "ENTER_REGION_316008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_4/WindBall"