-- 基础信息
local base_info = {
	group_id = 199003143
}

-- DEFS_MISCS
local        defs = {
	is_movable = 1,
	--连线形态
	patterns = 
	{
			--形态1
			[1] = {
				[143001] = {connect =0 , point_array = 900300034, point_id = {1}} ,
			[143002] = {connect =0 , point_array = 900300034, point_id = {2}} ,
			[143003] = {connect =0 , point_array = 900300034, point_id = {3}} ,
			[143004] = {connect =0, point_array = 900300034, point_id = {4}} ,
			[143005] = {connect =0, point_array = 900300034, point_id = {5}} ,
			[143006] = {connect =0, point_array = 900300034, point_id = {6}} ,
			[143007] = {connect =0, point_array = 900300034, point_id = {7}} ,
			[143008] = {connect =0, point_array = 900300034, point_id = {8}} ,
			[143009] = {connect =0 , point_array = 900300034, point_id = {9}} ,
			[143010] = {connect =0 , point_array = 900300034, point_id = {10}} ,
			[143011] = {connect =0, point_array = 900300034, point_id = {11}} ,
			[143012] = {connect =0 , point_array = 900300034, point_id = {12}} ,
			[143013] = {connect =0 , point_array = 900300034, point_id = {13}} ,
			[143014] = {connect =0, point_array = 900300034, point_id = {14}} ,
			[143015] = {connect =0, point_array = 900300034, point_id = {15}} ,
			[143016] = {connect =0, point_array = 900300034, point_id = {16}} ,
			[143017] = {connect =0 , point_array = 900300034, point_id = {17}} ,
			[143018] = {connect =0 , point_array = 900300034, point_id = {18}} ,
			[143019] = {connect =0, point_array = 900300034, point_id = {19}} ,
			[143020] = {connect =0 , point_array = 900300034, point_id = {20}} ,
			[143021] = {connect =0 , point_array = 900300034, point_id = {21}} ,
			[143022] = {connect =0 , point_array = 900300034, point_id = {22}} ,
			},
			--形态2
			[2] = 
			{[143001] = {connect=0 ,point_array = 900300034, point_id = {1}} ,
			[143002] = {connect =0 ,point_array = 900300034, point_id = {2}} ,
			[143003] = {connect =0 ,point_array = 900300034, point_id = {3}} ,
			[143004] = {connect =0, point_array = 900300034, point_id = {4}} ,
			[143005] = {connect =0, point_array = 900300034, point_id = {5}} ,
			[143006] = {connect =0 ,point_array = 900300034, point_id = {6}} ,
			[143007] = {connect =0, point_array = 900300034, point_id = {7}} ,
			[143008] = {connect =0, point_array = 900300034, point_id = {8}} ,
			[143009] = {connect =0 ,point_array = 900300034, point_id = {9}} ,
			[143010] = {connect =0 ,point_array = 900300034, point_id = {10}} ,
			[143011] = {connect =0 ,point_array = 900300034, point_id = {11}} ,
			[143012] = {connect =0 ,point_array = 900300034, point_id = {12}} ,
			[143013] = {connect =0 ,point_array = 900300034, point_id = {13}} ,
			[143014] = {connect =0 ,point_array = 900300034, point_id = {14}} ,
			[143015] = {connect =0, point_array = 900300034, point_id = {15}} ,
			[143016] = {connect =0, point_array = 900300034, point_id = {16}} ,
			[143017] = {connect =0 ,point_array = 900300034, point_id = {17}} ,
			[143018] = {connect =0 ,point_array = 900300034, point_id = {18}} ,
			[143019] = {connect =0 ,point_array = 900300034, point_id = {19}} ,
			[143020] = {connect =0 ,point_array = 900300034, point_id = {20}} ,
			[143021] = {connect =0 ,point_array = 900300034, point_id = {21}} ,
			[143022] = {connect =0,point_array = 900300034, point_id = {22}} ,
			},
            [3] = 
			{[143001] = {connect=143010 ,point_array = 900300034, point_id = {1}} ,
			[143002] = {connect =143012 ,point_array = 900300034, point_id = {2}} ,
			[143003] = {connect =143011 ,point_array = 900300034, point_id = {3}} ,
			[143004] = {connect =143005, point_array = 900300034, point_id = {4}} ,
			[143005] = {connect =143001, point_array = 900300034, point_id = {5}} ,
			[143006] = {connect =143004 ,point_array = 900300034, point_id = {6}} ,
			[143007] = {connect =143004, point_array = 900300034, point_id = {7}} ,
			[143008] = {connect =143007, point_array = 900300034, point_id = {8}} ,
			[143009] = {connect =143008 ,point_array = 900300034, point_id = {9}} ,
			[143010] = {connect =143009 ,point_array = 900300034, point_id = {10}} ,
			[143011] = {connect =143003 ,point_array = 900300034, point_id = {11}} ,
			[143012] = {connect =143003 ,point_array = 900300034, point_id = {12}} ,
			[143013] = {connect =143012 ,point_array = 900300034, point_id = {13}} ,
			[143014] = {connect =143010 ,point_array = 900300034, point_id = {14}} ,
			[143015] = {connect =143014, point_array = 900300034, point_id = {15}} ,
			[143016] = {connect =143012, point_array = 900300034, point_id = {16}} ,
			[143017] = {connect =143007 ,point_array = 900300034, point_id = {17}} ,
			[143018] = {connect =143008 ,point_array = 900300034, point_id = {18}} ,
			[143019] = {connect =143010 ,point_array = 900300034, point_id = {19}} ,
			[143020] = {connect =143005 ,point_array = 900300034, point_id = {20}} ,
			[143021] = {connect =143009 ,point_array = 900300034, point_id = {21}} ,
			[143022] = {connect =143013 ,point_array = 900300034, point_id = {22}} ,
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
	[143001] = { config_id = 143001, gadget_id = 70310474, pos = { x = -879.517, y = 351.049, z = -122.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143002] = { config_id = 143002, gadget_id = 70310474, pos = { x = -879.517, y = 351.049, z = -86.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143003] = { config_id = 143003, gadget_id = 70310474, pos = { x = -879.517, y = 351.049, z = -49.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143004] = { config_id = 143004, gadget_id = 70310474, pos = { x = -879.517, y = 351.049, z = -158.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143005] = { config_id = 143005, gadget_id = 70310474, pos = { x = -879.517, y = 369.932, z = -140.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143006] = { config_id = 143006, gadget_id = 70310474, pos = { x = -879.517, y = 384.211, z = -145.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143007] = { config_id = 143007, gadget_id = 70310474, pos = { x = -879.517, y = 411.532, z = -148.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143008] = { config_id = 143008, gadget_id = 70310474, pos = { x = -879.517, y = 401.256, z = -123.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143009] = { config_id = 143009, gadget_id = 70310474, pos = { x = -879.517, y = 401.304, z = -123.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143010] = { config_id = 143010, gadget_id = 70310474, pos = { x = -879.517, y = 364.083, z = -106.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143011] = { config_id = 143011, gadget_id = 70310474, pos = { x = -879.517, y = 360.017, z = -77.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143012] = { config_id = 143012, gadget_id = 70310474, pos = { x = -879.517, y = 386.287, z = -53.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143013] = { config_id = 143013, gadget_id = 70310474, pos = { x = -879.517, y = 386.287, z = -77.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143014] = { config_id = 143014, gadget_id = 70310474, pos = { x = -879.517, y = 375.230, z = -97.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143015] = { config_id = 143015, gadget_id = 70310474, pos = { x = -879.517, y = 411.532, z = -104.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[143016] = { config_id = 143016, gadget_id = 70310474, pos = { x = -879.517, y = 411.509, z = -55.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 6
	[143017] = { config_id = 143017, gadget_id = 70310474, pos = { x = -879.517, y = 372.686, z = -145.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 6
	[143018] = { config_id = 143018, gadget_id = 70310474, pos = { x = -879.517, y = 384.211, z = -130.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 6
	[143019] = { config_id = 143019, gadget_id = 70310474, pos = { x = -879.517, y = 388.219, z = -136.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 6
	[143020] = { config_id = 143020, gadget_id = 70310474, pos = { x = -879.517, y = 384.211, z = -88.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 15
	[143021] = { config_id = 143021, gadget_id = 70310474, pos = { x = -879.517, y = 368.723, z = -72.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 15--
	[143022] = { config_id = 143022, gadget_id = 70310474, pos = { x = -879.517, y = 375.918, z = -78.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1143023, name = "PLATFORM_REACH_POINT_143023", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_143023", action = "action_EVENT_PLATFORM_REACH_POINT_143023", trigger_count = 0 }
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
		gadgets = { 143001, 143002, 143003, 143004, 143005, 143006, 143007, 143008, 143009, 143010, 143011, 143012, 143013, 143014, 143015, 143016, 143017, 143018, 143019, 143020, 143021, 143022 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_143023" },
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

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_143023(context, evt)
	-- 判断是gadgetid 为 143001的移动平台，是否到达了900300034 的点集中的 1 点
	
	if 143001 ~= evt.param1 then
	  return false
	end
	
	if 900300034 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_143023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003143, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"