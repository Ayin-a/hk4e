-- 基础信息
local base_info = {
	group_id = 199003142
}

-- DEFS_MISCS
local        defs = {
	is_movable = 1,
	--连线形态
	patterns = 
	{
			--形态1
			[1] = {
				[142001] = {connect =0 , point_array = 900300033, point_id = {1}} ,
			[142002] = {connect =0 , point_array = 900300033, point_id = {2}} ,
			[142003] = {connect =0 , point_array = 900300033, point_id = {3}} ,
			[142004] = {connect =0, point_array = 900300033, point_id = {4}} ,
			[142005] = {connect =0, point_array = 900300033, point_id = {5}} ,
			[142006] = {connect =0, point_array = 900300033, point_id = {6}} ,
			[142007] = {connect =0, point_array = 900300033, point_id = {7}} ,
			[142008] = {connect =0, point_array = 900300033, point_id = {8}} ,
			[142009] = {connect =0 , point_array = 900300033, point_id = {9}} ,
			[142010] = {connect =0 , point_array = 900300033, point_id = {10}} ,
			[142011] = {connect =0, point_array = 900300033, point_id = {11}} ,
			[142012] = {connect =0 , point_array = 900300033, point_id = {12}} ,
			[142013] = {connect =0 , point_array = 900300033, point_id = {13}} ,
			},
			--形态2
			[2] = 
			{[142001] = {connect=0 ,point_array = 900300033, point_id = {1}} ,
			[142002] = {connect =0 ,point_array = 900300033, point_id = {2}} ,
			[142003] = {connect =0 ,point_array = 900300033, point_id = {3}} ,
			[142004] = {connect =0, point_array = 900300033, point_id = {4}} ,
			[142005] = {connect =0, point_array = 900300033, point_id = {5}} ,
			[142006] = {connect =0 ,point_array = 900300033, point_id = {6}} ,
			[142007] = {connect =0, point_array = 900300033, point_id = {7}} ,
			[142008] = {connect =0, point_array = 900300033, point_id = {8}} ,
			[142009] = {connect =0 ,point_array = 900300033, point_id = {9}} ,
			[142010] = {connect =0 ,point_array = 900300033, point_id = {10}} ,
			[142011] = {connect =0 ,point_array = 900300033, point_id = {11}} ,
			[142012] = {connect =0 ,point_array = 900300033, point_id = {12}} ,
			[142013] = {connect =0 ,point_array = 900300033, point_id = {13}} ,
			},
            [3] = 
			{[142001] = {connect=142002 ,point_array = 900300033, point_id = {1}} ,
			[142002] = {connect =142005 ,point_array = 900300033, point_id = {2}} ,
			[142003] = {connect =142005 ,point_array = 900300033, point_id = {3}} ,
			[142004] = {connect =142006, point_array = 900300033, point_id = {4}} ,
			[142005] = {connect =142006, point_array = 900300033, point_id = {5}} ,
			[142006] = {connect =142008 ,point_array = 900300033, point_id = {6}} ,
			[142007] = {connect =142009, point_array = 900300033, point_id = {7}} ,
			[142008] = {connect =142007, point_array = 900300033, point_id = {8}} ,
			[142009] = {connect =142003 ,point_array = 900300033, point_id = {9}} ,
			[142010] = {connect =142007 ,point_array = 900300033, point_id = {10}} ,
			[142011] = {connect =142003 ,point_array = 900300033, point_id = {11}} ,
			[142012] = {connect =142002 ,point_array = 900300033, point_id = {12}} ,
			[142013] = {connect =142001 ,point_array = 900300033, point_id = {13}} ,
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
	[142001] = { config_id = 142001, gadget_id = 70310474, pos = { x = -867.851, y = 379.267, z = -92.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[142002] = { config_id = 142002, gadget_id = 70310474, pos = { x = -867.851, y = 379.267, z = -115.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[142003] = { config_id = 142003, gadget_id = 70310474, pos = { x = -867.851, y = 379.267, z = -78.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[142004] = { config_id = 142004, gadget_id = 70310474, pos = { x = -867.851, y = 367.277, z = -146.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[142005] = { config_id = 142005, gadget_id = 70310474, pos = { x = -867.851, y = 357.218, z = -95.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[142006] = { config_id = 142006, gadget_id = 70310474, pos = { x = -867.851, y = 367.762, z = -146.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[142007] = { config_id = 142007, gadget_id = 70310474, pos = { x = -867.851, y = 337.119, z = -77.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[142008] = { config_id = 142008, gadget_id = 70310474, pos = { x = -867.851, y = 338.026, z = -109.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[142009] = { config_id = 142009, gadget_id = 70310474, pos = { x = -867.851, y = 359.486, z = -76.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 5
	[142010] = { config_id = 142010, gadget_id = 70310474, pos = { x = -867.851, y = 345.049, z = -108.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 2
	[142011] = { config_id = 142011, gadget_id = 70310474, pos = { x = -867.851, y = 365.666, z = -115.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 4
	[142012] = { config_id = 142012, gadget_id = 70310474, pos = { x = -867.851, y = 372.981, z = -122.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 4--
	[142013] = { config_id = 142013, gadget_id = 70310474, pos = { x = -867.851, y = 356.902, z = -133.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1142014, name = "PLATFORM_REACH_POINT_142014", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_142014", action = "action_EVENT_PLATFORM_REACH_POINT_142014", trigger_count = 0 }
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
		gadgets = { 142001, 142002, 142003, 142004, 142005, 142006, 142007, 142008, 142009, 142010, 142011, 142012, 142013 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_142014" },
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
function condition_EVENT_PLATFORM_REACH_POINT_142014(context, evt)
	-- 判断是gadgetid 为 142001的移动平台，是否到达了900300033 的点集中的 1 点
	
	if 142001 ~= evt.param1 then
	  return false
	end
	
	if 900300033 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_142014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003142, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"