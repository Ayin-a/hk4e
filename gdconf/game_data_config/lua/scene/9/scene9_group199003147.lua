-- 基础信息
local base_info = {
	group_id = 199003147
}

-- DEFS_MISCS
local        defs = {
	is_movable = 1,
	--连线形态
	patterns = 
	{
			--形态1
			[1] = {
			[147001] = {connect =0 , point_array = 900300038, point_id = {1}},
			[147002] = {connect =0 , point_array = 900300038, point_id = {2}} ,
			[147003] = {connect =0 , point_array = 900300038, point_id = {3}} ,
			[147004] = {connect =0, point_array = 900300038, point_id = {4}} ,
			[147005] = {connect =0, point_array = 900300038, point_id = {5}} ,
		
			},
			--形态2
			[2] = 
			{[147001] = {connect =0 , point_array = 900300038, point_id = {1}},
			[147002] = {connect =0 ,point_array = 900300038, point_id = {2}} ,
			[147003] = {connect =0 ,point_array = 900300038, point_id = {3}} ,
			[147004] = {connect =0, point_array = 900300038, point_id = {4}} ,
			[147005] = {connect =0, point_array = 900300038, point_id = {5}} ,
	
			},
            [3] = 
			{[147001] = {connect =147003 , point_array = 900300038, point_id = {1}},
			[147002] = {connect =147001 ,point_array = 900300038, point_id = {2}} ,
			[147003] = {connect =147004 ,point_array = 900300038, point_id = {3}} ,
			[147004] = {connect =147005, point_array = 900300038, point_id = {4}} ,
			[147005] = {connect =147002, point_array = 900300038, point_id = {5}} ,
	
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
	[147001] = { config_id = 147001, gadget_id = 70310474, pos = { x = -884.451, y = 364.011, z = -155.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[147002] = { config_id = 147002, gadget_id = 70310474, pos = { x = -884.451, y = 364.011, z = -112.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[147003] = { config_id = 147003, gadget_id = 70310474, pos = { x = -884.451, y = 374.780, z = -149.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[147004] = { config_id = 147004, gadget_id = 70310474, pos = { x = -884.451, y = 376.030, z = -132.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[147005] = { config_id = 147005, gadget_id = 70310474, pos = { x = -884.451, y = 374.780, z = -115.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1147007, name = "PLATFORM_REACH_POINT_147007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_147007", action = "action_EVENT_PLATFORM_REACH_POINT_147007", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1147006, name = "AVATAR_NEAR_PLATFORM_147006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_147006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_147006", trigger_count = 0 }
	}
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
		gadgets = { 147001, 147002, 147003, 147004, 147005 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_147007" },
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
function condition_EVENT_PLATFORM_REACH_POINT_147007(context, evt)
	-- 判断是gadgetid 为 147001的移动平台，是否到达了900300038 的点集中的 1 点
	
	if 147001 ~= evt.param1 then
	  return false
	end
	
	if 900300038 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_147007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003147, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"