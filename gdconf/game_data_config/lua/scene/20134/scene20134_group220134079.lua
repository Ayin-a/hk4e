-- 基础信息
local base_info = {
	group_id = 220134079
}

-- DEFS_MISCS
local        defs = {

    is_movable = 1,
    reset_onload=1,
                --连线形态
                patterns = 
                {
                    
                        --形态1
                        [1] = 
                        {
                            [79001] = {connect =79002 , point_array = 89, point_id = {1}} ,
                        [79002] = {connect =79003 , point_array = 90, point_id = {1}} ,
                        [79003] = {connect =79004 , point_array =  102, point_id = {1}} ,
                        [79004] = {connect = 0, point_array = 97, point_id = {1}} ,
                        [79005] = {connect =0 , point_array = 91, point_id = {1}} ,
    [79006] = {connect =79001 , point_array = 99, point_id = {1}} ,
                        
                        },
                        --parta1
                        [2] = 
                        {
                        [79001] = {connect =79002 , point_array = 89, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
                        [79002] = {connect =79005 , point_array = 90, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
                        [79003] = {connect =79004 , point_array = 102, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
                        [79004] = {connect =0 , point_array = 0, point_id = {0}} ,
                        [79005] = {connect =0 , point_array = 0, point_id = {0}} ,
                        [79006] = {connect =79001 , point_array = 0, point_id = {0}} ,
                        
                        },
    
                                            --parta2
                        [3] = 
                        {
                            [79001] = {connect =79002 , point_array = 89, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
                            [79002] = {connect =79005 , point_array = 90, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
                            [79003] = {connect =79004 , point_array = 102, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
                            [79004] = {connect =0 , point_array = 0, point_id = {0}} ,
                            [79005] = {connect =0 , point_array = 0, point_id = {0}} ,
                            [79006] = {connect =79001 , point_array = 0, point_id = {0}} ,
                            
                        },	
                        [4] = 
                        {
                            [79001] = {connect =79002 , point_array = 89, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
                            [79002] = {connect =79005 , point_array = 90, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
                            [79003] = {connect =79004 , point_array = 102, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
                            [79004] = {connect =0 , point_array = 0, point_id = {0}} ,
                            [79005] = {connect =0 , point_array = 0, point_id = {0}} ,
                            [79006] = {connect =79001 , point_array = 0, point_id = {0}} ,
                        },	
                    }}

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
	[79001] = { config_id = 79001, gadget_id = 70310231, pos = { x = 134.283, y = 681.489, z = -1866.900 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[79002] = { config_id = 79002, gadget_id = 70310455, pos = { x = 130.535, y = 674.975, z = -1865.613 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true },
	[79003] = { config_id = 79003, gadget_id = 70310231, pos = { x = 134.283, y = 681.489, z = -1866.900 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[79004] = { config_id = 79004, gadget_id = 70310231, pos = { x = 122.465, y = 673.681, z = -1853.212 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, state = GadgetState.GearAction1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[79005] = { config_id = 79005, gadget_id = 70310231, pos = { x = 117.053, y = 660.557, z = -1854.165 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, state = GadgetState.GearAction1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[79006] = { config_id = 79006, gadget_id = 70310231, pos = { x = 121.038, y = 668.431, z = -1854.272 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, state = GadgetState.GearAction1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER }
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
		gadgets = { 79001, 79002, 79003, 79004, 79005, 79006 },
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