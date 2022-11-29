-- 基础信息
local base_info = {
	group_id = 220134003
}

-- DEFS_MISCS
local        defs = {

        --连线形态
        patterns = 
        {
                --形态1
                [1] = 
                {
                       	[3001] = 3006,
                        	[3002] = 3006,
		[3003] = 3002,
                                [3004] = 3002,
                                [3005] = 3004,
                                [3006] = 3004,
                },
                --形态2
                [2] = 
                {
                       	[35001] = 35003,
                        	[35002] = 35004,
		[35003] = 35004,
                                [35004] = 35006,
                                [35005] = 35001,
                                [35006] = 35001,
                },
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
	[3001] = { config_id = 3001, gadget_id = 70310179, pos = { x = 379.870, y = 672.500, z = -1653.564 }, rot = { x = 0.000, y = 15.407, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[3002] = { config_id = 3002, gadget_id = 70310179, pos = { x = 386.036, y = 672.500, z = -1654.554 }, rot = { x = 0.000, y = 15.407, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[3003] = { config_id = 3003, gadget_id = 70310179, pos = { x = 391.509, y = 672.500, z = -1657.192 }, rot = { x = 0.000, y = 15.407, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[3004] = { config_id = 3004, gadget_id = 70310179, pos = { x = 382.679, y = 672.500, z = -1648.391 }, rot = { x = 0.000, y = 15.407, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[3005] = { config_id = 3005, gadget_id = 70310454, pos = { x = 383.058, y = 672.500, z = -1643.721 }, rot = { x = 0.000, y = 15.407, z = 0.000 }, level = 1, state = GadgetState.GearAction2, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[3006] = { config_id = 3006, gadget_id = 70310179, pos = { x = 397.561, y = 672.500, z = -1643.844 }, rot = { x = 0.000, y = 15.407, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[3007] = { config_id = 3007, gadget_id = 70310389, pos = { x = 387.000, y = 672.500, z = -1648.800 }, rot = { x = 0.000, y = 15.407, z = 0.000 }, level = 1 }
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
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3006, 3007 },
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

require "V2_8/ConstellationPattern"