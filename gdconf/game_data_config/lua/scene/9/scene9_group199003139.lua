-- 基础信息
local base_info = {
	group_id = 199003139
}

-- DEFS_MISCS
local        defs = {
	is_movable = 1,
	--连线形态
	patterns = 
	{
			--形态1
			[1] = {
				[139001] = {connect =0 , point_array = 900300029, point_id = {1}} ,
			[139002] = {connect =0 , point_array = 900300029, point_id = {2}} ,
			[139003] = {connect =0 , point_array = 900300029, point_id = {3}} ,
			[139004] = {connect =0, point_array = 900300029, point_id = {4}} ,
			[139005] = {connect =0, point_array = 900300029, point_id = {5}} ,
			[139006] = {connect =0, point_array = 900300029, point_id = {6}} ,
			[139007] = {connect =0, point_array = 900300029, point_id = {7}} ,
			[139008] = {connect =0, point_array = 900300029, point_id = {8}} ,
			[139009] = {connect =0 , point_array = 900300029, point_id = {9}} ,
			
			},
			--形态2
			[2] = 
			{		[139001] = {connect =0 , point_array = 900300030, point_id = {1}} ,
			[139002] = {connect =0 , point_array = 900300030, point_id = {2}} ,
			[139003] = {connect =0 , point_array = 900300030, point_id = {3}} ,
			[139004] = {connect =0, point_array = 900300030, point_id = {4}} ,
			[139005] = {connect =0, point_array = 900300030, point_id = {5}} ,
			[139006] = {connect =0 , point_array = 900300030, point_id = {6}} ,
			[139007] = {connect =0, point_array = 900300030, point_id = {7}} ,
			[139008] = {connect =0, point_array = 900300030, point_id = {8}} ,
			[139009] = {connect =0 , point_array = 900300030, point_id = {9}} ,
			},
            [3] = 
			{		[139001] = {connect =139002 , point_array = 900300030, point_id = {1}} ,
			[139002] = {connect =139003 , point_array = 900300030, point_id = {2}} ,
			[139003] = {connect =139004 , point_array = 900300030, point_id = {3}} ,
			[139004] = {connect =139002, point_array = 900300030, point_id = {4}} ,
			[139005] = {connect =139002, point_array = 900300030, point_id = {5}} ,
			[139006] = {connect =139004 , point_array = 900300030, point_id = {6}} ,
			[139007] = {connect =139001, point_array = 900300030, point_id = {7}} ,
			[139008] = {connect =139005, point_array = 900300030, point_id = {8}} ,
			[139009] = {connect =139006 , point_array = 900300030, point_id = {9}} ,
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
	[139001] = { config_id = 139001, gadget_id = 70310474, pos = { x = -848.795, y = 376.907, z = -89.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[139002] = { config_id = 139002, gadget_id = 70310474, pos = { x = -848.795, y = 376.907, z = -111.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[139003] = { config_id = 139003, gadget_id = 70310474, pos = { x = -848.795, y = 376.907, z = -47.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[139004] = { config_id = 139004, gadget_id = 70310474, pos = { x = -848.795, y = 376.907, z = -101.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[139005] = { config_id = 139005, gadget_id = 70310474, pos = { x = -848.795, y = 388.534, z = -65.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[139006] = { config_id = 139006, gadget_id = 70310474, pos = { x = -848.795, y = 382.520, z = -107.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[139007] = { config_id = 139007, gadget_id = 70310474, pos = { x = -848.795, y = 369.696, z = -78.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	-- 7
	[139008] = { config_id = 139008, gadget_id = 70310474, pos = { x = -848.795, y = 380.109, z = -100.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	-- 5
	[139009] = { config_id = 139009, gadget_id = 70310474, pos = { x = -848.795, y = 371.285, z = -112.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1139010, name = "PLATFORM_REACH_POINT_139010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_139010", action = "action_EVENT_PLATFORM_REACH_POINT_139010", trigger_count = 0 }
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
		gadgets = { 139001, 139002, 139003, 139004, 139005, 139006, 139007, 139008, 139009 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_139010" },
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
function condition_EVENT_PLATFORM_REACH_POINT_139010(context, evt)
	-- 判断是gadgetid 为 139001的移动平台，是否到达了900300030 的点集中的 1 点
	
	if 139001 ~= evt.param1 then
	  return false
	end
	
	if 900300030 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_139010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003139, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"