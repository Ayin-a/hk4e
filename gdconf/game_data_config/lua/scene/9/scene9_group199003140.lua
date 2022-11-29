-- 基础信息
local base_info = {
	group_id = 199003140
}

-- DEFS_MISCS
local        defs = {
	is_movable = 1,
	--连线形态
	patterns = 
	{
			--形态1
			[1] = {
				[140001] = {connect =0 , point_array = 900300029, point_id = {1}} ,
			[140002] = {connect =0 , point_array = 900300029, point_id = {2}} ,
			[140003] = {connect =0 , point_array = 900300029, point_id = {3}} ,
			[140004] = {connect =0, point_array = 900300029, point_id = {4}} ,
			[140005] = {connect =0, point_array = 900300029, point_id = {5}} ,
			[140006] = {connect =0, point_array = 900300029, point_id = {6}} ,
			[140007] = {connect =0, point_array = 900300029, point_id = {7}} ,
			[140008] = {connect =0, point_array = 900300029, point_id = {8}} ,
			[140009] = {connect =0 , point_array = 900300029, point_id = {9}} ,
			[140010] = {connect =0 , point_array = 900300029, point_id = {9}} ,
			},
			--形态2
			[2] = 
			{		[140001] = {connect =0 , point_array = 900300031, point_id = {1}} ,
			[140002] = {connect =0 , point_array = 900300031, point_id = {2}} ,
			[140003] = {connect =0 , point_array = 900300031, point_id = {3}} ,
			[140004] = {connect =0, point_array = 900300031, point_id = {4}} ,
			[140005] = {connect =0, point_array = 900300031, point_id = {5}} ,
			[140006] = {connect =0 , point_array = 900300031, point_id = {6}} ,
			[140007] = {connect =0, point_array = 900300031, point_id = {7}} ,
			[140008] = {connect =0, point_array = 900300031, point_id = {8}} ,
			[140009] = {connect =0 , point_array = 900300031, point_id = {9}} ,
			[140010] = {connect =0 , point_array = 900300031, point_id = {10}} ,
			},
            [3] = 
			{		[140001] = {connect =140002 , point_array = 900300031, point_id = {1}} ,
			[140002] = {connect =140007 , point_array = 900300031, point_id = {2}} ,
			[140003] = {connect =140002 , point_array = 900300031, point_id = {3}} ,
			[140004] = {connect =140003, point_array = 900300031, point_id = {4}} ,
			[140005] = {connect =140004, point_array = 900300031, point_id = {5}} ,
			[140006] = {connect =140004 , point_array = 900300031, point_id = {6}} ,
			[140007] = {connect =140005, point_array = 900300031, point_id = {7}} ,
			[140008] = {connect =140006, point_array = 900300031, point_id = {8}} ,
			[140009] = {connect =140005 , point_array = 900300031, point_id = {9}} ,
			[140010] = {connect =140001 , point_array = 900300031, point_id = {10}} ,
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
	[140001] = { config_id = 140001, gadget_id = 70310474, pos = { x = -869.267, y = 402.881, z = -84.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[140002] = { config_id = 140002, gadget_id = 70310474, pos = { x = -869.267, y = 392.057, z = -70.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[140003] = { config_id = 140003, gadget_id = 70310474, pos = { x = -869.267, y = 364.550, z = -62.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[140004] = { config_id = 140004, gadget_id = 70310474, pos = { x = -869.267, y = 349.139, z = -33.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[140005] = { config_id = 140005, gadget_id = 70310474, pos = { x = -869.267, y = 341.148, z = -57.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[140006] = { config_id = 140006, gadget_id = 70310474, pos = { x = -869.267, y = 323.363, z = -36.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[140007] = { config_id = 140007, gadget_id = 70310474, pos = { x = -869.267, y = 342.524, z = -81.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[140008] = { config_id = 140008, gadget_id = 70310474, pos = { x = -869.267, y = 322.966, z = -75.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 8
	[140009] = { config_id = 140009, gadget_id = 70310474, pos = { x = -869.267, y = 322.966, z = -75.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- --
	[140010] = { config_id = 140010, gadget_id = 70310474, pos = { x = -869.267, y = 360.895, z = -90.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1140011, name = "PLATFORM_REACH_POINT_140011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_140011", action = "action_EVENT_PLATFORM_REACH_POINT_140011", trigger_count = 0 }
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
		gadgets = { 140001, 140002, 140003, 140004, 140005, 140006, 140007, 140008, 140009, 140010 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_140011" },
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
function condition_EVENT_PLATFORM_REACH_POINT_140011(context, evt)
	-- 判断是gadgetid 为 140001的移动平台，是否到达了900300031 的点集中的 1 点
	
	if 140001 ~= evt.param1 then
	  return false
	end
	
	if 900300031 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_140011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003140, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"