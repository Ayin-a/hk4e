-- 基础信息
local base_info = {
	group_id = 220134060
}

-- DEFS_MISCS
local        defs = {

        --连线形态
        patterns = 
        {
                --形态1
                [1] = 
                {
                       	[60001] = 60002,
                        	[60002] = 60003,
		[60003] = 60004,
                                [60004] = 60005,
                                [60005] = 60006,
                                [60006] = 60007,
                                [60007] = 60008,
                                [60008] = 60001,
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
	[60001] = { config_id = 60001, gadget_id = 70310179, pos = { x = 659.016, y = 628.346, z = -1691.622 }, rot = { x = 0.000, y = 34.550, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[60002] = { config_id = 60002, gadget_id = 70310179, pos = { x = 657.862, y = 629.188, z = -1691.143 }, rot = { x = 0.000, y = 34.550, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[60003] = { config_id = 60003, gadget_id = 70310179, pos = { x = 656.120, y = 628.501, z = -1689.943 }, rot = { x = 0.000, y = 34.550, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[60004] = { config_id = 60004, gadget_id = 70310179, pos = { x = 655.262, y = 629.068, z = -1689.352 }, rot = { x = 0.000, y = 34.550, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[60005] = { config_id = 60005, gadget_id = 70310179, pos = { x = 653.140, y = 629.519, z = -1687.891 }, rot = { x = 0.000, y = 34.550, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[60006] = { config_id = 60006, gadget_id = 70310179, pos = { x = 653.779, y = 627.158, z = -1688.332 }, rot = { x = 0.000, y = 34.550, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[60007] = { config_id = 60007, gadget_id = 70310179, pos = { x = 655.579, y = 626.226, z = -1689.571 }, rot = { x = 0.000, y = 34.550, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[60008] = { config_id = 60008, gadget_id = 70310179, pos = { x = 657.203, y = 626.133, z = -1690.689 }, rot = { x = 0.000, y = 34.550, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER }
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
	suite = 2,
	end_suite = 1,
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
		gadgets = { 60001, 60002, 60003, 60004, 60005, 60006, 60007, 60008 },
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

require "V2_8/ConstellationPattern"