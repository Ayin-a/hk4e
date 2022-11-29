-- 基础信息
local base_info = {
	group_id = 199003146
}

-- DEFS_MISCS
local        defs = {
	is_movable = 1,
	--连线形态
	patterns = 
	{
			--形态1
			[1] = {
	 
			[146002] = {connect =0 , point_array = 900300037, point_id = {2}} ,
			[146003] = {connect =0 , point_array = 900300037, point_id = {3}} ,
			[146004] = {connect =0, point_array = 900300037, point_id = {4}} ,
			[146005] = {connect =0, point_array = 900300037, point_id = {5}} ,
			[146006] = {connect =0, point_array = 900300037, point_id = {6}} ,
			[146007] = {connect =0, point_array = 900300037, point_id = {7}} ,
			[146008] = {connect =0, point_array = 900300037, point_id = {8}} ,
			[146009] = {connect =0 , point_array = 900300037, point_id = {9}} ,
			[146010] = {connect =0 , point_array = 900300027, point_id = {9}} ,
			[146011] = {connect =0 , point_array = 900300037, point_id = {9}} ,
			},
			--形态2
			[2] = 
			{
			[146002] = {connect =0 ,point_array = 900300037, point_id = {2}} ,
			[146003] = {connect =0 ,point_array = 900300037, point_id = {3}} ,
			[146004] = {connect =0, point_array = 900300037, point_id = {4}} ,
			[146005] = {connect =0, point_array = 900300037, point_id = {5}} ,
			[146006] = {connect =0 ,point_array = 900300037, point_id = {6}} ,
			[146007] = {connect =0, point_array = 900300037, point_id = {7}} ,
			[146008] = {connect =0, point_array = 900300037, point_id = {8}} ,
			[146009] = {connect =0 ,point_array = 900300037, point_id = {9}} ,
			[146010] = {connect =0 ,point_array = 900300037, point_id = {10}} ,
			[146011] = {connect =0, point_array = 900300037, point_id = {11}} ,
			},
            [3] = 
			{
			[146002] = {connect =146009 ,point_array = 900300037, point_id = {2}} ,
			[146003] = {connect =146004 ,point_array = 900300037, point_id = {3}} ,
			[146004] = {connect =146008, point_array = 900300037, point_id = {4}} ,
			[146005] = {connect =146006, point_array = 900300037, point_id = {5}} ,
			[146006] = {connect =146007 ,point_array = 900300037, point_id = {6}} ,
			[146007] = {connect =146004, point_array = 900300037, point_id = {7}} ,
			[146008] = {connect =146009, point_array = 900300037, point_id = {8}} ,
			[146009] = {connect =146005 ,point_array = 900300037, point_id = {9}} ,
			[146010] = {connect =146004 ,point_array = 900300037, point_id = {10}} ,
			[146011] = {connect =146005 , point_array = 900300037, point_id = {11}} ,
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
	[146002] = { config_id = 146002, gadget_id = 70310474, pos = { x = -879.068, y = 357.736, z = -198.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[146003] = { config_id = 146003, gadget_id = 70310474, pos = { x = -879.068, y = 333.559, z = -178.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[146004] = { config_id = 146004, gadget_id = 70310474, pos = { x = -879.068, y = 333.267, z = -135.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[146005] = { config_id = 146005, gadget_id = 70310474, pos = { x = -879.068, y = 368.795, z = -162.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[146006] = { config_id = 146006, gadget_id = 70310474, pos = { x = -879.068, y = 360.587, z = -148.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[146007] = { config_id = 146007, gadget_id = 70310474, pos = { x = -879.068, y = 348.698, z = -142.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[146008] = { config_id = 146008, gadget_id = 70310474, pos = { x = -879.068, y = 346.634, z = -155.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[146009] = { config_id = 146009, gadget_id = 70310474, pos = { x = -879.068, y = 349.736, z = -171.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 6
	[146010] = { config_id = 146010, gadget_id = 70310474, pos = { x = -879.068, y = 360.587, z = -148.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	-- 5--
	[146011] = { config_id = 146011, gadget_id = 70310474, pos = { x = -879.068, y = 368.795, z = -162.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1146001, name = "PLATFORM_REACH_POINT_146001", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_146001", action = "action_EVENT_PLATFORM_REACH_POINT_146001", trigger_count = 0 }
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
		gadgets = { 146002, 146003, 146004, 146005, 146006, 146007, 146008, 146009, 146010, 146011 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_146001" },
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
function condition_EVENT_PLATFORM_REACH_POINT_146001(context, evt)
	-- 判断是gadgetid 为 146002的移动平台，是否到达了900300037 的点集中的 2 点
	
	if 146002 ~= evt.param1 then
	  return false
	end
	
	if 900300037 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_146001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003146, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"