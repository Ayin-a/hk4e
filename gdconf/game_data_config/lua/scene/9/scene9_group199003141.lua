-- 基础信息
local base_info = {
	group_id = 199003141
}

-- DEFS_MISCS
local        defs = {
	is_movable = 1,
	--连线形态
	patterns = 
	{
			--形态1
			[1] = {
				[141001] = {connect =0 , point_array = 900300032, point_id = {1}} ,
			[141002] = {connect =0 , point_array = 900300032, point_id = {2}} ,
			[141003] = {connect =0 , point_array = 900300032, point_id = {3}} ,
			[141004] = {connect =0, point_array = 900300032, point_id = {4}} ,
			[141005] = {connect =0, point_array = 900300032, point_id = {5}} ,
			[141006] = {connect =0, point_array = 900300032, point_id = {6}} ,
			[141007] = {connect =0, point_array = 900300032, point_id = {7}} ,
			[141008] = {connect =0, point_array = 900300032, point_id = {8}} ,
			[141009] = {connect =0 , point_array = 900300032, point_id = {9}} ,
			[141010] = {connect =0 , point_array = 900300032, point_id = {10}} ,
			[141011] = {connect =0, point_array = 900300032, point_id = {11}} ,
			[141012] = {connect =0 , point_array = 900300032, point_id = {12}} ,
			[141013] = {connect =0 , point_array = 900300032, point_id = {13}} ,
			},
			--形态2
			[2] = 
			{[141001] = {connect=0 ,point_array = 900300032, point_id = {1}} ,
			[141002] = {connect =0 ,point_array = 900300032, point_id = {2}} ,
			[141003] = {connect =0 ,point_array = 900300032, point_id = {3}} ,
			[141004] = {connect =0, point_array = 900300032, point_id = {4}} ,
			[141005] = {connect =0, point_array = 900300032, point_id = {5}} ,
			[141006] = {connect =0 ,point_array = 900300032, point_id = {6}} ,
			[141007] = {connect =0, point_array = 900300032, point_id = {7}} ,
			[141008] = {connect =0, point_array = 900300032, point_id = {8}} ,
			[141009] = {connect =0 ,point_array = 900300032, point_id = {9}} ,
			[141010] = {connect =0 ,point_array = 900300032, point_id = {10}} ,
			[141011] = {connect =0 ,point_array = 900300032, point_id = {11}} ,
			[141012] = {connect =0 ,point_array = 900300032, point_id = {12}} ,
			[141013] = {connect =0 ,point_array = 900300032, point_id = {13}} ,
			},

            [3] = 
			{[141001] = {connect=141003 ,point_array = 900300032, point_id = {1}} ,
			[141002] = {connect =141010 ,point_array = 900300032, point_id = {2}} ,
			[141003] = {connect =141004 ,point_array = 900300032, point_id = {3}} ,
			[141004] = {connect =141005, point_array = 900300032, point_id = {4}} ,
			[141005] = {connect =141006, point_array = 900300032, point_id = {5}} ,
			[141006] = {connect =141007 ,point_array = 900300032, point_id = {6}} ,
			[141007] = {connect =141008, point_array = 900300032, point_id = {7}} ,
			[141008] = {connect =141009, point_array = 900300032, point_id = {8}} ,
			[141009] = {connect =141010 ,point_array = 900300032, point_id = {9}} ,
			[141010] = {connect =141007 ,point_array = 900300032, point_id = {10}} ,
			[141011] = {connect =141006 ,point_array = 900300032, point_id = {11}} ,
			[141012] = {connect =141006 ,point_array = 900300032, point_id = {12}} ,
			[141013] = {connect =141001 ,point_array = 900300032, point_id = {13}} ,
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
	[141001] = { config_id = 141001, gadget_id = 70310474, pos = { x = -867.239, y = 372.181, z = -132.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[141002] = { config_id = 141002, gadget_id = 70310474, pos = { x = -867.239, y = 372.866, z = -159.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[141003] = { config_id = 141003, gadget_id = 70310474, pos = { x = -867.239, y = 342.573, z = -92.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[141004] = { config_id = 141004, gadget_id = 70310474, pos = { x = -867.239, y = 368.440, z = -96.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[141005] = { config_id = 141005, gadget_id = 70310474, pos = { x = -867.239, y = 368.440, z = -73.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[141006] = { config_id = 141006, gadget_id = 70310474, pos = { x = -867.239, y = 358.988, z = -73.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[141007] = { config_id = 141007, gadget_id = 70310474, pos = { x = -867.239, y = 334.101, z = -73.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[141008] = { config_id = 141008, gadget_id = 70310474, pos = { x = -867.239, y = 334.101, z = -111.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[141009] = { config_id = 141009, gadget_id = 70310474, pos = { x = -867.239, y = 330.802, z = -159.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[141010] = { config_id = 141010, gadget_id = 70310474, pos = { x = -867.239, y = 345.939, z = -111.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 10
	[141011] = { config_id = 141011, gadget_id = 70310474, pos = { x = -867.239, y = 345.855, z = -111.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 4
	[141012] = { config_id = 141012, gadget_id = 70310474, pos = { x = -867.239, y = 368.440, z = -96.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- --
	[141013] = { config_id = 141013, gadget_id = 70310474, pos = { x = -867.239, y = 351.843, z = -127.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1141014, name = "PLATFORM_REACH_POINT_141014", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_141014", action = "action_EVENT_PLATFORM_REACH_POINT_141014", trigger_count = 0 }
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
		gadgets = { 141001, 141002, 141003, 141004, 141005, 141006, 141007, 141008, 141009, 141010, 141011, 141012, 141013 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_141014" },
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
function condition_EVENT_PLATFORM_REACH_POINT_141014(context, evt)
	-- 判断是gadgetid 为 141001的移动平台，是否到达了900300032 的点集中的 1 点
	
	if 141001 ~= evt.param1 then
	  return false
	end
	
	if 900300032 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_141014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003141, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"