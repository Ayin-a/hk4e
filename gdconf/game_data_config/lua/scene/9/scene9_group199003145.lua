-- 基础信息
local base_info = {
	group_id = 199003145
}

-- DEFS_MISCS
local        defs = {
	is_movable = 1,
	--连线形态
	patterns = 
	{
			--形态1
			[1] = {
				[145001] = {connect =0 , point_array = 900300036, point_id = {1}} ,
			[145002] = {connect =0 , point_array = 900300036, point_id = {2}} ,
			[145003] = {connect =0 , point_array = 900300036, point_id = {3}} ,
			[145004] = {connect =0, point_array = 900300036, point_id = {4}} ,
			[145005] = {connect =0, point_array = 900300036, point_id = {5}} ,
			[145006] = {connect =0, point_array = 900300036, point_id = {6}} ,
			[145007] = {connect =0, point_array = 900300036, point_id = {7}} ,
			[145008] = {connect =0, point_array = 900300036, point_id = {8}} ,
			[145009] = {connect =0 , point_array = 900300036, point_id = {9}} ,
			[145010] = {connect =0 , point_array = 900300036, point_id = {10}} ,
			[145011] = {connect =0 , point_array = 900300036, point_id = {11}} ,
[145013] = {connect =0 , point_array = 900300036, point_id = {12}} ,
			},
			--形态2
			[2] = 
			{[145001] = {connect=0 ,point_array = 900300036, point_id = {1}} ,
			[145002] = {connect =0 ,point_array = 900300036, point_id = {2}} ,
			[145003] = {connect =0 ,point_array = 900300036, point_id = {3}} ,
			[145004] = {connect =0, point_array = 900300036, point_id = {4}} ,
			[145005] = {connect =0, point_array = 900300036, point_id = {5}} ,
			[145006] = {connect =0 ,point_array = 900300036, point_id = {6}} ,
			[145007] = {connect =0, point_array = 900300036, point_id = {7}} ,
			[145008] = {connect =0, point_array = 900300036, point_id = {8}} ,
			[145009] = {connect =0 ,point_array = 900300036, point_id = {9}} ,
			[145010] = {connect =0,point_array = 900300036, point_id = {10}} ,
			[145011] = {connect =0 , point_array = 900300036, point_id = {11}} ,
[145013] = {connect =0 , point_array = 900300036, point_id = {12}} ,
			
			},

            [3] = 
			{[145001] = {connect=145002 ,point_array = 900300036, point_id = {1}} ,
			[145002] = {connect =145003 ,point_array = 900300036, point_id = {2}} ,
			[145003] = {connect =145007 ,point_array = 900300036, point_id = {3}} ,
			[145004] = {connect =145001, point_array = 900300036, point_id = {4}} ,
			[145005] = {connect =145004, point_array = 900300036, point_id = {5}} ,
			[145006] = {connect =145005 ,point_array = 900300036, point_id = {6}} ,
			[145007] = {connect =145006, point_array = 900300036, point_id = {7}} ,
			[145008] = {connect =145001, point_array = 900300036, point_id = {8}} ,
			[145009] = {connect =145005 ,point_array = 900300036, point_id = {9}} ,
			[145010] = {connect =145004 ,point_array = 900300036, point_id = {10}} ,
			[145011] = {connect =145003 , point_array = 900300036, point_id = {11}} ,
[145013] = {connect =0 , point_array = 900300036, point_id = {12}} ,
			
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
	[145001] = { config_id = 145001, gadget_id = 70310474, pos = { x = -881.815, y = 347.196, z = -186.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[145002] = { config_id = 145002, gadget_id = 70310474, pos = { x = -881.815, y = 346.972, z = -143.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[145003] = { config_id = 145003, gadget_id = 70310474, pos = { x = -881.815, y = 361.626, z = -158.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[145004] = { config_id = 145004, gadget_id = 70310474, pos = { x = -881.815, y = 362.391, z = -183.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[145005] = { config_id = 145005, gadget_id = 70310474, pos = { x = -881.815, y = 374.260, z = -180.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[145006] = { config_id = 145006, gadget_id = 70310474, pos = { x = -881.815, y = 382.500, z = -170.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[145007] = { config_id = 145007, gadget_id = 70310474, pos = { x = -881.815, y = 371.460, z = -163.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[145008] = { config_id = 145008, gadget_id = 70310474, pos = { x = -881.815, y = 361.415, z = -158.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 3
	[145009] = { config_id = 145009, gadget_id = 70310474, pos = { x = -881.815, y = 355.852, z = -169.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 8
	[145010] = { config_id = 145010, gadget_id = 70310474, pos = { x = -881.815, y = 361.415, z = -169.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 8
	[145011] = { config_id = 145011, gadget_id = 70310474, pos = { x = -881.815, y = 372.556, z = -158.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- -
	[145013] = { config_id = 145013, gadget_id = 70310474, pos = { x = -863.796, y = 346.972, z = -154.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1145012, name = "PLATFORM_REACH_POINT_145012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_145012", action = "action_EVENT_PLATFORM_REACH_POINT_145012", trigger_count = 0 }
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
		gadgets = { 145001, 145002, 145003, 145004, 145005, 145006, 145007, 145008, 145009, 145010, 145011, 145013 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_145012" },
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
function condition_EVENT_PLATFORM_REACH_POINT_145012(context, evt)
	-- 判断是gadgetid 为 145001的移动平台，是否到达了900300036 的点集中的 1 点
	
	if 145001 ~= evt.param1 then
	  return false
	end
	
	if 900300036 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_145012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003145, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"