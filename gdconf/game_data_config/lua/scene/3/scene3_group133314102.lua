-- 基础信息
local base_info = {
	group_id = 133314102
}

-- Trigger变量
local defs = {
	challenge_id = 2012002,
	sandworm_region = 102002,
	direct_sandworm_id = 102003,
	attack_interval = 4,
	attack_times = 1,
	worktop_id = 102001,
	chest_id = 102004,
	airwall_id = 102010,
	challenge_time = 30,
	max_hit_times = 5
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
	{ config_id = 102001, gadget_id = 70350082, pos = { x = -1286.992, y = 59.010, z = 5241.311 }, rot = { x = 11.651, y = 332.832, z = 0.632 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 102003, gadget_id = 70290628, pos = { x = -1294.396, y = 58.234, z = 5240.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 102004, gadget_id = 70211001, pos = { x = -1273.370, y = 60.301, z = 5232.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 102010, gadget_id = 70310043, pos = { x = -1285.787, y = 59.124, z = 5241.775 }, rot = { x = 9.058, y = 7.257, z = 6.733 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	-- 挑战区域
	{ config_id = 102002, shape = RegionShape.POLYGON, pos = { x = -1284.501, y = 58.822, z = 5241.926 }, height = 48.535, point_array = { { x = -1282.141, y = 5225.168 }, { x = -1271.081, y = 5231.001 }, { x = -1266.581, y = 5241.364 }, { x = -1268.640, y = 5248.887 }, { x = -1279.339, y = 5258.683 }, { x = -1294.008, y = 5255.576 }, { x = -1301.226, y = 5247.320 }, { x = -1302.422, y = 5237.302 }, { x = -1297.403, y = 5227.514 } }, area_id = 32 }
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
		gadgets = { 102001 },
		regions = { 102002 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_4/SandwormChallengeControl"
require "V3_4/SandwormToolkit"
require "V3_4/SandwormChallenge_DodgeChallenge"