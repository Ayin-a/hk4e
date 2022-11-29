-- 基础信息
local base_info = {
	group_id = 220134082
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
                            [82001] = {connect =82002 , point_array = 93, point_id = {1}} ,
                        [82002] = {connect =82003 , point_array = 100, point_id = {1}} ,
                        [82003] = {connect =82004 , point_array = 101, point_id = {1}} ,
                        [82004] = {connect =0 , point_array = 92, point_id = {1}} ,
            
                        
                        },
                        --parta1
                        [2] = 
                        {
                            [82001] = {connect =82004 , point_array =  93, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
                            [82002] = {connect =82001 , point_array =100, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
                            [82003] = {connect =82002 , point_array = 101, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
                            [82004] = {connect =0, point_array = 92, point_id = {1}} ,
            
                        },
    
                                            --parta2
                        [3] = 
                        {
                            [82001] = {connect =82004 , point_array =  93, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
                            [82002] = {connect =82001 , point_array =100, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
                            [82003] = {connect =82002 , point_array = 101, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
                            [82004] = {connect =0, point_array = 92, point_id = {1}} ,
                        
                        },	
                        [4] = 
                        {
                            [82001] = {connect =82004 , point_array =  93, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
                            [82002] = {connect =82001 , point_array =100, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
                            [82003] = {connect =82002 , point_array = 101, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
                            [82004] = {connect =0, point_array = 92, point_id = {1}} ,
                    
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
	[82001] = { config_id = 82001, gadget_id = 70310231, pos = { x = 111.928, y = 661.908, z = -1844.647 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[82002] = { config_id = 82002, gadget_id = 70310231, pos = { x = 110.534, y = 664.926, z = -1840.054 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[82003] = { config_id = 82003, gadget_id = 70310455, pos = { x = 113.730, y = 669.675, z = -1841.760 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true },
	[82004] = { config_id = 82004, gadget_id = 70310231, pos = { x = 115.332, y = 663.360, z = -1849.191 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, state = GadgetState.GearAction1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER }
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
		gadgets = { 82001, 82002, 82003, 82004 },
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