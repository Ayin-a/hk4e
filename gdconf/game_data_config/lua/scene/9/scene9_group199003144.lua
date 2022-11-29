-- 基础信息
local base_info = {
	group_id = 199003144
}

-- DEFS_MISCS
local        defs = {
	is_movable = 1,
	--连线形态
	patterns = 
	{
			--形态1
			[1] = {
				[144001] = {connect =0 , point_array = 900300029, point_id = {1}} ,
			[144002] = {connect =0 , point_array = 900300029, point_id = {2}} ,
			[144003] = {connect =0 , point_array = 900300029, point_id = {3}} ,
			[144004] = {connect =0, point_array = 900300029, point_id = {4}} ,
			[144005] = {connect =0, point_array = 900300029, point_id = {5}} ,
			[144006] = {connect =0, point_array = 900300029, point_id = {6}} ,
			[144007] = {connect =0, point_array = 900300029, point_id = {7}} ,
			[144008] = {connect =0, point_array = 900300029, point_id = {8}} ,
			[144009] = {connect =0 , point_array = 900300029, point_id = {9}} ,
			[144010] = {connect =0 , point_array = 900300029, point_id = {9}} ,
			
			},
			--形态2
			[2] = 
			{[144001] = {connect=0 ,point_array = 900300035, point_id = {1}} ,
			[144002] = {connect =0 ,point_array = 900300035, point_id = {2}} ,
			[144003] = {connect =0 ,point_array = 900300035, point_id = {3}} ,
			[144004] = {connect =0, point_array = 900300035, point_id = {4}} ,
			[144005] = {connect =0, point_array = 900300035, point_id = {5}} ,
			[144006] = {connect =0 ,point_array = 900300035, point_id = {6}} ,
			[144007] = {connect =0, point_array = 900300035, point_id = {7}} ,
			[144008] = {connect =0, point_array = 900300035, point_id = {8}} ,
			[144009] = {connect =0 ,point_array = 900300035, point_id = {9}} ,
			[144010] = {connect =0 ,point_array = 900300035, point_id = {10}} ,
			
			},
            [3] = 
			{[144001] = {connect=144002 ,point_array = 900300035, point_id = {1}} ,
			[144002] = {connect =144003 ,point_array = 900300035, point_id = {2}} ,
			[144003] = {connect =144004 ,point_array = 900300035, point_id = {3}} ,
			[144004] = {connect =144001, point_array = 900300035, point_id = {4}} ,
			[144005] = {connect =144004, point_array = 900300035, point_id = {5}} ,
			[144006] = {connect =144004 ,point_array = 900300035, point_id = {6}} ,
			[144007] = {connect =144005, point_array = 900300035, point_id = {7}} ,
			[144008] = {connect =144006, point_array = 900300035, point_id = {8}} ,
			[144009] = {connect =144005 ,point_array = 900300035, point_id = {9}} ,
			[144010] = {connect =144006 ,point_array = 900300035, point_id = {10}} ,
			
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
	[144001] = { config_id = 144001, gadget_id = 70310474, pos = { x = -883.414, y = 347.980, z = -216.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[144002] = { config_id = 144002, gadget_id = 70310474, pos = { x = -883.414, y = 348.653, z = -172.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[144003] = { config_id = 144003, gadget_id = 70310474, pos = { x = -883.414, y = 348.532, z = -126.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 亮
	[144004] = { config_id = 144004, gadget_id = 70310474, pos = { x = -883.414, y = 359.572, z = -172.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[144005] = { config_id = 144005, gadget_id = 70310474, pos = { x = -883.414, y = 370.720, z = -216.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[144006] = { config_id = 144006, gadget_id = 70310474, pos = { x = -883.414, y = 370.720, z = -130.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[144007] = { config_id = 144007, gadget_id = 70310474, pos = { x = -883.414, y = 370.720, z = -173.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 7--
	[144008] = { config_id = 144008, gadget_id = 70310474, pos = { x = -883.414, y = 353.383, z = -166.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[144009] = { config_id = 144009, gadget_id = 70310474, pos = { x = -883.414, y = 347.980, z = -182.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[144010] = { config_id = 144010, gadget_id = 70310474, pos = { x = -883.414, y = 355.822, z = -153.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1144011, name = "PLATFORM_REACH_POINT_144011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_144011", action = "action_EVENT_PLATFORM_REACH_POINT_144011", trigger_count = 0 }
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
		gadgets = { 144001, 144002, 144003, 144004, 144005, 144006, 144007, 144008, 144009, 144010 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_144011" },
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
function condition_EVENT_PLATFORM_REACH_POINT_144011(context, evt)
	-- 判断是gadgetid 为 144001的移动平台，是否到达了900300035 的点集中的 1 点
	
	if 144001 ~= evt.param1 then
	  return false
	end
	
	if 900300035 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_144011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003144, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"