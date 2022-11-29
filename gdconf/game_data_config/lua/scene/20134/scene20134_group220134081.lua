-- 基础信息
local base_info = {
	group_id = 220134081
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
                            [81001] = {connect =81004 , point_array = 91, point_id = {1}} ,
                        [81002] = {connect =81001 , point_array = 92, point_id = {1}} ,
                        [81003] = {connect =81005 , point_array = 98, point_id = {1}} ,
                        [81004] = {connect =0 , point_array = 99, point_id = {1}} ,
                        [81005] = {connect =81003 , point_array = 94, point_id = {1}} ,
                        [81006] = {connect =0, point_array = 90, point_id = {1}} ,
                        [81007] = {connect =0 , point_array = 95, point_id = {1}} ,
                        },
                        --parta1
                        [2] = 
                        {
                        [81001] = {connect =81002 , point_array =91, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
                        [81002] = {connect =81003 , point_array = 92, point_id = {4,5,6,7,8,9,10,11,12,3}},
                        [81003] = {connect =81004 , point_array = 98, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
                        [81004] = {connect =0 , point_array = 99, point_id = {4,5,6,7,8,9,10,11,12,3}},
                        [81005] = {connect =81002 , point_array = 94, point_id = {1}} ,
                        [81006] = {connect =0, point_array = 90, point_id = {1}} ,
                        [81007] = {connect =0 , point_array = 95, point_id = {1}} ,
                        },
    
                                            --parta2
                        [3] = 
                        {
                            [81001] = {connect =81002 , point_array =91, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
                            [81002] = {connect =81003 , point_array = 92, point_id = {4,5,6,7,8,9,10,11,12,1}},
                            [81003] = {connect =81004 , point_array = 98, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
                            [81004] = {connect =0 , point_array = 99, point_id = {4,5,6,7,8,9,10,11,12,1}},
                            [81005] = {connect =81002 , point_array = 94, point_id = {1}} ,
                            [81006] = {connect =0, point_array = 90, point_id = {1}} ,
                            [81007] = {connect =0 , point_array = 95, point_id = {1}} ,
                        },	
                        [4] = 
                        {
                            [81001] = {connect =81002 , point_array =91, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
                            [81002] = {connect =81003 , point_array = 92, point_id = {4,5,6,7,8,9,10,11,12,2}},
                            [81003] = {connect =81004 , point_array = 98, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
                            [81004] = {connect =0 , point_array = 99, point_id = {4,5,6,7,8,9,10,11,12,2}},
                            [81005] = {connect =81002 , point_array = 94, point_id = {1}} ,
                            [81006] = {connect =0, point_array = 90, point_id = {1}} ,
                            [81007] = {connect =0 , point_array = 95, point_id = {1}} ,
                        },}}

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
	[81001] = { config_id = 81001, gadget_id = 70310231, pos = { x = 117.053, y = 660.557, z = -1854.165 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[81002] = { config_id = 81002, gadget_id = 70310455, pos = { x = 115.332, y = 663.360, z = -1849.191 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true },
	[81003] = { config_id = 81003, gadget_id = 70310231, pos = { x = 117.970, y = 665.931, z = -1851.622 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[81004] = { config_id = 81004, gadget_id = 70310231, pos = { x = 120.803, y = 668.438, z = -1854.422 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[81005] = { config_id = 81005, gadget_id = 70310231, pos = { x = 120.152, y = 675.648, z = -1847.889 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, state = GadgetState.GearAction1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[81006] = { config_id = 81006, gadget_id = 70310231, pos = { x = 122.465, y = 673.681, z = -1853.212 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, state = GadgetState.GearAction1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[81007] = { config_id = 81007, gadget_id = 70310231, pos = { x = 110.534, y = 664.926, z = -1840.054 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, state = GadgetState.GearAction1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER }
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
		gadgets = { 81001, 81002, 81003, 81004, 81005, 81006, 81007 },
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