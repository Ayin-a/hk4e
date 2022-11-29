-- 基础信息
local base_info = {
	group_id = 220134009
}

-- DEFS_MISCS
local        defs = {

        --连线形态
        patterns = 
        {
                --形态1
                [1] = 
                {
                       	[9001] = 9002,
                        	[9002] = 9004,
		[9003] = 9001,
                                [9004] = 9005,
                                [9005] = 9003,
                                [9006] = 9002,
                                [9007] = 9003,
                                [9008] = 9007,
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
	[9001] = { config_id = 9001, gadget_id = 70310179, pos = { x = 600.648, y = 660.000, z = -1687.878 }, rot = { x = 0.000, y = 112.208, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[9002] = { config_id = 9002, gadget_id = 70310454, pos = { x = 596.497, y = 660.000, z = -1680.625 }, rot = { x = 0.000, y = 112.208, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[9003] = { config_id = 9003, gadget_id = 70310179, pos = { x = 591.963, y = 660.000, z = -1690.721 }, rot = { x = 0.000, y = 112.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[9004] = { config_id = 9004, gadget_id = 70310179, pos = { x = 592.034, y = 660.000, z = -1683.564 }, rot = { x = 0.000, y = 112.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[9005] = { config_id = 9005, gadget_id = 70310454, pos = { x = 595.614, y = 660.000, z = -1688.122 }, rot = { x = 0.000, y = 112.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[9006] = { config_id = 9006, gadget_id = 70310179, pos = { x = 588.456, y = 660.000, z = -1672.687 }, rot = { x = 0.000, y = 112.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[9007] = { config_id = 9007, gadget_id = 70310454, pos = { x = 581.835, y = 660.000, z = -1690.529 }, rot = { x = 0.000, y = 112.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[9008] = { config_id = 9008, gadget_id = 70310179, pos = { x = 588.456, y = 660.000, z = -1672.687 }, rot = { x = 0.000, y = 112.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[9009] = { config_id = 9009, gadget_id = 70310389, pos = { x = 590.416, y = 660.883, z = -1683.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 9001, 9002, 9003, 9004, 9005, 9006, 9007, 9008, 9009 },
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