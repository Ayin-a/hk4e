-- 基础信息
local base_info = {
	group_id = 220134080
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
                            [80001] = {connect =80002 , point_array = 94, point_id = {1}} ,
                        [80002] = {connect =80005 , point_array = 95, point_id = {1}} ,
                        [80003] = {connect =80002 , point_array = 96, point_id = {1}} ,
                        [80004] = {connect =0 , point_array = 97, point_id = {1}} ,
                        [80005] = {connect =0 , point_array = 99, point_id = {1}} ,
                        [80006] = {connect =80002 , point_array = 98, point_id = {1}} ,
        
                        },
                        --parta1
                        [2] = 
                        {
                            [80001] = {connect =80002 , point_array = 94, point_id = {4,5,6,7,8,9,10,11,12,1}}  ,
                            [80002] = {connect =80003 , point_array = 95, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
                            [80003] = {connect =80004 , point_array = 96, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
                            [80004] = {connect =80005 , point_array = 97, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
                            [80005] = {connect =0 , point_array = 99, point_id = {1}} ,
                            [80006] = {connect =80002 , point_array = 98, point_id = {1}} ,
                        },
    
                                            --parta2
                        [3] = 
                        {
                            [80001] = {connect =80002 , point_array = 94, point_id = {4,5,6,7,8,9,10,11,12,2}}  ,
                            [80002] = {connect =80003 , point_array = 95, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
                            [80003] = {connect =80004 , point_array = 96, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
                            [80004] = {connect =80005 , point_array = 97, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
                            [80005] = {connect =0 , point_array = 99, point_id = {1}} ,
                            [80006] = {connect =80002 , point_array = 98, point_id = {1}} ,
                        },	
                        [4] = 
                        {
                            [80001] = {connect =80002 , point_array = 94, point_id = {4,5,6,7,8,9,10,11,12,3}}  ,
                            [80002] = {connect =80003 , point_array = 95, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
                            [80003] = {connect =80004 , point_array = 96, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
                            [80004] = {connect =80005 , point_array = 97, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
                            [80005] = {connect =0 , point_array = 99, point_id = {1}} ,
                            [80006] = {connect =80002 , point_array = 98, point_id = {1}} ,
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
	[80001] = { config_id = 80001, gadget_id = 70310455, pos = { x = 118.385, y = 676.258, z = -1848.067 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true },
	[80002] = { config_id = 80002, gadget_id = 70310231, pos = { x = 120.151, y = 672.955, z = -1849.925 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[80003] = { config_id = 80003, gadget_id = 70310231, pos = { x = 123.075, y = 676.412, z = -1852.157 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[80004] = { config_id = 80004, gadget_id = 70310231, pos = { x = 122.465, y = 673.681, z = -1853.212 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[80005] = { config_id = 80005, gadget_id = 70310231, pos = { x = 120.803, y = 668.438, z = -1854.422 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, state = GadgetState.GearAction1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[80006] = { config_id = 80006, gadget_id = 70310231, pos = { x = 117.970, y = 665.931, z = -1851.622 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, state = GadgetState.GearAction1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER }
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
		gadgets = { 80001, 80002, 80003, 80004, 80005, 80006 },
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